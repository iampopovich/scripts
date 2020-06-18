#simply get query
curl https://www.google.com 
#
#get response headers
curl -I https://www.google.com
#
#save results
curl https://www.google.com >> resul.t
curl -o google_main_pa.ge https://www.google.com
#adding extra headers (usefull for sending authorization GET requests)
curl -H "user: test_user, secret: heh_meh" https://google.com
#use -v for detailed response process
curl https://www.google.com -v
#output is :
#*   Trying 74.125.205.104...
#* TCP_NODELAY set
#* Connected to www.google.com (74.125.205.104) port 443 (#0)
#* ALPN, offering h2
#* ALPN, offering http/1.1
#* successfully set certificate verify locations:
#*   CAfile: /etc/ssl/cert.pem
#  CApath: none
#* TLSv1.2 (OUT), TLS handshake, Client hello (1):
#* TLSv1.2 (IN), TLS handshake, Server hello (2):
#* TLSv1.2 (IN), TLS handshake, Certificate (11):
#* TLSv1.2 (IN), TLS ...
# -C restart downloading from the where it was interrupted (network, shutdown , etc)
curl -C - -O https://speedtest.selectel.ru/10MB #100/1GB/10GB
# request examples
curl --request GET https://www.google.com/
curl --request POST https://www.google.com/
curl --request PUT https://www.google.com/
curl --request DELETE https://www.google.com/
curl -X GET https://www.google.com/
#API testing examples https://petstore.swagger.io/
#create pet with id 100
curl -X POST "https://petstore.swagger.io/v2/pet" \
-H "accept: application/json" \
-H "Content-Type: application/json" \
-d "{ \"id\": 100, \"category\": { \"id\": 0, \"name\": \"string\" }, \"name\": \"doggie\", \"photoUrls\": [ \"string\" ], \"tags\": [ { \"id\": 0, \"name\": \"string\" } ], \"status\": \"available\"}"
#find pet with id 100
curl -X GET "https://petstore.swagger.io/v2/pet/100" -H "accept: application/json"
#causes error if no item with id = 100500 - check status code
curl -X GET "https://petstore.swagger.io/v2/pet/100500" -H "accept: application/json"



