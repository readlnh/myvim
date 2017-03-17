execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
"自适应不同语言的智能缩进
filetype indent on

"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"开启行号显示
set cursorline
"高亮显示搜索结果
set hlsearch

set mouse=a

set cindent
set nu
set expandtab
set tabstop=4
set shiftwidth=4
"set softtabstop=4

"基于语法的代码缩进
set foldmethod=syntax
set nofoldenable

map <C-n> :NERDTreeToggle<CR>

let g:miniBufExplMaxSize = 2
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapWindowNavVim = 1 

"配色
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
colorscheme molokai

nmap <F8> :TagbarToggle<CR>


map <C-T> :TlistToggle<CR>
let Tlist_Show_One_File=1    " 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1  " 当taglist是最后以个窗口时自动退出
let Tlist_Use_Right_Window=1 " 在右边显示taglist窗口
let Tlist_Sort_Type="name"   " tag按名字排序


function! CleverTab()
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
       return "\<Tab>"
    else
       return "\<C-N>"
    endif 
    endfunction    
    inoremap <Tab> <C-R>=CleverTab()<CR>

filetype plugin indent on
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2     " search namespaces in the current buffer   and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteScope = 1    " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

"stl自动补全
set tags+=~/.vim/tags/cpp_src/tags
"cocos2dx自动补全
"set tags+=/home/readlnh/LibEngine/cocos2d-x-3.13.1/tags
"opencv自动补全
set tags+=/home/readlnh/LibEngine/opencv/opencv-3.1.0/tags 
set tags+=/home/readlnh/LibEngine/opencv/tags 
"opengl自动补全
set tags+=/usr/include/GL/tags 

"":inoremap ( ()<ESC>i
""    :inoremap ) <c-r>=ClosePair(')')<CR>
""    :inoremap { {<CR>}<ESC>O
""    :inoremap } <c-r>=ClosePair('}')<CR>
""    :inoremap [ []<ESC>i
""    :inoremap ] <c-r>=ClosePair(']')<CR>
""    :inoremap " ""<ESC>i
""    :inoremap ' ''<ESC>i
""function! ClosePair(char)
""    if getline('.')[col('.') - 1] == a:char
""        return "\<Right>"
""    else
""        return a:char
""    endif
""endfunction

set encoding=UTF-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
