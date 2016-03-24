let g:airline#themes#rgy#palette = {}

let s:cterm00 = 0
let s:cterm01 = 1
let s:cterm02 = 2
let s:cterm03 = 3
let s:cterm04 = 4
let s:cterm05 = 5
let s:cterm06 = 6
let s:cterm07 = 7
let s:cterm08 = 8
let s:cterm09 = 9
let s:cterm0A = 10
let s:cterm0B = 11
let s:cterm0C = 12
let s:cterm0D = 13
let s:cterm0E = 14
let s:cterm0F = 15

let s:N1   = [ '', '', s:cterm07, s:cterm00 ]
let s:N2   = [ '', '', s:cterm0A, s:cterm00 ]
let s:N3   = [ '', '', s:cterm07, s:cterm00 ]
let g:airline#themes#rgy#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ '', '', s:cterm01, s:cterm08 ]
let s:I2   = [ '', '', s:cterm0A, s:cterm08 ]
let s:I3   = [ '', '', s:cterm01, s:cterm08 ]
let g:airline#themes#rgy#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ '', '', s:cterm05, s:cterm08 ]
let s:R2   = [ '', '', s:cterm0A, s:cterm08 ]
let s:R3   = [ '', '', s:cterm05, s:cterm08 ]
let g:airline#themes#rgy#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ '', '', s:cterm03, s:cterm08 ]
let s:V2   = [ '', '', s:cterm0A, s:cterm08 ]
let s:V3   = [ '', '', s:cterm03, s:cterm08 ]
let g:airline#themes#rgy#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ '', '', s:cterm04, s:cterm00 ]
let s:IA2   = [ '', '', s:cterm04, s:cterm00 ]
let s:IA3   = [ '', '', s:cterm04, s:cterm00 ]
let g:airline#themes#rgy#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

if !get(g:, 'loaded_ctrlp', 0)
  finish
  endif
  let g:airline#themes#rgy#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ [ '', '', s:cterm01, s:cterm00, '' ],
              \ [ '', '', s:cterm07, s:cterm00, '' ],
                    \ [ '', '', s:cterm02, s:cterm08, 'bold' ])

