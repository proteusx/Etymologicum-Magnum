#!/bin/bash

TLG_CDROM=/usr/local/proteus/CDROMS/tlg/
MAGNUM_TLG_ID="-a 4099 -b 001"

TLG2U_PROG=/usr/local/bin/tlg2u
PARAMS="-d $TLG_CDROM -c tlg -B 0 -T 89 -M 0 $MAGNUM_TLG_ID"

$TLG2U_PROG $PARAMS > tmp.utf
sed -i 's/\ *$//' tmp.utf         # Remove trailling spaces
patch tmp.utf magnum.patch &> /dev/null

./magnum.pl tmp.utf > ./magnum-body

# The header includes the UTF-8 BOM
# Without BOM GoldenDict will not see the file
cat ./magnum-header ./magnum-body > ./dictionary/magnum.dsl
rm ./magnum-body ./tmp.utf
