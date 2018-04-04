declare-user-mode mirror

# grow/shrink
map global mirror c 'C<a-;><a-C><a-;>'  -docstring column
map global mirror h 'H<a-;>L<a-;>'      -docstring character
map global mirror l 'L<a-;>H<a-;>'      -docstring character
map global mirror j 'J<a-;>K<a-;>'      -docstring line
map global mirror k 'K<a-;>J<a-;>'      -docstring line
map global mirror J 'J<a-;>K<a-;><a-x>' -docstring 'full line'
map global mirror K 'K<a-;>J<a-;><a-x>' -docstring 'full line'
map global mirror b 'B<a-;>W<a-;>'      -docstring 'word begin'
map global mirror w 'W<a-;>B<a-;>'      -docstring 'word begin'
map global mirror e 'E<a-;>B<a-;>'      -docstring 'word end'
map global mirror p '}p<a-;>{p<a-;>'    -docstring paragraph
map global mirror s '}s<a-;>{s<a-;>'    -docstring sentence

# insert/delete
map global mirror ( 'a)<esc>i(<esc>H<a-;>'          -docstring '(surround)'
map global mirror { 'a}<esc>i{<esc>H<a-;>'          -docstring '{surround}'
map global mirror [ 'a]<esc>i[<esc>H<a-;>'          -docstring '[surround]'
map global mirror < 'a<gt><esc>i<lt><esc>H<a-;>'    -docstring '<surround>'
map global mirror ) 'a )<esc>i( <esc>2H<a-;>'       -docstring '( surround )'
map global mirror } 'a }<esc>i{ <esc>2H<a-;>'       -docstring '{ surround }'
map global mirror ] 'a ]<esc>i[ <esc>2H<a-;>'       -docstring '[ surround ]'
map global mirror > 'a <gt><esc>i<lt> <esc>2H<a-;>' -docstring '< surround >'
map global mirror '"' 'a"<esc>i"<esc>H<a-;>'        -docstring '"surround"'
map global mirror "'" "a'<esc>i'<esc>H<a-;>"        -docstring "'surround'"
map global mirror '`' 'a`<esc>i`<esc>H<a-;>'        -docstring '`surround`'
map global mirror d 'Z<a-S><a-d>zH'                 -docstring 'delete'

# fallthrough
map global mirror '<a-;>' '<a-;>'       -docstring 'swap anchor and cursor'

# Suggested mapping

#map global normal <a-m> ':enter-user-mode -lock mirror<ret>' -docstring 'mirror lock'
#map global normal <a-M> <a-m> -docstring 'merge consecutive selections'
