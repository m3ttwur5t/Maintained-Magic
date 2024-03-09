Scriptname _smMaintainedMagicMenuEffect extends ActiveMagicEffect  

GlobalVariable Property IsMaintenanceModeEnabled  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
		IsMaintenanceModeEnabled.SetValueInt(1) 
EndEvent
Event OnEffectFinish(Actor akTarget, Actor akCaster)
		IsMaintenanceModeEnabled.SetValueInt(0) 
EndEvent
