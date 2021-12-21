// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 < 0.7.0;
pragma experimental ABIEncoderV2;
import "./SafeMath.sol";

// Interface de nuestro token ERC20
interface IERC20 {
    // Devuelve la cantidad de tokens en existencia
    function totalSupply() external view returns(uint256);

    // Devuelve la cantidad de tokens para una dirección indicada por parámetro
    function balanceOf(address account) external view returns(uint256);

    // Devuelve el número de token que el spender podrá gastar en nombre del propietario (owner)
    function allowance(address owner, address spender) external view returns(uint256);

    // Devuelve un valor booleano resultado de la operación indicada
    function transfer(address recipient, uint256 amount) external returns(bool);

    // Devuelve un valor booleano con el resultado de la operación gasto
    function approve(address spender, uint256 amount) external returns(bool);

    // Devuelve un valor booleano con el resultado de la operación de paso de una cantidad de tokens usando el método allowance()
    function transferFrom(address sender, address recipient, uint256 amount) external returns(bool);

    // Evento que se debe emitir cuando una cantidad de tokens pase de un origen a un destino
    event Transfer(address indexed from, address indexed to, uint256 amount);

    // Evento que se debe emitir cuando se establece una asignacion con el método allowance()
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract ERC20Basic is IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 tokens);
    event Approval(address indexed owner, address indexed spender, uint256 tokens);

    using SafeMath for uint256;

    function totalSupply() public override view returns(uint256) {
        return 0;
    }

    function balanceOf(address account) public override view returns(uint256) {

        return 0;
    }

    function allowance(address owner, address spender) public override view returns(uint256) {

        return 0;
    }

    function transfer(address recipient, uint256 amount) public override returns(bool) {
        return false;
    }

    function approve(address spender, uint256 amount) public override returns(bool) {
        return false;
    }

    function transferFrom(address sender, address recipient, uint256 amount) public override returns(bool){
        return false;
    }
}