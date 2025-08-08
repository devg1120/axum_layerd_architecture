

ID="OKOKOK"

if [ "$#" -eq 1 ]; then
        ID=$1
else
   echo ./_delete_id.sh ID
   exit
fi


echo $ID
curl -X DELETE http://localhost:3000/api/todos/${ID}
echo ""
