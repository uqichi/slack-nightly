#! /bin/bash

cat << 'EOF' >> /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js
// Add
document.addEventListener('DOMContentLoaded', function() {
 $.ajax({
   url: 'https://raw.githubusercontent.com/uqichi/slack-nightly/master/night.css',
   success: function(css) {
     $("<style></style>").appendTo('head').html(css);
   }
 });
});
EOF

echo If Slack.app is already running, You must refresh

