contract main {




// =====================  Runtime code  =====================


address owner;
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
    return address(depositor[arg1])
}

function deposits(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deposits[arg1]
}

function _fallback() payable {
    revert
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
        mem[0] = address(depositor[idx])
        mem[32] = 8
        deposits[address(stor7[idx])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    # nil
}

function selectWinner() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalDeposit:
        revert with 0, 18
    if 1 > !(sha3(block.difficulty, block.timestamp, totalDeposit) % totalDeposit):
        revert with 0, 17
    idx = 0
    s = 0
    while idx < depositor.length:
        mem[0] = address(depositor[idx])
        mem[32] = 8
        if s > !deposits[address(stor7[idx])]:
            revert with 0, 17
        if s + deposits[address(stor7[idx])] < (sha3(block.difficulty, block.timestamp, totalDeposit) % totalDeposit) + 1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + deposits[address(stor7[idx])]
            continue 
        if idx >= depositor.length:
            revert with 0, 50
        winnerAddress = address(depositor[idx])
    revert with 0, 50
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale Alert: Purchase amount is 0.'
    if sub_be5969de < deposits[address(msg.sender)]:
        if deposits[msg.sender] > !arg1:
            revert with 0, 17
        if deposits[msg.sender] + arg1 > sub_be5969de:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale Alert: Purchase amount is above cap.'
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Presale Alert: User has already purchased max amount.'
    if sub_be5969de < deposits[address(msg.sender)]:
        revert with 0, 17
    if deposits[msg.sender] > !arg1:
        revert with 0, 17
    if deposits[msg.sender] + arg1 > sub_be5969de:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale Alert: Purchase amount is above cap.'
    if not sub_be5969de - deposits[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Presale Alert: User has already purchased max amount.'
    if totalDeposit > !arg1:
        revert with 0, 17
    totalDeposit += arg1
    idx = 0
    s = 0
    while idx < depositor.length:
        mem[0] = 7
        if idx == -1:
            revert with 0, 17
        if address(depositor[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        depositor.length++
        uint256(depositor[depositor.length]) = msg.sender or Mask(96, 160, uint256(depositor[depositor.length]))
    if deposits[msg.sender] > !arg1:
        revert with 0, 17
    deposits[msg.sender] += arg1
}



}
