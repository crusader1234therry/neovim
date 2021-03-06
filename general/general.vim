let mapleader = " "

let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = '#777777'

set wrap
set noswapfile incsearch
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab
set scrolloff=999
set nofoldenable
set guicursor=

set number relativenumber
let g:vimwiki_list = [{'path': '~/media/Documents/vimwiki', 'path_html': '~/media/Documents/public_html/'},
            \ {'path': '~/media/Documents/journal', 'path_html': '~/media/Documents/public_html/journal/', 'auto_diary_index': 1, 'template_path': '~/Documents/vimwiki/'},
            \ {'path': '~/media/Documents/fd', 'path_html': '~/media/Documents/fd/'}]

"set viminfo='10,\"100,:20,%,n~/.viminfo
set viminfo='100,n$HOME/.config/.viminfo
set termguicolors
set linebreak
set spell spelllang=en_us
"let g:airline#extensions#wordcount#enabled = 1
"let g:airline#extensions#wordcount#filetypes = '\vnotes|help|markdown|rst|org|text|asciidoc|tex|mail|vimwiki'
"let g:airline_theme='gruvbox'

"Theme specific
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

let wiki_1 = {}
let wiki_1.path = '~/media/Documents/vimwiki'
let wiki_2 = {}
let wiki_2.path = '~/media/Documents/journal'
let wiki_3 = {}
let wiki_3.path = '~/media/Documents/fd'

:hi CursorLine   cterm=bold ctermbg=white ctermfg=black
:set cursorline

"Goyo Settings
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  :hi CursorLine   cterm=bold ctermbg=white ctermfg=black
  :set cursorline
  Limelight
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  :hi CursorLine   cterm=bold ctermbg=white ctermfg=black
  :set cursorline
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

syntax on

let g:lightline = {
	\ 'colorscheme': 'one',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status'
	\ },
	\ }

highlight Normal guibg=none

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup mygroup
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
