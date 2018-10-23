" File: vue.vim
" Author:	joeeee44 <eu5t455@gmail.com>
" Last Change:	2018 Oct 22
" License:	This file is placed in the public domain.

let s:save_cpo = &cpoptions
set cpoptions&vim

function! vvemt#Vvemt()
  set tabstop=2
  :set filetype=vue
  let s:str = "<template>\n
        \\<div>\n
        \\<h1 class=\"\"></h1>\n
        \<div class=\"\">\n
        \</div>\n
        \\b</div>\n
        \\b</template>\n\n
        \<script>\n
        \export default {\n
        \data() {\n
        \},\n
        \methods: {}\n
        \\b}\n
        \</script>\n\n
        \<style lang=\"scss\" scoped>\n
        \</style>
        \\n"
  execute ":normal o" . s:str 
endfunction

let &cpoptions = s:save_cpo
unlet s:save_cpo
