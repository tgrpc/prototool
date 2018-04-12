#!/bin/sh

cd .. && ln -s $GOPATH/src vendor
pwd
cd example/idl/uber && \
echo '{"value":"tgrpc-prototool"}' | prototool -H 'cookie:customer=abcdefg;admin_customer=1234567' grpc foo 0.0.0.0:8080 foo.ExcitedService/Exclamation -

# echo '{"primeMembershipType":2}' | prototool -H 'cookie:65_customer=6484B3E883C2AA05,DPS:1ebl2p:dVitY7ngAoufUcTUk0vZ6xoTbkY;area:SG' grpc nadesico 0.0.0.0:14157 nadesico.Prime/CreatePrimeBill -