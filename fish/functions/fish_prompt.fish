function fish_prompt
    set -l last_status $status
    set -l stat
    set -l arrow
    
    if contains -- --final-rendering $argv
        echo -n (set_color green)'>>> '(set_color normal)
        return
    end
    
    if test $last_status -ne 0
        set stat (set_color red)"[$last_status] "(set_color normal)
        set arrow (set_color white)'>'(set_color normal)
    else
        set arrow (set_color green)'>'(set_color normal)
    end
    
    set -l prompt_user (set_color green)(whoami)(set_color normal)
    set -l prompt_host (set_color blue)(prompt_hostname)(set_color normal)
    set -l pwd (set_color cyan)(prompt_pwd)(set_color normal)
    set -l l_bracket (set_color green)' ('(set_color normal)
    set -l r_bracket (set_color green)') '(set_color normal)
    
    string join '' -- $prompt_user '@' $prompt_host $l_bracket $pwd $r_bracket $stat
end
