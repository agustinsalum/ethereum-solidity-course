# **React DApp: Interacción con Contratos Inteligentes**

Este proyecto es una aplicación descentralizada (DApp) construida con React que interactúa con contratos inteligentes desplegados en la blockchain.

---

## **Requisitos previos**

Antes de comenzar, asegúrate de tener las siguientes herramientas instaladas:

### **Herramientas necesarias**

1. **Node.js**  
   - Descarga e instala Node.js desde [nodejs.org](https://nodejs.org/).  
   - Recomendado: Versiones LTS (16.x o 18.x).  
   - Verifica la instalación:
     ```bash
     node -v
     npm -v
     ```

2. **MetaMask**  
   - Instala la extensión de MetaMask en tu navegador desde [metamask.io](https://metamask.io/).

## **Instalación**

1. Clona el repositorio

2. Instala las dependencias del proyecto:

```
npm install
```

3. Crea un archivo .env en la raíz del proyecto con las siguientes variables:

```
REACT_APP_WALLET_ADDRESS=
REACT_APP_CONTRACT_ADDRESS=
REACT_APP_TOKEN_A_ADDRESS=
REACT_APP_TOKEN_B_ADDRESS=
```

## **Ejecucion**

1. Inicia el servidor de desarrollo:

```
npm start
```

## **Interacción con los contratos**

1. Conecta tu wallet:

Al abrir la aplicación, MetaMask solicitará conectar tu wallet. Acepta para continuar.

2. Realiza las operaciones:

 - TokenA y TokenB: Consulta balances, agrega liquidez, y realiza swaps.

 - SimpleDEX: Interactúa con el exchange descentralizado. 