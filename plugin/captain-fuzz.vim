function! CaptainFuzz()
  let tmpfile = tempname()
  silent !clear
  execute "silent !fuzz > " .tmpfile
  redraw!
  let l = readfile(tmpfile) 
  execute "edit ". l[0]
endfunction
