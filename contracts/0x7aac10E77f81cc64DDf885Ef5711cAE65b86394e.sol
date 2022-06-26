contract main {




// =====================  Runtime code  =====================


const sub_4e6fd6c4(?) = 57005


address TOKENAddress;
address sub_e795ed47Address;
uint8 isActive; offset 160
address adminAddress;
uint256 totalClaimed;
uint256 claims;
mapping of address claimers;
mapping of uint256 users;

function isActive() payable {
    return bool(isActive)
}

function TOKEN() payable {
    return TOKENAddress
}

function claimers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(claimers[arg1])
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1]
}

function totalClaimed() payable {
    return totalClaimed
}

function claims() payable {
    return claims
}

function sub_e795ed47(?) payable {
    return sub_e795ed47Address
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function stop() payable {
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if not isActive:
        revert with 0, 'ICO is not active'
    isActive = 0
}

function sub_a2a04b8c(?) payable {
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if isActive:
        revert with 0, 'ICO is already active'
    isActive = 1
}

function sub_5e1d5645(?) payable {
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    require ext_code.size(TOKENAddress)
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function finish() payable {
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    isActive = 0
    require ext_code.size(TOKENAddress)
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_72166323(?) payable {
    if claims > test266151307():
        revert with 0, 65
    mem[96] = claims
    mem[64] = (32 * claims) + 128
    if claims:
        mem[128 len 32 * claims] = call.data[calldata.size len 32 * claims]
    idx = 0
    while idx < claims:
        mem[0] = idx
        mem[32] = 5
        if idx >= claims:
            revert with 0, 50
        mem[(32 * idx) + 128] = address(claimers[idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * claims) + 128] = 32
    mem[(32 * claims) + 160] = claims
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < claims:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * claims) + -mem[64] + 192
}

function withdrawTokens() payable {
    if not isActive:
        revert with 0, 'can not withdraw'
    if users[msg.sender]:
        revert with 0, 'you cant withdraw twice'
    require ext_code.size(sub_e795ed47Address)
    staticcall sub_e795ed47Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'balanceOf > 0'
    users[msg.sender] = ext_call.return_data[0]
    require ext_code.size(sub_e795ed47Address)
    call sub_e795ed47Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, users[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalClaimed > !users[msg.sender]:
        revert with 0, 17
    totalClaimed += users[msg.sender]
    uint256(claimers[stor4]) = msg.sender or Mask(96, 160, uint256(claimers[stor4]))
    if claims == -1:
        revert with 0, 17
    claims++
    emit WithdrawEvent(users[msg.sender], msg.sender);
}



}
