function! sumit#count_selected_text()
    let l:text = @*
    let l:sum = 0.0
    let l:n_args = 0
    for val in split(l:text, '\s\+\|\n\|,\||')
        if val !~ '\d\+\.\?'
            continue
        endif
        let l:num = str2float(val)
        let sum += l:num
        let l:n_args += 1
    endfor
    if l:n_args == 0
        return ''
    endif
    let l:str = printf('sum:%3.1f ave:%3.1f', l:sum, l:sum * 1.0/l:n_args)
    return l:str
endfunction
