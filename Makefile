
.phony: glucose4-sequencial glucose4-parallel

# single core version
glucose4-sequencial:
	curl http://www.labri.fr/perso/lsimon/downloads/softwares/glucose-syrup.tgz | tar xz
	cd $(CURDIR)/glucose-syrup/simp/ ; $(MAKE) rs

glucose4-parallel:
	curl http://www.labri.fr/perso/lsimon/downloads/softwares/glucose-syrup.tgz | tar xz
	cd $(CURDIR)/glucose-syrup/parallel/ ; $(MAKE) rs

all: glucose4-sequencial
