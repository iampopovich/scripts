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
