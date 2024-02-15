#!/bin/bash
SRC_DIR=/path/to/source/directory
DST_DIR=/path/to/backup/directory
if [ ! -d &quot;$DST_DIR&quot; ]; then
mkdir -p &quot;$DST_DIR&quot; fi
for file in &quot;$SRC_DIR&quot;/*;
do cp &quot;$file&quot; &quot;$DST_DIR&quot;
done
if [ ! -d &quot;$SRC_DIR&quot; ]; then
echo &quot;Error: Source directory does not
exist&quot; exit
