
PLUGIN_NAME=whining
PLUGIN_DIR=$(DESTDIR)/usr/share/redmine/vendor/plugins/$(PLUGIN_NAME)
CRON_DAILY=$(DESTDIR)/etc/cron.daily

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
	@mkdir -p $(PLUGIN_DIR) $(CRON_DAILY)
	@for i in $(INSTALL_FILES) ; do cp -R --preserve $$i $(PLUGIN_DIR) ; done
	@cp 69_redmine_plugin_whining.cron.sh $(CRON_DAILY)
	@chmod +x $(CRON_DAILY)/69_redmine_plugin_whining.cron.sh
