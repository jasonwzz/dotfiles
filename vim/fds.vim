if !(system('hostname -s') =~ "fxdeva") 
  finish
endif

if has('nvim')
  if deinloaded
    call dein#add('https://github.factset.com/zwang/deoplete-clang2')
  endif
endif

" deoplete-clang2 settings
let g:deoplete#sources#clang#executable = '/home/user/zwang/local/clang/trunk/bin/clang'
let g:deoplete#sources#clang#flags = ['-I/home/dev/fonix/online/qa/src/X86_64/el6/include','-I/home/dev/fonix/online/qa/src','-I.','-IX86_64/el6/include','-isystem/home/fds/build/include/thrift','-isystem/home/fds/build/include','-isystem/usr/include/freetype2','-isystem/usr/include/libxml2','-I/usr/include','-I/usr/lib/gcc/x86_64-redhat-linux/4.4.4/include','-I/export/fds/Linux_RHEL6_x86_64/build/include/c++/4.4.4','-I/export/fds/Linux_RHEL6_x86_64/build/include/c++/4.4.4/x86_64-redhat-linux','-D_GLIBCXX_VISIBILITY=0','-DCRYPTOPP_ENABLE_NAMESPACE_WEAK','-DFDS_USE_SYSTEM_CRYPTOPP','-DFDS_USE_SYSTEM_XERCES','-DFDS_USE_SYSTEM_ZEROMQ','-D__USE_STD_IOSTREAM','-DFONIX_WRAPPING_CXA_THROW','-DFDS_TOOLKIT','-DSINGLE_USER_ONLINE_ONLY','-DFDS_ANSI64','-DFDS_FORTRAN_64','-DFDS_ONLINE','-DFDS_USE_BOOST_1_34','-DNDEBUG','-D_GNU_SOURCE','-D__IEEE_FLOAT','-D__NEW_STARLET','-DFDS_EXPORT_ENABLED', '-include', '/home/dev/fonix/online/qa/src/first_include.h', '-fexceptions']

" ctrlp setting
let g:ctrlp_root_markers = ['.rakefds', '.p4rc','.git']

" system settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/X86_64/*,*/X86_64*/*,*/regression/*,*/log/*,*/output/*,*/.padevenv/*
set path=.,$qa,$vms_include,,   " This is a list of directories
                                 " which will be searched
                                 " e.g. you could use ":find pa_options_factset.json" 
                                 " to open $qa/pa_options_factset.json


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""       Perforce   Hotkeys        """""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Perf edit current file (control pe)
function! P4Edit()
    if has("vms")
        return '!perf edit %'
    elseif has("unix")
        return '!p4 edit %'
    else
        return ''
    endif
endfunc

function! P4Checkout()
  if has("vms")
    echo "vms not supported"
  elseif has("unix")
    :exec "!p4view \/m" expand('%:t')
    :exec "!p4 sync" expand('%:t') "@online_qa"
    :exec "!p4 edit" expand('%:t') 
    :e %:t
  endif
endfunc

function! OpenQA()
  if has("vms")
    echo "vms not supported"
  elseif has("unix")
    :tabe $qa/%:t
  endif
endfunc

nmap <Leader>fe :exec P4Edit()<CR>
nmap <Leader>fo :exec P4Checkout()<CR>
nmap <Leader>qa :exec OpenQA()<CR>
