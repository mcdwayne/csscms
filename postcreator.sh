#!/bin/bash

# So you want to make a new post?  
# Great, use this tool ONLY from the root directory of your project.  
# It creates a new postname.html, postname.css and swaps out the needed strings to use the post name
# Also, insert the new link into the postindex.html file at line 40 (which should shove the other posts down in the list.)
# TODO make a postdelete.ch utility.
# To use, clone the repo, chmod this file and ./ it!  


if [ -z "$1" ]; then
	echo -n "Name your post as a single dash-connected-string, leave off the suffix please:  " && read POSTNAME
else  
	POSTNAME=$1
fi


cp src/POSTHTML-TEMPLATE.html posts/${POSTNAME}.html
cp src/POSTCSS-TEMPLATE.css css/postcss/${POSTNAME}.css

sed -i '' "s/CONTENTCSSTOREPLACE/${POSTNAME}/g" posts/${POSTNAME}.html

sed -i '' "s/CONTENTTOREPLACE/${POSTNAME}/g" posts/${POSTNAME}.html

sed -i '' "s/CONTENTTOREPLACE/${POSTNAME}/g" css/postcss/${POSTNAME}.css

NEWPOSTHTMLINDEX="<a href='${POSTNAME}.html'>${POSTNAME}</a><br><br>"
ex -s -c "40i|${NEWPOSTHTMLINDEX}" -c x posts/postindex.html
