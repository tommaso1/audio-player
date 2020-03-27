elm make src/Main.elm --optimize --output=main.js
rm -Rf docs
mkdir docs
cp -r *.* docs/
rm docs/build.sh