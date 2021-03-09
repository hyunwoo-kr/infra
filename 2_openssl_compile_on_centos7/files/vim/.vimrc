" Syntax Highlighting
if has ("syntax")
    syntax on
endif
" 자동 인덴트
set autoindent

" 줄번호 , set nu! 끄기
set nu

" 자동 주석 기회 붙이기, set formatoptions-=r 끄기
set formatoptions+=r

" Tag 너비
set ts=4

" 자동 인덴트 할 때 너비
set shiftwidth=4

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

set paste "붙여넣기 계단현상 없애기

set ruler " 현재 커서 위치 표시
colorscheme darkblue