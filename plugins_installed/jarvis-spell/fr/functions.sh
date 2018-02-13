#!/bin/bash

jv_spell_spell()
{

	mypathSpell="$PWD/plugins_installed/jarvis-spell/python/spell.txt"
	mypathScript="$PWD/plugins_installed/jarvis-spell/python/spell.py"
	rm $mypathSpell
	echo "$1" >> $mypathSpell

	cat $mypathSpell
	python -u $mypathScript
	while read line
	do
		say "$line"
	done < $mypathSpell
}