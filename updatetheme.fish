# Use the bash script
# ./updatetheme.sh
# This is legacy
# Fish shell
cd (tutor config printroot)/env/build/openedx/themes/bloom-ed
git pull
tutor images build openedx
tutor local settheme bloom-ed (tutor config printvalue LMS_HOST) (tutor config printvalue CMS_HOST)
echo "restarting openedx"
tutor local quickstart

