sum-it.vim
--------------
This plugin sums up your selected text.

![sample](https://s3.amazonaws.com/f.cl.ly/items/04440p0N3w2c2o2p3Q3M/output.gif)


Install
--------------------
`NeoBundle 'TKNGUE/sum-it.vim'`

Configuration
--------------------
I recommend you that you use this plugin with 'lightline.vim'

for example, like below:
```vim
function! MyCount()
    if mode() =~ '[vV]\|CTRL-V' 
        return sumit#count_selected_text()
    else  
        return ''
    endif
endfunction  


let g:lightline = {
            \ 'active': {
            \ 'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename'] ],
            \ 'right': [ [ 'lineinfo' ],
            \            [ 'percent' ],
            \            [ 'fileformat', 'fileencoding', 'filetype' ],
            \            [ 'count'] ],
            \ },
            \ 'component_function': {
            \   'count': 'MyCount',
            \ }}
```

Have a nice vim life!
