#!/usr/bin/env zsh

curl http://public.s3.tkido.com.s3-website-ap-northeast-1.amazonaws.com/nicoime_latest.html
curl http://public.s3.tkido.com.s3-website-ap-northeast-1.amazonaws.com/nicoime.zip -o nicoime.zip
7z x -y -onicoime nicoime.zip
ruby skk_convert.rb
skkdic-expr2 nicoime/nicoime_skk.txt > out/nicoime_skk.utf8
