"------------------------------------------------------------------------
"mine
"------------------------------------------------------------------------
"show
set number
set cursorcolumn
set cursorline
set showcmd
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
colorscheme desert
set guifont=Ubuntu_Mono:h12:cANSI:qDRAFT
set nowrap
set guioptions+=b

"filetype
"auto BufRead,BufNewFile *.sv,*.sva set filetype=systemverilog

"search
set showmatch
set hlsearch
set incsearch

"edit
set nobackup
set noswapfile
"set undofile
"autoread
set undodir=~/.vim/.undo/

"fold
set foldmethod=manual

"----------------------------------------------------------------------------------------
"other
"----------------------------------------------------------------------------------------
let mapleader = ";"
inoremap <c-p> a<backspace><esc>pa
inoremap <c-h> <esc>ha
inoremap <c-j> <esc>ja
inoremap <c-l> <esc>la
inoremap <c-k> <esc>ka
"make delete not copy
nnoremap D "_d
nnoremap DD "_dd
nnoremap X "_x

""----------------------------------------------------------------------------------------
""auto open last files
""----------------------------------------------------------------------------------------
"au VimLeave * mks! $TMP/Session.vim
"if expand("%")==""
"    if(expand("$TMP/Session.vim")==findfile(expand("$TMP/Session.vim")))
"         silent :source $TMP/Session.vim
"    endif
"endif

"----------------------------------------------------------------------------------------
"vim plugin
"----------------------------------------------------------------------------------------
set pythonthreedll=C:\Users\Cmind-semi\AppData\Local\Programs\Python\Python38\python38.dll
"my plugin
let &runtimepath=&runtimepath.',E:\qingxin.luo\mycodes\vim\myplugin'
"source E:\qingxin.luo\mycodes\vim\plugin\automatic.vim
"third party plugin
source E:\qingxin.luo\mycodes\from_github\vim-plug\plug.vim
"func for preview
function OpenMarkdownPreview (url)
    " windows, including mingw
    let s:start_cmd_value = 'start msedge ' . a:url . '.html'
    "let s:start_cmd_value = 'start iexplore ' . a:url . '.html'
    call system(s:start_cmd_value)
endfunctio
"plug manager
call plug#begin('~/.vim/plugged')
" markdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.vim' "实时预览插件
Plug 'iamcco/mathjax-support-for-mkdp' "latex数学公式支持
Plug 'ferrine/md-img-paste.vim' "从粘贴板 paste
"let g:mkdp_browserfunc = 'MKDP_browserfunc_default' "preview 使用默认设置
"let g:mkdp_browserfunc = 'C:\Program Files\ (x86)\Microsoft\Edge\Application\msedge.exe' "preview 设置
"let g:mkdp_browserfunc = 'OpenMarkdownPreview'
"let g:mkdp_browser = 'C:\Program Files\ (x86)\Microsoft\Edge\Application\msedge.exe'
"let g:mkdp_browserfunc = 'start msedge' "preview 设置
"let g:mkdp_auto_start = 0 "markdown preview 全部自动
"let g:mkdp_auto_open = 0
"let g:mkdp_auto_close = 0
let g:mdip_imgdir='.' " image paste 的文件夹目录
"快捷键 <leader>i 插入图像，默认的<leader>是"\"
autocmd FileType markdown nmap <buffer><silent> <leader>i :call mdip#MarkdownClipboardImage()<CR>
call plug#end() "should :PlugInstall to install plugin

" Markdown
nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式
imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式
nmap <silent> <C-F8> <Plug>StopMarkdownPreview    " 普通模式
imap <silent> <C-F8> <Plug>StopMarkdownPreview    " 插入模式

