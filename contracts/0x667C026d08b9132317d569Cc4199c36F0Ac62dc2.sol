contract main {




// =====================  Runtime code  =====================


#
#  - verifyPathExistence()
#  - safebuy(address arg1, uint256 arg2)
#
address owner;
address factoryAddress;
address swapAddress;
address token0Address;
address token1Address;
array of address path;
uint256 amountIn;
uint256 sub_5131bf8e;

function token0() {
    return token0Address
}

function sub_5131bf8e(?) {
    return sub_5131bf8e
}

function amountIn() {
    return amountIn
}

function swap() {
    return swapAddress
}

function owner() {
    return owner
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < path.length
    return path[arg1]
}

function factory() {
    return factoryAddress
}

function token1() {
    return token1Address
}

function _fallback() payable {
  stop
}

function settings(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Sniper: only owner'
    factoryAddress = arg2
    swapAddress = arg3
    owner = arg1
}

function sub_9ba52b67(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg3.length)) + 97] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 129] = 0
    if owner != msg.sender:
        revert with 0, 'Sniper: only owner'
    if not arg3.length:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 98] = 0
        call address(arg1).mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 102 len arg4.length - 4]
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130] = Mask(32, 224, sha3(arg3[all]))
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 134 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            if floor32(arg4.length + 35) > arg4.length + 4:
                mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + (2 * arg4.length) + 138] = 0
            call address(arg1) with:
               funct Mask(32, -(8 * floor32(arg4.length + 35) + -ceil32(arg4.length) - 4) + 224, Mask(32, 224, sha3(arg3[all])) >> 224, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256) << (8 * floor32(arg4.length + 35) + -ceil32(arg4.length) - 4) - 224
               value arg2 wei
                 gas gas_remaining wei
                args (Mask(8 * arg4.length, -(8 * arg4.length + 4) + 256, Mask(8 * floor32(arg4.length + 35) + -ceil32(arg4.length) - 4, -(8 * floor32(arg4.length + 35) + -arg4.length - 4) + 256, 0) >> -(8 * floor32(arg4.length + 35) + -arg4.length - 4) + 256) << (8 * arg4.length + 4) - 256)
        else:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 134 len floor32(arg4.length + 35)] = Mask(32, 224, sha3(arg3[all])) >> 224, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg4.length) + 134 len floor32(arg4.length + 35) + -ceil32(arg4.length) - 4]
            if floor32(arg4.length + 35) > arg4.length + 4:
                mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + (2 * arg4.length) + 138] = 0
            call address(arg1).mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 134 len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 138 len arg4.length]
    if not ext_call.success:
        revert with 0, 'execution reverted.'
}



}
