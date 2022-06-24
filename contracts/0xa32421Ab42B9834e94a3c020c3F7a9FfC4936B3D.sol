contract main {




// =====================  Runtime code  =====================


#
#  - holderLevel(address arg1)
#  - initialize()
#  - setTokenParameter(address arg1, uint256 arg2)
#  - _fallback()
#
const sub_268f8f77(?) = 5

const sub_622ebd67(?) = 2

const tokenAddress = 0x5e90253fbae4dab78aa351f4e6fed08a64ab5590

const pancakePair = 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2

const sub_c4064e62(?) = 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16

const wBNB = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const totalTax = 10

const BUSD = 0xe9e7cea3dedca5984780bafc599bd69add087d56


address owner;
mapping of uint8 stor101;
array of struct requirements;
uint256 stor103;
uint256 sub_8ab06dde;
uint256 sub_da81e9aa;
array of struct sub_3622946e;
uint256 sub_8d4f9a13;
array of struct stor7887053984229333715756243741084912719879447020693965939365260134600710199889;

function sub_3622946e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_3622946e.length
    return sub_3622946e[arg1].field_0, sub_3622946e[arg1].field_8
}

function sub_8ab06dde(?) {
    return sub_8ab06dde
}

function sub_8d4f9a13(?) {
    return sub_8d4f9a13
}

function owner() {
    return owner
}

function requirements(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < requirements.length
    return requirements[arg1].field_0, requirements[arg1].field_256
}

function sub_d650d87b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor101[arg1])
}

function sub_da81e9aa(?) {
    return sub_da81e9aa
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_25f85cde(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_da81e9aa = arg1
}

function sub_377b9bf6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8ab06dde = arg1
}

function sub_95fc205d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8d4f9a13 = arg1
}

function setHoldingsRequirement(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor103 = arg1
}

function giveAccess(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101[address(arg1)] = uint8(arg2)
}

function withdrawETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAllETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAllToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1a0dbf2b(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint8(arg2) > 0
    idx = 0
    while idx < sub_3622946e.length:
        mem[0] = 106
        if sub_3622946e[idx].field_0 != uint8(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if uint8(arg2) != 1:
            if idx >= sub_3622946e.length:
                revert with 0, 50
            sub_3622946e[idx].field_8 = uint8(arg2)
        else:
            if sub_3622946e.length < 1:
                revert with 0, 17
            if sub_3622946e.length - 1 >= sub_3622946e.length:
                revert with 0, 50
            if idx >= sub_3622946e.length:
                revert with 0, 50
            sub_3622946e[idx].field_0 = sub_3622946e[sub_3622946e.length].field_0
            sub_3622946e[idx].field_0 = sub_3622946e[sub_3622946e.length].field_0
            sub_3622946e[idx].field_8 = sub_3622946e[sub_3622946e.length].field_0
            if not sub_3622946e.length:
                revert with 0, 49
            sub_3622946e[sub_3622946e.length].field_0 = 0
            sub_3622946e.length--
    sub_3622946e.length++
    stor116F[stor106.length].field_0 = uint8(arg1)
    stor116F[stor106.length].field_8 = uint8(arg2)
}

function sub_f306bcfa(?) {
    require calldata.size - 4 >= 160
    require arg3 == Mask(112, 0, arg3)
    require arg4 == Mask(112, 0, arg4)
    require arg5 == uint8(arg5)
    if not stor101[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BonfireMagic: sorry, restricted access here.'
    if arg1 <= Mask(112, 0, arg3):
        if arg2 <= Mask(112, 0, arg4):
            return 0
    if arg1 < Mask(112, 0, arg3):
        revert with 0, 17
    if arg1 - Mask(112, 0, arg3) and uint8(arg5) > -1 / arg1 - Mask(112, 0, arg3):
        revert with 0, 17
    if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * arg1 < (arg1 * uint8(arg5)) - (Mask(112, 0, arg3) * uint8(arg5)):
        revert with 0, 17
    if Mask(112, 0, arg3) and Mask(112, 0, arg4) > -1 / Mask(112, 0, arg3):
        revert with 0, 17
    if Mask(112, 0, arg3) * Mask(112, 0, arg4) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if arg2 and (1000 * arg1) - (arg1 * uint8(arg5)) + (Mask(112, 0, arg3) * uint8(arg5)) > -1 / arg2:
        revert with 0, 17
    if (1000 * arg1 * arg2) - (arg1 * uint8(arg5) * arg2) + (Mask(112, 0, arg3) * uint8(arg5) * arg2) < 1000 * Mask(112, 0, arg3) * Mask(112, 0, arg4):
        revert with 0, 17
    if not (1000 * arg1) - (arg1 * uint8(arg5)) + (Mask(112, 0, arg3) * uint8(arg5)):
        revert with 0, 18
    return ((1000 * arg1 * arg2) - (arg1 * uint8(arg5) * arg2) + (Mask(112, 0, arg3) * uint8(arg5) * arg2) - (1000 * Mask(112, 0, arg3) * Mask(112, 0, arg4)) / (1000 * arg1) - (arg1 * uint8(arg5)) + (Mask(112, 0, arg3) * uint8(arg5)))
}

function sub_7e56780c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg3))
    staticcall address(arg3).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[12 len 20] == address(arg1):
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if arg2 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * arg2 and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * arg2:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * arg2):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2):
            revert with 0, 18
        return (998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2))
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if arg2 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
        revert with 0, 17
    if 998 * arg2 and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * arg2:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * arg2):
        revert with 0, 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2):
        revert with 0, 18
    return (998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2))
}

function sub_bbfd74e4(?) {
    require calldata.size - 4 >= 224
    require arg3 == Mask(112, 0, arg3)
    require arg4 == Mask(112, 0, arg4)
    require arg7 == uint8(arg7)
    if not stor101[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BonfireMagic: sorry, restricted access here.'
    if not stor101[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BonfireMagic: sorry, restricted access here.'
    if arg1 <= Mask(112, 0, arg3):
        if arg2 <= Mask(112, 0, arg4):
            if not sub_8d4f9a13:
                return 0
            if not sub_8d4f9a13:
                revert with 0, 18
            if 0 < 0 / sub_8d4f9a13:
                revert with 0, 17
            return -(0 / sub_8d4f9a13)
    if arg1 < Mask(112, 0, arg3):
        revert with 0, 17
    if arg1 - Mask(112, 0, arg3) and uint8(arg7) > -1 / arg1 - Mask(112, 0, arg3):
        revert with 0, 17
    if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * arg1 < (arg1 * uint8(arg7)) - (Mask(112, 0, arg3) * uint8(arg7)):
        revert with 0, 17
    if Mask(112, 0, arg3) and Mask(112, 0, arg4) > -1 / Mask(112, 0, arg3):
        revert with 0, 17
    if Mask(112, 0, arg3) * Mask(112, 0, arg4) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if arg2 and (1000 * arg1) - (arg1 * uint8(arg7)) + (Mask(112, 0, arg3) * uint8(arg7)) > -1 / arg2:
        revert with 0, 17
    if (1000 * arg1 * arg2) - (arg1 * uint8(arg7) * arg2) + (Mask(112, 0, arg3) * uint8(arg7) * arg2) < 1000 * Mask(112, 0, arg3) * Mask(112, 0, arg4):
        revert with 0, 17
    if not (1000 * arg1) - (arg1 * uint8(arg7)) + (Mask(112, 0, arg3) * uint8(arg7)):
        revert with 0, 18
    s = 0
    t = (1000 * arg1 * arg2) - (arg1 * uint8(arg7) * arg2) + (Mask(112, 0, arg3) * uint8(arg7) * arg2) - (1000 * Mask(112, 0, arg3) * Mask(112, 0, arg4)) / (1000 * arg1) - (arg1 * uint8(arg7)) + (Mask(112, 0, arg3) * uint8(arg7))
    while s != t:
        if arg6 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if arg2 < t:
            revert with 0, 17
        if t and arg5 > -1 / t:
            revert with 0, 17
        if t * arg5 and arg2 - t > -1 / t * arg5:
            revert with 0, 17
        if not 100 * arg6:
            revert with 0, 18
        if (1000 * arg1 * arg2) - (arg1 * uint8(arg7) * arg2) + (Mask(112, 0, arg3) * uint8(arg7) * arg2) - (1000 * Mask(112, 0, arg3) * Mask(112, 0, arg4)) / (1000 * arg1) - (arg1 * uint8(arg7)) + (Mask(112, 0, arg3) * uint8(arg7)) > !((arg2 * t * arg5) - (t * t * arg5) / 100 * arg6):
            revert with 0, 17
        s = t
        t = ((1000 * arg1 * arg2) - (arg1 * uint8(arg7) * arg2) + (Mask(112, 0, arg3) * uint8(arg7) * arg2) - (1000 * Mask(112, 0, arg3) * Mask(112, 0, arg4)) / (1000 * arg1) - (arg1 * uint8(arg7)) + (Mask(112, 0, arg3) * uint8(arg7))) + ((arg2 * t * arg5) - (t * t * arg5) / 100 * arg6)
        continue 
    if not sub_8d4f9a13:
        return t
    if not sub_8d4f9a13:
        revert with 0, 18
    if t < t / sub_8d4f9a13:
        revert with 0, 17
    return (t - (t / sub_8d4f9a13))
}

function getBaseFee() {
    if stor103 and sub_8ab06dde > -1 / stor103:
        revert with 0, 17
    require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
    staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
    staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if sub_da81e9aa <= stor103 * sub_8ab06dde / 100:
        if stor103 * sub_8ab06dde / 100 <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
        if ext_call.return_data[12 len 20] == 0xe9e7cea3dedca5984780bafc599bd69add087d56:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if stor103 * sub_8ab06dde / 100 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
                revert with 0, 17
            if 998 * stor103 * sub_8ab06dde / 100 and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * stor103 * sub_8ab06dde / 100:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * stor103 * sub_8ab06dde / 100):
                revert with 0, 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103 * sub_8ab06dde / 100):
                revert with 0, 18
            return (998 * stor103 * sub_8ab06dde / 100 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103 * sub_8ab06dde / 100))
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if stor103 * sub_8ab06dde / 100 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * stor103 * sub_8ab06dde / 100 and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * stor103 * sub_8ab06dde / 100:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * stor103 * sub_8ab06dde / 100):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103 * sub_8ab06dde / 100):
            revert with 0, 18
        return (998 * stor103 * sub_8ab06dde / 100 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103 * sub_8ab06dde / 100))
    if sub_da81e9aa <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[12 len 20] == 0xe9e7cea3dedca5984780bafc599bd69add087d56:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if sub_da81e9aa > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * sub_da81e9aa and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * sub_da81e9aa:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * sub_da81e9aa):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * sub_da81e9aa):
            revert with 0, 18
        return (998 * sub_da81e9aa * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * sub_da81e9aa))
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if sub_da81e9aa > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
        revert with 0, 17
    if 998 * sub_da81e9aa and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * sub_da81e9aa:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * sub_da81e9aa):
        revert with 0, 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * sub_da81e9aa):
        revert with 0, 18
    return (998 * sub_da81e9aa * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * sub_da81e9aa))
}

function sub_34109fec(?) {
    require calldata.size - 4 >= 288
    require arg2 == Mask(112, 0, arg2)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg8 == Mask(112, 0, arg8)
    require arg9 == uint8(arg9)
    if not uint8(arg4):
        if arg1 > !arg3:
            revert with 0, 17
        if not stor101[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BonfireMagic: sorry, restricted access here.'
        if arg1 + arg3 <= Mask(112, 0, arg2):
            if arg7 <= Mask(112, 0, arg8):
                return 0
        if arg1 + arg3 < Mask(112, 0, arg2):
            revert with 0, 17
        if arg1 + arg3 - Mask(112, 0, arg2) and uint8(arg9) > -1 / arg1 + arg3 - Mask(112, 0, arg2):
            revert with 0, 17
        if arg1 + arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if (1000 * arg1) + (1000 * arg3) < (arg1 * uint8(arg9)) + (arg3 * uint8(arg9)) - (Mask(112, 0, arg2) * uint8(arg9)):
            revert with 0, 17
        if Mask(112, 0, arg2) and Mask(112, 0, arg8) > -1 / Mask(112, 0, arg2):
            revert with 0, 17
        if Mask(112, 0, arg2) * Mask(112, 0, arg8) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if arg7 and (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg9)) - (arg3 * uint8(arg9)) + (Mask(112, 0, arg2) * uint8(arg9)) > -1 / arg7:
            revert with 0, 17
        if (1000 * arg1 * arg7) + (1000 * arg3 * arg7) - (arg1 * uint8(arg9) * arg7) - (arg3 * uint8(arg9) * arg7) + (Mask(112, 0, arg2) * uint8(arg9) * arg7) < 1000 * Mask(112, 0, arg2) * Mask(112, 0, arg8):
            revert with 0, 17
        if not (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg9)) - (arg3 * uint8(arg9)) + (Mask(112, 0, arg2) * uint8(arg9)):
            revert with 0, 18
        return ((1000 * arg1 * arg7) + (1000 * arg3 * arg7) - (arg1 * uint8(arg9) * arg7) - (arg3 * uint8(arg9) * arg7) + (Mask(112, 0, arg2) * uint8(arg9) * arg7) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg8)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg9)) - (arg3 * uint8(arg9)) + (Mask(112, 0, arg2) * uint8(arg9)))
    if arg3 and uint8(arg4) > -1 / arg3:
        revert with 0, 17
    if arg3 < arg3 * uint8(arg4) / 100:
        revert with 0, 17
    if arg6 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if arg1 > !(arg3 - (arg3 * uint8(arg4) / 100)):
        revert with 0, 17
    if arg3 and uint8(arg5) > -1 / arg3:
        revert with 0, 17
    if arg3 * uint8(arg5) and arg1 + arg3 - (arg3 * uint8(arg4) / 100) > -1 / arg3 * uint8(arg5):
        revert with 0, 17
    if not 100 * arg6:
        revert with 0, 18
    if arg3 - (arg3 * uint8(arg4) / 100) > !((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6):
        revert with 0, 17
    if arg1 > !(arg3 - (arg3 * uint8(arg4) / 100) + ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6)):
        revert with 0, 17
    if not stor101[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BonfireMagic: sorry, restricted access here.'
    if arg1 + arg3 - (arg3 * uint8(arg4) / 100) + ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6) <= Mask(112, 0, arg2):
        if arg7 <= Mask(112, 0, arg8):
            return 0
    if arg1 + arg3 - (arg3 * uint8(arg4) / 100) + ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6) < Mask(112, 0, arg2):
        revert with 0, 17
    if arg1 + arg3 - (arg3 * uint8(arg4) / 100) + ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6) - Mask(112, 0, arg2) and uint8(arg9) > -1 / arg1 + arg3 - (arg3 * uint8(arg4) / 100) + ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6) - Mask(112, 0, arg2):
        revert with 0, 17
    if arg1 + arg3 - (arg3 * uint8(arg4) / 100) + ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if (1000 * arg1) + (1000 * arg3) - (1000 * arg3 * uint8(arg4) / 100) + (1000 * (arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6) < (arg1 * uint8(arg9)) + (arg3 * uint8(arg9)) - (arg3 * uint8(arg4) / 100 * uint8(arg9)) + ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6 * uint8(arg9)) - (Mask(112, 0, arg2) * uint8(arg9)):
        revert with 0, 17
    if Mask(112, 0, arg2) and Mask(112, 0, arg8) > -1 / Mask(112, 0, arg2):
        revert with 0, 17
    if Mask(112, 0, arg2) * Mask(112, 0, arg8) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if arg7 and (1000 * arg1) + (1000 * arg3) - (1000 * arg3 * uint8(arg4) / 100) + (1000 * (arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6) - (arg1 * uint8(arg9)) - (arg3 * uint8(arg9)) + (arg3 * uint8(arg4) / 100 * uint8(arg9)) - ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6 * uint8(arg9)) + (Mask(112, 0, arg2) * uint8(arg9)) > -1 / arg7:
        revert with 0, 17
    if (1000 * arg1 * arg7) + (1000 * arg3 * arg7) - (1000 * arg3 * uint8(arg4) / 100 * arg7) + (1000 * (arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6 * arg7) - (arg1 * uint8(arg9) * arg7) - (arg3 * uint8(arg9) * arg7) + (arg3 * uint8(arg4) / 100 * uint8(arg9) * arg7) - ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6 * uint8(arg9) * arg7) + (Mask(112, 0, arg2) * uint8(arg9) * arg7) < 1000 * Mask(112, 0, arg2) * Mask(112, 0, arg8):
        revert with 0, 17
    if not (1000 * arg1) + (1000 * arg3) - (1000 * arg3 * uint8(arg4) / 100) + (1000 * (arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6) - (arg1 * uint8(arg9)) - (arg3 * uint8(arg9)) + (arg3 * uint8(arg4) / 100 * uint8(arg9)) - ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6 * uint8(arg9)) + (Mask(112, 0, arg2) * uint8(arg9)):
        revert with 0, 18
    return ((1000 * arg1 * arg7) + (1000 * arg3 * arg7) - (1000 * arg3 * uint8(arg4) / 100 * arg7) + (1000 * (arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6 * arg7) - (arg1 * uint8(arg9) * arg7) - (arg3 * uint8(arg9) * arg7) + (arg3 * uint8(arg4) / 100 * uint8(arg9) * arg7) - ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6 * uint8(arg9) * arg7) + (Mask(112, 0, arg2) * uint8(arg9) * arg7) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg8)) / (1000 * arg1) + (1000 * arg3) - (1000 * arg3 * uint8(arg4) / 100) + (1000 * (arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6) - (arg1 * uint8(arg9)) - (arg3 * uint8(arg9)) + (arg3 * uint8(arg4) / 100 * uint8(arg9)) - ((arg1 * arg3 * uint8(arg5)) + (arg3 * arg3 * uint8(arg5)) - (arg3 * uint8(arg4) / 100 * arg3 * uint8(arg5)) / 100 * arg6 * uint8(arg9)) + (Mask(112, 0, arg2) * uint8(arg9)))
}

function sub_18f282c3(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if stor103 and sub_8ab06dde > -1 / stor103:
        revert with 0, 17
    require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
    staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
    staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if sub_da81e9aa <= stor103 * sub_8ab06dde / 100:
        if stor103 * sub_8ab06dde / 100 <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
        if ext_call.return_data[12 len 20] == 0xe9e7cea3dedca5984780bafc599bd69add087d56:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if stor103 * sub_8ab06dde / 100 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
                revert with 0, 17
            if 998 * stor103 * sub_8ab06dde / 100 and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * stor103 * sub_8ab06dde / 100:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * stor103 * sub_8ab06dde / 100):
                revert with 0, 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103 * sub_8ab06dde / 100):
                revert with 0, 18
            idx = 0
            s = 998 * stor103 * sub_8ab06dde / 100 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103 * sub_8ab06dde / 100)
            while idx < sub_3622946e.length:
                mem[0] = 106
                if uint8(arg1) > sub_3622946e[idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_3622946e.length:
                    revert with 0, 50
                mem[0] = 106
                if s and sub_3622946e[idx].field_8 > -1 / s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s * sub_3622946e[idx].field_8
                continue 
        else:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if stor103 * sub_8ab06dde / 100 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
                revert with 0, 17
            if 998 * stor103 * sub_8ab06dde / 100 and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * stor103 * sub_8ab06dde / 100:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * stor103 * sub_8ab06dde / 100):
                revert with 0, 17
            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103 * sub_8ab06dde / 100):
                revert with 0, 18
            idx = 0
            s = 998 * stor103 * sub_8ab06dde / 100 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103 * sub_8ab06dde / 100)
            while idx < sub_3622946e.length:
                mem[0] = 106
                if uint8(arg1) > sub_3622946e[idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_3622946e.length:
                    revert with 0, 50
                mem[0] = 106
                if s and sub_3622946e[idx].field_8 > -1 / s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s * sub_3622946e[idx].field_8
                continue 
    else:
        if sub_da81e9aa <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
        if ext_call.return_data[12 len 20] == 0xe9e7cea3dedca5984780bafc599bd69add087d56:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if sub_da81e9aa > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
                revert with 0, 17
            if 998 * sub_da81e9aa and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * sub_da81e9aa:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * sub_da81e9aa):
                revert with 0, 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * sub_da81e9aa):
                revert with 0, 18
            idx = 0
            s = 998 * sub_da81e9aa * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * sub_da81e9aa)
            while idx < sub_3622946e.length:
                mem[0] = 106
                if uint8(arg1) > sub_3622946e[idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_3622946e.length:
                    revert with 0, 50
                mem[0] = 106
                if s and sub_3622946e[idx].field_8 > -1 / s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s * sub_3622946e[idx].field_8
                continue 
        else:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if sub_da81e9aa > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
                revert with 0, 17
            if 998 * sub_da81e9aa and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * sub_da81e9aa:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * sub_da81e9aa):
                revert with 0, 17
            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * sub_da81e9aa):
                revert with 0, 18
            idx = 0
            s = 998 * sub_da81e9aa * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * sub_da81e9aa)
            while idx < sub_3622946e.length:
                mem[0] = 106
                if uint8(arg1) > sub_3622946e[idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_3622946e.length:
                    revert with 0, 50
                mem[0] = 106
                if s and sub_3622946e[idx].field_8 > -1 / s:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s * sub_3622946e[idx].field_8
                continue 
    return s
}

function sub_4e67095a(?) {
    require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
    staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
    staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor103 <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[12 len 20] == 0xe9e7cea3dedca5984780bafc599bd69add087d56:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if stor103 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * stor103 and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * stor103:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * stor103):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103):
            revert with 0, 18
        require ext_code.size(0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2)
        staticcall 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2)
        staticcall 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
        if ext_call.return_data[12 len 20] == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
                revert with 0, 17
            if 998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103) and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103)):
                revert with 0, 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103)):
                revert with 0, 18
            return (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103)))
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103) and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103)):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103)):
            revert with 0, 18
        return (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * stor103)))
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if stor103 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
        revert with 0, 17
    if 998 * stor103 and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * stor103:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * stor103):
        revert with 0, 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103):
        revert with 0, 18
    require ext_code.size(0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2)
    staticcall 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2)
    staticcall 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[12 len 20] == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103) and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103)):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103)):
            revert with 0, 18
        return (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103)))
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
        revert with 0, 17
    if 998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103) and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103):
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103)):
        revert with 0, 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103)):
        revert with 0, 18
    return (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * stor103 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * stor103)))
}

function sub_4a9f23f1(?) {
    require calldata.size - 4 >= 32
    if arg1 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
        revert with 0, 17
    require ext_code.size(0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2)
    staticcall 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2)
    staticcall 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 9 * arg1 / 10 <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[12 len 20] == 0x5e90253fbae4dab78aa351f4e6fed08a64ab5590:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if 9 * arg1 / 10 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * 9 * arg1 / 10 and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * 9 * arg1 / 10:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * 9 * arg1 / 10):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10):
            revert with 0, 18
        require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
        staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
        staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
        if ext_call.return_data[12 len 20] == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
                revert with 0, 17
            if 998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10) and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10)):
                revert with 0, 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10)):
                revert with 0, 18
            return (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10)))
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10) and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10)):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10)):
            revert with 0, 18
        return (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 9 * arg1 / 10)))
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if 9 * arg1 / 10 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
        revert with 0, 17
    if 998 * 9 * arg1 / 10 and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * 9 * arg1 / 10:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * 9 * arg1 / 10):
        revert with 0, 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10):
        revert with 0, 18
    require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
    staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
    staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[12 len 20] == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10) and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10)):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10)):
            revert with 0, 18
        return (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10)))
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
        revert with 0, 17
    if 998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10) and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10):
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10)):
        revert with 0, 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10)):
        revert with 0, 18
    return (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * 9 * arg1 / 10 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 9 * arg1 / 10)))
}

function sub_ed2be6d1(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
    staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x58f876857a02d6762e0101bb5c46a8c1ed44dc16)
    staticcall 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[12 len 20] == 0xe9e7cea3dedca5984780bafc599bd69add087d56:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if arg1 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * arg1 and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * arg1:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * arg1):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1):
            revert with 0, 18
        require ext_code.size(0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2)
        staticcall 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2)
        staticcall 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
        if ext_call.return_data[12 len 20] == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
            if 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
                revert with 0, 17
            if 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1) and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1)):
                revert with 0, 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1)):
                revert with 0, 18
            if 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1)) > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                revert with 0, 17
            return (9 * 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1)) / 10)
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1) and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1)):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1)):
            revert with 0, 18
        if 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1)) > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
            revert with 0, 17
        return (9 * 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg1)) / 10)
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if arg1 > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
        revert with 0, 17
    if 998 * arg1 and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * arg1:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * arg1):
        revert with 0, 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1):
        revert with 0, 18
    require ext_code.size(0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2)
    staticcall 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2)
    staticcall 0xd3f478f0d5e98b01f757bc6cb54db4c00b9838f2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[12 len 20] == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
        if 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
            revert with 0, 17
        if 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1) and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1)):
            revert with 0, 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1)):
            revert with 0, 18
        if 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1)) > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
            revert with 0, 17
        return (9 * 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1)) / 10)
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'BonfireMagic: INSUFFICIENT_LIQUIDITY'
    if 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1) > 0x41aad671e44bed87f3aff7caa531c376824f018a0106ab59c7912fb61fcebf:
        revert with 0, 17
    if 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1) and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1):
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1)):
        revert with 0, 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1)):
        revert with 0, 18
    if 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1)) > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
        revert with 0, 17
    return (9 * 998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * 998 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg1)) / 10)
}

function sub_84ad48b8(?) {
    require calldata.size - 4 >= 320
    require arg2 == Mask(112, 0, arg2)
    require arg5 == Mask(112, 0, arg5)
    require arg7 == uint8(arg7)
    require arg8 == uint8(arg8)
    require arg10 == uint8(arg10)
    if arg1 > !arg3:
        revert with 0, 17
    if not stor101[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BonfireMagic: sorry, restricted access here.'
    if not uint8(arg8):
        if arg1 + arg3 <= Mask(112, 0, arg2):
            if arg4 <= Mask(112, 0, arg5):
                if not uint8(arg7):
                    return 0
                if False and uint8(arg7) > 0:
                    revert with 0, 17
                if arg9 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if arg6 > -1:
                    revert with 0, 17
                if False and uint8(arg8) > 0:
                    revert with 0, 17
                if False and arg6 > 0:
                    revert with 0, 17
                if not 100 * arg9:
                    revert with 0, 18
                if 0 > !(0 / 100 * arg9):
                    revert with 0, 17
                return (0 / 100 * arg9)
        if arg1 + arg3 < Mask(112, 0, arg2):
            revert with 0, 17
        if arg1 + arg3 - Mask(112, 0, arg2) and uint8(arg10) > -1 / arg1 + arg3 - Mask(112, 0, arg2):
            revert with 0, 17
        if arg1 + arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if (1000 * arg1) + (1000 * arg3) < (arg1 * uint8(arg10)) + (arg3 * uint8(arg10)) - (Mask(112, 0, arg2) * uint8(arg10)):
            revert with 0, 17
        if Mask(112, 0, arg2) and Mask(112, 0, arg5) > -1 / Mask(112, 0, arg2):
            revert with 0, 17
        if Mask(112, 0, arg2) * Mask(112, 0, arg5) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if arg4 and (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) > -1 / arg4:
            revert with 0, 17
        if (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) < 1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5):
            revert with 0, 17
        if not (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)):
            revert with 0, 18
        if not uint8(arg7):
            return ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)))
        if (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) and uint8(arg7) > -1 / (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)):
            revert with 0, 17
        if (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) < (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg7) / 100:
            revert with 0, 17
        if arg9 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if arg6 > !(((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10))) - ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg7) / 100)):
            revert with 0, 17
        if (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) and uint8(arg8) > -1 / (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)):
            revert with 0, 17
        if (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg8) and arg6 + ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10))) - ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg7) / 100) > -1 / (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg8):
            revert with 0, 17
        if not 100 * arg9:
            revert with 0, 18
        if ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10))) - ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg7) / 100) > !((arg6 * (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg8)) + ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg8)) - ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg7) / 100 * (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg8)) / 100 * arg9):
            revert with 0, 17
        return (((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10))) - ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg7) / 100) + ((arg6 * (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg8)) + ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg8)) - ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg7) / 100 * (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) * uint8(arg8)) / 100 * arg9))
    if not stor101[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BonfireMagic: sorry, restricted access here.'
    if arg1 + arg3 <= Mask(112, 0, arg2):
        if arg4 <= Mask(112, 0, arg5):
            if not sub_8d4f9a13:
                if not uint8(arg7):
                    return 0
                if False and uint8(arg7) > 0:
                    revert with 0, 17
                if arg9 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if arg6 > -1:
                    revert with 0, 17
                if False and uint8(arg8) > 0:
                    revert with 0, 17
                if False and arg6 > 0:
                    revert with 0, 17
                if not 100 * arg9:
                    revert with 0, 18
                if 0 > !(0 / 100 * arg9):
                    revert with 0, 17
                return (0 / 100 * arg9)
            if not sub_8d4f9a13:
                revert with 0, 18
            if 0 < 0 / sub_8d4f9a13:
                revert with 0, 17
            if not uint8(arg7):
                return -(0 / sub_8d4f9a13)
            if -0 / sub_8d4f9a13 and uint8(arg7) > -1 / -0 / sub_8d4f9a13:
                revert with 0, 17
            if -0 / sub_8d4f9a13 < -1 * 0 / sub_8d4f9a13 * uint8(arg7) / 100:
                revert with 0, 17
            if arg9 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if arg6 > !(-(0 / sub_8d4f9a13) - (-1 * 0 / sub_8d4f9a13 * uint8(arg7) / 100)):
                revert with 0, 17
            if -0 / sub_8d4f9a13 and uint8(arg8) > -1 / -0 / sub_8d4f9a13:
                revert with 0, 17
            if -1 * 0 / sub_8d4f9a13 * uint8(arg8) and arg6 - (0 / sub_8d4f9a13) - (-1 * 0 / sub_8d4f9a13 * uint8(arg7) / 100) > -1 / -1 * 0 / sub_8d4f9a13 * uint8(arg8):
                revert with 0, 17
            if not 100 * arg9:
                revert with 0, 18
            if -(0 / sub_8d4f9a13) - (-1 * 0 / sub_8d4f9a13 * uint8(arg7) / 100) > !((-1 * arg6 * 0 / sub_8d4f9a13 * uint8(arg8)) + (0 / sub_8d4f9a13 * 0 / sub_8d4f9a13 * uint8(arg8)) + (-1 * 0 / sub_8d4f9a13 * uint8(arg7) / 100 * 0 / sub_8d4f9a13 * uint8(arg8)) / 100 * arg9):
                revert with 0, 17
            return (-(0 / sub_8d4f9a13) - (-1 * 0 / sub_8d4f9a13 * uint8(arg7) / 100) + ((-1 * arg6 * 0 / sub_8d4f9a13 * uint8(arg8)) + (0 / sub_8d4f9a13 * 0 / sub_8d4f9a13 * uint8(arg8)) + (-1 * 0 / sub_8d4f9a13 * uint8(arg7) / 100 * 0 / sub_8d4f9a13 * uint8(arg8)) / 100 * arg9))
    if arg1 + arg3 < Mask(112, 0, arg2):
        revert with 0, 17
    if arg1 + arg3 - Mask(112, 0, arg2) and uint8(arg10) > -1 / arg1 + arg3 - Mask(112, 0, arg2):
        revert with 0, 17
    if arg1 + arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if (1000 * arg1) + (1000 * arg3) < (arg1 * uint8(arg10)) + (arg3 * uint8(arg10)) - (Mask(112, 0, arg2) * uint8(arg10)):
        revert with 0, 17
    if Mask(112, 0, arg2) and Mask(112, 0, arg5) > -1 / Mask(112, 0, arg2):
        revert with 0, 17
    if Mask(112, 0, arg2) * Mask(112, 0, arg5) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if arg4 and (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) > -1 / arg4:
        revert with 0, 17
    if (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) < 1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5):
        revert with 0, 17
    if not (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)):
        revert with 0, 18
    s = 0
    t = (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10))
    while s != t:
        if arg9 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if arg4 < t:
            revert with 0, 17
        if t and uint8(arg8) > -1 / t:
            revert with 0, 17
        if t * uint8(arg8) and arg4 - t > -1 / t * uint8(arg8):
            revert with 0, 17
        if not 100 * arg9:
            revert with 0, 18
        if (1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10)) > !((arg4 * t * uint8(arg8)) - (t * t * uint8(arg8)) / 100 * arg9):
            revert with 0, 17
        s = t
        t = ((1000 * arg1 * arg4) + (1000 * arg3 * arg4) - (arg1 * uint8(arg10) * arg4) - (arg3 * uint8(arg10) * arg4) + (Mask(112, 0, arg2) * uint8(arg10) * arg4) - (1000 * Mask(112, 0, arg2) * Mask(112, 0, arg5)) / (1000 * arg1) + (1000 * arg3) - (arg1 * uint8(arg10)) - (arg3 * uint8(arg10)) + (Mask(112, 0, arg2) * uint8(arg10))) + ((arg4 * t * uint8(arg8)) - (t * t * uint8(arg8)) / 100 * arg9)
        continue 
    if not sub_8d4f9a13:
        if not uint8(arg7):
            return t
        if t and uint8(arg7) > -1 / t:
            revert with 0, 17
        if t < t * uint8(arg7) / 100:
            revert with 0, 17
        if arg9 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if arg6 > !(t - (t * uint8(arg7) / 100)):
            revert with 0, 17
        if t and uint8(arg8) > -1 / t:
            revert with 0, 17
        if t * uint8(arg8) and arg6 + t - (t * uint8(arg7) / 100) > -1 / t * uint8(arg8):
            revert with 0, 17
        if not 100 * arg9:
            revert with 0, 18
        if t - (t * uint8(arg7) / 100) > !((arg6 * t * uint8(arg8)) + (t * t * uint8(arg8)) - (t * uint8(arg7) / 100 * t * uint8(arg8)) / 100 * arg9):
            revert with 0, 17
        return (t - (t * uint8(arg7) / 100) + ((arg6 * t * uint8(arg8)) + (t * t * uint8(arg8)) - (t * uint8(arg7) / 100 * t * uint8(arg8)) / 100 * arg9))
    if not sub_8d4f9a13:
        revert with 0, 18
    if t < t / sub_8d4f9a13:
        revert with 0, 17
    if not uint8(arg7):
        return (t - (t / sub_8d4f9a13))
    if t - (t / sub_8d4f9a13) and uint8(arg7) > -1 / t - (t / sub_8d4f9a13):
        revert with 0, 17
    if t - (t / sub_8d4f9a13) < (t * uint8(arg7)) - (t / sub_8d4f9a13 * uint8(arg7)) / 100:
        revert with 0, 17
    if arg9 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if arg6 > !(t - (t / sub_8d4f9a13) - ((t * uint8(arg7)) - (t / sub_8d4f9a13 * uint8(arg7)) / 100)):
        revert with 0, 17
    if t - (t / sub_8d4f9a13) and uint8(arg8) > -1 / t - (t / sub_8d4f9a13):
        revert with 0, 17
    if (t * uint8(arg8)) - (t / sub_8d4f9a13 * uint8(arg8)) and arg6 + t - (t / sub_8d4f9a13) - ((t * uint8(arg7)) - (t / sub_8d4f9a13 * uint8(arg7)) / 100) > -1 / (t * uint8(arg8)) - (t / sub_8d4f9a13 * uint8(arg8)):
        revert with 0, 17
    if not 100 * arg9:
        revert with 0, 18
    if t - (t / sub_8d4f9a13) - ((t * uint8(arg7)) - (t / sub_8d4f9a13 * uint8(arg7)) / 100) > !((arg6 * t * uint8(arg8)) + (t * t * uint8(arg8)) - (t / sub_8d4f9a13 * t * uint8(arg8)) - ((t * uint8(arg7)) - (t / sub_8d4f9a13 * uint8(arg7)) / 100 * t * uint8(arg8)) - (arg6 * t / sub_8d4f9a13 * uint8(arg8)) - (t * t / sub_8d4f9a13 * uint8(arg8)) + (t / sub_8d4f9a13 * t / sub_8d4f9a13 * uint8(arg8)) + ((t * uint8(arg7)) - (t / sub_8d4f9a13 * uint8(arg7)) / 100 * t / sub_8d4f9a13 * uint8(arg8)) / 100 * arg9):
        revert with 0, 17
    return (t - (t / sub_8d4f9a13) - ((t * uint8(arg7)) - (t / sub_8d4f9a13 * uint8(arg7)) / 100) + ((arg6 * t * uint8(arg8)) + (t * t * uint8(arg8)) - (t / sub_8d4f9a13 * t * uint8(arg8)) - ((t * uint8(arg7)) - (t / sub_8d4f9a13 * uint8(arg7)) / 100 * t * uint8(arg8)) - (arg6 * t / sub_8d4f9a13 * uint8(arg8)) - (t * t / sub_8d4f9a13 * uint8(arg8)) + (t / sub_8d4f9a13 * t / sub_8d4f9a13 * uint8(arg8)) + ((t * uint8(arg7)) - (t / sub_8d4f9a13 * uint8(arg7)) / 100 * t / sub_8d4f9a13 * uint8(arg8)) / 100 * arg9))
}



}
