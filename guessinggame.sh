function rinit {
	echo "Please enter the number of files in the current directory:"
	read inp
    files=$(ls -1 | wc -l)
}
rinit

while [[ $inp -ne $files ]]
do
	if [[ $inp -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Listed file : "
echo ls -lrt 
