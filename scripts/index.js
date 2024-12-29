const { Web3 } = require('web3');

const web3 = new Web3('HTTP://127.0.0.1:7545'); //RPC server

// Log the chain ID to the console
web3.eth
	.getChainId()
	.then(result => {
		console.log('Chain ID: ' + result);
	})
	.catch(error => {
		console.error(error);
	});