"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copyright (c) 2016 DigitalX All Rights Reserved                       "
"                                                                       "  
"                       __   _(_)_ __ ___  _ __ ___                     "
"                       \ \ / / | '_ ` _ \| '__/ __|                    "  
"                        \ V /| | | | | | | | | (__                     " 
"                       (_)_/ |_|_| |_| |_|_|  \___|                    "
"                                                                       "
" Author:       malr00t <malr00t@hell.net>                              "
" Source:       https://github.com/pwilliam76/vimrc.git                 "
" CreateTime:   2016-12-19                                              "
" LastModified: 2016-12-21                                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                           Support Platforms                           "
"-----------------------------------------------------------------------"
"   Windows / MSYS                                                      "  
"   Linux                                                               "
"   Mac OS X                                                            "
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"   

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                               Reference                               "
"-----------------------------------------------------------------------"
"   http://www.oschina.net/code/snippet_574132_13357                    "  
"   https://github.com/chxuan/vimplus                                   "
"   https://github.com/f911/vimrc                                       "
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"   

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                       Judge OS and Terminal Type                      "
"-----------------------------------------------------------------------"
    let g:isWindows=0
    let g:isLinux=0
    let g:isMac=0
    let g:isGUI=0

    if(has("win32") || has("win64") || has("win95") || has("win16"))
        let g:isWindows=1
    elseif (has("macunix"))
        let g:isMac=1
    elseif(has("unix"))
        let g:isLinux=1
    endif

    if has("gui_running")
        let g:isGUI=1
    else
        let g:isGUI=0
    endif
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"{  Auto change to current dir
    autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif
"}


" { genernal settings
    syntax enable
    syntax on
    
    set autoindent
    set t_Co=256    "终端启用256色
    set cul 
    set shortmess=atI   
    autocmd InsertEnter * se cul    
    set ruler       "显示光标信息           
    set showcmd         
    set scrolloff=3     
    set laststatus=2
    set smartindent
    set cindent
    set cinoptions=g0,:0,N-s,(0
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set smarttab    "制定按一次backspace就删除当前字符
    set number
    set history=1000
    set hlsearch    "hilight search
    set incsearch   "increase search
    set langmenu=zh_CN.UTF-8
    set helplang=cn
    set cmdheight=2
    set autoread    "当文件在外部被修改，自动更新该文件
    set completeopt=preview,menu 
    set autowrite
    set magic                   
    set guioptions-=T           
    set guioptions-=m           
    set nocompatible
    set noeb
    set confirm
    set nobackup
    set noswapfile
    set noignorecase
    set linespace=0
    set wildmenu
    set backspace=2
    set whichwrap+=<,>,h,l
    set mouse=a
    set selection=exclusive
    set selectmode=mouse,key
    set report=0
    set fillchars=vert:\ ,stl:\ ,stlnc:\
    set showmatch
    set matchtime=1
    set scrolloff=3
    set completeopt=longest,menu
    set iskeyword+=.
    set termencoding=utf-8
    set encoding=utf8
    set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
    filetype on
    filetype plugin on
    filetype indent on
"}


"{ create file settings
    autocmd BufNewFile *.cpp,*.cc,*.c,*.hpp,*.h,*.sh,*.py exec ":call SetTitle()" 
    func SetTitle() 
	    if expand("%:e") == 'sh'
		    call setline(1,"\#!/bin/bash") 
		    call append(line("."), "") 
        elseif expand("%:e") == 'py'
            call setline(1,"#!/usr/bin/env python")
            call append(line("."),"# coding=utf-8")
	        call append(line(".")+1, "") 
        elseif expand("%:e") == 'cpp'
		    call setline(1,"#include <iostream>") 
		    call append(line("."), "") 
        elseif expand("%:e") == 'cc'
		    call setline(1,"#include <iostream>") 
		    call append(line("."), "") 
        elseif expand("%:e") == 'c'
		    call setline(1,"#include <stdio.h>") 
		    call append(line("."), "") 
        elseif expand("%:e") == 'h'
		    call setline(1, "#ifndef _".toupper(expand("%:r"))."_H")
		    call setline(2, "#define _".toupper(expand("%:r"))."_H")
		    call setline(3, "#endif")
        elseif expand("%:e") == 'hpp'
		    call setline(1, "#ifndef _".toupper(expand("%:r"))."_H")
		    call setline(2, "#define _".toupper(expand("%:r"))."_H")
		    call setline(3, "#endif")
	    endif
    endfunc 
    autocmd BufNewFile * normal G
"}


"{ Vundle
    set nocompatible              
    filetype off        

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'L9'
    Plugin 'chxuan/change-colorscheme'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'scrooloose/nerdtree'
    Plugin 'jistr/vim-nerdtree-tabs'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'Valloric/MatchTagAlways'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'docunext/closetag.vim'
    Plugin 'godlygeek/tabular'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-endwise'
    Plugin 'ctrlpvim/ctrlp.vim'
"    Plugin 'majutsushi/tagbar'
    Plugin 'octol/vim-cpp-enhanced-highlight'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'vim-scripts/a.vim'
    Plugin 'vim-scripts/DoxygenToolkit.vim'
    Plugin 'vim-scripts/SQLComplete.vim'
    Plugin 'vim-scripts/txt.vim'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'gorodinskiy/vim-coloresque'
    Plugin 'will133/vim-dirdiff'
    Plugin 'haya14busa/incsearch.vim'
    Plugin 'mhinz/vim-startify'
    Plugin 'tmhedberg/SimpylFold'
    Plugin 'scrooloose/syntastic'
    Plugin 'nvie/vim-flake8'
    Plugin 'vim-scripts/taglist-plus'
    
    call vundle#end()
    filetype plugin indent on
"}


"{ change-colorscheme
    map <F10> :NextColorScheme<CR>
    imap <F10> <ESC> :NextColorScheme<CR>
    map <F9> :PreviousColorScheme<CR>
    imap <F9> <ESC> :PreviousColorScheme<CR>
"}

"{ nerdtree
    map <F3> :NERDTreeToggle<CR>
    imap <F3> <ESC> :NERDTreeToggle<CR>
    "autocmd vimenter * if !argc() | NERDTree | endif
    "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"}

"{ Doxygen
    let g:DoxygenToolkit_authorName="libdxer"
    let s:licenseTag = "Copyright(C)\<enter>"
    let s:licenseTag = s:licenseTag . "For free\<enter>"
    let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
    let g:DoxygenToolkit_licenseTag = s:licenseTag
    let g:DoxygenToolkit_briefTag_funcName="yes"
    let g:doxygen_enhanced_color=1
    let g:DoxygenToolkit_commentType="Qt"
"}

"{ YCM
    let g:ycm_confirm_extra_conf = 0 
    let g:ycm_error_symbol = '>>'
    let g:ycm_warning_symbol = '>*'
    let g:ycm_seed_identifiers_with_syntax = 1 
    let g:ycm_complete_in_comments = 1 
    let g:ycm_complete_in_strings = 1 
    "let g:ycm_cache_omnifunc = 0 
    let mapleader = ","
    nnoremap <leader>u :YcmCompleter GoToDeclaration<CR>
    nnoremap <leader>i :YcmCompleter GoToDefinition<CR>
    nnoremap <leader>o :YcmCompleter GoToInclude<CR>
    nmap <F5> :YcmDiags<CR>
"}

"{ ctags
    set tags+=/usr/include/tags;
    set tags+=./tags;
"    set tags+=~/.vim/systags
"    set tags+=~/.vim/x86_64-linux-gnu-systags
    let g:ycm_collect_identifiers_from_tags_files = 1
    let g:ycm_semantic_triggers = {} 
    let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&',']']
"}

"{ a.vim: .h -> .cpp or .cpp -> .h
    nnoremap <silent> <F2> :A<CR>
"}

"{ tagbar
"    let g:tagbar_ctags_bin = '/usr/bin/ctags'
"    let g:tagbar_width = 30
"    map <F4> :TagbarToggle<CR>
"    imap <F4> <ESC> :TagbarToggle<CR>
"}

"{  taglist
    map <F4> : Tlist<CR>  ""按下F3就可以呼出了  
    "let Tlist_Auto_Open = 1                "在启动VIM后，自动打开taglist窗口  
    let Tlist_Ctags_Cmd = '/usr/bin/ctags'  "设定ctags的位置  
    let Tlist_Use_Right_Window=1            " 1为让窗口显示在右边，0为显示在左边  
    let Tlist_Show_One_File=0               "让taglist可以同时展示多个文件的函数列表，1显示多个,0显示当前  
    let Tlist_File_Fold_Auto_Close=1        "同时显示多个文件中的tag时，taglist只显示当前文件tag，>其他文件的函数列表折叠隐藏  
    let Tlist_Exit_OnlyWindow=1             "当taglist是最后一个分割窗口时，自动退出vim  
    "let Tlist_Use_SingleClick= 1           " 缺省情况下，在双击一个tag时，才会跳到该tag定义的位置  
    "let Tlist_Process_File_Always=0        "是否一直处理tags.1:处理;0:不处理  
"}

"{ colorscheme
    set background=dark
    let g:solarized_termcolors=256
    colorscheme solarized
    "colorscheme monokai
"}


"{ cpp_class_scope_highlight
    let g:cpp_class_scope_highlight = 1
    let g:cpp_experimental_template_highlight = 1
    let c_no_curly_error = 1
"}

"{ airline
    let g:airline_theme="luna"
    " let g:airline_theme="badwolf"
    let g:airline_powerline_fonts = 1
    "let g:airline_section_b = '%{strftime("%c")}'
    "let g:airline_section_y = 'BN: %{bufnr("%")}'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    nnoremap <C-N> :bn<CR>
    nnoremap <C-P> :bp<CR>
"}

"{ ctrlp
    let g:ctrlp_map = '<c-f>'
    let g:ctrlp_cmd = ':CtrlP'
    let g:ctrlp_working_path_mode = '0'
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"}
  
"{ vim-devicons
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
"}

"{ incsearch.vim
    map /  <Plug>(incsearch-forward)
    map ?  <Plug>(incsearch-backward)
    map g/ <Plug>(incsearch-stay)
"}

"{  cscope setting
    if has("cscope")
        " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
        set cscopetag
        set csprg=/usr/bin/cscope
        set csto=1
        set cst
        set nocsverb
        " add any database in current directory
        if filereadable("cscope.out")
            cs add cscope.out
        elseif $CSCOPE_DB!=""
            cs add $CSCOPE_DB
        endif

        " show msg when any other cscope db added
        set cscopeverbose

        nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
        nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
        nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
        nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
        nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
        nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
        nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
        nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
    endif
"}
