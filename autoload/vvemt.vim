" File: vue.vim
" Author:	joeeee44 <eu5t455@gmail.com>
" Last Change:	2018 Oct 22
" License:	This file is placed in the public domain.

scriptencoding utf-8

if exists('g:loaded_vvemt')
    finish
endif
let g:loaded_vvemt = 1

let s:save_cpo = &cpoptions
set cpoptions&vim

function! vvemt#Vvemt()
  set tabstop=2
  :set filetype=vue
  let s:str = "<template>\n
        \ \<div>\n
        \ \b</div>\n
        \ \b</template>\n\n
        \ <script>\n
        \ export default {\n
        \ props: {},\n
        \ components: {},\n
        \ data() {\n
        \ return {},\n
        \ },\n
        \ computed: {},\n
        \ watch: {},\n
        \ methods: {}\n
        \ \b}\n
        \ </script>\n\n
        \ <style lang=\"scss\" scoped>\n
        \ </style>
        \ \n"
  execute ":normal o" . s:str 
endfunction

let &cpoptions = s:save_cpo
unlet s:save_cpo
