echo "Deploying to staging"

npm run build

rsync -cha --progress dist/* oater@hamal.uberspace.de:/home/oater/html/staging

echo "Deployed to https://staging.oater.de"