.ig
               ________
   _________  / __/ __/
  / ___/ __ \/ /_/ /_  
 / /  / /_/ / __/ __/  
/_/   \____/_/ /_/     
..
\"\" Page appearance (font, size and width) {{{
\".nr PS 15\" Font size
\".nr PO 2.8c\" Page width (effects on next page)
\".nr VS 15p\" Line spacing
\"\" }}}
\" Page header and footer {{{
.ds RH Author\" author name on top-left
.ds LH Title\" title on top-center
.ds CF \*(DY\" current date on top-right
\" }}}
\" Macros {{{
\" bullet list {{{
.de bl
.IP
\(bu
..
\" }}}
\" checked list {{{
.de bc
.IP
\[OK]
..
\" }}}
\" unchecked list {{{
.de bb
.IP
\[sq]
..
\" }}}
\" boxed code-block {{{
.nr ln 1
.de cb
.QS
.B1
.ft CR
.sp 1n
.br
.sp 1n
.nf
.in +1m
.nm +0 1 1 -5
..
.de /cb
.br
.sp 1n
.nm
.fi
.ft
.in
.B2
.QE
..
\" }}}
\" }}}
\" First Page {{{
.TL
Title
.AU
Author
.AI
Institution
.AB no
This is the Abstract Section.
.AE
\" }}}
\" beginning {{{
.SH
Header.
.LP
Paragraph.
\" }}}
