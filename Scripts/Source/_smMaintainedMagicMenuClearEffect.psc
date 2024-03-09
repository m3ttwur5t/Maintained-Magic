Scriptname _smMaintainedMagicMenuClearEffect extends ActiveMagicEffect  

Keyword Property InfiniteKeyword Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
		Debug.Notification("Dispelled all Maintained Magic")
		
		int spellCount = akTarget.GetSpellCount() - 1
		while spellCount >= 0
			Spell checkedSpell = akTarget.GetNthSpell(spellCount)
			if checkedSpell.HasKeyword(InfiniteKeyword)
				akTarget.RemoveSpell(checkedSpell)
			endif
			spellCount -= 1
		endwhile
EndEvent


