contract main {




// =====================  Runtime code  =====================


address owner;
array of struct requests;
mapping of uint8 stor2;
uint32 sub_73d6bcc5;
address sub_ce125a81Address; offset 32
mapping of uint32 sub_60c71861;
mapping of uint256 provableOracleRequests;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779001;

function sub_60c71861(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_60c71861[arg1])
}

function sub_73d6bcc5(?) {
    return sub_73d6bcc5
}

function requests(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < requests.length
    return requests[arg1].field_0, 
           requests[arg1].field_0,
           requests[arg1].field_0,
           requests[arg1].field_256,
           requests[arg1].field_512,
           requests[arg1].field_768
}

function isAllowedAddress(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function sub_ce125a81(?) {
    return sub_ce125a81Address
}

function provableOracleRequests(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return provableOracleRequests[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApproves_required(uint32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_73d6bcc5 = arg1
    return 1
}

function setCompanyOracle(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_ce125a81Address = arg1
    return 1
}

function changeAllowedAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor2[address(arg1)] = uint8(arg2)
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'ERR_ALLOWED_ADDRESS_ONLY'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_448bf7b4(?) {
    require calldata.size - 4 >= 96
    if not stor2[msg.sender]:
        revert with 0, 'ERR_ALLOWED_ADDRESS_ONLY'
    requests.length++
    requests[requests.length].field_0 = arg1
    requests[requests.length].field_32 = 0
    requests[requests.length].field_64 = msg.sender
    requests[requests.length].field_256 = 0
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = arg3
    storB10E[stor1.length] = 0
    require ext_code.size(sub_ce125a81Address)
    call sub_ce125a81Address.0x26742272 with:
         gas gas_remaining wei
        args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(sub_60c71861[ext_call.return_data[0]]) = requests.length
    return requests.length
}

function oracleCallback(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_ce125a81Address != msg.sender:
        revert with 0, 'Wrong Oracle'
    if not uint256(sub_60c71861[arg1]):
        revert with 0, 'Wrong requestId'
    uint256(sub_60c71861[arg1]) = 0
    emit CompanyOracle(arg1, arg2);
    require uint256(sub_60c71861[arg1]) < requests.length
    if requests[uint256(stor4[arg1])].field_32:
        if requests[uint256(stor4[arg1])].field_768 != arg2:
            revert with 0, 'Balance mismatch'
    else:
        requests[uint256(stor4[arg1])].field_768 = arg2
    requests[uint256(stor4[arg1])].field_32 = uint32(requests[uint256(stor4[arg1])].field_32 + 1)
    if uint32(requests[uint256(stor4[arg1])].field_32 + 1) >= sub_73d6bcc5:
        require ext_code.size(requests[uint256(stor4[arg1])].field_64)
        call requests[uint256(stor4[arg1])].field_64.0x4d2ea84d with:
             gas gas_remaining wei
            args 0, uint32(sub_60c71861[arg1]), requests[uint256(stor4[arg1])].field_256, requests[uint256(stor4[arg1])].field_512, requests[uint256(stor4[arg1])].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return 1
}



}
