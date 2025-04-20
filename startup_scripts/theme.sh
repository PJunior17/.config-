cd /home/jupi/.config/kitty/kitty-themes/themes
theme=$(ls | shuf -n 1)

cd ~/.config/kitty
rm theme.conf
ln -s ./kitty-themes/themes/"$theme" ~/.config/kitty/theme.conf

kill -SIGUSR1 $(pidof kitty)
