Scriptname _smMaintainedMagicMenuClearEffect extends ActiveMagicEffect  

Keyword Property InfiniteKeyword Auto
Spell Property ThisSpell  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
		int spellCount = akTarget.GetSpellCount() - 1
		while spellCount >= 0
			Spell checkedSpell = akTarget.GetNthSpell(spellCount)
			if checkedSpell.HasKeyword(InfiniteKeyword)
				akTarget.RemoveSpell(checkedSpell)
			endif
			spellCount -= 1
		endwhile
		akTarget.DispelSpell(ThisSpell)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Debug.Notification("Dispelled all Maintained Magic")
EndEvent

