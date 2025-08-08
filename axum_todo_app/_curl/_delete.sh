

ID="OKOKOK"

if [ "$#" -eq 1 ]; then
        ID=$1
else
   echo ./_delete ID
   exit
fi



curl -X DELETE http://127.0.0.1:8080/todos/${ID}

echo ""



