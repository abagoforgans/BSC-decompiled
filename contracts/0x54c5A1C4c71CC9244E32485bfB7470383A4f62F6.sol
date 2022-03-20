contract main {




// =====================  Runtime code  =====================


#
#  - swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4)
#  - mint(address arg1)
#  - burn(address arg1)
#
const name = 'oken'

const decimals = 18

const symbol = ''

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
uint32 stor8; offset 224
uint128 stor8;
uint128 stor8; offset 112
uint256 price0CumulativeLast;
uint256 price1CumulativeLast;
uint256 kLast;
uint256 stor12;

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
    return Mask(112, 0, stor8.field_0), Mask(112, 0, stor8.field_0), uint32(stor8.field_224)
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
        revert with 0, 'UniswapV2: FORBIDDEN'
    token0Address = arg1
    token1Address = arg2
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][msg.sender] != -1:
        if allowance[address(arg1)][msg.sender] - arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'ds-math-sub-underflow'
        allowance[address(arg1)][msg.sender] -= arg3
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if arg4 < block.timestamp:
        revert with 0, 'UniswapV2: EXPIRED'
    nonces[address(arg1)]++
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'UniswapV2: INVALID_SIGNATURE'
    if address(signer) != arg1:
        revert with 0, 'UniswapV2: INVALID_SIGNATURE'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function sync() payable {
    if stor12 != 1:
        revert with 0, 'UniswapV2: LOCKED'
    stor12 = 0
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
        revert with 0, 'UniswapV2: OVERFLOW'
    if ext_call.return_data[0] > test266151307():
        revert with 0, 'UniswapV2: OVERFLOW'
    if uint32(uint32(block.timestamp) - uint32(stor8.field_224)):
        if Mask(112, 0, stor8.field_0):
            if Mask(112, 0, stor8.field_112):
                require Mask(112, 0, stor8.field_0)
                price0CumulativeLast += Mask(224, 0, Mask(112, 0, Mask(112, 0, stor8.field_112)) << 112 / Mask(112, 0, stor8.field_0)) * uint32(uint32(block.timestamp) - uint32(stor8.field_224))
                require Mask(112, 0, stor8.field_112)
                price1CumulativeLast += Mask(224, 0, Mask(112, 0, stor8.field_0) / Mask(112, 0, stor8.field_112)) * uint32(uint32(block.timestamp) - uint32(stor8.field_224))
    Mask(112, 0, stor8.field_0) = Mask(112, 0, ext_call.return_data[0])
    Mask(112, 0, stor8.field_112) = Mask(112, 0, ext_call.return_data[0])
    uint32(stor8.field_224) = uint32(block.timestamp)
    emit Sync(ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[0]));
    stor12 = 1
}

function skim(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor12 != 1:
        revert with 0, 'UniswapV2: LOCKED'
    stor12 = 0
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - Mask(112, 0, stor8.field_0) > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor8.field_0)) >> 32
    call token0Address with:
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor8.field_0)) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'UniswapV2: TRANSFER_FAILED'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'UniswapV2: TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(token1Address)
    staticcall token1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - Mask(112, 0, stor8.field_112) > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor8.field_112)) >> 32
    call token1Address with:
         gas gas_remaining wei
        args ext_call.return_data[0] - Mask(112, 0, stor8.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor8.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'UniswapV2: TRANSFER_FAILED'
    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'UniswapV2: TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
    stor12 = 1
}



}
