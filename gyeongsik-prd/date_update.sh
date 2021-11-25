#!/bin/bash
new_date=`date "+%Y-%m-%d %I:%M:%S %p"`
old_date=`cat ./values.yaml |grep echo | cut -d \" -f2`
old_image_tags=`cat ./values.yaml |grep tag: | cut -d \" -f2`
new_image_tags="yellow"
#curl v2.wttr.in/Seoul
sed -i "s/$old_date/$new_date/g" ./values.yaml
sed -i "s/$old_image_tags/$new_image_tags/g" ./values.yaml 