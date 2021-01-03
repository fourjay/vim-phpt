if exists('current_compiler')
    finish
endif
let current_compiler = 'phpt'

let s:save_cpo = &cpoptions
set cpoptions&vim

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=phpunit\ %
" CompilerSet errorformat = 

" Cleanup at end
let &cpoptions = s:save_cpo
