#include <sourcemod>
#include <colors>

new Handle:hCvarCvarChange;
new Handle:hCvarNameChange;
new Handle:hCvarSpecNameChange
new Handle:hCvarShowSpecsChat
new bool:bCvarChange;
new bool:bNameChange;
new bool:bSpecNameChange;
new bool:bShowSpecsChat;

public Plugin:myinfo = 
{
    name = "BeQuiet",
    author = "Sir",
    description = "Please be Quiet!",
    version = "1.33.7",
    url = "https://github.com/SirPlease/SirCoding"
}

public OnPluginStart()
{
    AddCommandListener(Say_Callback, "say");
    AddCommandListener(TeamSay_Callback, "say_team");

    //Server CVar
    HookEvent("server_cvar", Event_ServerDontNeedPrint, EventHookMode_Pre);
    HookEvent("player_changename", Event_NameDontNeedPrint, EventHookMode_Pre);

    //Cvars
    hCvarCvarChange = CreateConVar("bq_cvar_change_suppress", "1", "Silence Server Cvars being changed, this makes for a clean chat with no disturbances.")
    hCvarNameChange = CreateConVar("bq_name_change_suppress", "1", "Silence Player name Changes.")
    hCvarSpecNameChange = CreateConVar("bq_name_change_spec_suppress", "1", "Silence Spectating Player name Changes.")
    hCvarShowSpecsChat = CreateConVar("bq_show_player_team_chat_spec", "1", "Show Spectators what Players are saying in team chat.")

    bCvarChange = GetConVarBool(hCvarCvarChange);
    bNameChange = GetConVarBool(hCvarNameChange);
    bSpecNameChange = GetConVarBool(hCvarSpecNameChange);
    bShowSpecsChat = GetConVarBool(hCvarShowSpecsChat);

    HookConVarChange(hCvarCvarChange, cvarChanged);
    HookConVarChange(hCvarNameChange, cvarChanged);
    HookConVarChange(hCvarSpecNameChange, cvarChanged);
    HookConVarChange(hCvarShowSpecsChat, cvarChanged);
}

public Action:Say_Callback(client, const String:command[], argc)
{
    decl String:sayWord[MAX_NAME_LENGTH];
    GetCmdArg(1, sayWord, sizeof(sayWord));
    
    if(sayWord[0] == '!' || sayWord[0] == '/')
    {
        return Plugin_Handled;
    }
    return Plugin_Continue;
}

public Action:TeamSay_Callback(client, const String:command[], argc)
{
    decl String:sayWord[MAX_NAME_LENGTH];
    GetCmdArg(1, sayWord, sizeof(sayWord));
    
    if(sayWord[0] == '!' || sayWord[0] == '/')
    {
        return Plugin_Handled;
    }
    else if (bShowSpecsChat && GetClientTeam(client) != 1)
    {
        new String:sChat[256];
        GetCmdArgString(sChat, sizeof(sChat));
        StripQuotes(sChat);

        for (new i = 1; i <= MAXPLAYERS; i++)
        {
            if (IsValidClient(i) && GetClientTeam(i) == 1)
            {
                if (GetClientTeam(client) == 2) CPrintToChat(i, "{default}(Survivor) {blue}%N {default}: %s", client, sChat);
                else CPrintToChat(i, "{default}(Infected) {red}%N {default}: %s", client, sChat);
            }
        }
    }
    return Plugin_Continue;
}

public Action:Event_ServerDontNeedPrint(Handle:event, const String:name[], bool:dontBroadcast)
{
    if (bCvarChange) return Plugin_Handled;
    return Plugin_Continue;
}

public Action:Event_NameDontNeedPrint(Handle:event, const String:name[], bool:dontBroadcast)
{
    new client; 
    new clientid; 
    clientid = GetEventInt(event,"userid"); 
    client = GetClientOfUserId(clientid); 

    if (IsValidClient(client))
    {
        if (GetClientTeam(client) == 1)
        { 
            if (bSpecNameChange) return Plugin_Handled; 
        }
        else if (bNameChange) return Plugin_Handled;
    }
    return Plugin_Continue;
}

public cvarChanged(Handle:cvar, const String:oldValue[], const String:newValue[])
{
    bCvarChange = GetConVarBool(hCvarCvarChange);
    bNameChange = GetConVarBool(hCvarNameChange);
    bSpecNameChange = GetConVarBool(hCvarSpecNameChange);
    bShowSpecsChat = GetConVarBool(hCvarShowSpecsChat);
}

stock bool:IsValidClient(client)
{ 
    if (client <= 0 || client > MaxClients || !IsClientConnected(client) || !IsClientInGame(client))
    {
        return false; 
    }
    return true;
}
