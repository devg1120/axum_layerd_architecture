

MSG="OKOKOK"

if [ "$#" -eq 1 ]; then
        MSG=$1
else
   echo ./_post MSG
   exit
fi

curl -X POST -H 'Content-Type: application/json' -d "{\"text\": \"${MSG}\"}" http://localhost:8080/todos
echo ""


#curl -X POST http://127.0.0.1:8080/todos -H "Content-Type: application/json" -d '{"text":"Rustの勉強"}'

