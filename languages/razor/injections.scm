; Comments
([
  (html_comment)
  (razor_comment)
] @comment
  (#set! injection.language "comment"))

; HTML elements
((element) @injection.content
  (#set! injection.language "html"))

; C# code injections in Razor expressions and blocks
([
  (razor_implicit_expression)
  (razor_explicit_expression) 
  (razor_block)
] @injection.content
  (#set! injection.language "c_sharp"))

; C# code in control flow structures
([
  (razor_if)
  (razor_for)
  (razor_foreach) 
  (razor_while)
  (razor_do_while)
  (razor_switch)
  (razor_try)
  (razor_catch)
  (razor_finally)
] @injection.content
  (#set! injection.language "c_sharp"))

; C# code in directive expressions
([
  (razor_using_directive)
  (razor_model_directive)
  (razor_inject_directive)
  (razor_implements_directive)
  (razor_inherits_directive)
  (razor_layout_directive)
  (razor_attribute_directive)
  (razor_typeparam_directive)
  (razor_namespace_directive)
] @injection.content
  (#set! injection.language "c_sharp"))

; CSS in style attributes
((razor_attribute_value) @injection.content
  (#match? @injection.content "^(style)$")
  (#set! injection.language "css"))

; JavaScript in script attributes  
((razor_attribute_value) @injection.content
  (#match? @injection.content "^(onclick|onload|onchange)$")
  (#set! injection.language "javascript"))