VERSION="1.0"

cd "$TM_PROJECT_DIRECTORY"

if [[ ! -d dist ]]; then
	mkdir dist dist/vokseverk dist/zip
fi

# Copy files into dist dirs
cp src/*.css dist/vokseverk/
# cp src/*.js dist/vokseverk/
cp src/package.manifest dist/vokseverk/package.manifest

# Build the ZIP file 
zip -j "dist/zip/Vokseverk.UmbracoBackofficeTweaks-$VERSION.zip" dist/vokseverk/* -x \*.DS_Store
