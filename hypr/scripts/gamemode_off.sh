hyprctl --batch "\
    keyword animations:enabled 1;\
    keyword decoration:drop_shadow 1;\
    keyword decoration:blur:enabled 1;\
    keyword general:gaps_in 5;\
    keyword general:gaps_out 20;\
    keyword general:border_size 5;\
    keyword decoration:rounding 25;\
    keyword decoration:active_opacity 0.95;\
    keyword decoration:inactive_opacity 0.95"
exit

hyprctl reload
