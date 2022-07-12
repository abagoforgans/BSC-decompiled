contract main {




// =====================  Runtime code  =====================


const name = 'Moonshots Farm'

const decimals = 18

const symbol = ''


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3;
address currentGovernanceAddress; offset 8

function totalSupply() payable {
    return totalSupply
}

function currentGovernance() payable {
    return currentGovernanceAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_8a12bff7(?) payable {
    return bool(stor3)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function updateGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == currentGovernanceAddress
    currentGovernanceAddress = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg1
        emit 0xfeddf252: arg1, msg.sender, 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 / 100 <= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 - (arg2 / 100) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
    require arg2 / 100 <= totalSupply
    totalSupply -= arg2 / 100
    emit 0xfeddf252: (arg2 / 100), msg.sender, 0
    emit 0xfeddf252: (arg2 - (arg2 / 100)), msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 / 100 <= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 - (arg3 / 100) + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[arg2]
    require arg3 / 100 <= totalSupply
    totalSupply -= arg3 / 100
    emit 0xfeddf252: (arg3 / 100), arg1, 0
    emit 0xfeddf252: (arg3 - (arg3 / 100)), arg1, arg2
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[260 len arg3.length] = arg3[all]
    mem[arg3.length + 260] = 0
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, this.address, 128, arg3.length, arg3[all], mem[arg3.length + 260 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function mint(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == currentGovernanceAddress
    require not stor3
    require arg1 + totalSupply >= totalSupply
    if arg1 + totalSupply < 6900000 * 10^18:
        require arg1 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg1
        require arg1 + totalSupply >= totalSupply
        totalSupply += arg1
        emit 0xfeddf252: arg1, 0, arg2
    else:
        require totalSupply <= 6900000 * 10^18
        stor3 = 1
        require -totalSupply + balanceOf[address(arg2)] + 6900000 * 10^18 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] = -totalSupply + balanceOf[address(arg2)] + 6900000 * 10^18
        require 6900000 * 10^18 >= totalSupply
        totalSupply = 6900000 * 10^18
        emit 0xfeddf252: (-totalSupply + 6900000 * 10^18), 0, arg2
}



}
