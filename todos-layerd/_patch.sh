
MSG="OKOKOK"
ID=""

if [ "$#" -eq 2 ]; then
	ID=$1
	MSG=$2
	echo $MSG
else
      echo  ./_patch ID MSG
      exit
fi

curl -X PATCH  -H 'Content-Type: application/json' -d "{\"text\": \"${MSG}\"}" "http://localhost:8080/todo/${ID}"
echo ""

