#!/bin/bash
# Here you can define translations to be used in the plugin functions file
# the below code is an sample to be reused:
# 1) uncomment to function below
# 2) replace XXX by your plugin name (short)
# 3) remove and add your own translations
# 4) you can the arguments $2, $3 passed to this function
# 5) in your plugin functions.sh file, use it like this:
#      say "$(pv_myplugin_lang the_answer_is "oui")"
#      => Jarvis: La réponse est oui

#pv_XXX_lang () {
#    case "$1" in
#        i_check) echo "Je regarde...";;
#        the_answer_is) echo "La réponse est $2";;
#    esac
#} 

mypath="$PWD/plugins_installed/jarvis-leMonde/python"

jv_leMonde_dayNews()
{
	myPython="$PWD/plugins_installed/jarvis-leMonde/python/dayNews.py"
	myText="$PWD/plugins_installed/jarvis-leMonde/python/news.txt"

	python -u $myPython
	while read line
	do
		say "$line"
	done < $myText
}

jv_leMonde_news()
{
	python -u "$mypath/news.py"
	while read line
	do
		say "$line"
	done < "$mypath/news.txt"
}

jv_leMonde_favoriteNews()
{
	python -u "$mypath/favoriteNews.py"
	while read line
	do
		say "$line"
	done < "$mypath/favoriteNews.txt"
}

jv_leMonde_addFavoriteNews()
{
	python -u "$mypath/addFavoriteNews.py"
	while read line
	do
		say "$line"
	done < "$mypath/rubrique.txt"
}

jv_leMonde_removeFavoriteNews()
{
	python -u "$mypath/removeFavoriteNews.py"
	while read line
	do
		say "$line"
	done < "$mypath/rubrique.txt"
}
