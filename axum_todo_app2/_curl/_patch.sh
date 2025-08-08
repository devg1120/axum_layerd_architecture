

ID="OKOKOK"

if [ "$#" -eq 1 ]; then
        ID=$1
else
   echo ./_patch ID
   exit
fi



curl -X PATCH http://127.0.0.1:8080/todos/${ID} -H "Content-Type: application/json" -d '{"completed":true}'

echo ""



