test -d /opt/pkg && LOCALBASE="/opt/pkg" || \
  LOCALBASE="/usr/pkg"
export LOCALBASE

for d in ${LOCALBASE}/bin ${LOCALBASE}/sbin; do
  test -d $d && PATH=${PATH}:$d
done
for d in ${HOME}/.cargo/bin ${HOME}/bin; do
  test -d $d && PATH=$d:${PATH}
done
export PATH

if command -v emacs > /dev/null 2>&1; then
    export EDITOR="emacs -nw"
elif command -v mg > /dev/null 2>&1; then
    export EDITOR="mg"
fi
