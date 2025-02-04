# cool-syntax-highlighter

Syntax Highlighter written in **Vim Script** for the Cool (Classroom Object-Oriented Language) programming language.

## Preview

<p align="center">
  <img src="https://github.com/user-attachments/assets/fcb261c1-13d7-4dd9-838a-9625f24075f7"/>
  <p align="center"><i>Resulting Syntax Highlight on .cl file</i></p>
</p>


## Installation

**NOTE: Following instructions is for setting up the syntax highlighter for Neovim.**

Clone the git repository.

```bash
git clone https://github.com/shakirc2983/cool-syntax-highlighter
```

Create syntax or ftdetect directories if needed
```
mkdir ~/.config/nvim/syntax
mkdir ~/.config/nvim/ftdetect
```

Within your working directory, copy the cool.vim into your ~/.config/nvim/syntax 
```bash
cp working directory/cool-syntax-highlighter/cool.vim ~/.config/nvim/syntax
```
Within the ftdetect direcotry, create a cool.vim file
```bash
ftdetect> touch cool.vim
```

Add the following line within the cool.vim script in ~/.config/nvim/ftdetect 
```vim
au BufRead,BufNewFile *.cl set filetype=cool
```

If the syntax highlighting isn't detected on startup for the file add this to your init.lua file
```lua
-- Force filetype detection on startup
vim.cmd("autocmd VimEnter * filetype detect")
```
