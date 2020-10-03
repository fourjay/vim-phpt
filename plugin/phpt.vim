" phpt support for vim
" Maintainer:  josef.fortier@gmail.com
" Version:    0.1
" Description:    Long description.
" License:    Vim License (see :help license)
" Location:    plugin/%FFILE%
" Website:    https://github.com/%HERE%/phpt
"
" See phpt.txt for help.  This can be accessed by doing:
"
" :helptags ~/.vim/doc
" :help phpt

" Vimscript Setup: {{{1
" Allow use of line continuation.
let s:save_cpo = &cpo
set cpo&vim

" load guard
if exists("g:loaded_phpt")
      \ || v:version < 700
      \ || v:version == 703 && !has('patch338')
      \ || &compatible
  let &cpo = s:save_cpo
  finish
endif
let g:loaded_phpt = 1

if !exists('g:phpt_test_support')
    let test#custom_runners = {'phpt': ['PhpUnit']}
endif
" Teardown: {{{1
" reset &cpo back to users setting
let &cpo = s:save_cpo

