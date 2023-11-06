echo "Deploying to production"

npm run build

rsync -cha --progress dist/* oater@hamal.uberspace.de:/home/oater/html/

echo "Deployed to https://oater.de"