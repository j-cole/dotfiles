set nocompatible

let mapleader = ','

function! s:SourceConfigs()
  for config in split(globpath('~/.vim/rcfiles', '*'), '\n')
    if filereadable(config)
      execute 'source' config
    endif
  endfor
endfunction

call plug#begin('~/.vim/plugged')
call s:SourceConfigs()
call plug#end()
