#!/bin/sh

PRODUCT=build/srp-client.js

cat <<CODE > $PRODUCT
BigInteger = (function() {
CODE

cat lib/jsbn.js >> $PRODUCT

cat <<CODE >> $PRODUCT

 
return BigInteger;
})();

SRPClient = (function() {
CODE

cat lib/sha1.js >> $PRODUCT

echo -ne "\n\n" >> $PRODUCT

cat src/srp-client.js >> $PRODUCT

cat <<CODE >> $PRODUCT

return SRPClient;
})();
CODE
