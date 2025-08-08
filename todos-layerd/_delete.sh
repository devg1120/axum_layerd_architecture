
ID=""

if [ "$#" -eq 1 ]; then
    ID=$1
    curl   -X DELETE "http://localhost:8080/todo/${ID}"

fi

echo ""

