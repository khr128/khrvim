set guioptions-=T
set guioptions-=r
set guioptions-=m
set guioptions-=L
set guioptions-=t
set guioptions+=a
set cc=120

function! DumbBalloonExpr()
  return v:beval_lnum . ":" . v:beval_col
endfunction
set balloonexpr=DumbBalloonExpr()
