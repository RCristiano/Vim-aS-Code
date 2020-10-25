# Vim aS Code

NeoVim with VSCode inspiration

## Prints

![print](vimascode.png)
 
## Requirements
- [NeoVim](https://github.com/neovim/neovim)
- [vim-plug](https://github.com/junegunn/vim-plug/)
- [ctags](https://github.com/universal-ctags/ctags)

* Some language especific extensions have its own requirements

### Python
- [pynvim](https://github.com/neovim/pynvim)
- python3

### GO

Go extensions was configured using this [guide](https://octetz.com/docs/2019/2019-04-24-vim-as-a-go-ide/).

## Instalation

### NeoVim

Move init.vim file and extensions folder to ~/.config/nvim/

```sh
mv init.vim ~/.config/nvim/
mv -r extensions ~/.config/nvim/
```

Then run:

```
:PlugInstall
```
