#!/bin/bash
ORIGDIR=`pwd`
TMPDIR=libav.$$

mkdir -p ../${TMPDIR}

cd ..
cp -a libav ${TMPDIR}/libav-11.3
cd ${TMPDIR}
rm -rf libav-11.3/.git*
tar zcvf libav-11.3.tar.gz libav-11.3
mv libav-11.3.tar.gz ${ORIGDIR}/.
cd ${ORIGDIR}
rm -rf ../${TMPDIR}
