contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 sub_9648f193;

function sub_9648f193(?) {
    return sub_9648f193
}

function _fallback() payable {
    if stor0 != msg.sender:
        revert with 0, 'OO'
    call call.func_hash with:
       value msg.value wei
         gas gas_remaining wei
        args call.data[32 len calldata.size - 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function buy(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9648f193 != 1:
        revert with 0, 'Ing'
    mem[96] = mint(uint256 arg1)
    mem[128] = arg1
    call 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618.mint(uint256 arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with memory
          from 0
           len return_data.size
    if block.number > -6:
        revert with 'NH{q', 17
    sub_9648f193 = block.number + 5
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
    if stor1 > 1:
        if stor1 < 1:
            revert with 'NH{q', 17
        stor1--
        mem[96] = processTokenRequests()
        call 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618.processTokenRequests() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with memory
              from 0
               len return_data.size
        call 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618.mint(uint256 arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args 1
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_9f82ad8c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if block.number <= arg1:
        return 0
    if block.hash(arg1):
        staticcall 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618.tokenIdCounter() with:
                gas gas_remaining wei
        if arg2 and arg3 > -1 / arg2:
            revert with 'NH{q', 17
        if var126002 < arg2 * arg3:
            if block.number < 1:
                revert with 'NH{q', 17
            # nil
        else:
            if arg2 and arg3 > -1 / arg2:
                revert with 'NH{q', 17
            if var126002 == arg2 * arg3:
                return 0
            if not arg3:
                revert with 'NH{q', 18
            if var126002 / arg3 > -2:
                revert with 'NH{q', 17
            stor1 = (var126002 / arg3) + 1
            mem[96] = processTokenRequests()
            call 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618.processTokenRequests() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with memory
                  from 0
                   len return_data.size
            sub_9648f193 = 1
            return 1
    else:
        if arg4:
            return 0
        staticcall 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618.tokenIdCounter() with:
                gas gas_remaining wei
        if arg2 and arg3 > -1 / arg2:
            revert with 'NH{q', 17
        if var127002 < arg2 * arg3:
            if block.number < 1:
                revert with 'NH{q', 17
            # nil
        else:
            if arg2 and arg3 > -1 / arg2:
                revert with 'NH{q', 17
            if var127002 == arg2 * arg3:
                return 0
            if not arg3:
                revert with 'NH{q', 18
            if var127002 / arg3 > -2:
                revert with 'NH{q', 17
            stor1 = (var127002 / arg3) + 1
            mem[96] = processTokenRequests()
            call 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618.processTokenRequests() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with memory
                  from 0
                   len return_data.size
            sub_9648f193 = 1
            return 1
}



}
