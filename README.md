# cool-syntax-highlighter

Syntax Highlighter written in **VIM Script** for the Cool (Classroom Object-Oriented Language) programming language.

## Preview

![](path_to_image)
*Resulting Syntax Highlighting on .cl file*

## Installation

Following instructions is for setting up the syntax highlighter for Neovim.

Clone the git repository.

```bash
git clone https://github.com/shakirc2983/cool-syntax-highlighter
```

Create syntax or ftdetect directories if needed
For nvim:
```
mkdir ~/.config/nvim/syntax
mkdir ~/.config/nvim/ftdetect/
```

Within your working directory, copy the cool.vim into your ~/.config/nvim/syntax 
```bash
cp working directory/cool-syntax-highlighter/cool.vim ~/.config/nvim/syntax
```
Within the ftdetect direcotry, create a cool.vim file
```bash
ftdetect> touch cool.vim
```

Add the following file within the script 
```vim
au BufRead,BufNewFile *.cl set filetype=cool
```
Edit your init.lua file

If the syntax highlighting isn't detected on startup for the file add this to your init.lua file
```lua
-- Force filetype detection on startup
vim.cmd("autocmd VimEnter * filetype detect")
```
