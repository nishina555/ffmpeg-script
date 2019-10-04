#/bin/bash
cd `dirname $0`/picture
for file in *; do
  if [[ ${file} =~ .+\.(jpg|JPG|png)$ ]]; then
    filename=`echo ${file}|cut -d. -f1`
    extension=`echo ${file}|cut -d. -f2`
    ffmpeg -i ${file} -vf scale=880:-1 ${filename}-880.${extension}
  fi
done
