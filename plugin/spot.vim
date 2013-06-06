" exit if already loaded
"
if exists(g:loaded_spot)
  finish
endif

" exit if in compatiblity mode
"
if &compatible
  echoh1 ErrorMsg
  echoh1 none
  finish
endif

" check for ruby
"
if !has("ruby")
  echoh1 ErrorMsg
  echon "Sorry, vim-spot requires Ruby support."
  finish
endif

let g:loaded_spot = "true"


ruby << EOF


