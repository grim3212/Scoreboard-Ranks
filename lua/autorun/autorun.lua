--Add different things that are needed

print("Grim3212 Initializing Scoreboard Ranks")

local function setupRankColumn(pnl)
	pnl:AddColumn("Rank", function(ply, label) 
	
	if ply:IsUserGroup("superadmin") then
		label:SetTextColor(COLOR_BLUE)
		return "Owner"
	elseif ply:IsUserGroup("admin") then
		label:SetTextColor(COLOR_GREEN)
		return "Admin"
	else 
		return "Guest"
	end)
end

hook.Add( "TTTScoreboardColumns", "scoreboardRanks", setupRankColumn )
