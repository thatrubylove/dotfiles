# Brought to you from the people behind www.rubycasts.io

Check out these awesome [ruby and rails screencasts](https://www.rubycasts.io)! There is 1 15 minute cast released every week as well as either a 2 Minute Ruby or a 2 Minute Rails screencast!

# The Rubylove Dotfiles

I have a confession to make. I am a thief. I steal great ideas and source code and make it my own. Want to know who I have been influenced by and stolen from? Check out my extensive thank you in my [ruby manifesto](https://github.com/rubylove/ruby_programming_manifesto).

My philosophy is this, test, integrate, extend. And to me, workflow is essential. Therefore I am always on the look out for better tools and workflows and my dotfiles are an extension of that.


## What is included?

### "dot" files

The following "dot" files are included. 

* ackrc
* gemrc
* gitignore
* vimrc
* zlogin (empty)
* zshrc

### Homebrew, Vim, Chruby, Ruby and proper paths and shit!

This script assumes you are running a mac. It will set up the following if you have not already installed it:

* [Homebrew](http://brew.sh/)
* [Vim](http://www.vim.org/)
* [Vundle](https://github.com/gmarik/Vundle.vim)
* [Zsh](http://www.zsh.org/)
* [chruby](https://github.com/postmodern/chruby)
* [ruby-install](https://github.com/postmodern/ruby-install)
* [Ruby](https://github.com/ruby/ruby)

### A proper prompt

Knowing what directory you are in is vital. Knowing what git branch you are in is just_as_important!

Your prompt will look like this when you are in a git directory and the tree is clean:

It will look like this when your tree is *dirty*

### Stop using rvm and rbenv

Uninstall RVM and rbenv. Do it now cavewomen and cavemen. This will install chruby with is much_better. It doesn't mess with your paths and I added some yummy goodness... Check out the link to chruby above to see why.

### No mas bundle exec, gemsets, or system gem collisions!

This setup includes an alias for bundling gems with binstubs (no bundle exec crap) in the local directory you are in. It will automatically be at the front of your path, so cd into your ruby app with a gemfile, then.....

```bash
b
Fetching gem metadata from https://rubygems.org/. ........
Fetching version metadata from https://rubygems.org/..
.....
```

Yes, you bundle by just typing b... did I mention I am a lazy bastard?

### More cool aliases:

Want to see your aliases? In any unix based system just type *alias* and it will print them out. With this you get even more access!!!

When you type *aliases* and hit return it opens you aliases in vim!


### Vim goodness

Vim is configured to actually be useful here, and without installing bloated things like janus that will run slow as mucky muck. fuck the mucky muck.

Even cooler is when you want to edit your vimrc file you just type *,v* in vim and it will open it. Close your vimrc with a write and it will reload it in vim!

## Installation

Installation is easy. Clone, cd, rake, profit.

```sh
cd && git clone https://github.com/thatrubylove/dotfiles.git && cd ~/dotfiles && rake
```

## Please Note

You need to go into your `gitconfig` file and under `[user]` change your `name` and `email`. Then go down to bottom of file, and change your `[github]` username to reflect your GitHub user name. 

## Rubylove Blog

http://rubylove.io
