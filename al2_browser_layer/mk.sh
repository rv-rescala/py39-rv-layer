rm -rf browser
mkdir browser
cd browser
wget https://github.com/adieuadieu/serverless-chrome/releases/download/v1.0.0-57/stable-headless-chromium-amazonlinux-2.zip
unzip stable-headless-chromium-amazonlinux-2.zip
rm -rf stable-headless-chromium-amazonlinux-2.zip
wget https://chromedriver.storage.googleapis.com/86.0.4240.22/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
rm -rf chromedriver_linux64.zip
wget https://moji.or.jp/wp-content/ipafont/IPAexfont/IPAexfont00401.zip --no-check-certificate
unzip IPAexfont00401.zip
mv IPAexfont00401 .fonts
rm dev-headless-chromium-amazonlinux-2017-03.zip
rm IPAexfont00401.zip
cd ../
zip -r al2-browser.zip browser/
aws s3 cp al2-browser.zip s3://libs-lambda/py37/
