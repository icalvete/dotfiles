"
" The first time run:
"
" git clone https://github.com/gmarik/vundle.git ~/dotfiles/vim/bundle/vundle
" vim -u ~/dotfiles/bundles.vim +BundleInstall +q
"

source ~/dotfiles/bundles.vim
syntax on
set hlsearch
set incsearch
set number
set cursorline
set ruler
set ai
set si
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

runtime! macros/matchit.vi
"colorscheme vibrantink
colorscheme vividchalk
"colorscheme solarized
"set background=dark
"colorscheme codeschool

" Mappings
:map <C-d> :NERDTreeToggle<CR>

" Number lines on/off
map <F2> :set number!<CR>
map! <F2> <ESC><F2> i

" Make trailing space visible
map <F4> :set hls<CR>/\s\+$<CR>
map! <F4> <ESC><F4>i"

" Highlight on/off
map <F7> :set hls!<CR><Bar>:echo "HLSearch: " . strpart("OffOn", 3 * &hlsearch, 3)<CR>
map! <F7> <ESC><F7>i"

inoremap <M-o> <Esc>o
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

let g:ragtag_global_maps=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:Powerline_symbols='fancy'

" first, enable status line always
set laststatus=2

set noshowmode
set encoding=utf-8
set t_Co=256

" Return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction

function! InitializeDirectories()
    let separator = "."
    let parent = $HOME
    let prefix = '.vim'
    let dir_list = {
                \ 'backup': 'backupdir',
                \ 'views': 'viewdir',
                \ 'swap': 'directory' }

    if has('persistent_undo')
        let dir_list['undo'] = 'undodir'
    endif

    for [dirname, settingname] in items(dir_list)
        let directory = parent . '/' . prefix . dirname . "/"
        if exists("*mkdir")
            if !isdirectory(directory)
                call mkdir(directory)
            endif
        endif
        if !isdirectory(directory)
            echo "Warning: Unable to create backup directory: " . directory
            echo "Try: mkdir -p " . directory
        else
            let directory = substitute(directory, " ", "\\\\ ", "g")
            exec "set " . settingname . "=" . directory
        endif
    endfor
endfunction
call InitializeDirectories()
