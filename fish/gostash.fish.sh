#! /usr/local/bin/fish

if test -n (pwd | awk -F '/git/' '{print $2}')
    set path (pwd | sed  's/.*git\/\([^\/]*\)/\1\/browse/')
    if test (count $argv) > 0
        if test $argv[1]=root
            set path (pwd | sed  's/.*git\/\([^\/]*\)\(.*\)/\1\/browse/')
        end
    end
    set url 'https://msstash.morningstar.com/projects/MOB/repos/'$path
    open $url
else
    echo 'This is not a morningstar git project'
end
