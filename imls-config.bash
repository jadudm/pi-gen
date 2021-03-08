#!/bin/bash

touch ./stage3/SKIP ./stage4/SKIP ./stage5/SKIP
touch ./stage4/SKIP_IMAGES ./stage5/SKIP_IMAGES

pushd stage2
	# don't need NOOBS
	rm -f EXPORT_NOOBS || true
popd

