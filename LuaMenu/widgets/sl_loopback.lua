function widget:GetInfo()
return {
	name    = "Spring-Launcher wrapper loopback interface",
	desc    = "Creates a commlink between spring-launcher's wrapper and chobby",
	author  = "gajop",
	date    = "really late",
	license = "MIT",
	layer   = -10000,
	enabled = true,
}
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Callout Functions

local WrapperLoopback = {}

-- opens URL
function WrapperLoopback.OpenUrl(url)
	WG.Connector.Send("OpenFile", {
		path = url
	})
end

-- opens folder (gamedata folder only technically)
function WrapperLoopback.OpenFolder(folder)
	if folder == nil then
		folder = WG.Connector.writePath
	end
	WG.Connector.Send("OpenFile", {
		path = "file://" .. folder
	})
end

function WrapperLoopback.UploadLog()
	WG.Connector.Send("UploadLog")
end

function WrapperLoopback.ReadReplayInfo(relativePath)
	WG.Connector.Send("ReadReplayInfo", {
		relativePath = relativePath
	})
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Widget Interface

-- replay info read
local function ReplayInfo(command)
	--[[
	    public class ReadReplayInfoDone {
                    public string RelativePath { get; set; }
                   public ReplayReader.ReplayInfo ReplayInfo { get; set; }

  public class ReplayInfo
        {
            public string Engine { get; set; }
            public string Game { get; set; }
            public string Map { get; set; }
            public string StartScript { get; set; }
            public DateTime Date { get; set; }
            public int GameLengthRealtime { get; set; }
            public int GameLengthIngameTime { get; set; }
            public string GameID { get; set; }
            public List<PlayerEntry> Players { get; set; } = new List<PlayerEntry>();

            public class PlayerEntry
            {
                public bool IsSpectator { get; set; }
                public bool IsBot { get; set; }
                public string Name { get; set; }
                public int? AllyTeam { get; set; }
            }
        }


		ReplayInfo is nil in case of failure

             }

	]]--
	WG.ReplayHandler.ReadReplayInfoDone(
		command.relativePath,
		command.engine,
		command.game,
		command.map,
		command.startScript
	)
end


-- init
function widget:Initialize()
	if WG.Connector == nil or not WG.Connector.enabled then
		widgetHandler:RemoveWidget()
		Spring.Log("Chobby", LOG.NOTICE, "spring-launcher doesn't exist.")
		return
	end

	WG.WrapperLoopback = WrapperLoopback


	WG.Connector.Register('ReplayInfo', ReplayInfo)
end
