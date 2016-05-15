# linuxvoice-publishing
Code and files to accompany a Linux Voice article

- **test** - a very simple example that just contains a few examples of how to use markdown and a script that uses markdown_py to convert it to test.html
- **mybook** - markdown and CSS files that form the basis for a book. The script make_book.sh assembles the book and will refresh a preview of it if the midori web browser is available
- **epub** - an epub that is constructed from the output of mybook (mybook.html) plus its CSS file.

To make an epub out of the epub dir, cd into the dir and do the following:

    zip -0X mybook.epub mimetype
    zip -Xr9D mybook.epub META-INF/ OEBPS/
    
The result of doing this is the file mybook.epub
