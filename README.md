# Updating my Blog with a Shell Script

I learned to write shell scripts to more efficiently update my personal blog, [supremecourt.cool](https://www.supremecourt.cool/), a collection of my favorite words and quotes. This repository contains the script I use to add words and its associated template file, both stored in `~/bin`.

The blog is hosted through [blot.im](https://blot.im/), an interfaceless service which turns a folder into a blog.

Using the git client (other options include Google Drive and Dropbox), the following instructions are what I follow to add a new word to my site. I plan to add a script to quickly add quotes, too.

## Steps to Add a New Word from the Terminal:

1. Run `cd ~/Documents/supremecourt/Posts/`.
2. Run `blot_word.sh "word" "definition"`.
3. Run `echo $BLOT` and copy the repo password, which has to be manually entered to access the git repo. (I stored this in `~/.zshrc`.)
4. Run `git add . && git commit -m "commit message here" && git push`.
5. Enter blot username.
6. Copy the password.

Refresh the site, and it should be updated!

## Notes for When I Add a Script for Quotes:

- Store the script and template in `~/bin`.
- Run `chmod +x ~/bin/[file_name].sh` to ensure the script is executable from anywhere on the local machine.
- Run `source [file_name].sh` to ensure it is updated from the current terminal the first time using it.
