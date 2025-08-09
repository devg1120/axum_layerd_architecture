

ID="OKOKOK"

if [ "$#" -eq 1 ]; then
        ID=$1
else
   echo ./_patch ID
   exit
fi



curl -X PUT http://127.0.0.1:3000/api/todos/${ID} -H "Content-Type: application/json" -d '{"title": "買い物に行く", "description": "牛乳と卵を買う", "completed":true}'

echo ""



