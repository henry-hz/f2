all    :; dapp build
clean  :; dapp clean
test   :; dapp test
deploy :; dapp create F2


balance:
	seth balance 0x98943b6781e5ab5c2d130d0bd22824612c274d63

debug:
	seth run-tx --debug 0xc3b63ab002d4a16fe95566a9c0816fab6cf07ac9867bd5ad1319095cef13b9a2 --source out/dapp.sol.json
