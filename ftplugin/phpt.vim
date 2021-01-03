if exists('b:did_ftpluginphpt')
    finish
endif
" Don't reload plugin for this buffer
let b:did_ftpluginphpt = 1
let s:save_cpo = &cpoptions
set cpoptions&vim
" setlocal completefunc=syntaxcomplete#Complete
" setlocal iskeyword=
setlocal commentstring=#\ %s
compiler phpt

if !exists('g:phpt_test_support')
    let test#custom_runners = {'phpt': ['PhpUnit']}
endif

" Return vim to users choice
let &cpoptions = s:save_cpo
