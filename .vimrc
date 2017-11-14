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

"" Spécial développeurs

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


" Affichage des caractères invisibles
set list
set lcs:tab:>-,trail:.

" 80 charractères
set textwidth=79
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Sauvegarde dans dossier $HOME/.vim/backup
set backup
if filewritable(expand("~/.vim/backup")) == 2
    set backupdir=$HOME/.vim/backup
else
    if has("unix") || has("win32unix")
        call system("mkdir $HOME/.vim/backup -p")
        set backupdir=$HOME/.vim/backup
    endif
endif

" Activation plugin/indent filetype
filetype plugin indent on

""" Utilisation de vim-plug
call plug#begin('~/.vim/plugged')

"" Nerd Tree
Plug 'scrooloose/nerdtree'
" Mapping
map <C-n> :NERDTreeToggle<CR>

"" Git
Plug 'airblade/vim-gitgutter'

call plug#end()

