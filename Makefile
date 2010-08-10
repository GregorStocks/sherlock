default: client

all: client server

# Use -ert to avoid security issues, since Cobra.Lang.dll doesn't allow partially trusted callers.
# Compiling our own is probably not a good solution in the long term.
client:
	cobra -c -files:clientfiles.txt -out:bin/SherlockClient.exe -cs:all -ert -cin

server:
	cobra -c -files:serverfiles.txt -out:bin/SherlockServer.exe -cs:all -ert -cin

server-test:
	cobra -test -files:serverfiles.txt -ert

client-test:
	cobra -test -files:clientfiles.txt -ert

clean:
	rm bin/*.exe
