contract main {




// =====================  Runtime code  =====================


#
#  - sub_1a20fd52(?)
#  - sub_c977b7e6(?)
#  - sub_ccc77a70(?)
#  - sub_d778cb44(?)
#
uint256 stor0;
uint256 stor1;
address _owner;

function _owner() payable {
    return _owner
}

function _fallback() payable {
    revert
}

function sub_dbc5283b(?) payable {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, '!owner'
    stor0 = arg2
    stor1 = arg1
}

function sub_88d04421(?) payable {
    require calldata.size - 4 >= 32
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                gas gas_remaining wei
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[388 len 29]
    if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        return ext_call.return_data[18 len 14]
    if not arg1:
        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
        return ext_call.return_data[18 len 14]
    return ext_call.return_data[50 len 14]
}

function getReserves(address arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                gas gas_remaining wei
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[388 len 29]
    if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    if not arg1:
        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
        return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_bcddd51d(?) payable {
    require calldata.size - 4 >= 64
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                gas gas_remaining wei
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[388 len 29]
    if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        if 9975 * arg2 / 9975 != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            if not ext_call.return_data[50 len 14]:
                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2):
                    return (0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2))
            else:
                if ext_call.return_data[50 len 14]:
                    if 9975 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2) < 10000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2):
                        return (9975 * arg2 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2))
        else:
            if not ext_call.return_data[18 len 14]:
                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2) < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2):
                    return (0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2))
            else:
                if ext_call.return_data[18 len 14]:
                    if 9975 * arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2) < 10000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2):
                        return (9975 * arg2 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2))
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if 9975 * arg2 / 9975 != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if arg1 == arg1:
            if not ext_call.return_data[50 len 14]:
                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2):
                    return (0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2))
            else:
                if ext_call.return_data[50 len 14]:
                    if 9975 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2) < 10000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2):
                        return (9975 * arg2 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg2))
        else:
            if not ext_call.return_data[18 len 14]:
                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2) < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2):
                    return (0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2))
            else:
                if ext_call.return_data[18 len 14]:
                    if 9975 * arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2) < 10000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2):
                        return (9975 * arg2 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg2))
    revert
}

function sub_8de01d0e(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                gas gas_remaining wei
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[388 len 29]
    if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        if 9975 * ext_call.return_data[0] / 9975 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            if not ext_call.return_data[50 len 14]:
                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]):
                    return ext_call.return_data[0], 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
            else:
                if ext_call.return_data[50 len 14]:
                    if 9975 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]):
                        return ext_call.return_data[0], 
                               9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
        else:
            if not ext_call.return_data[18 len 14]:
                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]):
                    return ext_call.return_data[0], 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
            else:
                if ext_call.return_data[18 len 14]:
                    if 9975 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]):
                        return ext_call.return_data[0], 
                               9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if 9975 * ext_call.return_data[0] / 9975 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if arg1 == arg1:
            if not ext_call.return_data[50 len 14]:
                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]):
                    return ext_call.return_data[0], 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
            else:
                if ext_call.return_data[50 len 14]:
                    if 9975 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]):
                        return ext_call.return_data[0], 
                               9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
        else:
            if not ext_call.return_data[18 len 14]:
                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]):
                    return ext_call.return_data[0], 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
            else:
                if ext_call.return_data[18 len 14]:
                    if 9975 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]):
                        return ext_call.return_data[0], 
                               9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
    revert
}

function buy(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
        mem[417 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)), Mask(224, 32, arg2) >> 32
        mem[541 len 4] = uint32(arg2)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[513 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x535472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[521 len 20],
                            uint32(arg2),
                            mem[545 len 4]
            if not 13496403649558392859, Mask(96, 64, arg1) >> 64:
                revert with 0, 
                            32,
                            36,
                            0x535472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[521 len 20],
                            uint32(arg2),
                            mem[545 len 4]
            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                revert with 0, 
                            32,
                            35,
                            0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[520 len 21],
                            uint32(arg2),
                            mem[545 len 4]
            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[709 len 29]
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[709 len 29]
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
        else:
            mem[449 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x535472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 522 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[449]:
                    revert with 0, 
                                32,
                                36,
                                0x535472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 522 len 28]
            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                revert with 0, 
                            32,
                            35,
                            0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[ceil32(return_data.size) + 521 len 29]
            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 710 len 29]
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 710 len 29]
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        mem[417 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)), Mask(224, 32, arg2) >> 32
        mem[541 len 4] = uint32(arg2)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[513 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x535472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[521 len 20],
                            uint32(arg2),
                            mem[545 len 4]
            if not arg1, 0:
                revert with 0, 
                            32,
                            36,
                            0x535472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[521 len 20],
                            uint32(arg2),
                            mem[545 len 4]
            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                revert with 0, 
                            32,
                            35,
                            0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[520 len 21],
                            uint32(arg2),
                            mem[545 len 4]
            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[709 len 29]
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[709 len 29]
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
        else:
            mem[449 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x535472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 522 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[449]:
                    revert with 0, 
                                32,
                                36,
                                0x535472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 522 len 28]
            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                revert with 0, 
                            32,
                            35,
                            0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[ceil32(return_data.size) + 521 len 29]
            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 710 len 29]
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 710 len 29]
                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sell(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
        mem[385 len 64] = unknown_0xa9059cbb(?????), address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) << 64, 0, Mask(224, 32, arg2) >> 32
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[449 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not 13496403649558392859, Mask(96, 64, arg1) >> 64:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[488 len 29]
            if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[677 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[677 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
        else:
            mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[417]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                revert with 0, 
                            32,
                            35,
                            0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[ceil32(return_data.size) + 489 len 29]
            if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 678 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 678 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        mem[385 len 64] = unknown_0xa9059cbb(?????), address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) << 64, 0, Mask(224, 32, arg2) >> 32
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[449 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not arg1, 0:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[488 len 29]
            if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[677 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[677 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
        else:
            mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[417]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                revert with 0, 
                            32,
                            35,
                            0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[ceil32(return_data.size) + 489 len 29]
            if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 678 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 678 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0cf8c3b7(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < arg1:
        mem[385 len 64] = unknown_0xa9059cbb(?????), address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) << 64, 0, ext_call.return_data[0 len 28]
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[449 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not 13496403649558392859, Mask(96, 64, arg1) >> 64:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[488 len 29]
            if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[677 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[677 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
        else:
            mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[417]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                revert with 0, 
                            32,
                            35,
                            0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[ceil32(return_data.size) + 489 len 29]
            if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 678 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 678 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
    else:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        mem[385 len 64] = unknown_0xa9059cbb(?????), address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) << 64, 0, ext_call.return_data[0 len 28]
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[449 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not arg1, 0:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[488 len 29]
            if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[677 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[677 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
        else:
            mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[417]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                revert with 0, 
                            32,
                            35,
                            0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[ceil32(return_data.size) + 489 len 29]
            if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 678 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(13496403649558392859, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
            else:
                if not arg1:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[ceil32(return_data.size) + 678 len 29]
                if arg1 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                else:
                    if not arg1:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                    staticcall address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == arg1:
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if 9975 * Mask(144, 112, ext_call.return_data[0]) / 9975 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 9975 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])) / 9975 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (9975 * ext_call.return_data[0]) - (9975 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0])
                            require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                            if arg1 == arg1:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), msg.sender, 128, 0
                            else:
                                call address(sha3(0, 14561330441654603551, sha3(arg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
