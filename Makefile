default: client

all: client server

client:
	cobra -c -files:clientfiles.txt -out:bin/SherlockClient.exe

server:
	cobra -c -files:serverfiles.txt -out:bin/SherlockServer.exe
