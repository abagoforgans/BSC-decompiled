contract main {




// =====================  Runtime code  =====================


const name = 'SAWI'

const decimals = 18

const symbol = 'SAWI'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 totalSupply;
uint256 startTime;
mapping of uint8 stor6;

function totalSupply() payable {
    return totalSupply
}

function getBlackListStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isBlackListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    startTime = arg1
}

function addBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6[address(arg1)] = 1
    emit AddedBlackList(arg1);
}

function removeBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6[address(arg1)] = 0
    emit RemovedBlackList(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function destroyBlackFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor6[address(arg1)]
    balanceOf[address(arg1)] = 0
    totalSupply -= balanceOf[address(arg1)]
    emit DestroyedBlackFunds(address(arg1), balanceOf[address(arg1)]);
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != this.address
    if owner != msg.sender:
        if block.timestamp <= startTime:
            revert with 0, 'Unacceptable during sales'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg2 != this.address
    require not stor6[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != this.address
    if owner != msg.sender:
        if block.timestamp <= startTime:
            revert with 0, 'Unacceptable during sales'
    require not stor6[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg1
    require arg1 != this.address
    require arg1
    require arg1 != this.address
    if owner != msg.sender:
        if block.timestamp <= startTime:
            revert with 0, 'Unacceptable during sales'
    require not stor6[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 160] = 64
    emit Transfer(address rg1, address rg2, uint256 rg3, bytes rg4):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
                  arg3.length,
                  Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
                  msg.sender,
                  arg1,
    if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + 128] = 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}



}
