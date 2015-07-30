set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set background=dark
set mouse=a
set hlsearch
set wildmenu
set fileencodings=utf-8,gb18030,gbk,gb2312
map <c-v> "+p
map <F5> :w<CR>:silent make<CR>:copen<CR>:redraw!<CR>
map <F6> :!./%<<CR>
syntax on

execute pathogen#infect()

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

let g:NERDTree_title="[NERDTree]"  
let NERDTreeMinimalUI=1
  
function! NERDTree_Start() 
    exec 'NERDTree' 
endfunction 
 
function! NERDTree_IsValid() 
    return 1 
endfunction

let g:winManagerWindowLayout = 'NERDTree|TagList'
let g:persistentBehaviour=0
nmap <silent> wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR>

autocmd FileType cpp set makeprg=g++\ -Wall\ -g\ -o\ %<\ %
autocmd FileType java set makeprg=javac\ %
autocmd FileType tex set makeprg=xelatex\ %

