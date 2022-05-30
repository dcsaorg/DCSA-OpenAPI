npx redoc-cli bundle ebl.yaml
mv redoc-static.html index.html
sed -i '7 i \ \ <link rel="icon" type="image/png" href="./favicon-32x32.png" sizes="32x32"/>' index.html