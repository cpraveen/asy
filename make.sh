SRC=( `ls -1 src/*.asy` )
IMG=( `ls -1 fig/*.png` )
IMG=( `ls -1 svg/*.svg` )
FILE=README.md

echo "# ASY examples" > $FILE

#for png in $PNG
#do
#   echo \[$png\]\($png\) "  " >> $FILE
#   echo !\[$png\]\($png\) "  " >> $FILE
#done

for ((i=0; i<"${#SRC[@]}"; i++)) do
   echo "${SRC[i]}" "${IMG[i]}"
   echo \[${SRC[i]}\]\(${SRC[i]}\) "  " >> $FILE
   echo !\[${IMG[i]}\]\(${IMG[i]}\) "  " >> $FILE
done
