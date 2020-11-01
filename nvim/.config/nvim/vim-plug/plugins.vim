" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'
	" File Explorer
	Plug 'scrooloose/NERDTree'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
    	" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
	Plug 'junegunn/vim-easy-align'
	" Distraction-free writing in Vim
	Plug 'junegunn/goyo.vim'
  " Rainbow Parenthesis Improved
  Plug 'junegunn/rainbow_parentheses.vim'
  " Nerd Commenter
  Plug 'preservim/nerdcommenter'
  " monochrome - A dark Vim color scheme for your focused hacking sessions
  Plug 'fxn/vim-monochrome'
  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

call plug#end()
