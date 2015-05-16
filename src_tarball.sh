#!/bin/bash
ORIGDIR=`pwd`
TMPDIR=libvpx.$$

mkdir -p ../${TMPDIR}

cd ..
cp -a libvpx ${TMPDIR}/libvpx-1.3.0
cd ${TMPDIR}
rm -rf libvpx-1.3.0/.git*
tar zcvf libvpx-1.3.0.tar.gz libvpx-1.3.0
mv libvpx-1.3.0.tar.gz ${ORIGDIR}/.
cd ${ORIGDIR}
rm -rf ../${TMPDIR}
