#!/bin/sh
sed 's/=.*//g' ../src/main/resources/assets/charset/lang/en_us.lang > /tmp/charset_keys1.lang
sed 's/=.*//g' assets/charset/lang/$1.lang > /tmp/charset_keys2.lang
diff -u /tmp/charset_keys1.lang /tmp/charset_keys2.lang
rm /tmp/charset_keys1.lang
rm /tmp/charset_keys2.lang
