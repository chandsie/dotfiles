set -x PATH /usr/local/bin /usr/local/sbin /usr/bin /bin /usr/sbin /sbin $PATH

if test -d /users/chandsie/Library/Android/sdk
    set -x PATH /users/chandsie/Library/Android/sdk/tools /users/chandsie/Library/Android/sdk/platform-tools $PATH
end

if test -d /usr/local/blackbox/bin
    set -x PATH /usr/local/blackbox/bin $PATH
end

eval (python3 -m virtualfish compat_aliases auto_activation)
