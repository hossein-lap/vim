"  _  _ ___	
" | || | __|   H
" | __ | _|	A
" |_||_|___|   P
"			  

" abreviations{{{
ab fsf Free Software Foundation
ab oss Open Source Software
ab het the
ab hte the
" « » ✓ ← ↔ ☞ ☜
" ⇒ ⇐ ⇔ ▸ □ ○
" æ œ ろ ĸ x -
"}}}
"
"" Inserting Symbols
"" \ca in my case to toggle this
nmap <space><space>s :call ToggleSYMB()<CR>
"imap <C-s><C-s>s <esc>:call ToggleSYMB()<CR>a

let g:SYMBLOn=0

function! ToggleSYMB()
	if !g:SYMBLOn
		call SYMBL()
	else
		cal SYMBLOff()
	endif
endfunction

function! SYMBL()
	echo "SYMBL macro activated."
	let g:SYMBLOn=1
	imap > ›
	imap < ‹
	imap >> »
	imap << «
	imap -> →
	imap -< ←
	imap => ⇒
	imap =< ⇐
	imap ;> ▸
	imap x ×
	imap . •
	imap , ·
	imap ;e ≡
	imap ;c ©
	imap ;r ®
	imap ;tm ™
	imap ;ch ✓
	imap ;re ↵
	imap ;bx □
	imap ;inf ∞
	imap ;far ∀
	imap ;eur €
	imap ;cen ¢
	imap ;pou £
	imap ;yen ¥
	imap ;par ¶
	imap ;alp α
	imap ;bet β
	imap ;lam λ
	imap ;phi π
	imap ;omg ω
	imap ;eps ε
	imap ;spa ♠
	imap ;hea ♥
	imap ;clu ♣
	imap ;dia ♦
	imap ;deg °
endfunction

function! SYMBLOff()
	echo "SYMBL macro deactivated."
	let g:SYMBLOn=0
	iu >
	iu <
	iu >>
	iu <<
	iu ->
	iu -<
	iu =>
	iu =<
	iu ;>
	iu x
	iu .
	iu ;tm
	iu ;c
	iu ;r
	iu ;ch
	iu ;re
	iu ;inf
	iu ;e
	iu ;far
	iu ;eur
	iu ;cen
	iu ;pou
	iu ;yen
	iu ;par
	iu ;alp
	iu ;bet
	iu ;lam
	iu ;phi
	iu ;omg
	iu ;eps
	iu ;spa
	iu ;hea
	iu ;clu
	iu ;dia
	iu ;deg
	iu ;bx
endfunction

" >  
