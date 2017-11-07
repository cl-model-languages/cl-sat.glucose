
all: glucose-syrup/simp/glucose_static glucose-syrup/parallel/glucose_static

glucose-syrup:
	curl http://www.labri.fr/perso/lsimon/downloads/softwares/glucose-syrup.tgz | tar xz

# single core version
glucose-syrup/simp/glucose_static: glucose-syrup
	cd $(dir $@) ; $(MAKE) rs

glucose-syrup/parallel/glucose_static: glucose-syrup
	cd $(dir $@) ; $(MAKE) rs

