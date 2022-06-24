contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
uint256 stor3;
address tokenAddress;
mapping of struct claim;

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function getClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'INVALID_ADDRESS'
    return bool(claim[address(arg1)].field_0), 
           claim[address(arg1)].field_256,
           claim[address(arg1)].field_512,
           claim[address(arg1)].field_768,
           claim[address(arg1)].field_1024,
           claim[address(arg1)].field_1280,
           claim[address(arg1)].field_1536
}

function paused() payable {
    return bool(stor2)
}

function owner() payable {
    return owner
}

function tokenAddress() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAdmin(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
    emit AdminAccessSet(address(arg1), arg2);
}

function pause() payable {
    if not stor1[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7743616c6c657220646f6573206e6f7420686176652041646d696e204163636573,
                        mem[197 len 31]
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not stor1[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7743616c6c657220646f6573206e6f7420686176652041646d696e204163636573,
                        mem[197 len 31]
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7743616c6c657220646f6573206e6f7420686176652041646d696e204163636573,
                        mem[197 len 31]
    claim[address(arg1)].field_0 = 0
    emit Revoked(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if arg2 <= 0:
        revert with 0, 'Nothing to withdraw'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor3 = 1
}

function sub_aad9e71b(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == uint64(arg5)
    require arg6 == uint64(arg6)
    if not stor1[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7743616c6c657220646f6573206e6f7420686176652041646d696e204163636573,
                        mem[197 len 31]
    if claim[address(arg1)].field_0:
        revert with 0, 'CLAIM_ACTIVE'
    if uint64(arg6) < uint64(arg5):
        revert with 0, 'INVALID_TIME'
    if not uint64(arg6):
        revert with 0, 'INVALID_TIME'
    if not address(arg1):
        revert with 0, 'INVALID_ADDRESS'
    if arg2 <= 0:
        revert with 0, 'INVALID_AMOUNT'
    if arg2 + arg3 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2 + arg3:
        revert with 0, 'INVALID_ALLOWANCE'
    if arg2 + arg3 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2 + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    claim[address(arg1)].field_0 = 1
    claim[address(arg1)].field_256 = arg2
    claim[address(arg1)].field_512 = arg3
    claim[address(arg1)].field_768 = arg4
    claim[address(arg1)].field_1024 = uint64(arg5)
    claim[address(arg1)].field_1088 = 0
    claim[address(arg1)].field_1280 = uint64(arg6)
    claim[address(arg1)].field_1344 = 0
    claim[address(arg1)].field_1536 = 0
    emit 0x4db21b00: msg.sender, address(arg1), arg2, arg3, arg4, arg5 << 192, uint64(arg6)
}

function claimableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < claim[address(arg1)].field_1024:
        if block.timestamp < claim[address(arg1)].field_768:
            return 0
    if claim[address(arg1)].field_1536 == claim[address(arg1)].field_256:
        return 0
    if block.timestamp > claim[address(arg1)].field_1280:
        if claim[address(arg1)].field_768 <= block.timestamp:
            if claim[address(arg1)].field_1024 <= block.timestamp:
                if claim[address(arg1)].field_1024 > claim[address(arg1)].field_1280:
                    revert with 0, 'SafeMath: subtraction overflow'
                if claim[address(arg1)].field_1024 > claim[address(arg1)].field_1280:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024:
                    if claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024
                    if not claim[address(arg1)].field_256:
                        if claim[address(arg1)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if claim[address(arg1)].field_1536 > claim[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
                    require claim[address(arg1)].field_256
                    if claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / claim[address(arg1)].field_256 != 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                    if (claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512 < claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if claim[address(arg1)].field_1536 > (claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
                require claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024
                if (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                if claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024
                if not claim[address(arg1)].field_256:
                    if claim[address(arg1)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if claim[address(arg1)].field_1536 > claim[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
                require claim[address(arg1)].field_256
                if claim[address(arg1)].field_256 * (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / claim[address(arg1)].field_256 != (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                if (claim[address(arg1)].field_256 * (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512 < claim[address(arg1)].field_256 * (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if claim[address(arg1)].field_1536 > (claim[address(arg1)].field_256 * (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((claim[address(arg1)].field_256 * (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
        if claim[address(arg1)].field_768 <= block.timestamp:
            if claim[address(arg1)].field_1536 > claim[address(arg1)].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            return (claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
        if claim[address(arg1)].field_1024 > block.timestamp:
            if claim[address(arg1)].field_1536 > claim[address(arg1)].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            return (claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
        if claim[address(arg1)].field_1024 > claim[address(arg1)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if claim[address(arg1)].field_1024 > claim[address(arg1)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024:
            if claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024
            if not claim[address(arg1)].field_256:
                if claim[address(arg1)].field_1536 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -claim[address(arg1)].field_1536
            require claim[address(arg1)].field_256
            if claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / claim[address(arg1)].field_256 != 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
            if claim[address(arg1)].field_1536 > claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) - claim[address(arg1)].field_1536)
        require claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024
        if (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
        if claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024
        if not claim[address(arg1)].field_256:
            if claim[address(arg1)].field_1536 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -claim[address(arg1)].field_1536
        require claim[address(arg1)].field_256
        if claim[address(arg1)].field_256 * (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / claim[address(arg1)].field_256 != (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
        if claim[address(arg1)].field_1536 > claim[address(arg1)].field_256 * (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((claim[address(arg1)].field_256 * (10^18 * claim[address(arg1)].field_1280) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) - claim[address(arg1)].field_1536)
    if claim[address(arg1)].field_768 <= block.timestamp:
        if claim[address(arg1)].field_1024 <= block.timestamp:
            if claim[address(arg1)].field_1024 > claim[address(arg1)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if claim[address(arg1)].field_1024 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - claim[address(arg1)].field_1024:
                if claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024
                if not claim[address(arg1)].field_256:
                    if claim[address(arg1)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if claim[address(arg1)].field_1536 > claim[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
                require claim[address(arg1)].field_256
                if claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / claim[address(arg1)].field_256 != 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                if (claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512 < claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if claim[address(arg1)].field_1536 > (claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
            require block.timestamp - claim[address(arg1)].field_1024
            if (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / block.timestamp - claim[address(arg1)].field_1024 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
            if claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024
            if not claim[address(arg1)].field_256:
                if claim[address(arg1)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if claim[address(arg1)].field_1536 > claim[address(arg1)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
            require claim[address(arg1)].field_256
            if claim[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / claim[address(arg1)].field_256 != (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
            if (claim[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512 < claim[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if claim[address(arg1)].field_1536 > (claim[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((claim[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) + claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
    if claim[address(arg1)].field_768 <= block.timestamp:
        if claim[address(arg1)].field_1536 > claim[address(arg1)].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        return (claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
    if claim[address(arg1)].field_1024 > block.timestamp:
        if claim[address(arg1)].field_1536 > claim[address(arg1)].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        return (claim[address(arg1)].field_512 - claim[address(arg1)].field_1536)
    if claim[address(arg1)].field_1024 > claim[address(arg1)].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    if claim[address(arg1)].field_1024 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - claim[address(arg1)].field_1024:
        if claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024
        if not claim[address(arg1)].field_256:
            if claim[address(arg1)].field_1536 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -claim[address(arg1)].field_1536
        require claim[address(arg1)].field_256
        if claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / claim[address(arg1)].field_256 != 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
        if claim[address(arg1)].field_1536 > claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((claim[address(arg1)].field_256 * 0 / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) - claim[address(arg1)].field_1536)
    require block.timestamp - claim[address(arg1)].field_1024
    if (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / block.timestamp - claim[address(arg1)].field_1024 != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
    if claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024
    if not claim[address(arg1)].field_256:
        if claim[address(arg1)].field_1536 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -claim[address(arg1)].field_1536
    require claim[address(arg1)].field_256
    if claim[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / claim[address(arg1)].field_256 != (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
    if claim[address(arg1)].field_1536 > claim[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((claim[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(arg1)].field_1024) / claim[address(arg1)].field_1280 - claim[address(arg1)].field_1024 / 10^18) - claim[address(arg1)].field_1536)
}

function sub_949e7d25(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307() and (32 * ('cd', 68).length) + 192 >= 160
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 <= test266151307() and (32 * ('cd', 100).length) + 224 >= 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    while idx < ('cd', 100).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 <= test266151307() and (32 * ('cd', 132).length) + 256 >= 224
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
    while idx < ('cd', 132).length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 <= test266151307() and (32 * ('cd', 164).length) + 288 >= 256
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
    while idx < ('cd', 164).length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[address(msg.sender)]:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'LENGTH_MISMATCH'
        if ('cd', 68).length != ('cd', 4).length:
            revert with 0, 'LENGTH_MISMATCH'
        if ('cd', 100).length != ('cd', 4).length:
            revert with 0, 'LENGTH_MISMATCH'
        if ('cd', 132).length != ('cd', 4).length:
            revert with 0, 'LENGTH_MISMATCH'
        if ('cd', 164).length != ('cd', 4).length:
            revert with 0, 'LENGTH_MISMATCH'
        idx = 0
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _1444 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _1448 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _1452 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _1456 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            _1460 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256]
            _1464 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288]
            if stor1[address(msg.sender)]:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if claim[address(mem[(32 * idx) + 128])].field_0:
                    revert with 0, 'CLAIM_ACTIVE'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 312 len 8] < mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 280 len 8]:
                    revert with 0, 'INVALID_TIME'
                if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 312 len 8]:
                    revert with 0, 'INVALID_TIME'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'INVALID_ADDRESS'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                    revert with 0, 'INVALID_AMOUNT'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] < mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1530 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1530] == mem[_1530]
                if mem[_1530] < _1448 + _1452:
                    revert with 0, 'INVALID_ALLOWANCE'
                if _1448 + _1452 < _1448:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _1448 + _1452
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _1448 + _1452
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1562 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1562] == bool(mem[_1562])
                _1572 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1572] = 1
                mem[_1572 + 32] = _1448
                mem[_1572 + 64] = _1452
                mem[_1572 + 96] = _1456
                mem[_1572 + 128] = uint64(_1460)
                mem[_1572 + 160] = uint64(_1464)
                mem[_1572 + 192] = 0
            else:
                if owner != msg.sender:
                    revert with 0, 32, 33, 0x7743616c6c657220646f6573206e6f7420686176652041646d696e204163636573, mem[mem[64] + 101 len 31]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if claim[address(mem[(32 * idx) + 128])].field_0:
                    revert with 0, 'CLAIM_ACTIVE'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 312 len 8] < mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 280 len 8]:
                    revert with 0, 'INVALID_TIME'
                if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 312 len 8]:
                    revert with 0, 'INVALID_TIME'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'INVALID_ADDRESS'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                    revert with 0, 'INVALID_AMOUNT'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] < mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1536 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1536] == mem[_1536]
                if mem[_1536] < _1448 + _1452:
                    revert with 0, 'INVALID_ALLOWANCE'
                if _1448 + _1452 < _1448:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _1448 + _1452
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _1448 + _1452
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1568 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1568] == bool(mem[_1568])
                _1592 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1592] = 1
                mem[_1592 + 32] = _1448
                mem[_1592 + 64] = _1452
                mem[_1592 + 96] = _1456
                mem[_1592 + 128] = uint64(_1460)
                mem[_1592 + 160] = uint64(_1464)
                mem[_1592 + 192] = 0
            mem[0] = address(_1444)
            mem[32] = 5
            claim[address(_1444)].field_0 = 1
            claim[address(_1444)].field_256 = _1448
            claim[address(_1444)].field_512 = _1452
            claim[address(_1444)].field_768 = _1456
            claim[address(_1444)].field_1024 = uint64(_1460)
            claim[address(_1444)].field_1088 = 0
            claim[address(_1444)].field_1280 = uint64(_1464)
            claim[address(_1444)].field_1344 = 0
            claim[address(_1444)].field_1536 = 0
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = address(_1444)
            mem[mem[64] + 64] = _1448
            mem[mem[64] + 96] = _1452
            mem[mem[64] + 128] = _1456
            mem[mem[64] + 160] = uint64(_1460)
            mem[mem[64] + 192] = uint64(_1464)
            emit 0x4db21b00: msg.sender, address(_1444), _1448, _1452, _1456, _1460 << 192, uint64(_1464)
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 
                        32,
                        33,
                        0x7743616c6c657220646f6573206e6f7420686176652041646d696e204163636573,
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 389 len 31]
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'LENGTH_MISMATCH'
        if ('cd', 68).length != ('cd', 4).length:
            revert with 0, 'LENGTH_MISMATCH'
        if ('cd', 100).length != ('cd', 4).length:
            revert with 0, 'LENGTH_MISMATCH'
        if ('cd', 132).length != ('cd', 4).length:
            revert with 0, 'LENGTH_MISMATCH'
        if ('cd', 164).length != ('cd', 4).length:
            revert with 0, 'LENGTH_MISMATCH'
        idx = 0
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _1446 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _1450 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _1454 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _1458 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            _1462 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256]
            _1465 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288]
            if stor1[address(msg.sender)]:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if claim[address(mem[(32 * idx) + 128])].field_0:
                    revert with 0, 'CLAIM_ACTIVE'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 312 len 8] < mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 280 len 8]:
                    revert with 0, 'INVALID_TIME'
                if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 312 len 8]:
                    revert with 0, 'INVALID_TIME'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'INVALID_ADDRESS'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                    revert with 0, 'INVALID_AMOUNT'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] < mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1531 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1531] == mem[_1531]
                if mem[_1531] < _1450 + _1454:
                    revert with 0, 'INVALID_ALLOWANCE'
                if _1450 + _1454 < _1450:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _1450 + _1454
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _1450 + _1454
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1563 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1563] == bool(mem[_1563])
                _1582 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1582] = 1
                mem[_1582 + 32] = _1450
                mem[_1582 + 64] = _1454
                mem[_1582 + 96] = _1458
                mem[_1582 + 128] = uint64(_1462)
                mem[_1582 + 160] = uint64(_1465)
                mem[_1582 + 192] = 0
            else:
                if owner != msg.sender:
                    revert with 0, 32, 33, 0x7743616c6c657220646f6573206e6f7420686176652041646d696e204163636573, mem[mem[64] + 101 len 31]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if claim[address(mem[(32 * idx) + 128])].field_0:
                    revert with 0, 'CLAIM_ACTIVE'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 312 len 8] < mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 280 len 8]:
                    revert with 0, 'INVALID_TIME'
                if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 312 len 8]:
                    revert with 0, 'INVALID_TIME'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'INVALID_ADDRESS'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                    revert with 0, 'INVALID_AMOUNT'
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] < mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1537 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1537] == mem[_1537]
                if mem[_1537] < _1450 + _1454:
                    revert with 0, 'INVALID_ALLOWANCE'
                if _1450 + _1454 < _1450:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _1450 + _1454
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _1450 + _1454
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1569 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1569] == bool(mem[_1569])
                _1602 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1602] = 1
                mem[_1602 + 32] = _1450
                mem[_1602 + 64] = _1454
                mem[_1602 + 96] = _1458
                mem[_1602 + 128] = uint64(_1462)
                mem[_1602 + 160] = uint64(_1465)
                mem[_1602 + 192] = 0
            mem[0] = address(_1446)
            mem[32] = 5
            claim[address(_1446)].field_0 = 1
            claim[address(_1446)].field_256 = _1450
            claim[address(_1446)].field_512 = _1454
            claim[address(_1446)].field_768 = _1458
            claim[address(_1446)].field_1024 = uint64(_1462)
            claim[address(_1446)].field_1088 = 0
            claim[address(_1446)].field_1280 = uint64(_1465)
            claim[address(_1446)].field_1344 = 0
            claim[address(_1446)].field_1536 = 0
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = address(_1446)
            mem[mem[64] + 64] = _1450
            mem[mem[64] + 96] = _1454
            mem[mem[64] + 128] = _1458
            mem[mem[64] + 160] = uint64(_1462)
            mem[mem[64] + 192] = uint64(_1465)
            emit 0x4db21b00: msg.sender, address(_1446), _1450, _1454, _1458, _1462 << 192, uint64(_1465)
            idx = idx + 1
            continue 
}

function claim() payable {
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if not claim[address(msg.sender)].field_0:
        revert with 0, 'CLAIM_INACTIVE'
    if block.timestamp >= claim[address(msg.sender)].field_1024:
        if claim[address(msg.sender)].field_1536 == claim[address(msg.sender)].field_256:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if claim[address(msg.sender)].field_1536 < claim[address(msg.sender)].field_1536:
                revert with 0, 'SafeMath: addition overflow'
            if claim[address(msg.sender)].field_1536 != claim[address(msg.sender)].field_256:
                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
            else:
                claim[address(msg.sender)].field_0 = 0
            emit Claimed(msg.sender, 0);
        else:
            if block.timestamp > claim[address(msg.sender)].field_1280:
                if claim[address(msg.sender)].field_768 > block.timestamp:
                    if claim[address(msg.sender)].field_768 <= block.timestamp:
                        if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                        else:
                            claim[address(msg.sender)].field_0 = 0
                        claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                        emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                    else:
                        if claim[address(msg.sender)].field_1024 > block.timestamp:
                            if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                            else:
                                claim[address(msg.sender)].field_0 = 0
                            claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                            emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                        else:
                            if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                if not claim[address(msg.sender)].field_256:
                                    if claim[address(msg.sender)].field_1536 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if 0 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_256 != 0:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = 0
                                    emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                else:
                                    require claim[address(msg.sender)].field_256
                                    if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                    emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                            else:
                                require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                if (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                if not claim[address(msg.sender)].field_256:
                                    if claim[address(msg.sender)].field_1536 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if 0 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_256 != 0:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = 0
                                    emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                else:
                                    require claim[address(msg.sender)].field_256
                                    if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                    emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                else:
                    if claim[address(msg.sender)].field_1024 <= block.timestamp:
                        if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                            if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                            if not claim[address(msg.sender)].field_256:
                                if claim[address(msg.sender)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                require claim[address(msg.sender)].field_256
                                if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_1536 > (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                        else:
                            require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                            if (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                            if not claim[address(msg.sender)].field_256:
                                if claim[address(msg.sender)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                require claim[address(msg.sender)].field_256
                                if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                if (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_1536 > (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                    else:
                        if claim[address(msg.sender)].field_768 <= block.timestamp:
                            if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                            else:
                                claim[address(msg.sender)].field_0 = 0
                            claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                            emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                        else:
                            if claim[address(msg.sender)].field_1024 > block.timestamp:
                                if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                    if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                    if not claim[address(msg.sender)].field_256:
                                        if claim[address(msg.sender)].field_1536 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if 0 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 != 0:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = 0
                                        emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                    else:
                                        require claim[address(msg.sender)].field_256
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                        emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                                else:
                                    require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                    if (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                    if not claim[address(msg.sender)].field_256:
                                        if claim[address(msg.sender)].field_1536 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if 0 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 != 0:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = 0
                                        emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                    else:
                                        require claim[address(msg.sender)].field_256
                                        if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                        emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
            else:
                if claim[address(msg.sender)].field_768 > block.timestamp:
                    if claim[address(msg.sender)].field_768 <= block.timestamp:
                        if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                        else:
                            claim[address(msg.sender)].field_0 = 0
                        claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                        emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                    else:
                        if claim[address(msg.sender)].field_1024 > block.timestamp:
                            if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                            else:
                                claim[address(msg.sender)].field_0 = 0
                            claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                            emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                        else:
                            if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if claim[address(msg.sender)].field_1024 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.timestamp - claim[address(msg.sender)].field_1024:
                                if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                if not claim[address(msg.sender)].field_256:
                                    if claim[address(msg.sender)].field_1536 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if 0 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_256 != 0:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = 0
                                    emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                else:
                                    require claim[address(msg.sender)].field_256
                                    if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                    emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                            else:
                                require block.timestamp - claim[address(msg.sender)].field_1024
                                if (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / block.timestamp - claim[address(msg.sender)].field_1024 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                if not claim[address(msg.sender)].field_256:
                                    if claim[address(msg.sender)].field_1536 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if 0 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_256 != 0:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = 0
                                    emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                else:
                                    require claim[address(msg.sender)].field_256
                                    if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                    emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                else:
                    if claim[address(msg.sender)].field_1024 <= block.timestamp:
                        if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if claim[address(msg.sender)].field_1024 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - claim[address(msg.sender)].field_1024:
                            if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                            if not claim[address(msg.sender)].field_256:
                                if claim[address(msg.sender)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                require claim[address(msg.sender)].field_256
                                if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_1536 > (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                        else:
                            require block.timestamp - claim[address(msg.sender)].field_1024
                            if (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / block.timestamp - claim[address(msg.sender)].field_1024 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                            if not claim[address(msg.sender)].field_256:
                                if claim[address(msg.sender)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                require claim[address(msg.sender)].field_256
                                if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                if (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_1536 > (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                    else:
                        if claim[address(msg.sender)].field_768 <= block.timestamp:
                            if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                            else:
                                claim[address(msg.sender)].field_0 = 0
                            claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                            emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                        else:
                            if claim[address(msg.sender)].field_1024 > block.timestamp:
                                if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if claim[address(msg.sender)].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - claim[address(msg.sender)].field_1024:
                                    if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                    if not claim[address(msg.sender)].field_256:
                                        if claim[address(msg.sender)].field_1536 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if 0 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 != 0:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = 0
                                        emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                    else:
                                        require claim[address(msg.sender)].field_256
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                        emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                                else:
                                    require block.timestamp - claim[address(msg.sender)].field_1024
                                    if (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / block.timestamp - claim[address(msg.sender)].field_1024 != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                    if not claim[address(msg.sender)].field_256:
                                        if claim[address(msg.sender)].field_1536 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if 0 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 != 0:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = 0
                                        emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                    else:
                                        require claim[address(msg.sender)].field_256
                                        if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                        emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
    else:
        if block.timestamp < claim[address(msg.sender)].field_768:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if claim[address(msg.sender)].field_1536 < claim[address(msg.sender)].field_1536:
                revert with 0, 'SafeMath: addition overflow'
            if claim[address(msg.sender)].field_1536 != claim[address(msg.sender)].field_256:
                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
            else:
                claim[address(msg.sender)].field_0 = 0
            emit Claimed(msg.sender, 0);
        else:
            if claim[address(msg.sender)].field_1536 == claim[address(msg.sender)].field_256:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if claim[address(msg.sender)].field_1536 < claim[address(msg.sender)].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                if claim[address(msg.sender)].field_1536 != claim[address(msg.sender)].field_256:
                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                else:
                    claim[address(msg.sender)].field_0 = 0
                emit Claimed(msg.sender, 0);
            else:
                if block.timestamp > claim[address(msg.sender)].field_1280:
                    if claim[address(msg.sender)].field_768 > block.timestamp:
                        if claim[address(msg.sender)].field_768 <= block.timestamp:
                            if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                            else:
                                claim[address(msg.sender)].field_0 = 0
                            claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                            emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                        else:
                            if claim[address(msg.sender)].field_1024 > block.timestamp:
                                if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                    if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                    if not claim[address(msg.sender)].field_256:
                                        if claim[address(msg.sender)].field_1536 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if 0 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 != 0:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = 0
                                        emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                    else:
                                        require claim[address(msg.sender)].field_256
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                        emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                                else:
                                    require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                    if (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                    if not claim[address(msg.sender)].field_256:
                                        if claim[address(msg.sender)].field_1536 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if 0 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 != 0:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = 0
                                        emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                    else:
                                        require claim[address(msg.sender)].field_256
                                        if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                        emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                    else:
                        if claim[address(msg.sender)].field_1024 <= block.timestamp:
                            if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                if not claim[address(msg.sender)].field_256:
                                    if claim[address(msg.sender)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                    emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                                else:
                                    require claim[address(msg.sender)].field_256
                                    if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_1536 > (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512
                                    emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                if (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                if not claim[address(msg.sender)].field_256:
                                    if claim[address(msg.sender)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                    emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                                else:
                                    require claim[address(msg.sender)].field_256
                                    if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_1536 > (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512
                                    emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                        else:
                            if claim[address(msg.sender)].field_768 <= block.timestamp:
                                if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                if claim[address(msg.sender)].field_1024 > block.timestamp:
                                    if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                    emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                                else:
                                    if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                        if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                        if not claim[address(msg.sender)].field_256:
                                            if claim[address(msg.sender)].field_1536 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -claim[address(msg.sender)].field_1536
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if 0 < claim[address(msg.sender)].field_1536:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if claim[address(msg.sender)].field_256 != 0:
                                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                            else:
                                                claim[address(msg.sender)].field_0 = 0
                                            claim[address(msg.sender)].field_1536 = 0
                                            emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                        else:
                                            require claim[address(msg.sender)].field_256
                                            if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                            else:
                                                claim[address(msg.sender)].field_0 = 0
                                            claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                            emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                                    else:
                                        require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                        if (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                        if not claim[address(msg.sender)].field_256:
                                            if claim[address(msg.sender)].field_1536 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -claim[address(msg.sender)].field_1536
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if 0 < claim[address(msg.sender)].field_1536:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if claim[address(msg.sender)].field_256 != 0:
                                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                            else:
                                                claim[address(msg.sender)].field_0 = 0
                                            claim[address(msg.sender)].field_1536 = 0
                                            emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                        else:
                                            require claim[address(msg.sender)].field_256
                                            if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                            else:
                                                claim[address(msg.sender)].field_0 = 0
                                            claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                            emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * claim[address(msg.sender)].field_1280) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                else:
                    if claim[address(msg.sender)].field_768 > block.timestamp:
                        if claim[address(msg.sender)].field_768 <= block.timestamp:
                            if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                            else:
                                claim[address(msg.sender)].field_0 = 0
                            claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                            emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                        else:
                            if claim[address(msg.sender)].field_1024 > block.timestamp:
                                if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if claim[address(msg.sender)].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - claim[address(msg.sender)].field_1024:
                                    if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                    if not claim[address(msg.sender)].field_256:
                                        if claim[address(msg.sender)].field_1536 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if 0 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 != 0:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = 0
                                        emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                    else:
                                        require claim[address(msg.sender)].field_256
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                        emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                                else:
                                    require block.timestamp - claim[address(msg.sender)].field_1024
                                    if (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / block.timestamp - claim[address(msg.sender)].field_1024 != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                    if not claim[address(msg.sender)].field_256:
                                        if claim[address(msg.sender)].field_1536 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if 0 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 != 0:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = 0
                                        emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                    else:
                                        require claim[address(msg.sender)].field_256
                                        if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                            claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                        else:
                                            claim[address(msg.sender)].field_0 = 0
                                        claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                        emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                    else:
                        if claim[address(msg.sender)].field_1024 <= block.timestamp:
                            if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if claim[address(msg.sender)].field_1024 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.timestamp - claim[address(msg.sender)].field_1024:
                                if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                if not claim[address(msg.sender)].field_256:
                                    if claim[address(msg.sender)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                    emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                                else:
                                    require claim[address(msg.sender)].field_256
                                    if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_1536 > (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512
                                    emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                require block.timestamp - claim[address(msg.sender)].field_1024
                                if (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / block.timestamp - claim[address(msg.sender)].field_1024 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                if not claim[address(msg.sender)].field_256:
                                    if claim[address(msg.sender)].field_512 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                    emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                                else:
                                    require claim[address(msg.sender)].field_256
                                    if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_1536 > (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512
                                    emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) + claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                        else:
                            if claim[address(msg.sender)].field_768 <= block.timestamp:
                                if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                    claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                else:
                                    claim[address(msg.sender)].field_0 = 0
                                claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                            else:
                                if claim[address(msg.sender)].field_1024 > block.timestamp:
                                    if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if claim[address(msg.sender)].field_512 < claim[address(msg.sender)].field_1536:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if claim[address(msg.sender)].field_512 != claim[address(msg.sender)].field_256:
                                        claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                    else:
                                        claim[address(msg.sender)].field_0 = 0
                                    claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_512
                                    emit Claimed(msg.sender, claim[address(msg.sender)].field_512 - claim[address(msg.sender)].field_1536);
                                else:
                                    if claim[address(msg.sender)].field_1024 > claim[address(msg.sender)].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if claim[address(msg.sender)].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - claim[address(msg.sender)].field_1024:
                                        if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                        if not claim[address(msg.sender)].field_256:
                                            if claim[address(msg.sender)].field_1536 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -claim[address(msg.sender)].field_1536
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if 0 < claim[address(msg.sender)].field_1536:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if claim[address(msg.sender)].field_256 != 0:
                                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                            else:
                                                claim[address(msg.sender)].field_0 = 0
                                            claim[address(msg.sender)].field_1536 = 0
                                            emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                        else:
                                            require claim[address(msg.sender)].field_256
                                            if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                            else:
                                                claim[address(msg.sender)].field_0 = 0
                                            claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                            emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * 0 / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
                                    else:
                                        require block.timestamp - claim[address(msg.sender)].field_1024
                                        if (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / block.timestamp - claim[address(msg.sender)].field_1024 != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        if claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024
                                        if not claim[address(msg.sender)].field_256:
                                            if claim[address(msg.sender)].field_1536 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -claim[address(msg.sender)].field_1536
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if 0 < claim[address(msg.sender)].field_1536:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if claim[address(msg.sender)].field_256 != 0:
                                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                            else:
                                                claim[address(msg.sender)].field_0 = 0
                                            claim[address(msg.sender)].field_1536 = 0
                                            emit Claimed(msg.sender, -claim[address(msg.sender)].field_1536);
                                        else:
                                            require claim[address(msg.sender)].field_256
                                            if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / claim[address(msg.sender)].field_256 != (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                            if claim[address(msg.sender)].field_1536 > claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 < claim[address(msg.sender)].field_1536:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18 != claim[address(msg.sender)].field_256:
                                                claim[address(msg.sender)].field_0 = uint8(bool(claim[address(msg.sender)].field_0))
                                            else:
                                                claim[address(msg.sender)].field_0 = 0
                                            claim[address(msg.sender)].field_1536 = claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18
                                            emit Claimed(msg.sender, (claim[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * claim[address(msg.sender)].field_1024) / claim[address(msg.sender)].field_1280 - claim[address(msg.sender)].field_1024 / 10^18) - claim[address(msg.sender)].field_1536);
    stor3 = 1
}



}
