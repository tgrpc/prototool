#!/bin/sh

cd .. && ln -s $GOPATH/src vendor
pwd
cd example/idl/uber && \
echo '{"value":"tgrpc-prototool"}' | prototool -H 'cookie:customer=abcdefg,admin_customer=1234567;region:CH' grpc foo 0.0.0.0:8080 foo.ExcitedService/Exclamation -
