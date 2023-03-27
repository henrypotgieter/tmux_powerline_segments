# Print out Memory, cpu and load using https://github.com/thewtex/tmux-mem-cpu-load

run_segment() {
        type ~/.tmux/plugins/tmux-mem-cpu-load/tmux-mem-cpu-load >/dev/null 2>&1
        if [ "$?" -ne 0 ]; then
                return
        fi

        stats=$(~/.tmux/plugins/tmux-mem-cpu-load/tmux-mem-cpu-load -q -n -l 52 -r 120)
        if [ -n "$stats" ]; then
                echo "$stats";
        fi
        return 0
}

