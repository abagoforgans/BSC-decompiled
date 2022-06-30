contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 152
address stor1;
address stor2;
uint256 totalWeight;
uint256 sub_0c0189e4;

function sub_0c0189e4(?) payable {
    return sub_0c0189e4
}

function owner() payable {
    return owner
}

function totalWeight() payable {
    return totalWeight
}

function _fallback() payable {
    revert
}

function sub_9a9819ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xb2fafdb4c952ebfc53f257035a4ccb450fe0aff9 != msg.sender:
        revert with 0, 'owner'
    sub_0c0189e4 = arg1
}

function buy() payable {
    require ext_code.size(stor2)
    call stor2.0xa0712d68 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize() payable {
    owner = 0xb2fafdb4c952ebfc53f257035a4ccb450fe0aff9
    Mask(152, 0, stor1.field_0) = 0xe1656e45f18ec6747f5a8496fd39b50b38396d
    uint8(stor1.field_152) = 0
    stor2 = 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618
    totalWeight = 10001
    sub_0c0189e4 = 9945
}

function sub_b3c946cf(?) payable {
    require ext_code.size(stor2)
    staticcall stor2.getPendingTokens(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function createOrder(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    call arg1.createOrder(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function getSeed() payable {
    require ext_code.size(stor2)
    staticcall stor2.getPendingTokens(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(stor2)
    staticcall stor2.tokenRequests(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    if block.number <= ext_call.return_data[0]:
        return 0
    return block.hash(ext_call.return_data[0])
}

function hatch() payable {
    require ext_code.size(stor2)
    staticcall stor2.getPendingTokens(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 1:
        require ext_code.size(stor2)
        staticcall stor2.getPendingTokens(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor2)
        if not ext_call.return_data[0]:
            call stor2.processTokenRequests() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            staticcall stor2.tokenRequests(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[62 len 2]
            require ext_call.return_data[64] == ext_call.return_data[95 len 1]
            require ext_code.size(stor2)
            if block.number <= ext_call.return_data[0]:
                call stor2.processTokenRequests() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not block.hash(ext_call.return_data[0]):
                    call stor2.processTokenRequests() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    staticcall stor2.tokenIdCounter() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 >= totalWeight:
                        revert with 0, 'Invalid random range'
                    require totalWeight
                    if sha3(block.timestamp, block.hash(block.number - 1), block.difficulty, sha3(block.hash(ext_call.return_data[0]), ext_call.return_data[0])) % totalWeight >= sub_0c0189e4:
                        require ext_code.size(stor2)
                        call stor2.processTokenRequests() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
