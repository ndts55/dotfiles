function sigkill --description "send sigkill to process"
    for arg in $argv
        for pid in (string split " " -- (pidof $arg))
            kill -9 $pid
        end
    end
end
