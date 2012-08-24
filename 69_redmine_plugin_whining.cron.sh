#!/bin/bash
#
# daily cron job for redmine whining plugin
#
cd /usr/share/redmine && /usr/bin/rake redmine:send_whining days=7 RAILS_ENV=production
