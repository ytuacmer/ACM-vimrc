" Vim global plugin for mappings
" Last Change: 
" Maintainer: svtter <svtter@qq.com>
" Author: svtter
" License: GPL


colo evening		                                  "evening
syntax on  			                                  "syntax
set laststatus=2                                      "启用状态栏信息
set cmdheight=2                                       "设置命令行的高度为2，默认为1
set cursorline                                        "突出显示当前行
set shortmess=atI                                     "去掉欢迎界面
set nu				                                  "number
set tabstop=4		                                  "tab
set shiftwidth=4	                                  "换行自动缩进
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度的空格
set smartindent                                       "启用智能对齐方式
set foldenable                                        "启用折叠
set mouse=a			                                  "mouse use
set foldmethod=indent                                 "indent 折叠方式
set ignorecase                                        "搜索模式里忽略大小写
set smartcase                                         "如果搜索模式包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用



set guifont=DejaVu\ Sans\ Mono\ Bold\ 10              "设置字体:字号（字体名称空格用下划线代替）


" Map:

let mapleader = ","

" Esc
inoremap <Esc> <nop>
inoremap qq <ESC>

" file
nnoremap <Leader>w :w<CR>
nnoremap <Leader>b :ls<CR>
nnoremap <Leader>q :q<CR>

" file_explore
nnoremap <Leader>d :Vexplore<CR>

" edit
nnoremap <Tab> ddO

" 复制到系统粘贴
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" 全选
nnoremap <Leader>aa ggVG

" map
map j gj
map k gk

" 用于缓存区的快速切换<Leader> t键
nnoremap <Leader>tj :bn<CR>
nnoremap <Leader>tk :bp<CR>
nnoremap <Leader>tn :tabnew<CR>

" 移动窗口
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

" F8 编译调试（仅限于单文件)
noremap <F8> :call Debug()<CR>
inoremap <F8> <ESC>:call Debug()<CR>

func! Debug()
    exec 'w'
    exec '!g++ % -DDEBUG -g -O2 -o %<'
    exec '!gdb ./%<'
endfunc

func! Run()
    exec 'w'
    exec '!g++ % -DDEBUG -g -O2 -o %<'
    exec './%<'
endfunc


" For ACM
nnoremap <Leader>ii :vs input<CR>
nnoremap <Leader>io :vs ouput<CR>
" temp file
nnoremap <Leader>nt :call TempCpp()<CR> 

func! TempCpp()
    execute 'e /tmp/tmp.cpp'
endfunction
