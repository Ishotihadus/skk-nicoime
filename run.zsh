#!/usr/bin/env zsh

curl http://tkido.com/nicoime/nicoime_latest.html
curl http://tkido.com/nicoime/nicoime.zip -o nicoime.zip
7z x -y -onicoime nicoime.zip
ruby skk_convert.rb
skkdic-expr2 nicoime/nicoime_skk.txt > out/nicoime_skk.utf8
