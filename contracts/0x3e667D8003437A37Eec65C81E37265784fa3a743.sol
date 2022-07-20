contract main {




// =====================  Runtime code  =====================


#
#  - end(uint256 arg1)
#  - sub_f44c0a64(?)
#
address owner;
address assetAddress;
uint8 sub_cbb3d808; offset 160
uint8 sub_d36a1b86; offset 168
address sub_e9423bf2Address;
uint256 maturity;
uint8 sub_57ca8740;
uint256 sub_0c98c9c1;
uint256 ratio1;
uint256 sub_4a5064a9;
array of struct sub_74f1ca3a;

function sub_0c98c9c1(?) payable {
    return sub_0c98c9c1
}

function maturity() payable {
    return maturity
}

function asset() payable {
    return assetAddress
}

function sub_4a5064a9(?) payable {
    return sub_4a5064a9
}

function sub_57ca8740(?) payable {
    return sub_57ca8740
}

function sub_74f1ca3a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_74f1ca3a[arg1].field_0
    return sub_74f1ca3a[arg1][arg2].field_0, 
           sub_74f1ca3a[arg1][arg2].field_256,
           sub_74f1ca3a[arg1][arg2].field_512,
           sub_74f1ca3a[arg1][arg2].field_768,
           sub_74f1ca3a[arg1][arg2].field_1024,
           sub_74f1ca3a[arg1][arg2].field_1280,
           bool(sub_74f1ca3a[arg1][arg2].field_1536)
}

function getOwner() payable {
    return owner
}

function ratio1() payable {
    return ratio1
}

function sub_aa4c0dd9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_74f1ca3a[address(arg1)].field_0
}

function sub_cbb3d808(?) payable {
    return sub_cbb3d808
}

function sub_d36a1b86(?) payable {
    return sub_d36a1b86
}

function sub_e9423bf2(?) payable {
    return sub_e9423bf2Address
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_35ddfdcb(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    require arg7 == uint8(arg7)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if uint8(arg7) > 100:
        revert with 0, 'Invalid value'
    assetAddress = address(arg1)
    ratio1 = arg8
    sub_4a5064a9 = arg9
    sub_0c98c9c1 = arg3
    maturity = arg4
    sub_e9423bf2Address = address(arg2)
    sub_cbb3d808 = uint8(arg5)
    sub_d36a1b86 = uint8(arg6)
    sub_57ca8740 = uint8(arg7)
}

function start(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < sub_0c98c9c1:
        revert with 0, 'Invalid value'
    require ext_code.size(assetAddress)
    call assetAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_74f1ca3a[msg.sender].field_0++
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_0 = block.timestamp
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_256 = arg1
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_512 = 0
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_768 = 0
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_1024 = 0
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_1280 = 0
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_1536 = 0
    if sub_74f1ca3a[msg.sender].field_0 < 1:
        revert with 0, 17
    emit 0x1030a236: arg1, sub_74f1ca3a[msg.sender].field_0 - 1, msg.sender
}

function sub_b7f8f9ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= sub_74f1ca3a[address(arg1)].field_0:
        revert with 0, 50
    if sub_74f1ca3a[address(arg1)][arg2].field_0 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < sub_74f1ca3a[address(arg1)][arg2].field_0:
        revert with 0, 17
    if arg2 >= sub_74f1ca3a[address(arg1)].field_0:
        revert with 0, 50
    if not sub_74f1ca3a[address(arg1)][arg2].field_256:
        if block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
            if block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0 and 0 > -1 / block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
                revert with 0, 17
            if not block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
                revert with 0, 18
            if 0 / block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            else:
                return 0
        else:
            return 0
    if sub_74f1ca3a[address(arg1)][arg2].field_256 and sub_cbb3d808 > -1 / sub_74f1ca3a[address(arg1)][arg2].field_256:
        revert with 0, 17
    if not sub_74f1ca3a[address(arg1)][arg2].field_256:
        revert with 0, 18
    if sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / sub_74f1ca3a[address(arg1)][arg2].field_256 != sub_cbb3d808:
        revert with 0, 'SafeMath: multiplication overflow'
    if not block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
        return 0
    if block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0 and sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100 > -1 / block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
        revert with 0, 17
    if not block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
        revert with 0, 18
    if (block.timestamp * sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100) - (sub_74f1ca3a[address(arg1)][arg2].field_0 * sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100) / block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0 != sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((block.timestamp * sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100) - (sub_74f1ca3a[address(arg1)][arg2].field_0 * sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100) / 8760 * 24 * 3600)
}



}
