function fish_default_mode_prompt --description 'Display the default mode for the prompt'
    # Do nothing if not in vi mode
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
        switch $fish_bind_mode
            case default
                set_color --bold brred
                echo '❯'
            case insert
                set_color --bold brgreen
                echo '❯'
            case replace-one
                set_color --bold brblue
                echo '❯'
            case visual
                set_color --bold brmagenta
                echo '❯'
        end
        set_color normal
    end
end

