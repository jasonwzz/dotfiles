
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""     Tabs and scrolling      """"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Use the appropriate number of spaces to insert a	<Tab>.
set expandtab

"<Tab> does what you think it should do according to the situation
set smarttab

"Copy indent from current line when starting a new line
set autoindent

"Smart indent
set smartindent

"don't wrap up the long lines
set nowrap

"move 5 chars at the time
set sidescroll=5

" Tabs are 2 spaces
set ts=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""       Files, backups and undo     """""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set undofile
exe "set undodir='".$HOME."/.vim/files/undo/'"
