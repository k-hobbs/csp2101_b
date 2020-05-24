#!/bin/bash
#Student Name: Kye Hobbs
#Student Number: 10473319

#sed '1d' will delete the first line within the text file specified
#after deleting the first line, it will leave rectangle.txt unaffected and instead save the data to a new text file called rectangle_f.txt
sed '1d' rectangle.txt > rectangle_f.txt  

#'s/,/  Height: /g' will substitute each comma within rectangle_f.txt with Height: and will do it globally so all commas are replaced.
#there is a tab placed before 'Height' and a space after ':' to ensure readibility as each data was only separated by a comma in rectangle.txt
#sed -i allows this change to be saved directly to rectangle_f.txt
sed -i 's/,/    Height: /g' rectangle_f.txt

#'s/Height/Colour/4' takes the fourth 'Height' pattern in each line and substitutes it for 'Colour'
#sed -i will save the changes directly to rectangle_f.txt
sed -i 's/Height/Colour/4' rectangle_f.txt

#'s/Height/Area/3' takes the third 'Height' in each line and substitutes it for 'Area'
#sed -i will then save the changes directly to rectangle_f.txt
sed -i 's/Height/Area/3' rectangle_f.txt

#'s/Height/Width/2' takes the second 'Height' in each line and substitutes it for 'Width'
#sed -i will then save the changes directly to rectangle_f.txt
sed -i 's/Height/Width/2' rectangle_f.txt

#'s/^/Name: /' will place 'Name:' at the beginning of each line within the file
# '^' is used to specify the start of the line and no additional options as the command should place name on each line at the start
#sed -i will then save the changes directly to rectangle_f.txt
sed -i 's/^/Name: /' rectangle_f.txt

#simple echo stating that a new text file has been created and formatted
echo 'the formatted rectangle file has been created and updated.'