DEST=/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js

cp:
	@./darken.sh
	@echo Copied to $(DEST)
	@echo If Slack.app is already running, You must refresh
rm:
	@lb=`grep -m 1 -e '//>>>>>slack-nightly' -n $(DEST) | sed -e 's/:.*//g'` && le=`grep -m 1 -e '//<<<<<slack-nightly' -n $(DEST) | sed -e 's/:.*//g'` && sed -i -e "$$lb,$$le"d $(DEST)
	@echo Removed from $(DEST)
	@echo If Slack.app is already running, You must refresh
