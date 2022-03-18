contract main {




// =====================  Runtime code  =====================


const EMPTY = 0


address owner;
mapping of uint256 sub_c92829df;

function owner() {
    return owner
}

function sub_c92829df(?) {
    return sub_c92829df[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function multiTransfer(address[] arg1, uint256[] arg2) {
    require msg.sender == owner
    idx = 0
    s = 0
    while arg1.length > uint8(idx):
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        call address(cd[((32 * uint8(idx)) + arg1 + 36)]) with:
           value cd[((32 * uint8(idx)) + arg2 + 36)] wei
             gas 2300 * is_zero(value) wei
        idx = idx + 1
        s = cd[((32 * uint8(idx)) + arg2 + 36)] + s
        continue 
    emit 0xb0c8f169: (cd[((32 * uint8(None)) + arg2 + 36)] * None)
    return 1
}

function sub_20388b19(?) payable {
    require ext_code.size(0x5116f872f308453bd2a8d7fdb64402242b556d87)
    delegate 0x5116f872f308453bd2a8d7fdb64402242b556d87.recover(bytes32 rg1, bytes rg2) with:
         gas gas_remaining wei
        args sha3(arg2, arg3), Array(len=arg4.length, data=arg4[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20] == owner
    require not sub_c92829df[arg2][arg3]
    sub_c92829df[arg2][arg3] = arg3
    emit 0x16244105: arg1 << 248, arg2
}



}
