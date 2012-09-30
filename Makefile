build:
	echo "Nothing to build. Only install. Destination is: " $(DESTDIR)

requirements:
	virtualenv .venv
	. .venv/bin/activate
	pip install -r osx-requirements.txt

install:
	mkdir -p $(DESTDIR)/var/lib/selfspy
	cp *.py $(DESTDIR)/var/lib/selfspy
	mkdir -p ~/.selfspy
	ln -sf $(DESTDIR)/var/lib/selfspy/selfspy.py $(DESTDIR)/usr/bin/selfspy
	ln -sf $(DESTDIR)/var/lib/selfspy/selfstats.py $(DESTDIR)/usr/bin/selfstats
