echo
echo "Deploying to production"
echo

npm install
npm run build

rsync -cha --progress --delete dist/* oater@oater.de:/home/oater/html/

echo
echo "Deployed to https://oater.de"
echo
