4
#!/bin/bash

echo "===A===" 
ls -d .*

echo "===B==="
touch './*notes?.txt'
echo 'Test Content' > './*notes?.txt'
cat './*notes?.txt'

echo "===C==="

if [ ! -e "hello$world.txt" ]; then 
	echo "Creating new test file 'hello\$world.txt'"
	echo "This is the content for the HelloWorld File" > 'hello$world.txt'
fi

mv 'hello$world.txt' greetings.txt


echo "File Renamed Successfully"
cat greetings.txt


echo "===D==="



echo "===E==="
echo `ls ~/*.sh` > scripts_list.txt
echo "Saved .sh files to script"
