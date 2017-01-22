#pragma semicolon 1

#include <sourcemod>

public Plugin:myinfo = 
{
    name = "Death Cam Skip Fix",
    author = "Jacob, Sir",
    description = "Prevents players from having to resort to exploits or having to press keystrokes to get their killtimer.",
    version = "1.1",
    url = "github.com/jacob404/myplugins"
}

public OnPluginStart()
{
    HookEvent("player_death", Event_PlayerDeath);
}

public Event_PlayerDeath(Handle:event, const String:name[], bool:dontBroadcast)
{
    new client = GetClientOfUserId(GetEventInt(event,"userid"));
    if(IsValidClient(client) && GetClientTeam(client) == 3)
    {
        CreateTimer(0.1, CheatDeath, client);
    }
}

public Action:CheatDeath(Handle:timer, any:client)
{
    if (IsValidClient(client) && GetClientTeam(client) == 3)
    {
        new Float:DeathTime;
        DeathTime = GetEntPropFloat(client, Prop_Send, "m_flDeathTime");
        SetEntPropFloat(client, Prop_Send, "m_flDeathTime", DeathTime - 10.0);
    }
}

stock bool:IsValidClient(client, bool:nobots = true)
{ 
    if (client <= 0 || client > MaxClients || !IsClientConnected(client))
    {
        return false; 
    }
    return IsClientInGame(client); 
}