
rm -rf _assets

mkdir -p _assets/website/
mkdir -p _assets/ebook/


browserify src/js/core/index.js | uglifyjs -mc > _assets/website/gitbook.js
browserify src/js/theme/index.js | uglifyjs -mc > _assets/website/theme.js


lessc src/less/website.less _assets/website/style.css


lessc src/less/ebook.less _assets/ebook/ebook.css
lessc src/less/pdf.less _assets/ebook/pdf.css
lessc src/less/mobi.less _assets/ebook/mobi.css
lessc src/less/epub.less _assets/ebook/epub.css


mkdir -p _assets/website/fonts
cp -R node_modules/font-awesome/fonts/ _assets/website/fonts/fontawesome/


mkdir -p _assets/website/images
cp node_modules/gitbook-logos/output/favicon.ico _assets/website/images/
cp node_modules/gitbook-logos/output/apple-touch-icon-152.png _assets/website/images/apple-touch-icon-precomposed-152.png