# vim-secil

This is a vim plugin for working with SELinux CIL policy language. At the moment it provides simple syntax highlighting for CIL policy.

## Installation

Using vundle, simply place the following in your .vimrc:

```
Plugin 'garyttierney/vim-secil'
```

## Usage

If you use the ctags options included in the etc/ directory vim will allow you to jump to definitions of macros and block namespaces using the usual tag navigation commands and hotkeys.

There is also a simple function named secil#GoToCurrentNamespace() which will find the current block you are in (using the `in` symbol) and navigate to its definition.

## TODO

[ ] - Use tagslist from vimscript for better navigation
[ ] - Allow jumping to current namespace using tags
[ ] - Investigate integration with tagbar

