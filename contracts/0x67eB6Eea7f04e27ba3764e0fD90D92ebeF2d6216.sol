contract main {




// =====================  Runtime code  =====================


const getColor = 0x42524f4e5a450000000000000000000000000000000000000000000000000000


mapping of uint8 stor0;
address bLabsAddress;

function getBLabs() payable {
    return bLabsAddress
}

function isBPool(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function setBLabs(address arg1) payable {
    require calldata.size - 4 >= 32
    if bLabsAddress != msg.sender:
        revert with 0, 'ERR_NOT_BLABS'
    emit LOG_BLABS(msg.sender, arg1);
    bLabsAddress = arg1
}

function newBPool() payable {
    create contract with 0 wei
                    code: code.data[1180 len 22287]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(create.new_address)] = 1
    emit LOG_NEW_POOL(msg.sender, address(create.new_address));
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setController(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function collect(address arg1) payable {
    require calldata.size - 4 >= 32
    if bLabsAddress != msg.sender:
        revert with 0, 'ERR_NOT_BLABS'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args bLabsAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_ERC20_FAILED'
}



}
