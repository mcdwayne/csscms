#!/bin/bash
# You could just do through and delete the post, the css and remove it from the index
# But people want tools.
# Just need name of the file exaclty as it is without the suffix .html or .css

if [ -z "$1" ]; then
	echo -n "Name of the file you want to delete. Leave off the .txt or .css suffix:  " && read POSTNAME
else  
	POSTNAME=$1
fi

echo -n "You are really, really sure? There is no undo tool, but you can use git to undo this. "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then

rm -rf posts/${POSTNAME}.html

rm -rf css/postcss/${POSTNAME}.css

sed -i '' "/${POSTNAME}/d" posts/postindex.html 

else

    echo "OK, run this again if you want to delete a post."

fi