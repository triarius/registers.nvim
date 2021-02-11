" Maintainer:   Thomas Versteeg <thomas@versteeg.email>
" License:      GNU General Public License v3.0

" Prevent loading file twice
if exists('g:registers_loaded') | finish | endif

" Save user coptions
let s:save_cpo = &cpo
" Reset them to defaults
set cpo&vim

" Command to run our plugin
command! Registers lua require'registers'.registers()

" Restore after
let &cpo = s:save_cpo
unlet s:save_cpo

let g:registers_loaded = 1