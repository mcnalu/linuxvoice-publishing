#!/bin/bash
#Insert beginnning of HTML file and timestamp
cat head.html > mybook.html
echo "<p>Generated: " >> mybook.html
date  >> mybook.html
echo "</p>" >> mybook.html
#Create one big markdown file
echo "##Contents" > mybook.markdown
echo "[TOC]" >> mybook.markdown
cat chapter1.markdown >> mybook.markdown
cat chapter2.markdown >> mybook.markdown
#Create the html with a table of contents
markdown_py -x toc mybook.markdown >> mybook.html
#Finish off the HTML file
echo "</body></html>" >> mybook.html
midori -e Reload