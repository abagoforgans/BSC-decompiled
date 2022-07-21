contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 sub_dc06e55c;
address exchangeAddress;
address stor4;
array of struct deployedCampaigns;

function deployedCampaigns(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < deployedCampaigns.length
    return deployedCampaigns[arg1].field_0
}

function owner() payable {
    return owner
}

function exchange() payable {
    return exchangeAddress
}

function sub_dc06e55c(?) payable {
    return sub_dc06e55c
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

function sub_3f6cdd88(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dc06e55c = arg1
    return arg1
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

function createCampaign(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    create contract with 0 wei
                    code: code.data[3424 len 6367], arg1, msg.sender, exchangeAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor4 = address(create.new_address)
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_dc06e55c:
        revert with 0, 'unsufficient token balance'
    require ext_code.size(stor4)
    staticcall stor4.returnAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    deployedCampaigns.length++
    deployedCampaigns[deployedCampaigns.length].field_0 = ext_call.return_data[12 len 20]
}

function getDeployedCampaigns() payable {
    mem[64] = (32 * deployedCampaigns.length) + 128
    mem[96] = deployedCampaigns.length
    if not deployedCampaigns.length:
        mem[(32 * deployedCampaigns.length) + 128] = 32
        mem[(32 * deployedCampaigns.length) + 160] = deployedCampaigns.length
        idx = 0
        s = 128
        t = (32 * deployedCampaigns.length) + 192
        while idx < deployedCampaigns.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * deployedCampaigns.length) + 128
           len (96 * deployedCampaigns.length) + 64
    mem[128] = address(deployedCampaigns.field_0)
    idx = 128
    s = 0
    while (32 * deployedCampaigns.length) + 96 > idx:
        mem[idx + 32] = deployedCampaigns[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * deployedCampaigns.length) + 128] = 32
    mem[(32 * deployedCampaigns.length) + 160] = deployedCampaigns.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < deployedCampaigns.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * deployedCampaigns.length) + -mem[64] + 192
}



}
