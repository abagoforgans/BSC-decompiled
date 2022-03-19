contract main {




// =====================  Runtime code  =====================


#
#  - payRef(address arg1, uint256 arg2)
#
address OWNER;
address sub_b3a9992eAddress;
uint256 sub_2aaad3b8;
mapping of uint256 percents;
mapping of address parents;
array of address children;
mapping of uint256 sub_2d38c9a3;
mapping of uint256 balances;

function OWNER() payable {
    return OWNER
}

function parents(address arg1) payable {
    require calldata.size - 4 >= 32
    return parents[arg1]
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function sub_2aaad3b8(?) payable {
    return sub_2aaad3b8
}

function sub_2d38c9a3(?) payable {
    require calldata.size - 4 >= 64
    return sub_2d38c9a3[arg1][arg2]
}

function children(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(children[arg1])
    return address(children[arg1][arg2])
}

function percents(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return percents[arg1]
}

function sub_b3a9992e(?) payable {
    return sub_b3a9992eAddress
}

function _fallback() payable {
    revert
}

function sub_3395efdc(?) payable {
    require calldata.size - 4 >= 32
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI REF: ONLY_OWNER'
    sub_2aaad3b8 = arg1
}

function init(address arg1) payable {
    require calldata.size - 4 >= 32
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI REF: ONLY_OWNER'
    sub_b3a9992eAddress = arg1
}

function setPercent(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI REF: ONLY_OWNER'
    percents[arg1] = arg2
}

function sub_2701cc51(?) payable {
    require calldata.size - 4 >= 64
    if sub_b3a9992eAddress != msg.sender:
        revert with 0, 'CROSSFI REF: ONLY_FARM'
    if not parents[address(arg1)]:
        parents[address(arg1)] = arg2
        uint256(children[address(arg2)])++
        address(children[address(arg2)][uint256(children[address(arg2)])]) = arg1
}

function withdraw() payable {
    if not balances[msg.sender]:
        revert with 0, 'CROSSFIN REF: BALANCE IS ZERO'
    require ext_code.size(sub_b3a9992eAddress)
    staticcall sub_b3a9992eAddress.0xea6cfd4a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, balances[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balances[msg.sender] = 0
}



}
