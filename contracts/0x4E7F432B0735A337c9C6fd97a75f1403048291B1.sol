contract main {




// =====================  Runtime code  =====================


address owner;
address cryptoAlpacaAddress;

function cryptoAlpaca() payable {
    return cryptoAlpacaAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_dba90743(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    require ext_code.size(arg1)
    call arg1.reclaimAll(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_86ca0f88(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    require ext_code.size(arg1)
    call arg1.setPricePerAlpaca(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6038c71f(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    require ext_code.size(arg1)
    call arg1.setMaxAdoptionCount(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[10432 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    require ext_code.size(arg1)
    call arg1.withdraw(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setWhitelistEnabled(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    require ext_code.size(arg1)
    call arg1.setWhitelistEnabled(bool rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_78a758d0(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    create contract with 0 wei
                    code: code.data[2993 len 7439], cryptoAlpacaAddress, arg1, arg2, arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function reclaim(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    require ext_code.size(arg1)
    call arg1.reclaim(uint256 rg1, address rg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9ed6952e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    require ext_code.size(arg1)
    call arg1.addToBlacklist(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addToWhitelist(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10470 len 32]
    require ext_code.size(arg1)
    call arg1.addToWhitelist(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
