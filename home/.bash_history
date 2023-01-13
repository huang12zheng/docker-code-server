cd /tmp/extensions/
ls
cat Dart-Code.dart-code-3.44.0.vsix 
rm *
cd /etc/cont-init.d/
ls
cat 30-config 
ll -a /vsix/
for i in $(cd "/vsix" >/dev/null && echo ./*.vsix); do     if [ -t 0 ]; then       printf "." >&2;     fi     if ! [ -e "/tmp/extensions/$i" ]; then         install-extension $i         touch /tmp/extensions/$i;     fi; done
cd /vsix
for i in $(cd "/vsix" >/dev/null && echo ./*.vsix); do     if [ -t 0 ]; then       printf "." >&2;     fi     if ! [ -e "/tmp/extensions/$i" ]; then         install-extension $i         touch /tmp/extensions/$i;     fi; done
ls /tmp/extensions/
for i in $(cd "/vsix" >/dev/null && echo ./*.vsix); do     if [ -t 0 ]; then       printf "." >&2;     fi     if ! [ -e "/tmp/extensions/$i" ]; then         install-extension $i         touch /tmp/extensions/$i;     fi; done
cd /vsix
for i in $(cd "/vsix" >/dev/null && echo ./*.vsix); do     if [ -t 0 ]; then       printf "." >&2;     fi     if ! [ -e "/tmp/extensions/$i" ]; then         install-extension $i         touch /tmp/extensions/$i;     fi; done
