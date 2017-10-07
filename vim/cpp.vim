"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""        C/C++ specific       """"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" some smart indent for C
set cindent

"	The 'cinoptions' affect the way 'cindent' reindents lines in a C program.
set cinoptions=:0,p0,t0

set cinwords=if,else,while,do,for,switch,case

" Show $ at end of line and trailing space as ~
" set lcs=tab:\ \ ,eol:$,trail:,extends:>,precedes:<

syn region myFold start="{" end="}" transparent fold
syn sync fromstart

" Add highlighting for function definition in C++
function! EnhanceCppSyntax()
  " class member variable syntax highlighting based on FDS convention
  hi default Member ctermfg=LightBlue guifg=LightBlue 
  syn match cppClassMemVariable "m_\w\+"
  hi def link cppClassMemVariable Member
  ""  syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
  ""  hi def link cppFuncDef Special
endfunction

autocmd Syntax cpp call EnhanceCppSyntax()


