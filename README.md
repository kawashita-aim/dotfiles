# dotfiles

## 自分用のvimを使えるようにするまで

* .vimrcと.vimフォルダをroot直下に置くと幸せになれる

### molokaiの設定
#### vimrcに入れているがエラーが出るときは手動で対応する

mkdir ~/.vim
cd ~/.vim
mkdir colors
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/


