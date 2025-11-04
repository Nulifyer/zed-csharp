; Razor indent patterns
(_ "{" "}" @end) @indent
(_ "[" "]" @end) @indent  
(_ "(" ")" @end) @indent
(_ "<" ">" @end) @indent

; Razor-specific indents
(razor_if) @indent
(razor_else) @indent 
(razor_else_if) @indent
(razor_for) @indent
(razor_foreach) @indent
(razor_while) @indent
(razor_do_while) @indent
(razor_switch) @indent
(razor_switch_case) @indent
(razor_switch_default) @indent
(razor_try) @indent
(razor_catch) @indent
(razor_finally) @indent
(razor_section) @indent
(razor_block) @indent
(razor_lock) @indent

; HTML elements
(element) @indent