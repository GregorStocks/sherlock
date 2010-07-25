default: client

all: client server

client:
	cobra -c src/SherlockClient.cobra -out:bin/SherlockClient.exe

server:
	cobra -c src/SherlockServer.cobra -out:bin/SherlockServer.exe
