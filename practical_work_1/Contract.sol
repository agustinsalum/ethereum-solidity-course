// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

contract ContractAgustinSalum {
    string message;

    // // memory: Se utiliza para variables que solo se necesitan temporalmente, como argumentos de función, variables locales o arreglos que se crean dinámicamente durante la ejecución de una función. Una vez que la ejecución de la función se completa, el espacio de memoria se libera.

    function getMessage() public view returns(string memory){
        return message;

    }

    // Calldata: Se utiliza para argumentos de función que son pasados desde un llamador externo, como un usuario u otro contrato inteligente. Calldata es de solo lectura, lo que significa que no puede ser modificado por la función.
    function setMessage(string calldata _message) public {
        message = _message;

    }

}


