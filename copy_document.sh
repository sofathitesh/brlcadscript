brlcad_resource_path="/home/sofat/Desktop/ne/"
wordpress_path="/var/www/html/docbook/"

#Create the directory in wordpress root folder
cd $wordpress_path
mkdir articles
mkdir books
mkdir lessons
mkdir man1
mkdir man3
mkdir man5
mkdir mann
mkdir presentations
mkdir specifications

#cp the all document to wordpress root directories
cd $brlcad_resource_path 
cp -r share/doc/html/articles/* "$wordpress_path/articles"
cp -r share/doc/html/books/* "$wordpress_path/books"
cp -r share/doc/html/lessons/* "$wordpress_path/lessons"
cp -r share/doc/html/man1* "$wordpress_path/man1"
cp -r share/doc/html/man3/* "$wordpress_path/man3"
cp -r share/doc/html/man5/* "$wordpress_path/man5"
cp -r share/doc/html/mann/* "$wordpress_path/mann"
cp -r share/doc/html/presentations/* "$wordpress_path/presentations"
cp -r share/doc/html/specifications/* "$wordpress_path/specifications"

# Remove the all extra contents from php files 
cd $wordpress_path
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/en/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/hy/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/it/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' articles/ru/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' books/en/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' lessons/en/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' lessons/es/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' man1/en/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' man3/en/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' man5/en/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' mann/en/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' presentations/en/*.php
sed -i 's/<?xml version="1.0" encoding="UTF-8"?>//g' specifications/en/*.php

