--Modify the scoreboard using TTTScoreboardColumns hook

print("Grim3212 Initializing Scoreboard Ranks")

local function getRankAndColor(ply, label)
	--Determine rank based on UserGroup
	if ply:IsUserGroup( "superadmin" ) then
		label:SetTextColor(COLOR_BLUE)
		return "Owner"
	elseif ply:IsUserGroup( "admin" ) then
		label:SetTextColor(COLOR_RED)
		return "Admin"
	elseif ply:IsUserGroup( "moderator" ) then
		label:SetTextColor(COLOR_GREEN)
		return "Moderator"
	elseif ply:IsUserGroup( "trusted" ) then
		label:SetTextColor(COLOR_PURPLE)
		return "Trusted"
	else
		return ""
	end
end

local function setupRankColumn(pnl)
	pnl:AddColumn("Rank", function(ply, label) return getRankAndColor(ply, label) end )
end

hook.Add( "TTTScoreboardColumns", "scoreboardRanks", setupRankColumn )