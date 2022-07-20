contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;
uint8 stor3; offset 8
uint8 stor3; offset 16
uint256 stor3; offset 16
mapping of uint8 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    revert
}

function getManagers() payable {
    if stor0 != msg.sender:
        revert with 0, 'Admin: FORBIDEN'
    return stor0, stor1
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Admin: FORBIDEN'
    stor0 = arg1
}

function getFees(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Admin: FORBIDEN'
    return stor4[arg1 << 248], stor5[arg1 << 248]
}

function sub_cf677f57(?) payable {
    if stor0 != msg.sender:
        revert with 0, 'Admin: FORBIDEN'
    return stor2, uint8(stor3.field_0), uint8(stor3.field_0), bool(uint8(stor3.field_16))
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Admin: FORBIDEN'
    if not arg1:
        revert with 0, 'Admin: ZERO_ADDRESS'
    stor1 = arg1
}

function sub_4854c1a3(?) payable {
    require calldata.size - 4 >= 64
    if not stor4[arg2 << 248]:
        return 0
    if arg1 <= stor2:
        revert with 0, 'MIN_SWAP_AMMOUNT'
    return (stor4[arg2 << 248] * arg1 / 10000) + stor5[arg2 << 248], stor1
}

function sub_72754ebf(?) payable {
    require calldata.size - 4 >= 128
    if stor0 != msg.sender:
        revert with 0, 'Admin: FORBIDEN'
    if arg1 <= 100000:
        revert with 0, 'Admin: INVALID minSwapAmount'
    if arg2 > arg3:
        revert with 0, 'Admin: INVALID fees'
    if arg2 < 1:
        revert with 0, 'Admin: INVALID minFee'
    if arg2 > 1000:
        revert with 0, 'Admin: INVALID minFee'
    if arg3 < 1:
        revert with 0, 'Admin: INVALID maxFee'
    if arg3 > 1000:
        revert with 0, 'Admin: INVALID maxFee'
    stor2 = arg1
    uint8(stor3.field_0) = arg2
    uint8(stor3.field_8) = arg3
    Mask(240, 0, stor3.field_16) = Mask(240, 0, arg4)
}

function sub_0e40aaaf(?) payable {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'Admin: FORBIDEN'
    if arg1 <= 0:
        revert with 0, 'Admin: PRIORITY_REQUIRED'
    if arg2:
        if arg2 < uint8(stor3.field_0):
            revert with 0, 'Admin: INVALID fee boundaries'
        if arg2 > uint8(stor3.field_8):
            revert with 0, 'Admin: INVALID fee boundaries'
    else:
        if not uint8(stor3.field_16):
            if arg2 < uint8(stor3.field_0):
                revert with 0, 'Admin: INVALID fee boundaries'
            if arg2 > uint8(stor3.field_8):
                revert with 0, 'Admin: INVALID fee boundaries'
    stor4[arg1 << 248] = arg2
    stor5[arg1 << 248] = arg3
}



}
