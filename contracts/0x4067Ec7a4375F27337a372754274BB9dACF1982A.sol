contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function processTokenRequests() payable {
    mem[64] = 96
    require not msg.value
    stor1 = 1
    mem[96] = unknown_0x5238faf3(?????)
    call 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618.0x5238faf3 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with memory
          from 0
           len return_data.size
    else:
        return 0
}

function _fallback() payable {
    if stor0 != msg.sender:
        revert with 0, 'OvO'
    call arg1 with:
       funct call.data[0 len 4]
       value msg.value wei
         gas gas_remaining wei
        args call.data[36 len calldata.size - 36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = unknown_0xa0712d68(?????)
    mem[128] = arg1
    call 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618.0xa0712d68 with:
       value msg.value wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with memory
          from 0
           len return_data.size
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor1 == 1:
        stor1 = 0
        mem[96] = unknown_0xa0712d68(?????)
        mem[128] = 1
        call 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618.0xa0712d68 with:
           value msg.value wei
             gas gas_remaining wei
            args 1
        if not ext_call.success:
            revert with memory
              from 0
               len return_data.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
