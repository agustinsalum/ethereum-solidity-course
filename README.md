
# Ethereum (Español)

Las criptomonedas, tales como bitcoin, permiten a cualquiera transferir dinero de manera global. Ethereum también lo permite y además es capaz de ejecutar un código que permite a las personas crear aplicaciones y organizaciones; es a la par resiliente y flexible. Cualquier programa informático puede ejecutarse en Ethereum.

Ethereum es una red de computadoras de todo el mundo que siguen un conjunto de normas conocidas como el protocolo Ethereum. La red Ethereum actúa como la base de comunidades, aplicaciones, organizaciones y activos digitales que cualquiera puede construir y utilizar.

Puede crear una cuenta de Ethereum desde cualquier lugar y en cualquier momento, y explorar un mundo de aplicaciones o construir la suya propia. La innovación fundamental es que usted puede hacer todo esto sin necesidad de confiar en una autoridad central que pueda cambiar las normas o restringir su acceso.

## Indice

- [Glosario](#glosario)
- [Crear Una Wallet](#crear-una-wallet)
- [Crea tu propio Smart Contract](#crea-tu-propio-smart-contract)
- [Flatten](#flatten)
- [Toolkit para desarrollo en Ethereum](#toolkit-para-desarrollo-en-ethereum)

Fuente: https://eth-kipu.gitbook.io/ethereum-developer-pack

## Glosario

- Blockchain  
Una cadena de bloques. Es una tecnología que guarda información en bloques que están enlazados entre sí. Cada bloque contiene datos, como transacciones, y una vez que un bloque se agrega a la cadena, no se puede cambiar.

- Criptomoneda  
Una moneda digital que utiliza criptografía para asegurar las transacciones. La criptomoneda principal de Ethereum se llama Ether (ETH).

- Descentralizado  
Algo que no está controlado por una sola entidad o persona. En Ethereum, no hay una única persona o empresa que controle la red; en su lugar, muchas computadoras (llamadas nodos) lo hacen.

- Contrato inteligente (Smart Contract)  
Programas que se ejecutan en la blockchain de Ethereum. Funcionan automáticamente y se aseguran de que todas las partes cumplan con lo acordado sin necesidad de un intermediario.

- Proof of Stake (Prueba de Participación)  
Un método para mantener la blockchain segura que no requiere minería. En su lugar, las personas pueden "apostar" su Ether para tener la oportunidad de validar nuevas transacciones y ganar recompensas.

- Wallet  
Una aplicación o dispositivo que te permite guardar y gestionar tu criptomoneda. Con una billetera digital, puedes enviar y recibir Ether y otros tokens.

- Token  
Una unidad de valor creada y gestionada en una blockchain. Los tokens pueden representar cualquier cosa, desde monedas hasta puntos en un juego.

- Ether (ETH)  
La moneda digital utilizada en la red Ethereum para pagar por el uso de sus servicios. Piensa en él como el "combustible" que impulsa las aplicaciones en Ethereum.

- Almacenamiento Descentralizado  
Guardar datos en muchos lugares diferentes en lugar de un solo servidor central. Esto aumenta la seguridad y reduce el riesgo de pérdida de datos.

- DeFi (Finanzas Descentralizadas)  
Un ecosistema de aplicaciones financieras construidas sobre la blockchain de Ethereum. Permiten realizar operaciones financieras como préstamos, ahorros y trading sin intermediarios tradicionales como bancos.

- NFT (Token No Fungible)  
Un tipo de token que representa algo único, como una obra de arte digital o un coleccionable. Cada NFT es único y no se puede intercambiar por otro igual.

- Testnet (Red de Pruebas)  
Una red de prueba que imita la red principal de Ethereum. Es utilizada por los desarrolladores para probar sus aplicaciones sin usar Ether real.

- EVM (Ethereum Virtual Machine)  
El motor de ejecución que maneja los contratos inteligentes en Ethereum. Cada nodo de la red Ethereum ejecuta la EVM.

- Mainnet (Red Principal)  
La red principal de Ethereum donde ocurren las transacciones reales y los contratos inteligentes se ejecutan en producción.

- Solidity  
El principal lenguaje de programación utilizado para escribir contratos inteligentes en la plataforma Ethereum.

- ERC-721  
Un estándar técnico para tokens no fungibles (NFT) en la blockchain de Ethereum. Define cómo los tokens únicos pueden ser creados y manejados.

- Fork (Bifurcación)  
Un cambio en el protocolo de una blockchain que puede resultar en una división de la cadena en dos cadenas separadas. Puede ser una bifurcación dura (hard fork) o suave (soft fork).

- ERC-20  
Un estándar técnico para tokens fungibles creados en la blockchain de Ethereum. Define una lista común de reglas para que los tokens sigan.

- Bloque  
Un conjunto de transacciones agrupadas y verificadas en la blockchain. Cada bloque contiene un hash del bloque anterior, creando una cadena.

- Private Key (Llave Privada)  
Un código secreto que te permite acceder y controlar tus criptomonedas. Debe mantenerse seguro y nunca compartirse.

- Faucet  
Un servicio que distribuye pequeñas cantidades de criptomoneda gratis. Se utiliza principalmente en redes de prueba para obtener Ether sin costo.

- Inmutable  
Algo que no puede ser cambiado una vez creado. Las transacciones en la blockchain son inmutables.

- Address (Dirección)  
Un identificador único que representa una cuenta en la blockchain. Es derivada de la llave pública.

- ZK (Zero-Knowledge)  
Una tecnología que permite a una parte demostrar a otra que una declaración es verdadera sin revelar ninguna información adicional más allá de la veracidad de la declaración misma.

- Public Key (Llave Pública)  
Un código que permite recibir criptomonedas. Puede compartirse con otros sin riesgo.

- Hash  
Un código generado por una función matemática que convierte datos en una cadena de caracteres de longitud fija. Es usado para asegurar que los datos no se hayan modificado.

- DAO (Organización Autónoma Descentralizada)  
Una organización dirigida por reglas codificadas como contratos inteligentes en la blockchain de Ethereum. No hay líderes centralizados, y las decisiones se toman mediante votación.

- dApps (Aplicaciones Descentralizadas)  
Aplicaciones que funcionan en la red Ethereum utilizando contratos inteligentes. No están controladas por ninguna entidad central y sus datos se almacenan en la blockchain.

- Gas  
Una medida de cuánto poder de computación se necesita para realizar transacciones u operaciones en Ethereum. Cuando usas Ethereum, pagas una pequeña cantidad de gas.

- Ethereum  
Una plataforma descentralizada que permite a los desarrolladores crear aplicaciones usando la tecnología blockchain. Es como un gran computador mundial que cualquiera puede usar.


## Crear Una Wallet

MetaMask es una extensión de navegador que te permite gestionar tu cuenta de Ethereum de forma segura. Sigue los pasos a continuación para instalarla según tu navegador:

### 1. Selecciona tu navegador:
   - **Google Chrome**:  
     Accede a la [Chrome Web Store](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn) y busca la extensión "MetaMask".
   - **Mozilla Firefox**:  
     Dirígete al [sitio oficial de extensiones de Firefox](https://addons.mozilla.org/en-US/firefox/addon/ether-metamask/) y busca "MetaMask".

Crea una nueva wallet siguiendo las instrucciones en pantalla o importa una existente usando tu clave privada o frase de recuperación.

### 2. Elegir una red:

  - Accede a [ChainList](https://chainlist.org/) y agrega la red "Scroll Sepolia Testnet".

### 3. Faucet de una Testnet:

Es una herramienta que proporciona una pequeña cantidad de criptomonedas de prueba (testnet) para que los desarrolladores y los usuarios puedan probar sus aplicaciones y servicios en una red de pruebas sin tener que utilizar criptomonedas reales.

  - Accede a [Kipu Faucet](https://faucet.ethkipu.org/) con la red "Scroll Sepolia" y ingresa tu address o tu ENS. 

## Crea tu propio Smart Contract

### 1. Uso de Remix

1. **Acceso a Remix**  
   - Visita [Remix](https://remix.ethereum.org/).
   - Puedes iniciar un proyecto en blanco o importar uno desde un repositorio público de GitHub.

2. **Crear un archivo Solidity**  
   - Crea un archivo con la extensión `.sol` para que sea reconocido como código de Solidity.

3. **Compilación del contrato**  
   - Ve a la sección **"Solidity Compiler"** y selecciona la versión adecuada del compilador. Luego, compila el archivo `.sol`.

4. **Despliegue local**  
   - En la sección **"Deploy"**, selecciona el entorno **"Cancun"**, que proporciona cuentas con 100 ETH para pruebas locales sin necesidad de subir el contrato a la blockchain.

5. **Despliegue en la blockchain**  
   - Para desplegar tu contrato en la blockchain, selecciona **"Injected Provider - MetaMask"**.
   - Conecta tu cuenta de MetaMask asegurándote de estar en la red **Scroll Sepolia Testnet**.

### 2. Subir el contrato a la blockchain

1. **Despliegue**  
   - Haz clic en **"Deploy"** y confirma la transacción desde MetaMask.

2. **Obtener la dirección del contrato**  
   - Después del despliegue, copia la dirección del contrato desde la sección **"Deployed Contracts"** en Remix.

3. **Verificar el contrato en el explorador de bloques**  
   - Accede al explorador de bloques a través de la pestaña **"Actividad"** en MetaMask, seleccionando la transacción correspondiente.
   - Haz clic en el ID del contrato en el campo **"To"**.

4. **Verificación y publicación del contrato**  
   - En el explorador de bloques, ve a la pestaña **"Contract"** y selecciona **"Verify and Publish"**.
   - Completa el formulario con la siguiente información:
     - **Dirección del contrato:** proporcionada por defecto.
     - **Tipo de compilación:** selecciona **"Single File"**.
     - **Versión del compilador:** consulta esta información en la sección **"Solidity Compiler"** en Remix.
     - **Licencia:** especificada en la primera línea del archivo `.sol`.

5. **Copia del contrato**  
   - En el campo **"Enter Solidity Contract"**, pega el código completo de tu contrato.

6. **Finalización de la verificación**  
   - Presiona **"Verify and Publish"**.  
   - Si todo se realiza correctamente, obtendrás la dirección del contrato verificado. En el explorador de bloques, la pestaña **"Contract"** aparecerá marcada en verde.

## Flatten

"Flatten" combina todos los contratos importados en un único archivo. Esto elimina los import y coloca el contenido de las librerías (como OpenZeppelin) directamente en tu contrato. Es una solución ideal para problemas de verificación cuando las plataformas no soportan callbacks de archivos importados.

### 1. **Usa Remix para Flatten**:  
   - Haz clic derecho en el archivo del contrato que deseas desplegar
   - Selecciona la opción "Flatten" (en algunos casos puede aparecer como "Generate flattened file").
   - Remix generará un nuevo archivo con todo el código combinado en un solo lugar, incluyendo las librerías que usaste.
### 2.  **Limpieza del Archivo Flattened**:  
   - Elimina o comenta líneas redundantes. Si aparecen múltiples líneas como pragma solidity ^0.8.0;, deja solo una, la correspondiente a tu contrato principal.
   - Agrega la línea con la licencia SPDX, como // SPDX-License-Identifier: MIT.
### 3.  **Elige el archivo correcto**:
   - Tendrás dos archivos, tu archivo original y el archivo aplanado, este es el generado con Flatten, que combina todo el código en un solo archivo.
   - Usa el archivo aplanado para compilar. Una vez compilado, sube el código del contrato a la blockchain.
### 4.  **Nota**:
   - El Flatten sirve para evitar el error: `Error! Unable to generate Contract Bytecode and ABI (General Exception, unable to get compiled [bytecode]).`

## Toolkit para desarrollo en Ethereum

Objetivo: Conectar el frontend a la blockchain, utilizando las principales herramientas del mercado para 
desarrollar en Web3.

### 1. **Node.js y npm**
   - Accede a [Download Node.js](https://nodejs.org/en/download/package-manager) y selecciona los parametros correspondientes.
   - Crea un directorio para el proyecto con ```npm init```. Sigue las instrucciones para completar la configuración del proyecto. Puedes aceptar las configuraciones por defecto presionando Enter.
   - Express es un framework web minimalista y flexible que proporciona herramientas para desarrollar aplicaciones web y móviles. Puede instalarlo tecleando ``npm install express```
   - Para crear el archivo del servidor, crea un archivo llamado ```server.js``` y agrega el siguiente código:


```
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(port, () => {
  console.log(`Server running at <http://localhost>:${port}/`);
});
```

   - Para ejecutar el servidor, teclea ```node server.js```
   - Ingresa a http://localhost:3000/ , deberías ver el mensaje "Hello World!".
   - Instalación de Dependencias:

| Descripcion | Codigo |
| ------------ | ------------ 
| Instalar todas las dependencias                   | npm install
| Instalar una nueva dependencia de producción      | npm install nombre-del-paquete 
| Instalar una nueva dependencia de desarrollo      | npm install nombre-del-paquete --save-dev
| Actualizar todas las dependencias                 | npm update
| Actualizar una dependencia específica             | npm update nombre-del-paquete
| Eliminar una dependencia de producción            | npm uninstall nombre-del-paquete
| Eliminar una dependencia de desarrollo            | npm uninstall nombre-del-paquete --save-dev


### 2. **Visual Studio Code para Solidity**
   - En Visual Studio Code ve a la vista de extensiones y busca **Solidity - Ethereum Solidity Language for Visual Studio Code**. Haz clic en **Instalar**.
   
### 3. **Despliegue de un smart contract en Hardhat**

Hardhat es un entorno integral de desarrollo de Ethereum que abarca todo el conjunto de actividades asociadas al desarrollo de contratos inteligentes y aplicaciones descentralizadas (dApps). Entre las tareas que podemos realizar con Hardhat se encuentran:

- Editar smart contracts, añadiendo la posibilidad de incluir sentencias console.log().

- Compilar smart contracts.

- Depurar errores (debugging).

- Desplegar smart contracts en mainnet, redes de prueba o en una blockchain virtual local.

- Hacer pruebas.

A continuación veremos cómo podemos realizar un flujo completo de creación y despliegue de un smart contract usando Hardhat.
   
   - Crea un nuevo proyecto. Como primer paso, crea una nueva carpeta con  ```mkdir my-hardhat-projecty ```. Luego, accede a la carpeta y crea un nuevo proyecto con ```npm init -y``` . Por ultimo, añade Hardhat con npm ```install --save-dev hardhat```.
   - Inicializa un nuevo proyecto de Hardhat con ```npx hardhat init```. Sigue las instrucciones para crear un archivo ```hardhat.config.js``` vacío. Esto te dejará con solo el fichero ```hardhat.config.js``` en tu repositorio.
   -  Hardhat funciona ejecutando tareas (tasks) y llamando a plugins. Las tareas disponibles las puedes ver ejecutando ```npx hardhat```.

Como ejemplos de tareas tenemos: compilar, ejecutar scripts, habilitar un servidor JSON-RPC, habilitar la consola, verificar un contrato en Etherscan, etc.
Por otro lado, se utilizan plugins creados por Hardhat o terceros que contienen diferentes herramientas útiles para las diferentes etapas del desarrollo. Un plugin esencial es ```@nomicfoundation/hardhat-toolbox``` que contiene prácticamente todo lo que se necesita para desarrollar:

- Usar ethers.js para interactuar con contratos.

- Hacer pruebas con Mocha y Chai.

- Desplegar contratos con Hardhat Ignition.

- Interactuar con la red de prueba local de Hardhat.

- Obtener métricas de gas utilizado.

- Medir tu cobertura de pruebas.

Para instalarlo ejecuta la siguiente instrucción en la raíz del directorio de tu proyecto: ```npm install --save-dev @nomicfoundation/hardhat-toolbox```. también debes añadir la siguiente línea al inicio de tu fichero hardhat.config.js: ```require("@nomicfoundation/hardhat-toolbox");```

   - Crea un directorio llamado contracts/ y dentro de él un archivo Greeter.sol con el siguiente código:

```
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Greeter {
  string greeting;

  constructor(string memory _greeting) {
    console.log("Deploying a Greeter with greeting:", _greeting);
    greeting = _greeting;
  }

  function greet() public view returns (string memory) {
    return greeting;
  }

  function setGreeting(string memory _greeting) public {
    console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
    greeting = _greeting;
  }
}
```

   - Para compilar tus contratos, ejecuta ```npx hardhat compile```.

En nuestro ejemplo, la ejecución de esta tarea nos creará un directorio denominado ```artifacts```. El ABI de ```Greeter.sol``` está ubicado en ```.artifacts/contracts/Greeter.sol/``` y se llama ```Greeter.json```.

Al igual que Remix, Hardhat habilita una blockchain local. En esta red tendrás disponible 20 cuentas (addresses con sus claves privadas) con 10000 ETH de prueba cada una. Para habilitar la blockchain local ejecuta desde el directorio raíz de tu repositorio ```npx hardhat node```.
en en cuenta que las claves addresses y sus claves privadas son públicas, dado que todos los usuarios de Hardhat las tienen a su disposición. Si utilizas esas addresses en mainnet o en alguna red pública perderás todo lo que tienes en ellas. Sólo debes usar estas addresses en el entorno de pruebas de Hardhat.

   - En la raíz principal de tu repositorio crea un directorio ```ignition``` y dentro de él otro llamado ```modules```. Luego dentro de ```ignition/modules``` crea el script de despliegue ```Greeter.js``` con el siguiente contenido:

```
const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const GreeterModule = buildModule("GreeterModule", (m) => {
  const greet = m.contract("Greeter", ["Hola"]);

  return { greet };
});

module.exports = GreeterModule;
```

   - Para desplegar el smart contract en la red local ejecuta ```npx hardhat ignition deploy ./ignition/modules/Greeter.js``` en una nueva sesión del terminal.
   - Si todo funciona correctamente, obtendrás la dirección del contrato desplegado en la red local, en un mensaje como el siguiente:

```
Deployed Addresses

GreeterModule#Greeter - 0x5FbDB2315678afecb367f032d93F642f64180aa3
```

# Ethereum (English)

Cryptocurrencies, such as Bitcoin, allow anyone to transfer money globally. Ethereum does the same and additionally enables code execution, allowing people to create applications and organizations; it is both resilient and flexible. Any software program can run on Ethereum.

Ethereum is a global network of computers following a set of rules known as the Ethereum protocol. The Ethereum network serves as the foundation for communities, applications, organizations, and digital assets that anyone can build and use.

You can create an Ethereum account from anywhere and at any time, explore a world of applications, or build your own. The fundamental innovation is that you can do all this without relying on a central authority that could change the rules or restrict your access.

## Index

- [Glossary](#glossary)
- [Create a Wallet](#create-a-wallet)
- [Create Your Own Smart Contract](#create-your-own-smart-contract)
- [Flatten](#flatten)
- [Toolkit for Ethereum Development](#toolkit-for-ethereum-development)

Source: https://eth-kipu.gitbook.io/ethereum-developer-pack


### Glossary

- Blockchain  
A chain of blocks. It is a technology that stores information in blocks linked together. Each block contains data, like transactions, and once a block is added to the chain, it cannot be altered.

- Cryptocurrency  
A digital currency that uses cryptography to secure transactions. Ethereum's main cryptocurrency is called Ether (ETH).

- Decentralized  
Something not controlled by a single entity or person. In Ethereum, no one person or company controls the network; instead, many computers (called nodes) do.

- Smart Contract  
Programs that run on the Ethereum blockchain. They execute automatically and ensure all parties comply with the agreed terms without needing an intermediary.

- Proof of Stake  
A method to keep the blockchain secure without requiring mining. Instead, people can "stake" their Ether to have a chance to validate new transactions and earn rewards.

- Wallet  
An application or device that allows you to store and manage your cryptocurrency. With a digital wallet, you can send and receive Ether and other tokens.

- Token  
A unit of value created and managed on a blockchain. Tokens can represent anything from currencies to points in a game.

- Ether (ETH)  
The digital currency used on the Ethereum network to pay for its services. Think of it as the "fuel" powering Ethereum applications.

- Decentralized Storage  
Storing data across multiple locations instead of a single central server. This increases security and reduces the risk of data loss.

- DeFi (Decentralized Finance)  
An ecosystem of financial applications built on the Ethereum blockchain. They enable financial activities like lending, savings, and trading without traditional intermediaries such as banks.

- NFT (Non-Fungible Token)  
A type of token representing something unique, like a digital artwork or collectible. Each NFT is unique and cannot be exchanged for another equivalent one.

- Testnet  
A testing network that mimics Ethereum's main network. Developers use it to test their applications without using real Ether.

- EVM (Ethereum Virtual Machine)  
The execution engine that handles smart contracts on Ethereum. Every node in the Ethereum network runs the EVM.

- Mainnet  
Ethereum's main network where real transactions occur and smart contracts run in production.

- Solidity  
The primary programming language used to write smart contracts on Ethereum.

- ERC-721  
A technical standard for non-fungible tokens (NFTs) on the Ethereum blockchain. It defines how unique tokens can be created and managed.

- Fork  
A change in a blockchain protocol that can result in a chain splitting into two separate chains. It can be a hard fork or a soft fork.

- ERC-20  
A technical standard for fungible tokens created on the Ethereum blockchain. It defines a common set of rules for tokens to follow.

- Block  
A set of transactions grouped and verified on the blockchain. Each block contains a hash of the previous block, creating a chain.

- Private Key  
A secret code allowing you to access and control your cryptocurrency. It must be kept secure and never shared.

- Faucet  
A service distributing small amounts of cryptocurrency for free. It is primarily used in test networks to get Ether at no cost.

- Immutable  
Something that cannot be changed once created. Blockchain transactions are immutable.

- Address  
A unique identifier representing an account on the blockchain. It is derived from the public key.

- ZK (Zero-Knowledge)  
A technology allowing one party to prove a statement is true without revealing additional information beyond the truth of the statement.

- Public Key  
A code that allows receiving cryptocurrency. It can be shared with others without risk.

- Hash  
A code generated by a mathematical function that converts data into a fixed-length string of characters. It is used to ensure data has not been altered.

- DAO (Decentralized Autonomous Organization)  
An organization governed by rules coded as smart contracts on the Ethereum blockchain. There are no centralized leaders, and decisions are made through voting.

- dApps (Decentralized Applications)  
Applications running on the Ethereum network using smart contracts. They are not controlled by any central entity, and their data is stored on the blockchain.

- Gas  
A measure of how much computational power is needed to perform transactions or operations on Ethereum. When you use Ethereum, you pay a small amount of gas.

- Ethereum  
A decentralized platform enabling developers to create applications using blockchain technology. It is like a global computer anyone can use.

### Create a Wallet

MetaMask is a browser extension that allows you to manage your Ethereum account securely. Follow the steps below to install it based on your browser:

#### 1. Select your browser:
   - **Google Chrome**:  
     Go to the [Chrome Web Store](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn) and search for the "MetaMask" extension.
   - **Mozilla Firefox**:  
     Visit the [official Firefox add-ons site](https://addons.mozilla.org/en-US/firefox/addon/ether-metamask/) and search for "MetaMask".

Create a new wallet following the on-screen instructions or import an existing one using your private key or recovery phrase.

#### 2. Choose a network:

  - Go to [ChainList](https://chainlist.org/) and add the "Scroll Sepolia Testnet" network.

#### 3. Testnet Faucet:

A tool that provides small amounts of testnet cryptocurrency for developers and users to test applications and services without using real cryptocurrency.

  - Visit [Kipu Faucet](https://faucet.ethkipu.org/) with the "Scroll Sepolia" network and enter your address or ENS.

### Create Your Own Smart Contract

#### 1. Using Remix

1. **Access Remix**  
   - Visit [Remix](https://remix.ethereum.org/).
   - Start a blank project or import one from a public GitHub repository.

2. **Create a Solidity file**  
   - Create a file with the `.sol` extension to be recognized as Solidity code.

3. **Compile the contract**  
   - Go to the **"Solidity Compiler"** section and select the appropriate compiler version. Then, compile the `.sol` file.

4. **Local deployment**  
   - In the **"Deploy"** section, select the **"Cancun"** environment, which provides accounts with 100 ETH for local testing without deploying to the blockchain.

5. **Deploy on the blockchain**  
   - To deploy your contract on the blockchain, select **"Injected Provider - MetaMask"**.
   - Connect your MetaMask account, ensuring you are on the **Scroll Sepolia Testnet**.

#### 2. Upload the contract to the blockchain

1. **Deployment**  
   - Click **"Deploy"** and confirm the transaction in MetaMask.

2. **Get the contract address**  
   - After deployment, copy the contract address from the **"Deployed Contracts"** section in Remix.

3. **Verify the contract on the block explorer**  
   - Access the block explorer via the **"Activity"** tab in MetaMask by selecting the relevant transaction.
   - Click the contract ID in the **"To"** field.

4. **Verify and publish the contract**  
   - In the block explorer, go to the **"Contract"** tab and select **"Verify and Publish"**.
   - Complete the form with the following details:
     - **Contract Address:** pre-filled by default.
     - **Compiler Type:** select **"Single File"**.
     - **Compiler Version:** find this in the **"Solidity Compiler"** section in Remix.
     - **License:** specified in the first line of the `.sol` file.

5. **Copy the contract**  
   - Paste the full contract code into the **"Enter Solidity Contract"** field.

6. **Finish verification**  
   - Click **"Verify and Publish"**.  
   - If successful, you'll receive the verified contract address. In the block explorer, the **"Contract"** tab will appear marked in green.

### Flatten

"Flatten" combines all imported contracts into a single file. This process removes `import` statements and directly includes the content of libraries (like OpenZeppelin) within your contract. It is an ideal solution for verification issues when platforms do not support imported file callbacks.

- **Use Remix for Flatten**:  
   - Right-click on the contract file you want to deploy.  
   - Select the "Flatten" option (in some cases, it may appear as "Generate flattened file").  
   - Remix will generate a new file with all the code combined in one place, including the libraries you used.  

- **Clean the Flattened File**:  
   - Remove or comment out redundant lines. If multiple lines like `pragma solidity ^0.8.0;` appear, keep only one, corresponding to your main contract.  
   - Add the SPDX license line, such as `// SPDX-License-Identifier: MIT`.  

- **Choose the Correct File**:  
   - You will have two files: your original file and the flattened file, which is the one generated by the flatten process that combines all the code into a single file.  
   - Use the flattened file for compilation. Once compiled, upload the contract code to the blockchain.  

- **Note**:  
   - Flatten is used to avoid the error: `Error! Unable to generate Contract Bytecode and ABI (General Exception, unable to get compiled [bytecode]).`

## Toolkit for Ethereum Development

Objective:   Connect the frontend to the blockchain using the main tools available for Web3 development.

### 1. **Node.js y npm**
   - Access [Download Node.js](https://nodejs.org/en/download/package-manager) and select the appropriate settings.
   - Create a directory for the project with ```npm init```. Follow the instructions to complete the project setup. You can accept the default settings by pressing Enter.
   - Express is a minimalist and flexible web framework that provides tools for developing web and mobile applications. You can install it by typing ```npm install express```
   - To create the server file, create a file named ```server.js``` and add the following code:


```
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(port, () => {
  console.log(`Server running at <http://localhost>:${port}/`);
});
```

   - To run the server, type ```node server.js```
   - Go to http://localhost:3000/ , and you should see the message "Hello World!".
   - Dependency Installation:

| Description | Command |
| ------------ | ------------ 
| Install all dependencies              | npm install
| Install a new production dependency   | npm install package-name 
| Install a new development dependency  | npm install package-name --save-dev
| Update all dependencies               | npm update
| Update a specific dependency          | npm update package-name
| Remove a production dependency        | npm uninstall package-name
| Remove a development dependency       | npm uninstall package-name --save-dev


### 2. **Visual Studio Code for Solidity**
   - In Visual Studio Code, go to the Extensions view and search for **Solidity - Ethereum Solidity Language for Visual Studio Code**. Click **Install**.
   
### 3. **Deploying a Smart Contract with Hardhat**

Hardhat is a comprehensive Ethereum development environment that covers all activities related to the development of smart contracts and decentralized applications (dApps). Some of the tasks we can perform with Hardhat include:

- Edit smart contracts, with the ability to include console.log() statements. 

- Compile smart contracts.

- Debug errors.

- Deploy smart contracts to the mainnet, testnets, or a local virtual blockchain.

- Run tests.

Next, we'll see how we can perform a complete workflow for creating and deploying a smart contract using Hardhat.
   
   - Create a new project. As the first step, create a new folder with  ```mkdir my-hardhat-projecty ```. Then, navigate to the folder and initialize a new project with ```npm init -y``` . Finally, add Hardhat with ```install --save-dev hardhat```.
   - Initialize a new Hardhat project with ```npx hardhat init```. Follow the instructions to create an empty ```hardhat.config.js``` file. This will leave you with only the ```hardhat.config.js``` file in your repository.
   -  Hardhat works by executing tasks and calling plugins. You can view the available tasks by running ```npx hardhat```.

Examples of tasks include: compiling, running scripts, enabling a JSON-RPC server, enabling the console, verifying a contract on Etherscan, etc.
Additionally, plugins created by Hardhat or third parties are used, which contain various useful tools for different stages of development. An essential plugin is ```@nomicfoundation/hardhat-toolbox``` which includes almost everything needed for development:

- Use ethers.js to interact with contracts.

- Run tests with Mocha and Chai.

- Deploy contracts with Hardhat Ignition.

- Interact with Hardhat's local test network.

- Obtain gas usage metrics.

- Measure your test coverage.

To install it, run the following command at the root of your project directory: ```npm install --save-dev @nomicfoundation/hardhat-toolbox```. You should also add the following line at the beginning of your hardhat.config.js file: ```require("@nomicfoundation/hardhat-toolbox");```

   - Create a directory named contracts/ and inside it, a file called Greeter.sol with the following code:

```
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Greeter {
  string greeting;

  constructor(string memory _greeting) {
    console.log("Deploying a Greeter with greeting:", _greeting);
    greeting = _greeting;
  }

  function greet() public view returns (string memory) {
    return greeting;
  }

  function setGreeting(string memory _greeting) public {
    console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
    greeting = _greeting;
  }
}
```

   - To compile your contracts, run ```npx hardhat compile```.

In our example, running this task will create a directory called ```artifacts```. The ABI for ```Greeter.sol``` is located in ```.artifacts/contracts/Greeter.sol/``` and is named ```Greeter.json```.

Like Remix, Hardhat enables a local blockchain. In this network, you will have access to 20 accounts (addresses with their private keys), each with 10,000 test ETH. To enable the local blockchain, run the following command from the root directory of your repository: ```npx hardhat node```.
Keep in mind that the address keys and their private keys are public, as they are available to all Hardhat users. If you use these addresses on the mainnet or any public network, you will lose everything in them. You should only use these addresses in Hardhat's test environment.

   - In the root directory of your repository, create a directory called ```ignition```, and inside it, create another directory called ```modules```. Then, inside ```ignition/modules```,, create the deployment script ```Greeter.js``` with the following content:

```
const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const GreeterModule = buildModule("GreeterModule", (m) => {
  const greet = m.contract("Greeter", ["Hola"]);

  return { greet };
});

module.exports = GreeterModule;
```

   - To deploy the smart contract on the local network, run ```npx hardhat ignition deploy ./ignition/modules/Greeter.js``` in a new terminal session.
   - If everything works correctly, you will receive the deployed contract address on the local network in a message like the following:

```
Deployed Addresses

GreeterModule#Greeter - 0x5FbDB2315678afecb367f032d93F642f64180aa3
```