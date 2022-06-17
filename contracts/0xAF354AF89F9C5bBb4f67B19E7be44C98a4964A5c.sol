contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_db3b5f40(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), 0xe9e7cea3dedca5984780bafc599bd69add087d56
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!pair'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if address(arg1) == address(ext_call.return_data[0]):
        if address(arg1) == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg4, arg4, address(this.address), 128, 160, arg1 << 192, address(arg2), address(arg3), arg4, msg.sender
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg4, 0, address(this.address), 128, 160, arg1 << 192, address(arg2), address(arg3), arg4, msg.sender
    else:
        if address(arg1) == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg4, address(this.address), 128, 160, arg1 << 192, address(arg2), address(arg3), arg4, msg.sender
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 160, arg1 << 192, address(arg2), address(arg3), arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Log(Array(len=8, data='executed'), arg4);
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require arg4.length >= 160
    if not bool((4 * ceil32(return_data.size)) + 256 <= test266151307()):
        revert with 'NH{q', 65
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == cd[(arg4 + 132)]
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    if cd[(arg4 + 132)] and 3 > -1 / cd[(arg4 + 132)]:
        revert with 'NH{q', 17
    if 3 * cd[(arg4 + 132)] / 997 > -2:
        revert with 'NH{q', 17
    if cd[(arg4 + 132)] > -(3 * cd[(arg4 + 132)] / 997) - 2:
        revert with 'NH{q', 17
    emit Log(Array(len=6, data='amount'), cd[(arg4 + 132)]);
    emit Log(Array(len=7, data='amount0'), arg2);
    emit Log(Array(len=7, data='amount1'), arg3);
    emit Log(Array(len=3, data='fee'), (3 * cd[(arg4 + 132)] / 997) + 1);
    emit Log(Array(len=15, data='amount to repay'), cd[(arg4 + 132)] + (3 * cd[(arg4 + 132)] / 997) + 1);
    emit Log(Array(len=7, data='staking'), cd[(arg4 + 132)]);
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), cd[(arg4 + 132)] + (3 * cd[(arg4 + 132)] / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 100)]), cd[(arg4 + 132)] + (3 * cd[(arg4 + 132)] / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 100)]))
    call address(cd[(arg4 + 100)]).stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args cd[(arg4 + 132)], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Log(Array(len=15, data='wait for rebase'), cd[(arg4 + 132)]);
    require ext_code.size(address(cd[(arg4 + 100)]))
    call address(cd[(arg4 + 100)]).epoch() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((10 * ceil32(return_data.size)) + 512 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    emit Log(Array(len=7, data='unstake'), cd[(arg4 + 132)]);
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), cd[(arg4 + 132)] + (3 * cd[(arg4 + 132)] / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 100)]), cd[(arg4 + 132)] + (3 * cd[(arg4 + 132)] / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 100)]))
    call address(cd[(arg4 + 100)]).unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args cd[(arg4 + 132)], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Log(Array(len=5, data='repay'), cd[(arg4 + 132)]);
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), cd[(arg4 + 132)] + (3 * cd[(arg4 + 132)] / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Log(Array(len=6, data='profit'), cd[(arg4 + 132)]);
}



}
