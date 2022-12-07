// 1. Declare global variable to store the smart contract instance
let TuringContract;

// 2. Set contract address and ABI
const Turing_Contract_Address = "0x6fa203972d738f3b71c670d644481608b94c5124";
const Turing_Contract_ABI = [
	{
		"inputs": [],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "owner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "spender",
				"type": "address"
			},
			{
				"indexed": false,
				"internalType": "uint256",
				"name": "value",
				"type": "uint256"
			}
		],
		"name": "Approval",
		"type": "event"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "spender",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "amount",
				"type": "uint256"
			}
		],
		"name": "approve",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "spender",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "subtractedValue",
				"type": "uint256"
			}
		],
		"name": "decreaseAllowance",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "endVoting",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "spender",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "addedValue",
				"type": "uint256"
			}
		],
		"name": "increaseAllowance",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "receiver",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "amount",
				"type": "uint256"
			}
		],
		"name": "issueToken",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "amount",
				"type": "uint256"
			}
		],
		"name": "transfer",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "from",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "to",
				"type": "address"
			},
			{
				"indexed": false,
				"internalType": "uint256",
				"name": "value",
				"type": "uint256"
			}
		],
		"name": "Transfer",
		"type": "event"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "amount",
				"type": "uint256"
			}
		],
		"name": "transferFrom",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "codinome",
				"type": "string"
			},
			{
				"internalType": "uint256",
				"name": "amount",
				"type": "uint256"
			}
		],
		"name": "vote",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "owner",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "spender",
				"type": "address"
			}
		],
		"name": "allowance",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "account",
				"type": "address"
			}
		],
		"name": "balanceOf",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "decimals",
		"outputs": [
			{
				"internalType": "uint8",
				"name": "",
				"type": "uint8"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "name",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "symbol",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "totalSupply",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"name": "usuario",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			},
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"name": "votante",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
]

/* 3. Prompt user to sign in to MetaMask */
const provider = new ethers.providers.Web3Provider(window.ethereum, "goerli");
provider.send("eth_requestAccounts", []).then(() => {
  provider.listAccounts().then((accounts) => {
    const signer = provider.getSigner(accounts[0]);

    /* 3.1 Create instance of Turing smart contract */
    TuringContract = new ethers.Contract(
        Turing_Contract_Address,
        Turing_Contract_ABI,
        signer
    );
  });
});

//constantes para captar ações nos botões e para as sessões em html
const homeSection = document.querySelector(".home-section")
const registraVoto = document.querySelector("#registra-voto");
const goToAreaAdm = document.querySelector("#area-administrativa");
const emitirMoeda = document.querySelector("#emitir-moeda");
const encerraVot = document.querySelector("#encerra-votacao");
const admSection = document.querySelector(".adm-section");

//para a apresentação da tela inicial
homeSection.style.display = "block";
admSection.style.display = "none";

//para captar o valor do select atual no codinome da area de votação
function atualizaSelectCodinome(){

	let select = document.querySelector("#codinome");
	let optionValue = select.options[select.selectedIndex];
	let value = optionValue.value;

	return value;
}

//função para fazer o envio do voto 
const enviaVoto = () => {
    // update button value
    registraVoto.value = "Validando Voto...";

    // Pegando os dados recebidos do usuário 
	codinome = atualizaSelectCodinome();
	const qtdTuringsInput = document.querySelector("#qtd-turings");
	const qtdTurings = BigInt((qtdTuringsInput.value)*(Math.pow(10,18)));
	
    //Mantar para o contrato - em saTurings
    TuringContract.vote(codinome,qtdTurings)
    .then(() => {
        //5.4 Reset form 
		registraVoto.value = "Votar";
        qtdTuringsInput.value = "";
    })
    .catch((err) => {
        // If error occurs, display error message
        alert("Error enviaVoto" + err.message);
      });
};

//Função para votar - enviar um voto 
registraVoto.addEventListener("click", enviaVoto);

//para mudar a tela de principal para area adm - por botão
goToAreaAdm.addEventListener("click",() => {
	homeSection.style.display = "none";
	admSection.style.display = "block";
});

//função para captar o select escolhido no momento do envio da informação
function atualizaSelectEndereco(){

	let select = document.querySelector("#endereco");
	let optionValue = select.options[select.selectedIndex];
	let value = optionValue.value;

	return value;
}

//função para emitir turings 
const emiteTuring = () => {
    // update button value
    emitirMoeda.value = "Emitindo...";

	// Pegando os dados recebidos do usuário 
	endereco = atualizaSelectEndereco();
	const emiteQtdTuringsInput = document.querySelector("#emite-turings");

    //Mantar para o contrato - em saTurings
    TuringContract.issueToken(endereco,BigInt((emiteQtdTuringsInput.value)*(Math.pow(10,18))))
    .then(() => {
        //5.4 Reset form 
		emitirMoeda.value = "Emite Moeda";
        emiteQtdTuringsInput.value = "";
		document.querySelector("#endereco") = Option [0];
    })
    .catch((err) => {
        // If error occurs, display error message
        alert("Error emiteTuring" + err.message);
    });
};

//Dispara a função emitir moeda 
emitirMoeda.addEventListener("click", emiteTuring);

//Função que encerra a votação
const encerraVotacao = () => {

    TuringContract.endVoting()
    .then(() => {

		//vai para o resultado
		homeSection.style.display = "block";
		admSection.style.display = "none";		
	})
    .catch((err) => {
        // If error occurs, display error message
        alert("Error encerraVotacao" + err.message);
    });
}

// Botão que chama a função de encerrar votação
encerraVot.addEventListener("click",encerraVotacao);
