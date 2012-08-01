
PLUGIN_NAME=whining
PLUGIN_DIR=$(DESTDIR)/usr/share/redmine/vendor/plugins/$(PLUGIN_NAME)

INSTALL_FILES=\
	app		\
	Changelog	\
	config		\
	GPL.txt		\
	init.rb		\
	lang		\
	lib		\
	LICENSE.txt	\
	README.rdoc	\
	test		\
	THANKS.txt

all:

install:
	@rm -Rf $(PLUGIN_DIR)
	@mkdir -p $(PLUGIN_DIR)
	@for i in $(INSTALL_FILES) ; do cp -R --preserve $$i $(PLUGIN_DIR) ; done
