contract main {




// =====================  Runtime code  =====================


#
#  - sub_958c4c63(?)
#
address owner;
address mainAddress;
address openBoxAddress;
mapping of uint256 stor5;

function owner() payable {
    return owner
}

function openBox() payable {
    return openBoxAddress
}

function main() payable {
    return mainAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_fabc8bf6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    openBoxAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3ba9288f(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg3 <= test266151307()
    if arg3:
        mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    idx = 0
    while idx < arg3:
        mem[0] = msg.sender
        mem[32] = 5
        require idx < arg3
        if not arg2:
            if Mask(256, -idx, 1048575 << idx and arg1) >> idx >= 1048576:
                mem[(32 * idx) + 128] = 0
            else:
                mem[(32 * idx) + 128] = 1
        else:
            if stor5[msg.sender] >= 300:
                if arg3 / 20 <= 5:
                    if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-150 * 125 * arg3 / 20 / 10) + 18750 / 1000:
                        mem[(32 * idx) + 128] = 4
                    else:
                        if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-15880 * 125 * arg3 / 20 / 10) + 1985000 / 1000:
                            mem[(32 * idx) + 128] = 3
                        else:
                            if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-38940 * 125 * arg3 / 20 / 10) + 4867500 / 1000:
                                mem[(32 * idx) + 128] = 2
                            else:
                                if Mask(256, -idx, 1048575 << idx and arg1) >> idx >= (-112340 * 125 * arg3 / 20 / 10) + 14042500 / 1000:
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    mem[(32 * idx) + 128] = 1
                else:
                    if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 9:
                        mem[(32 * idx) + 128] = 4
                    else:
                        if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 1000:
                            mem[(32 * idx) + 128] = 3
                        else:
                            if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 2453:
                                mem[(32 * idx) + 128] = 2
                            else:
                                if Mask(256, -idx, 1048575 << idx and arg1) >> idx >= 7077:
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    mem[(32 * idx) + 128] = 1
            else:
                if stor5[msg.sender] >= 200:
                    if arg3 / 20 <= 5:
                        if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-150 * 250 * arg3 / 20 / 10) + 37500 / 1000:
                            mem[(32 * idx) + 128] = 4
                        else:
                            if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-15880 * 250 * arg3 / 20 / 10) + 3970000 / 1000:
                                mem[(32 * idx) + 128] = 3
                            else:
                                if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-38940 * 250 * arg3 / 20 / 10) + 9735000 / 1000:
                                    mem[(32 * idx) + 128] = 2
                                else:
                                    if Mask(256, -idx, 1048575 << idx and arg1) >> idx >= (-112340 * 250 * arg3 / 20 / 10) + 28085000 / 1000:
                                        mem[(32 * idx) + 128] = 0
                                    else:
                                        mem[(32 * idx) + 128] = 1
                    else:
                        if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 18:
                            mem[(32 * idx) + 128] = 4
                        else:
                            if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 1985:
                                mem[(32 * idx) + 128] = 3
                            else:
                                if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 4867:
                                    mem[(32 * idx) + 128] = 2
                                else:
                                    if Mask(256, -idx, 1048575 << idx and arg1) >> idx >= 14042:
                                        mem[(32 * idx) + 128] = 0
                                    else:
                                        mem[(32 * idx) + 128] = 1
                else:
                    if stor5[msg.sender] < 100:
                        if arg3 / 20 <= 5:
                            if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-150 * 1000 * arg3 / 20 / 10) + 150000 / 1000:
                                mem[(32 * idx) + 128] = 4
                            else:
                                if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-15880 * 1000 * arg3 / 20 / 10) + 15880000 / 1000:
                                    mem[(32 * idx) + 128] = 3
                                else:
                                    if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-38940 * 1000 * arg3 / 20 / 10) + 38940000 / 1000:
                                        mem[(32 * idx) + 128] = 2
                                    else:
                                        if Mask(256, -idx, 1048575 << idx and arg1) >> idx >= (-112340 * 1000 * arg3 / 20 / 10) + 112340000 / 1000:
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            mem[(32 * idx) + 128] = 1
                        else:
                            if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 75:
                                mem[(32 * idx) + 128] = 4
                            else:
                                if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 7940:
                                    mem[(32 * idx) + 128] = 3
                                else:
                                    if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 19470:
                                        mem[(32 * idx) + 128] = 2
                                    else:
                                        if Mask(256, -idx, 1048575 << idx and arg1) >> idx >= 56170:
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            mem[(32 * idx) + 128] = 1
                    else:
                        if arg3 / 20 <= 5:
                            if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-150 * 500 * arg3 / 20 / 10) + 75000 / 1000:
                                mem[(32 * idx) + 128] = 4
                            else:
                                if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-15880 * 500 * arg3 / 20 / 10) + 7940000 / 1000:
                                    mem[(32 * idx) + 128] = 3
                                else:
                                    if Mask(256, -idx, 1048575 << idx and arg1) >> idx < (-38940 * 500 * arg3 / 20 / 10) + 19470000 / 1000:
                                        mem[(32 * idx) + 128] = 2
                                    else:
                                        if Mask(256, -idx, 1048575 << idx and arg1) >> idx >= (-112340 * 500 * arg3 / 20 / 10) + 56170000 / 1000:
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            mem[(32 * idx) + 128] = 1
                        else:
                            if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 37:
                                mem[(32 * idx) + 128] = 4
                            else:
                                if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 3970:
                                    mem[(32 * idx) + 128] = 3
                                else:
                                    if Mask(256, -idx, 1048575 << idx and arg1) >> idx < 9735:
                                        mem[(32 * idx) + 128] = 2
                                    else:
                                        if Mask(256, -idx, 1048575 << idx and arg1) >> idx >= 28085:
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            mem[(32 * idx) + 128] = 1
        idx = idx + 1
        continue 
    mem[(32 * arg3) + 192 len floor32(arg3)] = mem[128 len floor32(arg3)]
    return Array(len=arg3, data=mem[128 len floor32(arg3)], mem[(32 * arg3) + floor32(arg3) + 192 len (32 * arg3) - floor32(arg3)]), 
}



}
