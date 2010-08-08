default: client

all: client server

client:
	cobra -c -files:clientfiles.txt -out:bin/SherlockClient.exe -cin

server:
	cobra -c -files:serverfiles.txt -out:bin/SherlockServer.exe -cin

server-test:
	cobra -test -files:serverfiles.txt

client-test:
	cobra -test -files:clientfiles.txt

clean:
	rm bin/*.exe
