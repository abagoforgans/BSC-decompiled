contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
array of struct stor2;
uint256 stor3;
uint256 stor4;

function owner() {
    return owner
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(owner, arg1);
    owner = arg1
}

function delegate(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_4cd89df0(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    stor2.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        stor2[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = cd[36]
    stor4 = cd[68]
}

function _fallback() payable {
    if msg.sender == 0xaf5dcebba2f8bec8729117336b2fe8b4e0d99b0b:
        if stor1 > 0:
            stor1--
            mem[260] = uint256(stor2.field_0)
            idx = 260
            s = 0
            while stor2.length + 260 > idx + 32:
                mem[idx + 32] = stor2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(msg.sender)
            call msg.sender.0x3463abb2 with:
                 gas gas_remaining wei
                args Array(len=stor2.length, data=mem[260 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32)]), stor3, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, stor4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
