default: client

all: client server

client:
	cobra -c src/SherlockClient.cobra src/Message.cobra -out:bin/SherlockClient.exe -cs

server:
	cobra -c src/SherlockServer.cobra src/Message.cobra -out:bin/SherlockServer.exe -cs
