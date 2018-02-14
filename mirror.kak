define-command mirror -params ..1 %{
  info -title %sh{[ $1 = lock ] && echo "'mirror (lock)'" || echo 'mirror' } \
%{grow or shrink selections in both directions:
h j k l J K b e w
}
  on-key %{ %sh{
    case "$kak_key" in
      h) echo "exec 'H<a-;>L<a-;>'" ;;
      j) echo "exec 'J<a-;>K<a-;>'" ;;
      k) echo "exec 'K<a-;>J<a-;>'" ;;
      l) echo "exec 'L<a-;>H<a-;>'" ;;
      J) echo "exec 'J<a-;>K<a-;><a-x>'" ;;
      K) echo "exec 'K<a-;>J<a-;><a-x>'" ;;
      b) echo "exec 'B<a-;>W<a-;>'" ;;
      e) echo "exec 'E<a-;>B<a-;>'" ;;
      w) echo "exec 'W<a-;>B<a-;>'" ;;
      '<a-;>') echo "exec '<a-;>'" ;;
      # info hides the previous one
      *) echo info; esc=true ;;
    esac
    # repeat?
    if [ "$1" = lock ] && [ "$esc" != true ]; then
      echo ';mirror lock;'
    fi
  }}
}

# Suggested mappings

#map global normal <a-M> ':mirror lock<ret>'
