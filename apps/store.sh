# nodecal
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

clear

tput setaf 45

echo "NatureOS App Store"

while true
do
  tput setaf 214
  read -p "create, find, or exit: " rw

  if [ "$rw" == "create" ];
  then
    tput setaf 207

    read -p "App Name:" query
    read -p "Category: " category

    echo "$query $category" >> data/appsToBeMade.txt
    sort -V data/appsToBeMade.txt

  elif [ "$rw" == "find" ];
  then
    read -p "App:" query
    read -p "Category:" category
  else
    break
  fi

done
