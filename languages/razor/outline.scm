; Razor outline for document structure
(razor_page_directive
    (string_literal) @name
) @item

(razor_namespace_directive 
    (qualified_name) @name
) @item

(razor_section
    (identifier) @name  
) @item

(razor_model_directive
    (qualified_name) @name
) @item

(class_declaration
    "class" @context
    name: (identifier) @name
) @item

(method_declaration
    name: (identifier) @name
    parameters: (parameter_list) @context
) @item

(property_declaration
    type: (identifier)? @context
    type: (predefined_type)? @context
    name: (identifier) @name
) @item

(namespace_declaration
    "namespace" @context
    name: (qualified_name) @name
) @item

(interface_declaration
    "interface" @context
    name: (identifier) @name
) @item