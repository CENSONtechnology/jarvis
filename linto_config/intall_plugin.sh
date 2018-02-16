#!/bin/bash

cd ../plugins_installed

ls
for filename in */; do 
	
	echo '###Install Plugin####'
	echo $filename
	echo '#####################'
	
	chmod +x $filename/config.sh
	chmod +x $filename/install.sh
	chmod +x $filename/update.sh
	
	sudo ./$filename/config.sh
	sudo ./$filename/install.sh
	sudo ./$filename/install.sh	
	
	ln -rs $filename ../plugins_enabled/
done

cd ..
./jarvis.sh -u
cd linto_config
