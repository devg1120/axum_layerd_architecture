
MSG="OKOKOK"

if [ "$#" -eq 1 ]; then
	MSG=$1
	echo $MSG
else 
   echo ./_post MSG
   exit
fi

curl -X POST -H 'Content-Type: application/json' -d "{\"text\": \"${MSG}\"}" http://localhost:8080/todo
echo ""

