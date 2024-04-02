function woman
  if test "$argv[1]" = ""
    emacsclient -nw --eval "(woman)"
  else
    emacsclient -nw --eval "(woman \"$argv[1]\")"
  end
end
