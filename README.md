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

Your prompt will change as you edit files and forget to commit. I will go from green:

To yellow after 10 minutes:

And to red after 20 minutes:


## Installation

Installation is easy. Clone, cd, rake, profit.

```sh
cd && git clone https://github.com/thatrubylove/dotfiles.git && cd ~/dotfiles && rake
```

## Rubylove Blog

http://rubylove.io
