VERSION="1.2"

cd "$TM_PROJECT_DIRECTORY"

if [[ ! -d dist ]]; then
	mkdir dist dist/vokseverk dist/zip
fi

# Copy files into dist dirs
cp src/*.css dist/vokseverk/
# cp src/*.js dist/vokseverk/
cp src/package.manifest dist/vokseverk/package.manifest
cp src/package.xml dist/vokseverk/package.xml

# Build the ZIP file 
zip -j "dist/zip/Vokseverk.UmbracoBackofficeTweaks-$VERSION.zip" dist/vokseverk/* -x \*.DS_Store
