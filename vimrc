" Plein de défauts bien pratiques (à garder en début de fichier)
set nocompatible

" Coloration syntaxique, indispensable pour ne pas se perdre dans les longs fichiers
syntax on

" Le complément du précédent, devine tout seul la couleur du fond (clair sur foncé ou le contraire)
set background=dark

"Détection du type de fichier pour l'indentation
if has("autocmd")
  filetype indent on
endif

" Si c'est pas déjà fait, affiche la position du curseur
set ruler

" Recherche en minuscule -> indépendante de la casse, une majuscule -> stricte
set smartcase

" Ne jamais respecter la casse (attention totalement indépendant du précédent mais de priorité plus faible)
set ignorecase

" Déplacer le curseur quand on écrit un (){}[] (attention il ne s'agit pas du highlight
set showmatch

" Affiche le nombre de lignes sélectionnées en mode visuel ou la touche/commande qu'on vient de taper en mode commande
set showcmd

" Met en évidence TOUS les résultats d'une recherche, A consommer avec modération
set hlsearch

" Laisse les lignes déborder de l'écran si besoin
set nowrap

" Affiche les numeros de ligne
set number

" Special développeurs
"
" Indispensable pour ne pas tout casser avec ce qui va suivre
set preserveindent
" indentation automatique
set autoindent
" Largeur de l'autoindentation
set shiftwidth=4
" Arrondit la valeur de l'indentation
set shiftround
" Largeur du caractère tab
set tabstop=8
" Largeur de l'indentation de la touche tab
set softtabstop=4
" Remplace les tab par des expaces
set expandtab
" Utilise shiftwidth à la place de tabstop en début de ligne (et backspace supprime d'un coup si ce sont des espaces)
set smarttab


" Affichage des caracteres invisibles
set list
set lcs:tab:>-,trail:.

" 80 char
set textwidth=79
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" use the mouse
set mouse=a

" backup, and put file to $HOME/.vim/backup
set backup
if filewritable(expand("~/.vim/backup")) == 2
    set backupdir=$HOME/.vim/backup
else
    if has("unix") || has("win32unix")
        call system("mkdir $HOME/.vim/backup -p")
        set backupdir=$HOME/.vim/backup
    endif
endif

" Enable file type plugins
filetype plugin on

" Auto completion - omni code
autocmd FileType python set omnifunc=pythoncomplete#Complete

let Tlist_Use_Right_Window = 1

"" Mapping
" pep8
let g:pep8_map='<F8>'
" python console
map <F2> :w\|!python %<CR>
" Tag list
map L :TlistToggle<CR>
" NERDTree
map E :NERDTree<CR>

