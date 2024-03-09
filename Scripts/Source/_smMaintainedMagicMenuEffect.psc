Scriptname _smMaintainedMagicMenuEffect extends ActiveMagicEffect  

GlobalVariable Property IsMaintenanceModeEnabled  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
		Debug.Notification("Entered Spell Maintenance Mode")
		IsMaintenanceModeEnabled.SetValueInt(1) 
EndEvent
Event OnEffectFinish(Actor akTarget, Actor akCaster)
		Debug.Notification("Left Spell Maintenance Mode")
		IsMaintenanceModeEnabled.SetValueInt(0) 
EndEvent
