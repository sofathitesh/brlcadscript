brlcad_resource_path="/home/mybrlcadcode/brlcad/trunk/"
wordpress_path="/var/www/html/docbook/"
username='hiteshsofat'
password='hitesh@123'

#SVN Commit

#update clone repo
cd $brlcad_resource_path

svn update

output=$(svn diff)

if [ ! -z "$output" ]

	then	
	svn commit -m  "hitesh sofat updates" --non-interactive --username  $username --password $password

	svn update

	./configure

	make

	#Create the directory in wordpress root folder
	if [ -d $wordpress_path -a -d $brlcad_resource_path ];
		then 
		cd $wordpress_path

	if [ -d "articles" ];
		then 
		mkdir -p "articles"
		echo "Articles directory is overrided"
	else
		mkdir "articles"
		echo "Articles directory is sucessfully created"
	fi

	if [ -d "books" ];
		then 
		mkdir -p "books"
		echo "Books directory is overrided"
	else
		mkdir "books"
		echo "Books directory is sucessfully created"
	fi

	if [ -d "lessons" ];
		then 
		mkdir -p "lessons"
		echo "Lessons directory is overrided"
	else
		mkdir "lessons"
		echo "Lessons directory is sucessfully created"
	fi

	if [ -d "man1" ];
		then 
		mkdir -p "man1"
		echo "Man1 directory is overrided"
	else
		mkdir "man1"
		echo "Man1 directory is sucessfully created"
	fi

	if [ -d "man3" ];
		then 
		mkdir -p "man3"
		echo "Man3 directory is overrided"	
	else
		mkdir "man3"
		echo "Man3 directory is sucessfully created"
	fi

	if [ -d "man5" ];
		then 
		mkdir -p "man5"
		echo "Man5 directory is overrided"
	else
		mkdir "man5"
		echo "Man5 directory is sucessfully created"
	fi

	if [ -d "mann" ];
		then 
		mkdir -p "mann"
		echo "Mann directory is overrided"
	else
		mkdir "mann"
		echo "Mann directory is sucessfully created"
	fi

	if [ -d "presentations" ];
		then 
		mkdir -p "presentations"
		echo "Presentations directory is overrided"
	else
		mkdir "presentations"
		echo "Presentations directory is sucessfully created"
	fi

	if [ -d "specifications" ];
 		then 
		mkdir -p "specifications"
		echo "Specifications directory is overrided"
	else
		mkdir "specifications"
 		echo "Specifications directory is sucessfully created"
	fi

	if [ "$(ls -A articles)" ];
		then
		cd $brlcad_resource_path 
		cp -r share/doc/html/articles/* "$wordpress_path/articles"
		echo "Articles is copied into articles directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/en/*.php
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/hy/*.php
 		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/it/*.php
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/ru/*.php
	else
		cd $brlcad_resource_path 
 		cp -r share/doc/html/articles/* "$wordpress_path/articles"
		echo "Articles is copied into articles directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/en/*.php
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/hy/*.php
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/it/*.php
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/ru/*.php

	fi 

	if [ "$(ls -A books)" ];
		then
		cd $brlcad_resource_path 
		cp -r share/doc/html/books/* "$wordpress_path/books"
		echo "books is copied into books directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' books/en/*.php
	else
		cd $brlcad_resource_path 
		cp -r share/doc/html/books/* "$wordpress_path/books"
		echo "books is copied into books directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' books/en/*.php
	fi 

	if [ "$(ls -A lessons)" ];
		then
		cd $brlcad_resource_path 
		cp -r share/doc/html/lessons/* "$wordpress_path/lessons"
		echo "lessons is copied into lessons directory"
		cd $wordpress_path 
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' lessons/en/*.php
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' lessons/es/*.php
	else
		cd $brlcad_resource_path 
		cp -r share/doc/html/lessons/* "$wordpress_path/lessons"
		echo "lessons is copied into lessons directory"
		cd $wordpress_path 
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' lessons/en/*.php
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' lessons/es/*.php
	fi 

	if [ "$(ls -A man1)" ];
		then
		cd $brlcad_resource_path 
		cp -r share/doc/html/man1* "$wordpress_path/man1"
		echo "man1 files is copied into man1 directory" 
		cd $wordpress_path 
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' man1/en/*.php
	else
		cd $brlcad_resource_path 
		cp -r share/doc/html/man1* "$wordpress_path/man1"
		echo "man1 files is copied into man1 directory"
		cd $wordpress_path 
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' man1/en/*.php
	fi 

	if [ "$(ls -A man3)" ];
		then
		cd $brlcad_resource_path 
		cp -r share/doc/html/man3/* "$wordpress_path/man3"
		echo "man3 files is copied into man3 directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' man3/en/*.php
	else
		cd $brlcad_resource_path 
		cp -r share/doc/html/man3/* "$wordpress_path/man3"
		echo "man3 files is copied into man3 directory"
		cd $wordpress_path 
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' man3/en/*.php
	fi 

	if [ "$(ls -A man5)" ];
		then
		cd $brlcad_resource_path 
		cp -r share/doc/html/man5/* "$wordpress_path/man5"
		echo "man5 files is copied into man5 directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' man5/en/*.php
	else
		cd $brlcad_resource_path 
		cp -r share/doc/html/man5/* "$wordpress_path/man5"
		echo "man files is copied into man5 directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' man5/en/*.php
	fi 

	if [ "$(ls -A mann)" ];
		then
		cd $brlcad_resource_path 
		cp -r share/doc/html/mann/* "$wordpress_path/mann"	
		echo "mann files is copied into mann directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' mann/en/*.php
	else
		cd $brlcad_resource_path 
		cp -r share/doc/html/mann/* "$wordpress_path/mann"
		echo "mann files is copied into mann directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' mann/en/*.php
	fi 

	if [ "$(ls -A presentations)" ];
		then
		cd $brlcad_resource_path 
		cp -r share/doc/html/presentations/* "$wordpress_path/presentations"
		echo "presentations is copied into presentations directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' presentations/en/*.php
	else
		cd $brlcad_resource_path 
		cp -r share/doc/html/presentations/* "$wordpress_path/presentations"
		echo "presentations is copied into presentations directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' presentations/en/*.php
	fi 

	if [ "$(ls -A specifications)" ];
		then
		cd $brlcad_resource_path 
		cp -r share/doc/html/specifications/* "$wordpress_path/specifications"
		echo "specifications is copied into specifications directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' specifications/en/*.php
	else
		cd $brlcad_resource_path 
		cp -r share/doc/html/specifications/* "$wordpress_path/specifications"
		echo "specifications is copied into specifications directory"
		cd $wordpress_path 	
		sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' specifications/en/*.php
	fi 	

	cd $wordpress_path

	else
		echo "Source or destination resource not found"
	fi
else
	echo "Nothing changes is found"
fi
