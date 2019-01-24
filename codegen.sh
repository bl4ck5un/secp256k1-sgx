#!/bin/bash

set -e

BASE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}")" && pwd )
OUTDIR_NAME=sgx

pushd ${BASE_DIR}

test -d ${OUTDIR_NAME} && rm -rf ${OUTDIR_NAME}

git clone https://github.com/bitcoin-core/secp256k1 ${OUTDIR_NAME}

pushd ${OUTDIR_NAME}
git checkout e34ceb333b1c0e6f4115ecbb80c632ac1042fa49
patch -p0 < ../patches/secp256k1.patch

cat << EOF >> CHANGELOG.md
Added by bl4ck5unxx@gmail.com.

$(date): port the library to Intel SGX. Read the instructions [here](github.com/bl4ck5un/secp256k1-sgx).
EOF

rm -rf .git
popd
popd
