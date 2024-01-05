echo
echo "Deploying to staging"
echo

npm install
npm run build

rsync -cha --progress --delete dist/* oater@oater.de:/home/oater/staging.oater.de/

echo
echo "Deployed to https://staging.oater.de"
echo
