set -x ANDROID_HOME /users/chandsie/Library/Android/sdk
set -x PATH {$ANDROID_HOME}/tools {$ANDROID_HOME}/platform-tools /usr/local/bin /usr/local/sbin /usr/bin /bin /usr/sbin /sbin $PATH

eval (python3 -m virtualfish compat_aliases auto_activation)
