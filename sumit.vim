if exists('g:loaded_lightline') && g:loaded_lightline
  finish
endif

let s:save_cpo = &cpo
set cpo&vim


let g:loaded_lightline = 1

let &cpo = s:save_cpo
unlet s:save_cpo
