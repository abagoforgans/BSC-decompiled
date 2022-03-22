contract main {




// =====================  Runtime code  =====================


#
#  - burn(address arg1)
#
const name = 'BSCswap LP Token'

const decimals = 18

const symbol = 'BLP'

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const MINIMUM_LIQUIDITY = 1000


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 DOMAIN_SEPARATOR;
mapping of uint256 nonces;
address factoryAddress;
address token0Address;
address token1Address;
address stor8;
uint32 stor9; offset 224
uint128 stor9;
uint128 stor9; offset 112
uint256 price0CumulativeLast;
uint256 price1CumulativeLast;
uint256 stor12; offset 1
uint256 kLast;
uint256 stor13;

function token0() payable {
    return token0Address
}

function totalSupply() payable {
    return totalSupply
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function price0CumulativeLast() payable {
    return price0CumulativeLast
}

function price1CumulativeLast() payable {
    return price1CumulativeLast
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function kLast() payable {
    return kLast
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function factory() payable {
    return factoryAddress
}

function token1() payable {
    return token1Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function getReserves() payable {
    return Mask(112, 0, stor9.field_0), Mask(112, 0, stor9.field_0), uint32(stor9.field_224)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if factoryAddress != msg.sender:
        revert with 0, '_'
    token0Address = arg1
    token1Address = arg2
}

function sub_bf6d4ce5(?) payable {
    require calldata.size - 4 >= 128
    if factoryAddress != msg.sender:
        revert with 0, '_'
    Mask(112, 0, stor9.field_0) = Mask(112, 0, arg1)
    Mask(112, 0, stor9.field_112) = Mask(112, 0, arg2)
    uint32(stor9.field_224) = arg4
    kLast = arg3
}

function sub_bf123bf8(?) payable {
    if factoryAddress != msg.sender:
        revert with 0, '_'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor13 != 1:
        revert with 0, 'BSCswap: LOCKED'
    stor13 = 0
    uint32(stor9.field_224) = uint32(block.timestamp)
    emit Sync(Mask(112, 0, stor9.field_0), Mask(112, 0, stor9.field_112));
    emit Swap(arg1 + arg2, arg1 + arg2, arg1, arg2, msg.sender, arg3);
    stor13 = 1
}

function sub_4a2c8103(?) payable {
    require calldata.size - 4 >= 32
    if factoryAddress != msg.sender:
        revert with 0, '_'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor8, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] - arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'ds-math-sub-underflow'
        allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if arg4 < block.timestamp:
        revert with 0, 'BSCswap: EXPIRED'
    nonces[address(arg1)]++
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'BSCswap: INVALID_SIGNATURE'
    if address(signer) != arg1:
        revert with 0, 'BSCswap: INVALID_SIGNATURE'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function sync() payable {
    if stor13 != 1:
        revert with 0, 'BSCswap: LOCKED'
    stor13 = 0
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token1Address)
    staticcall token1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 'BSCswap: OVERFLOW'
    if ext_call.return_data[0] > test266151307():
        revert with 0, 'BSCswap: OVERFLOW'
    if uint32(uint32(block.timestamp) - uint32(stor9.field_224)) > 0:
        if Mask(112, 0, stor9.field_0):
            if Mask(112, 0, stor9.field_112):
                require Mask(112, 0, stor9.field_0)
                price0CumulativeLast += Mask(224, 0, Mask(112, 0, Mask(112, 0, stor9.field_112)) << 112 / Mask(112, 0, stor9.field_0)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
                require Mask(112, 0, stor9.field_112)
                price1CumulativeLast += Mask(224, 0, Mask(112, 0, stor9.field_0) / Mask(112, 0, stor9.field_112)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
    Mask(112, 0, stor9.field_0) = Mask(112, 0, ext_call.return_data[0])
    Mask(112, 0, stor9.field_112) = Mask(112, 0, ext_call.return_data[0])
    uint32(stor9.field_224) = uint32(block.timestamp)
    emit Sync(Mask(112, 0, stor9.field_0), Mask(112, 0, stor9.field_112));
    stor13 = 1
}

function skim(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor13 != 1:
        revert with 0, 'BSCswap: LOCKED'
    stor13 = 0
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - Mask(112, 0, stor9.field_0) > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    mem[260 len 64] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor9.field_0)) >> 32
    call token0Address with:
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor9.field_0)) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'BSCswap: TRANSFER_FAILED'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'BSCswap: TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'BSCswap: TRANSFER_FAILED'
    require ext_code.size(token1Address)
    staticcall token1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - Mask(112, 0, stor9.field_112) > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    mem[ceil32(return_data.size) + 425 len 64] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor9.field_112)) >> 32
    call token1Address with:
         gas gas_remaining wei
        args ext_call.return_data[0] - Mask(112, 0, stor9.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor9.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'BSCswap: TRANSFER_FAILED'
    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'BSCswap: TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 'BSCswap: TRANSFER_FAILED'
    stor13 = 1
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor13 != 1:
        revert with 0, 'BSCswap: LOCKED'
    stor13 = 0
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token1Address)
    staticcall token1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - Mask(112, 0, stor9.field_0) > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    if ext_call.return_data[0] - Mask(112, 0, stor9.field_112) > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.feeTo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        if kLast:
            kLast = 0
    else:
        if kLast:
            if not Mask(112, 0, stor9.field_112):
                if kLast > 3:
                    s = stor12 + 1
                    t = kLast
                    while s < t:
                        require s
                        s = (kLast / s) + s / 2
                        t = s
                        continue 
                    if 0 > t:
                        if -t > 0:
                            revert with 0, 'ds-math-sub-underflow'
                        if not -t:
                            if t < 0:
                                revert with 0, 'ds-math-add-overflow'
                            require t
                            if 0 / t > 0:
                                if totalSupply + (0 / t) < totalSupply:
                                    revert with 0, 'ds-math-add-overflow'
                                totalSupply += 0 / t
                                if balanceOf[ext_call.return_data[12 len 20]] + (0 / t) < balanceOf[ext_call.return_data[12 len 20]]:
                                    revert with 0, 'ds-math-add-overflow'
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (0 / t)
                                emit Transfer((0 / t), 0, address(ext_call.return_data[0]));
                        else:
                            require -t
                            if -1 * totalSupply * t / -t != totalSupply:
                                revert with 0, 'ds-math-mul-overflow'
                            if t < 0:
                                revert with 0, 'ds-math-add-overflow'
                            require t
                            if -1 * totalSupply * t / t > 0:
                                if totalSupply + (-1 * totalSupply * t / t) < totalSupply:
                                    revert with 0, 'ds-math-add-overflow'
                                totalSupply += -1 * totalSupply * t / t
                                if balanceOf[ext_call.return_data[12 len 20]] + (-1 * totalSupply * t / t) < balanceOf[ext_call.return_data[12 len 20]]:
                                    revert with 0, 'ds-math-add-overflow'
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (-1 * totalSupply * t / t)
                                emit Transfer((-1 * totalSupply * t / t), 0, address(ext_call.return_data[0]));
            else:
                require Mask(112, 0, stor9.field_112)
                if Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112) / Mask(112, 0, stor9.field_112) != Mask(112, 0, stor9.field_0):
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112) <= 3:
                    if not Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112):
                        if kLast > 3:
                            s = stor12 + 1
                            t = kLast
                            while s < t:
                                require s
                                s = (kLast / s) + s / 2
                                t = s
                                continue 
                            if 0 > t:
                                if -t > 0:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -t:
                                    if t < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require t
                                    if 0 / t > 0:
                                        if totalSupply + (0 / t) < totalSupply:
                                            revert with 0, 'ds-math-add-overflow'
                                        totalSupply += 0 / t
                                        if balanceOf[ext_call.return_data[12 len 20]] + (0 / t) < balanceOf[ext_call.return_data[12 len 20]]:
                                            revert with 0, 'ds-math-add-overflow'
                                        balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (0 / t)
                                        emit Transfer((0 / t), 0, address(ext_call.return_data[0]));
                                else:
                                    require -t
                                    if -1 * totalSupply * t / -t != totalSupply:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if t < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require t
                                    if -1 * totalSupply * t / t > 0:
                                        if totalSupply + (-1 * totalSupply * t / t) < totalSupply:
                                            revert with 0, 'ds-math-add-overflow'
                                        totalSupply += -1 * totalSupply * t / t
                                        if balanceOf[ext_call.return_data[12 len 20]] + (-1 * totalSupply * t / t) < balanceOf[ext_call.return_data[12 len 20]]:
                                            revert with 0, 'ds-math-add-overflow'
                                        balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (-1 * totalSupply * t / t)
                                        emit Transfer((-1 * totalSupply * t / t), 0, address(ext_call.return_data[0]));
                    else:
                        if kLast <= 3:
                            if not kLast:
                                if totalSupply != totalSupply:
                                    revert with 0, 'ds-math-mul-overflow'
                                if totalSupply / 5 > 0:
                                    if totalSupply + (totalSupply / 5) < totalSupply:
                                        revert with 0, 'ds-math-add-overflow'
                                    totalSupply += totalSupply / 5
                                    if balanceOf[ext_call.return_data[12 len 20]] + (totalSupply / 5) < balanceOf[ext_call.return_data[12 len 20]]:
                                        revert with 0, 'ds-math-add-overflow'
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (totalSupply / 5)
                                    emit Transfer((totalSupply / 5), 0, address(ext_call.return_data[0]));
                        else:
                            s = stor12 + 1
                            t = kLast
                            while s < t:
                                require s
                                s = (kLast / s) + s / 2
                                t = s
                                continue 
                            if 1 > t:
                                if -t + 1 > 1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not -t + 1:
                                    if t + 5 < 5:
                                        revert with 0, 'ds-math-add-overflow'
                                    require t + 5
                                    if 0 / t + 5 > 0:
                                        if totalSupply + (0 / t + 5) < totalSupply:
                                            revert with 0, 'ds-math-add-overflow'
                                        totalSupply += 0 / t + 5
                                        if balanceOf[ext_call.return_data[12 len 20]] + (0 / t + 5) < balanceOf[ext_call.return_data[12 len 20]]:
                                            revert with 0, 'ds-math-add-overflow'
                                        balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (0 / t + 5)
                                        emit Transfer((0 / t + 5), 0, address(ext_call.return_data[0]));
                                else:
                                    require -t + 1
                                    if totalSupply - (t * totalSupply) / -t + 1 != totalSupply:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if t + 5 < 5:
                                        revert with 0, 'ds-math-add-overflow'
                                    require t + 5
                                    if totalSupply - (t * totalSupply) / t + 5 > 0:
                                        if totalSupply + (totalSupply - (t * totalSupply) / t + 5) < totalSupply:
                                            revert with 0, 'ds-math-add-overflow'
                                        totalSupply += totalSupply - (t * totalSupply) / t + 5
                                        if balanceOf[ext_call.return_data[12 len 20]] + (totalSupply - (t * totalSupply) / t + 5) < balanceOf[ext_call.return_data[12 len 20]]:
                                            revert with 0, 'ds-math-add-overflow'
                                        balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (totalSupply - (t * totalSupply) / t + 5)
                                        emit Transfer((totalSupply - (t * totalSupply) / t + 5), 0, address(ext_call.return_data[0]));
                else:
                    s = (Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112) / 2) + 1
                    t = Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112)
                    while s < t:
                        require s
                        s = (Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112) / s) + s / 2
                        t = s
                        continue 
                    if kLast <= 3:
                        if not kLast:
                            if t > 0:
                                if t > t:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not t:
                                    if 5 * t / 5 != t:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 5 * t < 5 * t:
                                        revert with 0, 'ds-math-add-overflow'
                                    require 5 * t
                                    if 0 / 5 * t > 0:
                                        if totalSupply + (0 / 5 * t) < totalSupply:
                                            revert with 0, 'ds-math-add-overflow'
                                        totalSupply += 0 / 5 * t
                                        if balanceOf[ext_call.return_data[12 len 20]] + (0 / 5 * t) < balanceOf[ext_call.return_data[12 len 20]]:
                                            revert with 0, 'ds-math-add-overflow'
                                        balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (0 / 5 * t)
                                        emit Transfer((0 / 5 * t), 0, address(ext_call.return_data[0]));
                                else:
                                    require t
                                    if totalSupply * t / t != totalSupply:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 5 * t / 5 != t:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 5 * t < 5 * t:
                                        revert with 0, 'ds-math-add-overflow'
                                    require 5 * t
                                    if totalSupply * t / 5 * t > 0:
                                        if totalSupply + (totalSupply * t / 5 * t) < totalSupply:
                                            revert with 0, 'ds-math-add-overflow'
                                        totalSupply += totalSupply * t / 5 * t
                                        if balanceOf[ext_call.return_data[12 len 20]] + (totalSupply * t / 5 * t) < balanceOf[ext_call.return_data[12 len 20]]:
                                            revert with 0, 'ds-math-add-overflow'
                                        balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (totalSupply * t / 5 * t)
                                        emit Transfer((totalSupply * t / 5 * t), 0, address(ext_call.return_data[0]));
                        else:
                            if t > 1:
                                if t - 1 > t:
                                    revert with 0, 'ds-math-sub-underflow'
                                if not t - 1:
                                    if 5 * t / 5 != t:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (5 * t) + 1 < 5 * t:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (5 * t) + 1
                                    if 0 / (5 * t) + 1 > 0:
                                        if totalSupply + (0 / (5 * t) + 1) < totalSupply:
                                            revert with 0, 'ds-math-add-overflow'
                                        totalSupply += 0 / (5 * t) + 1
                                        if balanceOf[ext_call.return_data[12 len 20]] + (0 / (5 * t) + 1) < balanceOf[ext_call.return_data[12 len 20]]:
                                            revert with 0, 'ds-math-add-overflow'
                                        balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (0 / (5 * t) + 1)
                                        emit Transfer((0 / (5 * t) + 1), 0, address(ext_call.return_data[0]));
                                else:
                                    require t - 1
                                    if -totalSupply + (t * totalSupply) / t - 1 != totalSupply:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 5 * t / 5 != t:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (5 * t) + 1 < 5 * t:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (5 * t) + 1
                                    if -totalSupply + (t * totalSupply) / (5 * t) + 1 > 0:
                                        if totalSupply + (-totalSupply + (t * totalSupply) / (5 * t) + 1) < totalSupply:
                                            revert with 0, 'ds-math-add-overflow'
                                        totalSupply += -totalSupply + (t * totalSupply) / (5 * t) + 1
                                        if balanceOf[ext_call.return_data[12 len 20]] + (-totalSupply + (t * totalSupply) / (5 * t) + 1) < balanceOf[ext_call.return_data[12 len 20]]:
                                            revert with 0, 'ds-math-add-overflow'
                                        balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (-totalSupply + (t * totalSupply) / (5 * t) + 1)
                                        emit Transfer((-totalSupply + (t * totalSupply) / (5 * t) + 1), 0, address(ext_call.return_data[0]));
                    else:
                        s = stor12 + 1
                        u = kLast
                        while s < u:
                            require s
                            s = (kLast / s) + s / 2
                            u = s
                            continue 
                        if t > u:
                            if t - u > t:
                                revert with 0, 'ds-math-sub-underflow'
                            if not t - u:
                                if 5 * t / 5 != t:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (5 * t) + u < 5 * t:
                                    revert with 0, 'ds-math-add-overflow'
                                require (5 * t) + u
                                if 0 / (5 * t) + u > 0:
                                    if totalSupply + (0 / (5 * t) + u) < totalSupply:
                                        revert with 0, 'ds-math-add-overflow'
                                    totalSupply += 0 / (5 * t) + u
                                    if balanceOf[ext_call.return_data[12 len 20]] + (0 / (5 * t) + u) < balanceOf[ext_call.return_data[12 len 20]]:
                                        revert with 0, 'ds-math-add-overflow'
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + (0 / (5 * t) + u)
                                    emit Transfer((0 / (5 * t) + u), 0, address(ext_call.return_data[0]));
                            else:
                                require t - u
                                if (t * totalSupply) - (u * totalSupply) / t - u != totalSupply:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 5 * t / 5 != t:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (5 * t) + u < 5 * t:
                                    revert with 0, 'ds-math-add-overflow'
                                require (5 * t) + u
                                if (t * totalSupply) - (u * totalSupply) / (5 * t) + u > 0:
                                    if totalSupply + ((t * totalSupply) - (u * totalSupply) / (5 * t) + u) < totalSupply:
                                        revert with 0, 'ds-math-add-overflow'
                                    totalSupply += (t * totalSupply) - (u * totalSupply) / (5 * t) + u
                                    if balanceOf[ext_call.return_data[12 len 20]] + ((t * totalSupply) - (u * totalSupply) / (5 * t) + u) < balanceOf[ext_call.return_data[12 len 20]]:
                                        revert with 0, 'ds-math-add-overflow'
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + ((t * totalSupply) - (u * totalSupply) / (5 * t) + u)
                                    emit Transfer(((t * totalSupply) - (u * totalSupply) / (5 * t) + u), 0, address(ext_call.return_data[0]));
    if totalSupply:
        require totalSupply
        if (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / totalSupply != ext_call.return_data[0] - Mask(112, 0, stor9.field_0):
            revert with 0, 'ds-math-mul-overflow'
        require Mask(112, 0, stor9.field_0)
        if not totalSupply:
            require Mask(112, 0, stor9.field_112)
            if (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0) < 0 / Mask(112, 0, stor9.field_112):
                if (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0) <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x44425343737761703a20494e53554646494349454e545f4c49515549444954595f4d494e5445,
                                mem[202 len 26]
                if totalSupply + ((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0)) < totalSupply:
                    revert with 0, 'ds-math-add-overflow'
                totalSupply += (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0)
                if balanceOf[address(arg1)] + ((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0)) < balanceOf[address(arg1)]:
                    revert with 0, 'ds-math-add-overflow'
                balanceOf[address(arg1)] += (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0)
                emit Transfer(((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0)), 0, arg1);
                if ext_call.return_data[0] > test266151307():
                    revert with 0, 'BSCswap: OVERFLOW'
                if ext_call.return_data[0] > test266151307():
                    revert with 0, 'BSCswap: OVERFLOW'
                if uint32(uint32(block.timestamp) - uint32(stor9.field_224)) > 0:
                    if Mask(112, 0, stor9.field_0):
                        if Mask(112, 0, stor9.field_112):
                            require Mask(112, 0, stor9.field_0)
                            price0CumulativeLast += Mask(224, 0, Mask(112, 0, Mask(112, 0, stor9.field_112)) << 112 / Mask(112, 0, stor9.field_0)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
                            require Mask(112, 0, stor9.field_112)
                            price1CumulativeLast += Mask(224, 0, Mask(112, 0, stor9.field_0) / Mask(112, 0, stor9.field_112)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
                Mask(112, 0, stor9.field_0) = Mask(112, 0, ext_call.return_data[0])
                Mask(112, 0, stor9.field_112) = Mask(112, 0, ext_call.return_data[0])
                uint32(stor9.field_224) = uint32(block.timestamp)
                emit Sync(Mask(112, 0, stor9.field_0), Mask(112, 0, stor9.field_112));
                if address(ext_call.return_data[0]):
                    if not Mask(112, 0, stor9.field_112):
                        kLast = 0
                    else:
                        require Mask(112, 0, stor9.field_112)
                        if Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112) / Mask(112, 0, stor9.field_112) != Mask(112, 0, stor9.field_0):
                            revert with 0, 'ds-math-mul-overflow'
                        kLast = Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112)
                emit Mint(ext_call.return_data[0] - Mask(112, 0, stor9.field_0), ext_call.return_data[0] - Mask(112, 0, stor9.field_112), msg.sender);
                stor13 = 1
                return ((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0))
            if 0 / Mask(112, 0, stor9.field_112) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x44425343737761703a20494e53554646494349454e545f4c49515549444954595f4d494e5445,
                            mem[202 len 26]
            if totalSupply + (0 / Mask(112, 0, stor9.field_112)) < totalSupply:
                revert with 0, 'ds-math-add-overflow'
            totalSupply += 0 / Mask(112, 0, stor9.field_112)
            if balanceOf[address(arg1)] + (0 / Mask(112, 0, stor9.field_112)) < balanceOf[address(arg1)]:
                revert with 0, 'ds-math-add-overflow'
            balanceOf[address(arg1)] += 0 / Mask(112, 0, stor9.field_112)
            emit Transfer((0 / Mask(112, 0, stor9.field_112)), 0, arg1);
            if ext_call.return_data[0] > test266151307():
                revert with 0, 'BSCswap: OVERFLOW'
            if ext_call.return_data[0] > test266151307():
                revert with 0, 'BSCswap: OVERFLOW'
            if uint32(uint32(block.timestamp) - uint32(stor9.field_224)) > 0:
                if Mask(112, 0, stor9.field_0):
                    if Mask(112, 0, stor9.field_112):
                        require Mask(112, 0, stor9.field_0)
                        price0CumulativeLast += Mask(224, 0, Mask(112, 0, Mask(112, 0, stor9.field_112)) << 112 / Mask(112, 0, stor9.field_0)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
                        require Mask(112, 0, stor9.field_112)
                        price1CumulativeLast += Mask(224, 0, Mask(112, 0, stor9.field_0) / Mask(112, 0, stor9.field_112)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
            Mask(112, 0, stor9.field_0) = Mask(112, 0, ext_call.return_data[0])
            Mask(112, 0, stor9.field_112) = Mask(112, 0, ext_call.return_data[0])
            uint32(stor9.field_224) = uint32(block.timestamp)
            emit Sync(Mask(112, 0, stor9.field_0), Mask(112, 0, stor9.field_112));
            if address(ext_call.return_data[0]):
                if not Mask(112, 0, stor9.field_112):
                    kLast = 0
                else:
                    require Mask(112, 0, stor9.field_112)
                    if Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112) / Mask(112, 0, stor9.field_112) != Mask(112, 0, stor9.field_0):
                        revert with 0, 'ds-math-mul-overflow'
                    kLast = Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112)
            emit Mint(ext_call.return_data[0] - Mask(112, 0, stor9.field_0), ext_call.return_data[0] - Mask(112, 0, stor9.field_112), msg.sender);
            stor13 = 1
            return (0 / Mask(112, 0, stor9.field_112))
        require totalSupply
        if (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_112) * totalSupply) / totalSupply != ext_call.return_data[0] - Mask(112, 0, stor9.field_112):
            revert with 0, 'ds-math-mul-overflow'
        require Mask(112, 0, stor9.field_112)
        if (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0) < (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_112) * totalSupply) / Mask(112, 0, stor9.field_112):
            if (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x44425343737761703a20494e53554646494349454e545f4c49515549444954595f4d494e5445,
                            mem[202 len 26]
            if totalSupply + ((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0)) < totalSupply:
                revert with 0, 'ds-math-add-overflow'
            totalSupply += (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0)
            if balanceOf[address(arg1)] + ((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0)) < balanceOf[address(arg1)]:
                revert with 0, 'ds-math-add-overflow'
            balanceOf[address(arg1)] += (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0)
            emit Transfer(((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0)), 0, arg1);
            if ext_call.return_data[0] > test266151307():
                revert with 0, 'BSCswap: OVERFLOW'
            if ext_call.return_data[0] > test266151307():
                revert with 0, 'BSCswap: OVERFLOW'
            if uint32(uint32(block.timestamp) - uint32(stor9.field_224)) > 0:
                if Mask(112, 0, stor9.field_0):
                    if Mask(112, 0, stor9.field_112):
                        require Mask(112, 0, stor9.field_0)
                        price0CumulativeLast += Mask(224, 0, Mask(112, 0, Mask(112, 0, stor9.field_112)) << 112 / Mask(112, 0, stor9.field_0)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
                        require Mask(112, 0, stor9.field_112)
                        price1CumulativeLast += Mask(224, 0, Mask(112, 0, stor9.field_0) / Mask(112, 0, stor9.field_112)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
            Mask(112, 0, stor9.field_0) = Mask(112, 0, ext_call.return_data[0])
            Mask(112, 0, stor9.field_112) = Mask(112, 0, ext_call.return_data[0])
            uint32(stor9.field_224) = uint32(block.timestamp)
            emit Sync(Mask(112, 0, stor9.field_0), Mask(112, 0, stor9.field_112));
            if address(ext_call.return_data[0]):
                if not Mask(112, 0, stor9.field_112):
                    kLast = 0
                else:
                    require Mask(112, 0, stor9.field_112)
                    if Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112) / Mask(112, 0, stor9.field_112) != Mask(112, 0, stor9.field_0):
                        revert with 0, 'ds-math-mul-overflow'
                    kLast = Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112)
            emit Mint(ext_call.return_data[0] - Mask(112, 0, stor9.field_0), ext_call.return_data[0] - Mask(112, 0, stor9.field_112), msg.sender);
            stor13 = 1
            return ((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_0) * totalSupply) / Mask(112, 0, stor9.field_0))
        if (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_112) * totalSupply) / Mask(112, 0, stor9.field_112) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x44425343737761703a20494e53554646494349454e545f4c49515549444954595f4d494e5445,
                        mem[202 len 26]
        if totalSupply + ((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_112) * totalSupply) / Mask(112, 0, stor9.field_112)) < totalSupply:
            revert with 0, 'ds-math-add-overflow'
        totalSupply += (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_112) * totalSupply) / Mask(112, 0, stor9.field_112)
        if balanceOf[address(arg1)] + ((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_112) * totalSupply) / Mask(112, 0, stor9.field_112)) < balanceOf[address(arg1)]:
            revert with 0, 'ds-math-add-overflow'
        balanceOf[address(arg1)] += (ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_112) * totalSupply) / Mask(112, 0, stor9.field_112)
        emit Transfer(((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_112) * totalSupply) / Mask(112, 0, stor9.field_112)), 0, arg1);
        if ext_call.return_data[0] > test266151307():
            revert with 0, 'BSCswap: OVERFLOW'
        if ext_call.return_data[0] > test266151307():
            revert with 0, 'BSCswap: OVERFLOW'
        if uint32(uint32(block.timestamp) - uint32(stor9.field_224)) > 0:
            if Mask(112, 0, stor9.field_0):
                if Mask(112, 0, stor9.field_112):
                    require Mask(112, 0, stor9.field_0)
                    price0CumulativeLast += Mask(224, 0, Mask(112, 0, Mask(112, 0, stor9.field_112)) << 112 / Mask(112, 0, stor9.field_0)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
                    require Mask(112, 0, stor9.field_112)
                    price1CumulativeLast += Mask(224, 0, Mask(112, 0, stor9.field_0) / Mask(112, 0, stor9.field_112)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
        Mask(112, 0, stor9.field_0) = Mask(112, 0, ext_call.return_data[0])
        Mask(112, 0, stor9.field_112) = Mask(112, 0, ext_call.return_data[0])
        uint32(stor9.field_224) = uint32(block.timestamp)
        emit Sync(Mask(112, 0, stor9.field_0), Mask(112, 0, stor9.field_112));
        if address(ext_call.return_data[0]):
            if not Mask(112, 0, stor9.field_112):
                kLast = 0
            else:
                require Mask(112, 0, stor9.field_112)
                if Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112) / Mask(112, 0, stor9.field_112) != Mask(112, 0, stor9.field_0):
                    revert with 0, 'ds-math-mul-overflow'
                kLast = Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112)
        emit Mint(ext_call.return_data[0] - Mask(112, 0, stor9.field_0), ext_call.return_data[0] - Mask(112, 0, stor9.field_112), msg.sender);
        stor13 = 1
        return ((ext_call.return_data[0] * totalSupply) - (Mask(112, 0, stor9.field_112) * totalSupply) / Mask(112, 0, stor9.field_112))
    if not ext_call.return_data[0] - Mask(112, 0, stor9.field_112):
        revert with 0, 'ds-math-sub-underflow'
    require ext_call.return_data[0] - Mask(112, 0, stor9.field_112)
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(112, 0, stor9.field_112) * ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, stor9.field_0)) + (Mask(112, 0, stor9.field_112) * Mask(112, 0, stor9.field_0)) / ext_call.return_data[0] - Mask(112, 0, stor9.field_112) != ext_call.return_data[0] - Mask(112, 0, stor9.field_0):
        revert with 0, 'ds-math-mul-overflow'
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(112, 0, stor9.field_112) * ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, stor9.field_0)) + (Mask(112, 0, stor9.field_112) * Mask(112, 0, stor9.field_0)) <= 3:
        revert with 0, 'ds-math-sub-underflow'
    s = ((ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(112, 0, stor9.field_112) * ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, stor9.field_0)) + (Mask(112, 0, stor9.field_112) * Mask(112, 0, stor9.field_0)) / 2) + 1
    t = (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(112, 0, stor9.field_112) * ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, stor9.field_0)) + (Mask(112, 0, stor9.field_112) * Mask(112, 0, stor9.field_0))
    while s < t:
        require s
        s = ((ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(112, 0, stor9.field_112) * ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, stor9.field_0)) + (Mask(112, 0, stor9.field_112) * Mask(112, 0, stor9.field_0)) / s) + s / 2
        t = s
        continue 
    if t - 1000 > t:
        revert with 0, 'ds-math-sub-underflow'
    if totalSupply + 1000 < totalSupply:
        revert with 0, 'ds-math-add-overflow'
    totalSupply += 1000
    if balanceOf[0] + 1000 < balanceOf[0]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[0] += 1000
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  1000,
    emit 0x0: 1000
    emit 0x0: 1000
    if t - 1000 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x44425343737761703a20494e53554646494349454e545f4c49515549444954595f4d494e5445,
                    mem[202 len 26]
    if totalSupply + t - 1000 < totalSupply:
        revert with 0, 'ds-math-add-overflow'
    totalSupply = totalSupply + t - 1000
    if balanceOf[address(arg1)] + t - 1000 < balanceOf[address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + t - 1000
    emit Transfer((t - 1000), 0, arg1);
    if ext_call.return_data[0] > test266151307():
        revert with 0, 'BSCswap: OVERFLOW'
    if ext_call.return_data[0] > test266151307():
        revert with 0, 'BSCswap: OVERFLOW'
    if uint32(uint32(block.timestamp) - uint32(stor9.field_224)) > 0:
        if Mask(112, 0, stor9.field_0):
            if Mask(112, 0, stor9.field_112):
                require Mask(112, 0, stor9.field_0)
                price0CumulativeLast += Mask(224, 0, Mask(112, 0, Mask(112, 0, stor9.field_112)) << 112 / Mask(112, 0, stor9.field_0)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
                require Mask(112, 0, stor9.field_112)
                price1CumulativeLast += Mask(224, 0, Mask(112, 0, stor9.field_0) / Mask(112, 0, stor9.field_112)) * uint32(uint32(block.timestamp) - uint32(stor9.field_224))
    Mask(112, 0, stor9.field_0) = Mask(112, 0, ext_call.return_data[0])
    Mask(112, 0, stor9.field_112) = Mask(112, 0, ext_call.return_data[0])
    uint32(stor9.field_224) = uint32(block.timestamp)
    emit Sync(Mask(112, 0, stor9.field_0), Mask(112, 0, stor9.field_112));
    if address(ext_call.return_data[0]):
        if not Mask(112, 0, stor9.field_112):
            kLast = 0
        else:
            require Mask(112, 0, stor9.field_112)
            if Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112) / Mask(112, 0, stor9.field_112) != Mask(112, 0, stor9.field_0):
                revert with 0, 'ds-math-mul-overflow'
            kLast = Mask(112, 0, stor9.field_0) * Mask(112, 0, stor9.field_112)
    emit Mint(ext_call.return_data[0] - Mask(112, 0, stor9.field_0), ext_call.return_data[0] - Mask(112, 0, stor9.field_112), msg.sender);
    stor13 = 1
    return (t - 1000)
}



}
