#setup XIM environment, needn't if use SCIM as    gtk-immodules
 export XMODIFIERS="@im=fcitx"
 export GTK_IM_MODULE=fcitx
 export QT_IM_MODULE=fcitx
 killall fcitx
 fcitx &
#XIM END
#export LANG=zh_CN.UTF-8
export LANG="en_US.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"
xrdb -merge ~/.Xresources
urxvtd -q -o -f &
numlockx &
exec openbox-session
