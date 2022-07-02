contract main {




// =====================  Runtime code  =====================


address mainAddress;
address setterAddress;
mapping of address preSaleContract;
array of address allPreSales;
uint256 totalRaisedAll;
address fEGpairAddress;
address sub_dad1db27Address;
address sub_5834405aAddress;
mapping of uint8 stor8;

function FEGpair() payable {
    return fEGpairAddress
}

function setter() payable {
    return setterAddress
}

function allPreSales(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPreSales.length
    return allPreSales[arg1]
}

function sub_5834405a(?) payable {
    return sub_5834405aAddress
}

function getPreSaleContract(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return preSaleContract[address(arg1)][address(arg2)]
}

function isPresale(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function totalRaisedAll() payable {
    return totalRaisedAll
}

function Main() payable {
    return mainAddress
}

function getPreSale(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return preSaleContract[arg1][arg2]
}

function sub_dad1db27(?) payable {
    return sub_dad1db27Address
}

function sub_fce86ba8(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function _fallback() payable {
    revert
}

function setFP(address arg1) payable {
    require calldata.size - 4 >= 32
    if setterAddress != msg.sender:
        revert with 0, 'No permission'
    if not arg1:
        revert with 0, 'No permission'
    fEGpairAddress = arg1
}

function setSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if setterAddress != msg.sender:
        revert with 0, 'No permission'
    if not arg1:
        revert with 0, 'No permission'
    setterAddress = arg1
}

function reportTotalRaised(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if preSaleContract[stor0][address(arg2)] != msg.sender:
        revert with 0, 'Only PreSale Contract can report'
    totalRaisedAll += arg1
}

function setDeploy(address arg1) payable {
    require calldata.size - 4 >= 32
    if setterAddress != msg.sender:
        revert with 0, 'You do not have permission'
    if not arg1:
        revert with 0, 'You do not have permission'
    sub_dad1db27Address = arg1
}

function resetIsPresale(address arg1) payable {
    require calldata.size - 4 >= 32
    if setterAddress != msg.sender:
        if bool(stor8[msg.sender]) != 1:
            revert with 0, 'You do not have permission'
    stor8[address(arg1)] = 0
    stor8[msg.sender] = 0
    preSaleContract[stor0][address(arg1)] = 0
    preSaleContract[address(arg1)][stor0] = 0
}

function sub_a555fafa(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.isPublic() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[22858 len 33], mem[197 len 31]
    if stor8[address(arg1)]:
        revert with 0, 'PreSale_EXISTS'
    create2 contract with 0 wei
                    salt: sha3(mainAddress, arg1)
                    code: code.data[2804 len 20054]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    preSaleContract[stor0][address(arg1)] = address(create2.new_address)
    preSaleContract[address(arg1)][stor0] = address(create2.new_address)
    allPreSales.length++
    allPreSales[allPreSales.length] = address(create2.new_address)
    stor8[address(arg1)] = 1
    stor8[address(create2.new_address)] = 1
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), this.address, sub_dad1db27Address, fEGpairAddress, ext_call.return_data[0] << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf290c442: address(create2.new_address), allPreSales.length, mainAddress, arg1
    return address(create2.new_address)
}



}
