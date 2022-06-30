contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint8 paused;
address sub_1d73112cAddress;
address rewardPoolAddress;
address sub_0a9eb16eAddress;
address sub_4fb38ea4Address;
address sub_cb188ac3Address;
address landNFTAddress;
uint256 sub_50dffdbd;
uint256 sub_503668b0;
uint256 sub_7f5f53ae;
uint256 sub_cb918029;
uint256 sub_1d3ef1a0;
uint256 sub_08eeb056;
uint256 sub_b5713aa0;
uint256 sub_cf408c0f;
uint256 sub_baa22cb1;
uint256 sub_66320316;
uint256 sub_9325f98d;
uint256 sub_86b37114;
uint256 sub_1a0046f1;
uint256 sub_b3522937;
uint256 sub_160bd277;
uint256 sub_1ef5ac74;
mapping of uint256 sub_7b938352;

function sub_08eeb056(?) {
    return sub_08eeb056
}

function sub_0a9eb16e(?) {
    return sub_0a9eb16eAddress
}

function sub_160bd277(?) {
    return sub_160bd277
}

function sub_1a0046f1(?) {
    return sub_1a0046f1
}

function sub_1d3ef1a0(?) {
    return sub_1d3ef1a0
}

function sub_1d73112c(?) {
    return sub_1d73112cAddress
}

function sub_1ef5ac74(?) {
    return sub_1ef5ac74
}

function sub_4fb38ea4(?) {
    return sub_4fb38ea4Address
}

function sub_503668b0(?) {
    return sub_503668b0
}

function sub_50dffdbd(?) {
    return sub_50dffdbd
}

function paused() {
    return bool(paused)
}

function sub_66320316(?) {
    return sub_66320316
}

function sub_7b938352(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7b938352[arg1]
}

function sub_7f5f53ae(?) {
    return sub_7f5f53ae
}

function rewardPoolAddress() {
    return rewardPoolAddress
}

function sub_86b37114(?) {
    return sub_86b37114
}

function landNFTAddress() {
    return landNFTAddress
}

function owner() {
    return owner
}

function sub_9325f98d(?) {
    return sub_9325f98d
}

function sub_b3522937(?) {
    return sub_b3522937
}

function sub_b5713aa0(?) {
    return sub_b5713aa0
}

function sub_baa22cb1(?) {
    return sub_baa22cb1
}

function sub_cb188ac3(?) {
    return sub_cb188ac3Address
}

function sub_cb918029(?) {
    return sub_cb918029
}

function sub_cf408c0f(?) {
    return sub_cf408c0f
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_c2fb9e8f(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_50dffdbd = arg1
    sub_503668b0 = arg2
    sub_7f5f53ae = arg3
}

function claimBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_3770dcc8(?) {
    require calldata.size - 4 >= 352
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1d3ef1a0 = arg1
    sub_08eeb056 = arg2
    sub_b5713aa0 = arg3
    sub_cf408c0f = arg4
    sub_baa22cb1 = arg5
    sub_66320316 = arg6
    sub_9325f98d = arg7
    sub_86b37114 = arg8
    sub_1a0046f1 = arg9
    sub_b3522937 = arg10
    sub_160bd277 = arg11
}

function sub_12d0afbd(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1d73112cAddress = address(arg1)
    rewardPoolAddress = address(arg2)
    sub_4fb38ea4Address = address(arg3)
    sub_0a9eb16eAddress = address(arg4)
    sub_cb188ac3Address = address(arg5)
    landNFTAddress = address(arg6)
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    paused = 0
    sub_1d73112cAddress = arg1
    rewardPoolAddress = arg2
    sub_0a9eb16eAddress = arg3
    sub_4fb38ea4Address = arg4
    sub_cb188ac3Address = arg5
    landNFTAddress = arg6
    sub_50dffdbd = arg7
    sub_503668b0 = arg8
    sub_7f5f53ae = arg9
    sub_cb918029 = 0
    sub_1ef5ac74 = 0
}

function sub_24a86c0d(?) payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_7b938352[msg.sender] >= sub_7f5f53ae:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NintiaF2PLand: you already reached your max amount to buy'
    require ext_code.size(sub_1d73112cAddress)
    staticcall sub_1d73112cAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_503668b0:
        revert with 0, 'NintiaMisc: not enough NINTI'
    require ext_code.size(sub_1d73112cAddress)
    staticcall sub_1d73112cAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_503668b0:
        revert with 0, 'NintiaMisc: you must increase NINTI allowance'
    if msg.value < sub_50dffdbd:
        revert with 0, 'NintiaMisc: not enough BNB for fees'
    if sub_7b938352[msg.sender] > -2:
        revert with 0, 17
    sub_7b938352[msg.sender]++
    if sub_cb918029 > -2:
        revert with 0, 17
    sub_cb918029++
    call sub_4fb38ea4Address with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'NintiaMisc: transfer to BNB fee address failed'
    require ext_code.size(sub_1d73112cAddress)
    call sub_1d73112cAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, rewardPoolAddress, sub_503668b0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x9449c40b: sub_cb918029, msg.sender
}



}
