#pragma semicolon 1

#include <sourcemod>
#include <l4d2lib>
#include <l4d2util>
#include <colors>

//Cvars & Storage
new Handle:hCvarVisionSeconds;
new Handle:hCvarFrustrationGain;
new Float:fVisionSeconds;
new iFrustrationGain;

//Storage for Tank Stuff.
new iStoredFrustration[MAXPLAYERS+1];
new Float:fSecondsVisionHeld[MAXPLAYERS+1];
new Handle:hTimer[MAXPLAYERS+1];

public Plugin:myinfo = 
{
    name = "Tank Vision Frustration",
    author = "Sir",
    description = "Gives Tanks frustration if they keep vision long enough",
    version = "1.0",
    url = "https://github.com/SirPlease/ZoneMod/scripting/scrapped_or_beta_ideas"
}

public OnPluginStart()
{
	hCvarVisionSeconds = CreateConVar("tank_vision_seconds", "6.0", "How long to keep Vision before you gain Frustration, (z_frustration_los_delay has a big impact on this)");
	hCvarFrustrationGain = CreateConVar("tank_vision_frustration_gain", "4", "Frustration Gain, between 1-100, Steps should be in: (100 / z_frustration_lifetime)");

	//Storage
	fVisionSeconds = GetConVarFloat(hCvarVisionSeconds);
	iFrustrationGain = GetConVarInt(hCvarFrustrationGain);

	//Cvar Changes
	HookConVarChange(hCvarVisionSeconds, cvarChanged);
	HookConVarChange(hCvarFrustrationGain, cvarChanged);
	HookEvent("round_start", RoundStartEvent, EventHookMode_PostNoCopy);
}

public OnClientPutInServer(client)
{
	iStoredFrustration[client] = 0;
	fSecondsVisionHeld[client] = 0.0;
}

public OnClientDisconnect_Post(client)
{
	if (IsValidClient(client) && hTimer[client] != INVALID_HANDLE)
	{
		KillTimer(hTimer[client]);
		hTimer[client] = INVALID_HANDLE;
	}
	iStoredFrustration[client] = 0;
	fSecondsVisionHeld[client] = 0.0;
}

public RoundStartEvent(Handle:event, const String:name[], bool:dontBroadcast)
{
	for (new client = 1; client <= MaxClients; client++)
	if (IsValidClient(client))
	{
		if (hTimer[client] != INVALID_HANDLE)
		{
			KillTimer(hTimer[client]);
			hTimer[client] = INVALID_HANDLE;
		}
		iStoredFrustration[client] = 0;
		fSecondsVisionHeld[client] = 0.0;
	}
}

public cvarChanged(Handle:cvar, const String:oldValue[], const String:newValue[])
{
	fVisionSeconds = GetConVarFloat(hCvarVisionSeconds);
	iFrustrationGain = GetConVarInt(hCvarFrustrationGain);
}

public L4D2_OnTankPassControl(oldTank, newTank, passCount)
{
	if (IsValidClient(oldTank))
	{
		if (hTimer[oldTank] != INVALID_HANDLE)
		{
			KillTimer(hTimer[oldTank]);
			hTimer[oldTank] = INVALID_HANDLE;
		}
		iStoredFrustration[oldTank] = 0;
		fSecondsVisionHeld[oldTank] = 0.0;
	}
	if (IsValidClient(newTank))
	{
		// Just to cover pub/weird situations.
		// Shouldn't occur.
		if (hTimer[newTank] != INVALID_HANDLE)
		{
			KillTimer(hTimer[newTank]);
			hTimer[newTank] = INVALID_HANDLE;
		}

		iStoredFrustration[newTank] = GetTankFrustration(newTank);
		fSecondsVisionHeld[newTank] = 0.0;
		hTimer[newTank] = CreateTimer(0.1, VisionTimer, newTank, TIMER_REPEAT);
	}
}

// To Cover non-Versus or Forced Spawns, as they don't trigger PassControl.
public OnTankSpawn(iTank)
{
	if (IsValidClient(iTank))
	{
		if (hTimer[iTank] != INVALID_HANDLE)
		{
			KillTimer(hTimer[iTank]);
			hTimer[iTank] = INVALID_HANDLE;
		}
		iStoredFrustration[iTank] = 0;
		fSecondsVisionHeld[iTank] = 0.0;
		hTimer[iTank] = CreateTimer(0.1, VisionTimer, iTank, TIMER_REPEAT);
	}
}

public OnTankDeath(iOldTank)
{
	if (IsValidClient(iOldTank))
	{
		if (hTimer[iOldTank] != INVALID_HANDLE)
		{
			KillTimer(hTimer[iOldTank]);
			hTimer[iOldTank] = INVALID_HANDLE;
		}
		iStoredFrustration[iOldTank] = 0;
		fSecondsVisionHeld[iOldTank] = 0.0;		
	}
}

public Action:VisionTimer(Handle:timer, any:client)
{
	new iFrust = GetTankFrustration(client);

	// Prevents Grace Period issues.
	if (iFrust == 100 || iFrust == 0) return Plugin_Continue;

    // Only count VisionHeld if Frustration is on the same level, otherwise start over.
	if (iFrust == iStoredFrustration[client]) fSecondsVisionHeld[client] += 0.1;
	else fSecondsVisionHeld[client] = 0.0;

	if (iFrust == iStoredFrustration[client] && fSecondsVisionHeld[client] >= fVisionSeconds)
	{
		SetTankFrustration(client, iFrust + iFrustrationGain);
		fSecondsVisionHeld[client] = 0.0;
	}

	iStoredFrustration[client] = iFrust;
	return Plugin_Continue;
}

stock bool:IsValidClient(client)
{ 
    if (client <= 0 || client > MaxClients || !IsClientConnected(client) || !IsClientInGame(client) || IsFakeClient(client))
    {
        return false; 
    }
    return true;
}

