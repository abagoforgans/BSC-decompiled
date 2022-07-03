contract main {




// =====================  Runtime code  =====================


const name = 32, 48, 0xfe6a6f696e2040656d706f7269756d63616c6c732c207265616c206465762068656c70696e67207769746820746f6f6c, mem[176 len 16] >> 128, 0

const decimals = 18

const symbol = 'https://t.me/emporiumcalls', 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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
    require arg2 <= balanceOf[msg.sender]
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 1
    if balanceOf[msg.sender] < arg2:
        revert with 0, 17
    balanceOf[msg.sender] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 1
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 1
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 1
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    allowance[address(arg1)][msg.sender] -= arg3
    if balanceOf[address(arg2)] > !arg3:
        revert with 0, 17
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 1
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
