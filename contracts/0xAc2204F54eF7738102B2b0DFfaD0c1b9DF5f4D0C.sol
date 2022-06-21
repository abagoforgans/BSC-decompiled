contract main {




// =====================  Runtime code  =====================


const name = 'SMALLWEIRDCODETEST1', 0

const decimals = 9

const symbol = 'SMALLWEIRDCODETEST1', 0


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address autoLiquidityReceiverAddress;
uint256 totalSupply;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function autoLiquidityReceiver() payable {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if balanceOf[msg.sender] < arg2:
        revert with 0, 17
    balanceOf[msg.sender] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function launch() payable {
    if not stor3:
        call stor0.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, uint32(this.address), balanceOf[this.address], balanceOf[this.address], eth.balance(this.address), autoLiquidityReceiverAddress, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        stor3 = 1
}



}
