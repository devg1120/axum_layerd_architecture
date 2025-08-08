
ID="1"

if [ "$#" -eq 1 ]; then
	MSG=$1
	echo $MSG
fi

#curl -H 'Content-Type: application/json' -d '{"text": "0"}' http://localhost:8080/todo
#curl -H 'Content-Type: application/json' -d '{"text": "msg msg"}' http://localhost:8080/todo
#curl -X GET -H 'Content-Type: application/json' -d "{\"id\": \"${ID}\"}" http://localhost:8080/todoc/:id
#curl -X GET -H 'Content-Type: application/json'  http://localhost:8080/todo/
curl   'http://localhost:8080/todo'
echo ""

