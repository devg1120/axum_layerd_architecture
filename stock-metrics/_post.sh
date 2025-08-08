
#MSG="OKOKOK"

#if [ "$#" -eq 1 ]; then
#	MSG=$1
#	echo $MSG
#else 
#   echo ./_post MSG
#   exit
#fi

NAME=東京証券取引所
CODE=TSE
#curl  -X POST -H 'Content-Type: application/json' -d "{\"name\": \"${NAME}\", \"code\": \"${CODE}\"}" http://localhost:8080/stocks/
#curl  -X POST -H 'Content-Type: application/json' -d "{\"name\": \"${NAME}\", \"code\": \"${CODE}\"}" http://localhost:8080/market_data/
curl  -X POST  -H 'Content-Type: application/json' -d "{\"name\": \"${NAME}\", \"code\": \"${CODE}\"}" http://localhost:8080/market_kind/
echo ""

