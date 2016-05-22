#!/bin/sh
sed 's/=.*//g' ../src/main/resources/assets/charsetlib/lang/en_US.lang > /tmp/charset_keys1.lang
sed 's/=.*//g' assets/charsetlib/lang/$1.lang > /tmp/charset_keys2.lang
diff -u /tmp/charset_keys1.lang /tmp/charset_keys2.lang
rm /tmp/charset_keys1.lang
rm /tmp/charset_keys2.lang
