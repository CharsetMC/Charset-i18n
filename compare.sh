#!/bin/sh
#
# Copyright (c) 2015, 2016, 2017, 2018 Adrian Siekierka
#
# This file is part of Charset.
#
# Charset is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Charset is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with Charset.  If not, see <http://www.gnu.org/licenses/>.
#

sed 's/=.*//g' ../src/main/resources/assets/charset/lang/en_us.lang > /tmp/charset_keys1.lang
sed 's/=.*//g' assets/charset/lang/$1.lang > /tmp/charset_keys2.lang
diff -u /tmp/charset_keys1.lang /tmp/charset_keys2.lang
rm /tmp/charset_keys1.lang
rm /tmp/charset_keys2.lang
