default: client

all: client server

client:
	cobra -c -files:clientfiles.txt -out:bin/SherlockClient.exe -v:2 -turbo

server:
	cobra -c -files:serverfiles.txt -out:bin/SherlockServer.exe -reveal-internal-exceptions -v:2
