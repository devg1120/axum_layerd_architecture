

TITLE="OKOKOK"
DESC="OKOKOK"

if [ "$#" -eq 2 ]; then
        TITLE=$1
        DESC=$2
else
   echo ./_post2.sh TITLE DESCRIPTION
   exit
fi

curl -X POST -H 'Content-Type: application/json' -d "{\"title\": \"${TITLE}\", \"description\": \"${DESC}\"}" http://localhost:3000/api/todos
echo ""



