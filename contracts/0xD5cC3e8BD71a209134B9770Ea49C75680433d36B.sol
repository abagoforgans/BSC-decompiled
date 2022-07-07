contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#
address owner;
address stor1;
uint256 sub_be5969de;
uint256 openingTime;
uint256 closingTime;
uint256 totalDeposit;
address ticketAddress;
address winnerAddress;
array of address depositor;
mapping of uint256 deposits;

function closingTime() payable {
    return closingTime
}

function ticketAddress() payable {
    return ticketAddress
}

function owner() payable {
    return owner
}

function openingTime() payable {
    return openingTime
}

function sub_be5969de(?) payable {
    return sub_be5969de
}

function winnerAddress() payable {
    return winnerAddress
}

function totalDeposit() payable {
    return totalDeposit
}

function depositor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < depositor.length
    return depositor[arg1]
}

function deposits(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deposits[arg1]
}

function _fallback() payable {
    revert
}

function isOpen() payable {
    if openingTime > block.timestamp:
        return openingTime <= block.timestamp
    return closingTime >= block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be5969de = arg1
}

function setPeriod(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    openingTime = arg1
    closingTime = arg2
}

function sub_0fce0103(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_be5969de < deposits[address(arg1)]:
        return 0
    if sub_be5969de < deposits[address(arg1)]:
        revert with 0, 17
    return (sub_be5969de - deposits[address(arg1)])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_55264deb(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    openingTime = arg1
    closingTime = arg2
    sub_be5969de = arg3
    totalDeposit = 0
    idx = 0
    while idx < depositor.length:
        mem[0] = depositor[idx]
        mem[32] = 9
        deposits[stor8[idx]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    # nil
}

function burnTicket() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall ticketAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ticketAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function selectWinner() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if winnerAddress != this.address:
        revert with 0, 'You can select winner only once!'
    if not totalDeposit:
        revert with 0, 18
    if 1 > !(sha3(block.difficulty, block.timestamp, totalDeposit) % totalDeposit):
        revert with 0, 17
    idx = 0
    s = 0
    while idx < depositor.length:
        mem[0] = depositor[idx]
        mem[32] = 9
        if s > !deposits[stor8[idx]]:
            revert with 0, 17
        if s + deposits[stor8[idx]] < (sha3(block.difficulty, block.timestamp, totalDeposit) % totalDeposit) + 1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + deposits[stor8[idx]]
            continue 
        if idx >= depositor.length:
            revert with 0, 50
        winnerAddress = depositor[idx]
    revert with 0, 50
}



}
