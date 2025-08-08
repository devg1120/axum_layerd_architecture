
ID=1

if [ "$#" -eq 1 ]; then
    ID=$1
    curl   "http://localhost:8080/todo/${ID}"
else
    curl   "http://localhost:8080/todo" | jq

fi

echo ""

