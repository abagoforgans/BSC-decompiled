contract main {




// =====================  Runtime code  =====================


address configAddress;
address owner;
array of address allPools;
mapping of uint8 stor3;
mapping of address pool;

function allPools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPools.length
    return allPools[arg1]
}

function getPool(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return pool[arg1][arg2]
}

function isPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function countPools() payable {
    return allPools.length
}

function config() payable {
    return configAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setupConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OWNER FORBIDDEN'
    configAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    owner = ext_call.return_data[12 len 20]
}

function createPool(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(configAddress)
    staticcall configAddress.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'DEVELOPER FORBIDDEN'
    if pool[address(arg1)][address(arg2)]:
        revert with 0, 'ALREADY CREATED'
    create2 contract with 0 wei
                    salt: sha3(arg1, arg2)
                    code: code.data[1842 len 14419]
    pool[address(arg1)][address(arg2)] = address(create2.new_address)
    allPools.length++
    allPools[allPools.length] = address(create2.new_address)
    stor3[address(create2.new_address)] = 1
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0x3d50f2e0 with:
         gas gas_remaining wei
        args configAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).init(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PoolCreated(address(create2.new_address), arg1, arg2);
    return address(create2.new_address)
}



}
