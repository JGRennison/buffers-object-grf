NMLC = nmlc

.PHONY: default bundle

default:
	$(NMLC) buffers.nml --nfo=buffers.nfo --grf=buffers.grf

bundle: default
	mkdir -p buffers
	cp buffers.grf buffers
	cp README.md buffers/readme.txt
	cp LICENSE buffers/license.txt
	cp changelog.md buffers/changelog.txt
	tar cvf buffers.tar buffers
