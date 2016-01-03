"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"设定 gvim 运行在增强模式下,不使用vi的键盘模式
set nocompatible

"设置支持多语言,解决乱码
"设置内部编码为utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,default,latin1

"解决consle输出乱码
language messages zh_CN.utf-8

"帮助菜单语言
set helplang=cn

" Sets how many lines of history VIM has to remember
 set history=700

 " Enable filetype plugins
 filetype on
 filetype plugin on
 filetype indent on

 " Set to auto read when a file is changed from the outside
 set autoread

 " With a map leader it's possible to do extra key combinations
 " like <leader>w saves the current file
 let mapleader = ","
 let g:mapleader = ","

 " Fast saving
 nmap <leader>w :w!<cr>

 "启动时不显示援助提示
"set shormess=atI

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the cursor - when moving vertically using j/k
"光标离上下边界7行时开始滚屏
set so=7

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
  set wildignore+=.git\*,.hg\*,.svn\*
endif

 " Height of the command bar
 set cmdheight=2


 " Configure backspace so it acts as it should act
 set backspace=eol,start,indent
 set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Following line clears the search highlights when pressing Lb
 nnoremap <leader>/ :nohlsearch<CR>
 
"Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

try
  colorscheme desert
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions+=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set noundofile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;) 
set smarttab

"对于不同类型的文件，进行自定义设置
au FileType html,python,vim,javascript,css setl shiftwidth=2
au FileType html,python,vim,javascript,css setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4

"设置每行的最大字符数，超过的话，将换行
set textwidth=80

" Linebreak on 500 characters
set lbr
set tw=500

set ai    "Auto indent
set si    "Smart indent
set wrap  "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
"vnoremap <silent> * :call VisualSelection('f')<CR>
"vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Moving Between Windows
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>wo <C-w>o
nnoremap <Leader>wv <C-w>v<C-w>l
nnoremap <Leader>ws <C-w>s
nnoremap <Leader>ww <C-w><C-w>


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ \ \ \ \line:\%-14.(%l,%c%V%)\ %P


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" type S, then type what you're looking for, a /, and what to replace it with
nmap S :%s/<C-R><C-W>\>//g<LEFT><LEFT>
vmap S :s/<C-R><C-W>\>//g<LEFT><LEFT>

inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
imap { {}<ESC><LEFT>
inoremap } <c-r>=ClosePair('}')



"基本编辑器设置
set number          "显示行号
set laststatus=2    "显示状态栏 (默认值为 1, 无法显示状态栏)
set cmdheight=1     "设定命令行的行数为 1

set showtabline=2   "显示tab标签
set tabline+=%f     "tab标签
" Enable Code Folding
set foldenable
set foldmethod=syntax
set mouse=a         "任何情况都可以使用鼠标）

"工作目录随文件变
autocmd BufEnter * cd %:p:h
"不显示工具条
set guioptions-=T

" 配置文件.vimrc更改后自动重新载入使设置生效
autocmd! bufwritepost .vimrc source ~/.vimrc 
"设置重新载入.vimrc快捷键
map <silent> <leader>ss :source ~/.vimrc<cr>
" 设置快速编辑.vimrc快捷键
map <silent> <leader>ee :e ~/.vimrc<cr> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ClosePair(char)  
  if getline('.')[col('.') - 1] == a:char  
    return "\<Right>"  
  else  
    return a:char
endfunction  

function! HasPaste()
  if &paste
    return 'PASTE MODE '
  en
  return ''
endfunction

""新建.html,.php文件自动插入文件头
"autocmd BufNewFile *.html,*.php exec ":call MySetTitle()"
""定义函数SetTitle,自动插入文件头
"func MySetTitle()
"  if &filetype == 'html'
"    call setline(1,"<!DOCTYPE html>")
"    call append(line("."),"<html>")
"    call append(line(".")+1,"  <head>")
"    call append(line(".")+2,"     ")
"    call append(line(".")+3," </head>")
"    call append(line(".")+4,"</html>")
"    call append(line(".")+5,"")
"  endif
"  if &filetype == 'php'
"    call setline(1,"<?php")
"    call append(line("."),"")
"  endif
"endfunc
"


map <F5> :call CompileRun(  )  <CR>
func! CompileRun() 
  exec "w"
  if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!time ./%<"
  elseif &filetype = 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype = 'sh'
    :!time bash %
  elseif &filetype = 'python'
    exec "!time python2.7 %"
  elseif &filetype = 'html'
    exec "!firefox % &"
  endif
endfunc

"C,C++的调试
map <F8> :call Rungdb()<CR>
func! Rungdb()
  exec "w"
  exec "!g++ % -g -o %<"
  exec "!gdb ./%<"
endfunc


"function! CmdLine(str)
"    exe 
"menu Foo.Bar :" . a:str
"    emenu Foo.Bar
"    unmenu Foo
"endfunction
"
"function! VisualSelection(direction) range
"    let l:saved_reg = @"
"    execute 
"normal! vgvy"
"
"    let l:pattern = escape(@", '\\/.*$^~[]')
"    let l:pattern = substitute(l:pattern, 
"\n$", 
"", 
"")
"
"    if a:direction == 'b'
"        execute 
"normal ?" . l:pattern . 
"^M"
"    elseif a:direction == 'gv'
"        call CmdLine("vimgrep".'/'.l:pattern.'/' .' **/*.')
"    elseif a:direction == 'replace' 
"        call CmdLine("%s". '/'.l:pattern.'/')
"    elseif a:direction == 'f' 
"        execute 
"normal /".l:pattern."^M"
"    endif
"
"    let @/ = l:pattern
"    let @" = l:saved_reg
"endfunction


" Returns true if paste mode is enabled
