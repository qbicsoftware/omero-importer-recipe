#!/bin/bash
set -eu -o pipefail

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin
cp -R * $outdir/
cp $RECIPE_DIR/omero-importer.py $outdir/omero-importer 
ls -l $outdir
ln -s $outdir/omero-importer $PREFIX/bin
chmod 0755 ${PREFIX}/bin/omero-importer