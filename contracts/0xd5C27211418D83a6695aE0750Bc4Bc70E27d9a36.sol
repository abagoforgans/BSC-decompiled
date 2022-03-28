contract main {




// =====================  Runtime code  =====================


#
#  - onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const SAFE_MULTIPLIER = 10^16


address owner;
uint256 stor1;
mapping of uint8 stor2;
address alpaAddress;
address cryptoAlpacaAddress;
address supplierAddress;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 maxAlpacaSquadCount;
mapping of struct userInfo;
array of struct stor11;
mapping of uint256 stor12;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[Mask(32, 224, arg1)])
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_544
}

function cryptoAlpaca() payable {
    return cryptoAlpacaAddress
}

function maxAlpacaSquadCount() payable {
    return maxAlpacaSquadCount
}

function supplier() payable {
    return supplierAddress
}

function alpa() payable {
    return alpaAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function rewardInfo() payable {
    return stor6, stor7, stor8
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxAlpacaSquadCount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxAlpacaSquadCount = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updatePool() payable {
    if block.number > stor6:
        if stor8:
            require ext_code.size(supplierAddress)
            call supplierAddress.distribute(uint256 rg1) with:
                 gas gas_remaining wei
                args stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not stor8:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / stor8) + stor7 < stor7:
                    revert with 0, 'SafeMath: addition overflow'
                stor7 += 0 / stor8
            else:
                if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not stor8:
                    revert with 0, 'SafeMath: division by zero'
                if (10^16 * ext_call.return_data[0] / stor8) + stor7 < stor7:
                    revert with 0, 'SafeMath: addition overflow'
                stor7 += 10^16 * ext_call.return_data[0] / stor8
        stor6 = block.number
}

function pendingAlpa(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= stor6:
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_0
        if stor7 * userInfo[address(arg1)].field_256 / userInfo[address(arg1)].field_256 != stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_0 > stor7 * userInfo[address(arg1)].field_256 / 10^16:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor7 * userInfo[address(arg1)].field_256 / 10^16) - userInfo[address(arg1)].field_0)
    if not stor8:
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_0
        if stor7 * userInfo[address(arg1)].field_256 / userInfo[address(arg1)].field_256 != stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_0 > stor7 * userInfo[address(arg1)].field_256 / 10^16:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor7 * userInfo[address(arg1)].field_256 / 10^16) - userInfo[address(arg1)].field_0)
    require ext_code.size(supplierAddress)
    staticcall supplierAddress.preview(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args this.address, stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not stor8:
            revert with 0, 'SafeMath: division by zero'
        if (0 / stor8) + stor7 < stor7:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_0
        if (0 / stor8 * userInfo[address(arg1)].field_256) + (stor7 * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != (0 / stor8) + stor7:
            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if userInfo[address(arg1)].field_0 > (0 / stor8 * userInfo[address(arg1)].field_256) + (stor7 * userInfo[address(arg1)].field_256) / 10^16:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / stor8 * userInfo[address(arg1)].field_256) + (stor7 * userInfo[address(arg1)].field_256) / 10^16) - userInfo[address(arg1)].field_0)
    if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor8:
        revert with 0, 'SafeMath: division by zero'
    if (10^16 * ext_call.return_data[0] / stor8) + stor7 < stor7:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_256:
        if userInfo[address(arg1)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_0
    if (10^16 * ext_call.return_data[0] / stor8 * userInfo[address(arg1)].field_256) + (stor7 * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != (10^16 * ext_call.return_data[0] / stor8) + stor7:
        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if userInfo[address(arg1)].field_0 > (10^16 * ext_call.return_data[0] / stor8 * userInfo[address(arg1)].field_256) + (stor7 * userInfo[address(arg1)].field_256) / 10^16:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^16 * ext_call.return_data[0] / stor8 * userInfo[address(arg1)].field_256) + (stor7 * userInfo[address(arg1)].field_256) / 10^16) - userInfo[address(arg1)].field_0)
}

function claim() payable {
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if block.number <= stor6:
        if userInfo[msg.sender].field_544:
            if not userInfo[msg.sender].field_256:
                if userInfo[msg.sender].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[msg.sender].field_0:
                    require ext_code.size(alpaAddress)
                    staticcall alpaAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(alpaAddress)
                    if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                        call alpaAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[msg.sender].field_0
                    else:
                        call alpaAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                    require ext_code.size(alpaAddress)
                    staticcall alpaAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(alpaAddress)
                    if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                        call alpaAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                    else:
                        call alpaAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if not userInfo[msg.sender].field_256:
                userInfo[msg.sender].field_0 = 0
            else:
                if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                userInfo[msg.sender].field_0 = stor7 * userInfo[msg.sender].field_256 / 10^16
    else:
        if not stor8:
            stor6 = block.number
            if userInfo[msg.sender].field_544:
                if not userInfo[msg.sender].field_256:
                    if userInfo[msg.sender].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[msg.sender].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not userInfo[msg.sender].field_256:
                    userInfo[msg.sender].field_0 = 0
                else:
                    if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[msg.sender].field_0 = stor7 * userInfo[msg.sender].field_256 / 10^16
        else:
            require ext_code.size(supplierAddress)
            call supplierAddress.distribute(uint256 rg1) with:
                 gas gas_remaining wei
                args stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not stor8:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / stor8) + stor7 < stor7:
                    revert with 0, 'SafeMath: addition overflow'
                stor7 += 0 / stor8
            else:
                if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not stor8:
                    revert with 0, 'SafeMath: division by zero'
                if (10^16 * ext_call.return_data[0] / stor8) + stor7 < stor7:
                    revert with 0, 'SafeMath: addition overflow'
                stor7 += 10^16 * ext_call.return_data[0] / stor8
            stor6 = block.number
            if userInfo[msg.sender].field_544:
                if not userInfo[msg.sender].field_256:
                    if userInfo[msg.sender].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[msg.sender].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not userInfo[msg.sender].field_256:
                    userInfo[msg.sender].field_0 = 0
                else:
                    if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    userInfo[msg.sender].field_0 = stor7 * userInfo[msg.sender].field_256 / 10^16
    stor1 = 1
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if cryptoAlpacaAddress != msg.sender:
        revert with 0, 
                    32,
                    58,
                    0x416c7061636153717561643a20726563656976656420616c706163612066726f6d20756e61757468656e7469636174656420636f6e7472616300,
                    mem[ceil32(arg5.length) + 254 len 6]
    mem[0] = arg2
    mem[32] = 10
    mem[ceil32(arg5.length) + 128] = 1
    mem[64] = ceil32(arg5.length) + 192
    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    mem[ceil32(arg5.length) + 160] = arg3
    if userInfo[address(arg2)].field_512 + Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] > maxAlpacaSquadCount:
        revert with 0, 'AlpacaSquad: Max alpaca reached'
    _12 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    _3740 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    idx = 0
    s = userInfo[address(arg2)].field_544
    while idx < _3740:
        require idx < mem[ceil32(arg5.length) + 128]
        _3742 = mem[(32 * idx) + ceil32(arg5.length) + 160]
        if 0 == mem[(32 * idx) + ceil32(arg5.length) + 160]:
            revert with 0, 'AlpacaSquad: invalid alpaca'
        require ext_code.size(cryptoAlpacaAddress)
        staticcall cryptoAlpacaAddress.getAlpaca(uint256 rg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + ceil32(arg5.length) + 160]
        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 416
        if ext_call.return_data[384] != 1:
            revert with 0, 32, 33, 0x77416c7061636153717561643a20696e76616c696420616c706163612073746174, ext_call.return_data[101 len 31]
        if ext_call.return_data[352] <= 0:
            revert with 0, 32, 34, 0x73416c7061636153717561643a20696e76616c696420616c7061636120656e657267, ext_call.return_data[102 len 30]
        if ext_call.return_data[352] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = _3742
        mem[32] = 12
        if stor12[_3742]:
            require stor12[_3742] - 1 < stor11.length
            mem[0] = 11
            stor11[stor12[_3742] - 1].field_256 = arg2
            stor11[stor12[_3742] - 1].field_416 = 0
        else:
            _3775 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3775] = _3742
            mem[_3775 + 32] = arg2
            stor11.length++
            stor11[stor11.length].field_0 = _3742
            stor11[stor11.length].field_256 = arg2
            stor11[stor11.length].field_416 = 0
            mem[0] = _3742
            mem[32] = 12
            stor12[_3742] = stor11.length
        idx = idx + 1
        s = ext_call.return_data[352] + s
        continue 
    if not s:
        _3750 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3750] = 26
        mem[_3750 + 32] = 'SafeMath: division by zero'
        if not _12 + userInfo[address(arg2)].field_512:
            revert with 0, 'SafeMath: division by zero'
        if block.number <= stor6:
            if userInfo[address(arg2)].field_544:
                if not userInfo[address(arg2)].field_256:
                    _3800 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3800] = 26
                    mem[_3800 + 32] = 'SafeMath: division by zero'
                    _3851 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3851] = 30
                    mem[_3851 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[address(arg2)].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(arg2)].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if -userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), -userInfo[address(arg2)].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor7 * userInfo[address(arg2)].field_256 / userInfo[address(arg2)].field_256 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3817 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3817] = 26
                    mem[_3817 + 32] = 'SafeMath: division by zero'
                    _3865 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3865] = 30
                    mem[_3865 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[address(arg2)].field_0 > stor7 * userInfo[address(arg2)].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if not stor8:
                stor6 = block.number
                if userInfo[address(arg2)].field_544:
                    if not userInfo[address(arg2)].field_256:
                        _3807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3807] = 26
                        mem[_3807 + 32] = 'SafeMath: division by zero'
                        _3855 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3855] = 30
                        mem[_3855 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[address(arg2)].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[address(arg2)].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if -userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), -userInfo[address(arg2)].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if stor7 * userInfo[address(arg2)].field_256 / userInfo[address(arg2)].field_256 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3826 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3826] = 26
                        mem[_3826 + 32] = 'SafeMath: division by zero'
                        _3873 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3873] = 30
                        mem[_3873 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[address(arg2)].field_0 > stor7 * userInfo[address(arg2)].field_256 / 10^16:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                require ext_code.size(supplierAddress)
                call supplierAddress.distribute(uint256 rg1) with:
                     gas gas_remaining wei
                    args stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    _3805 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3805] = 26
                    mem[_3805 + 32] = 'SafeMath: division by zero'
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / stor8) + stor7 < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 0 / stor8
                    stor6 = block.number
                    if userInfo[address(arg2)].field_544:
                        if not userInfo[address(arg2)].field_256:
                            _4087 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4087] = 26
                            mem[_4087 + 32] = 'SafeMath: division by zero'
                            _4305 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4305] = 30
                            mem[_4305 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[address(arg2)].field_0 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[address(arg2)].field_0:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(alpaAddress)
                                if -userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), -userInfo[address(arg2)].field_0
                                else:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if stor7 * userInfo[address(arg2)].field_256 / userInfo[address(arg2)].field_256 != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _4170 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4170] = 26
                            mem[_4170 + 32] = 'SafeMath: division by zero'
                            _4330 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4330] = 30
                            mem[_4330 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[address(arg2)].field_0 > stor7 * userInfo[address(arg2)].field_256 / 10^16:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(alpaAddress)
                                if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0
                                else:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3821 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3821] = 26
                    mem[_3821 + 32] = 'SafeMath: division by zero'
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^16 * ext_call.return_data[0] / stor8) + stor7 < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 10^16 * ext_call.return_data[0] / stor8
                    stor6 = block.number
                    if userInfo[address(arg2)].field_544:
                        if not userInfo[address(arg2)].field_256:
                            _4168 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4168] = 26
                            mem[_4168 + 32] = 'SafeMath: division by zero'
                            _4329 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4329] = 30
                            mem[_4329 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[address(arg2)].field_0 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[address(arg2)].field_0:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(alpaAddress)
                                if -userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), -userInfo[address(arg2)].field_0
                                else:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if stor7 * userInfo[address(arg2)].field_256 / userInfo[address(arg2)].field_256 != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _4243 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4243] = 26
                            mem[_4243 + 32] = 'SafeMath: division by zero'
                            _4380 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4380] = 30
                            mem[_4380 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[address(arg2)].field_0 > stor7 * userInfo[address(arg2)].field_256 / 10^16:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(alpaAddress)
                                if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0
                                else:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
        if not 0 / _12 + userInfo[address(arg2)].field_512:
            userInfo[address(arg2)].field_0 = 0
        else:
            if stor7 * 0 / _12 + userInfo[address(arg2)].field_512 / 0 / _12 + userInfo[address(arg2)].field_512 != stor7:
                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            userInfo[address(arg2)].field_0 = stor7 * 0 / _12 + userInfo[address(arg2)].field_512 / 10^16
        if (0 / _12 + userInfo[address(arg2)].field_512) + stor8 < stor8:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64]] = 30
        mem[mem[64] + 32] = 'SafeMath: subtraction overflow'
        if userInfo[address(arg2)].field_256 > (0 / _12 + userInfo[address(arg2)].field_512) + stor8:
            revert with 0, 'SafeMath: subtraction overflow'
        stor8 = (0 / _12 + userInfo[address(arg2)].field_512) + stor8 - userInfo[address(arg2)].field_256
        userInfo[address(arg2)].field_256 = 0 / _12 + userInfo[address(arg2)].field_512
    else:
        if s * s / s != s:
            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _3755 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3755] = 26
        mem[_3755 + 32] = 'SafeMath: division by zero'
        if not _12 + userInfo[address(arg2)].field_512:
            revert with 0, 'SafeMath: division by zero'
        if block.number <= stor6:
            if userInfo[address(arg2)].field_544:
                if not userInfo[address(arg2)].field_256:
                    _3815 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3815] = 26
                    mem[_3815 + 32] = 'SafeMath: division by zero'
                    _3860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3860] = 30
                    mem[_3860 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[address(arg2)].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(arg2)].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if -userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), -userInfo[address(arg2)].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor7 * userInfo[address(arg2)].field_256 / userInfo[address(arg2)].field_256 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3828] = 26
                    mem[_3828 + 32] = 'SafeMath: division by zero'
                    _3884 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3884] = 30
                    mem[_3884 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[address(arg2)].field_0 > stor7 * userInfo[address(arg2)].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if not stor8:
                stor6 = block.number
                if userInfo[address(arg2)].field_544:
                    if not userInfo[address(arg2)].field_256:
                        _3820 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3820] = 26
                        mem[_3820 + 32] = 'SafeMath: division by zero'
                        _3870 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3870] = 30
                        mem[_3870 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[address(arg2)].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[address(arg2)].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if -userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), -userInfo[address(arg2)].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if stor7 * userInfo[address(arg2)].field_256 / userInfo[address(arg2)].field_256 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3834 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3834] = 26
                        mem[_3834 + 32] = 'SafeMath: division by zero'
                        _3899 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3899] = 30
                        mem[_3899 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[address(arg2)].field_0 > stor7 * userInfo[address(arg2)].field_256 / 10^16:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                require ext_code.size(supplierAddress)
                call supplierAddress.distribute(uint256 rg1) with:
                     gas gas_remaining wei
                    args stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    _3818 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3818] = 26
                    mem[_3818 + 32] = 'SafeMath: division by zero'
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / stor8) + stor7 < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 0 / stor8
                    stor6 = block.number
                    if userInfo[address(arg2)].field_544:
                        if not userInfo[address(arg2)].field_256:
                            _4149 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4149] = 26
                            mem[_4149 + 32] = 'SafeMath: division by zero'
                            _4324 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4324] = 30
                            mem[_4324 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[address(arg2)].field_0 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[address(arg2)].field_0:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(alpaAddress)
                                if -userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), -userInfo[address(arg2)].field_0
                                else:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if stor7 * userInfo[address(arg2)].field_256 / userInfo[address(arg2)].field_256 != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _4224 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4224] = 26
                            mem[_4224 + 32] = 'SafeMath: division by zero'
                            _4368 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4368] = 30
                            mem[_4368 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[address(arg2)].field_0 > stor7 * userInfo[address(arg2)].field_256 / 10^16:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(alpaAddress)
                                if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0
                                else:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3829] = 26
                    mem[_3829 + 32] = 'SafeMath: division by zero'
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^16 * ext_call.return_data[0] / stor8) + stor7 < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 10^16 * ext_call.return_data[0] / stor8
                    stor6 = block.number
                    if userInfo[address(arg2)].field_544:
                        if not userInfo[address(arg2)].field_256:
                            _4222 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4222] = 26
                            mem[_4222 + 32] = 'SafeMath: division by zero'
                            _4367 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4367] = 30
                            mem[_4367 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[address(arg2)].field_0 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[address(arg2)].field_0:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(alpaAddress)
                                if -userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), -userInfo[address(arg2)].field_0
                                else:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if stor7 * userInfo[address(arg2)].field_256 / userInfo[address(arg2)].field_256 != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _4272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4272] = 26
                            mem[_4272 + 32] = 'SafeMath: division by zero'
                            _4431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4431] = 30
                            mem[_4431 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[address(arg2)].field_0 > stor7 * userInfo[address(arg2)].field_256 / 10^16:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(alpaAddress)
                                if (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0 <= ext_call.return_data[0]:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), (stor7 * userInfo[address(arg2)].field_256 / 10^16) - userInfo[address(arg2)].field_0
                                else:
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
        if not s * s / _12 + userInfo[address(arg2)].field_512:
            userInfo[address(arg2)].field_0 = 0
        else:
            if stor7 * s * s / _12 + userInfo[address(arg2)].field_512 / s * s / _12 + userInfo[address(arg2)].field_512 != stor7:
                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            userInfo[address(arg2)].field_0 = stor7 * s * s / _12 + userInfo[address(arg2)].field_512 / 10^16
        if (s * s / _12 + userInfo[address(arg2)].field_512) + stor8 < stor8:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64]] = 30
        mem[mem[64] + 32] = 'SafeMath: subtraction overflow'
        if userInfo[address(arg2)].field_256 > (s * s / _12 + userInfo[address(arg2)].field_512) + stor8:
            revert with 0, 'SafeMath: subtraction overflow'
        stor8 = (s * s / _12 + userInfo[address(arg2)].field_512) + stor8 - userInfo[address(arg2)].field_256
        userInfo[address(arg2)].field_256 = s * s / _12 + userInfo[address(arg2)].field_512
    userInfo[address(arg2)].field_512 = uint32(_12 + userInfo[address(arg2)].field_512)
    userInfo[address(arg2)].field_544 = uint32(s)
    if mem[96] <= 0:
        require ext_code.size(cryptoAlpacaAddress)
        call cryptoAlpacaAddress.0xd8fb4ea with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require 0 < mem[96]
        if uint8(mem[128]) >> 248 != 1:
            require ext_code.size(cryptoAlpacaAddress)
            call cryptoAlpacaAddress.0xd8fb4ea with:
                 gas gas_remaining wei
                args address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onCryptoAlpacaEnergyChanged(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if cryptoAlpacaAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x416c7061636153717561643a20726563656976656420616c706163612066726f6d20756e61757468656e7469636174656420636f6e7472616300,
                    mem[222 len 6]
    if not stor12[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65416c7061636153717561643a206f726967696e616c206f776e6572206e6f7420666f756e,
                    mem[201 len 27]
    if not stor12[arg1]:
        revert with 0, 'EnumerableMap: nonexistent key'
    require stor12[arg1] - 1 < stor11.length
    if arg3 + userInfo[stor11[stor12[arg1] - 1].field_256].field_544 < userInfo[stor11[stor12[arg1] - 1].field_256].field_544:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 > arg3 + userInfo[stor11[stor12[arg1] - 1].field_256].field_544:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg3 + userInfo[stor11[stor12[arg1] - 1].field_256].field_544 - arg2:
        if not userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
            revert with 0, 'SafeMath: division by zero'
        if block.number <= stor6:
            if not userInfo[stor11[stor12[arg1] - 1].field_256].field_544:
                if not 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                    userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                else:
                    if stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
            else:
                if not userInfo[stor11[stor12[arg1] - 1].field_256].field_256:
                    if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11[stor12[arg1] - 1].field_256, -userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / userInfo[stor11[stor12[arg1] - 1].field_256].field_256 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11[stor12[arg1] - 1].field_256, (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                    userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                else:
                    if stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
        else:
            if not stor8:
                stor6 = block.number
                if not userInfo[stor11[stor12[arg1] - 1].field_256].field_544:
                    if not 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                    else:
                        if stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
                else:
                    if not userInfo[stor11[stor12[arg1] - 1].field_256].field_256:
                        if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, -userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / userInfo[stor11[stor12[arg1] - 1].field_256].field_256 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                    else:
                        if stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
            else:
                require ext_code.size(supplierAddress)
                call supplierAddress.distribute(uint256 rg1) with:
                     gas gas_remaining wei
                    args stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / stor8) + stor7 < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 0 / stor8
                else:
                    if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^16 * ext_call.return_data[0] / stor8) + stor7 < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 10^16 * ext_call.return_data[0] / stor8
                stor6 = block.number
                if not userInfo[stor11[stor12[arg1] - 1].field_256].field_544:
                    if not 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                    else:
                        if stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
                else:
                    if not userInfo[stor11[stor12[arg1] - 1].field_256].field_256:
                        if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, -userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / userInfo[stor11[stor12[arg1] - 1].field_256].field_256 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                    else:
                        if stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
        if (0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512) + stor8 < stor8:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[stor11[stor12[arg1] - 1].field_256].field_256 > (0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512) + stor8:
            revert with 0, 'SafeMath: subtraction overflow'
        stor8 = (0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512) + stor8 - userInfo[stor11[stor12[arg1] - 1].field_256].field_256
        userInfo[stor11[stor12[arg1] - 1].field_256].field_256 = 0 / userInfo[stor11[stor12[arg1] - 1].field_256].field_512
    else:
        if (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / arg3 + userInfo[stor11[stor12[arg1] - 1].field_256].field_544 - arg2 != arg3 + userInfo[stor11[stor12[arg1] - 1].field_256].field_544 - arg2:
            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
            revert with 0, 'SafeMath: division by zero'
        if block.number <= stor6:
            if not userInfo[stor11[stor12[arg1] - 1].field_256].field_544:
                if not (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                    userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                else:
                    if stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
            else:
                if not userInfo[stor11[stor12[arg1] - 1].field_256].field_256:
                    if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11[stor12[arg1] - 1].field_256, -userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / userInfo[stor11[stor12[arg1] - 1].field_256].field_256 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(alpaAddress)
                        if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11[stor12[arg1] - 1].field_256, (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                        else:
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                    userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                else:
                    if stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
        else:
            if not stor8:
                stor6 = block.number
                if not userInfo[stor11[stor12[arg1] - 1].field_256].field_544:
                    if not (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                    else:
                        if stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
                else:
                    if not userInfo[stor11[stor12[arg1] - 1].field_256].field_256:
                        if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, -userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / userInfo[stor11[stor12[arg1] - 1].field_256].field_256 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                    else:
                        if stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
            else:
                require ext_code.size(supplierAddress)
                call supplierAddress.distribute(uint256 rg1) with:
                     gas gas_remaining wei
                    args stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / stor8) + stor7 < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 0 / stor8
                else:
                    if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^16 * ext_call.return_data[0] / stor8) + stor7 < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 10^16 * ext_call.return_data[0] / stor8
                stor6 = block.number
                if not userInfo[stor11[stor12[arg1] - 1].field_256].field_544:
                    if not (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                    else:
                        if stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
                else:
                    if not userInfo[stor11[stor12[arg1] - 1].field_256].field_256:
                        if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if -userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, -userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / userInfo[stor11[stor12[arg1] - 1].field_256].field_256 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[stor11[stor12[arg1] - 1].field_256].field_0 > stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(alpaAddress)
                            if (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0 <= ext_call.return_data[0]:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, (stor7 * userInfo[stor11[stor12[arg1] - 1].field_256].field_256 / 10^16) - userInfo[stor11[stor12[arg1] - 1].field_256].field_0
                            else:
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11[stor12[arg1] - 1].field_256, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512:
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = 0
                    else:
                        if stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        userInfo[stor11[stor12[arg1] - 1].field_256].field_0 = stor7 * (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512 / 10^16
        if ((arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512) + stor8 < stor8:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[stor11[stor12[arg1] - 1].field_256].field_256 > ((arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512) + stor8:
            revert with 0, 'SafeMath: subtraction overflow'
        stor8 = ((arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512) + stor8 - userInfo[stor11[stor12[arg1] - 1].field_256].field_256
        userInfo[stor11[stor12[arg1] - 1].field_256].field_256 = (arg3 * arg3) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg3) - (arg2 * arg3) + (arg3 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) + (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg2 * userInfo[stor11[stor12[arg1] - 1].field_256].field_544) - (arg3 * arg2) - (userInfo[stor11[stor12[arg1] - 1].field_256].field_544 * arg2) + (arg2 * arg2) / userInfo[stor11[stor12[arg1] - 1].field_256].field_512
    userInfo[stor11[stor12[arg1] - 1].field_256].field_544 = uint32(arg3 + userInfo[stor11[stor12[arg1] - 1].field_256].field_544 - arg2)
}

function retrieve(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not arg1.length:
        revert with 0, 'AlpacaSquad: invalid argument'
    mem[0] = msg.sender
    mem[32] = 10
    mem[64] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 128] = 30
    mem[(32 * arg1.length) + 160] = 'SafeMath: subtraction overflow'
    if arg1.length > userInfo[msg.sender].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    idx = 0
    s = userInfo[msg.sender].field_544
    while idx < arg1.length:
        require idx < mem[96]
        _4669 = mem[(32 * idx) + 128]
        _4673 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4673] = 30
        mem[_4673 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 12
        if not stor12[_4669]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'EnumerableMap: nonexistent key'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _4673 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'EnumerableMap: nonexistent key'
        require stor12[_4669] - 1 < stor11.length
        mem[0] = 11
        if stor11[stor12[_4669] - 1].field_256 != msg.sender:
            revert with 0, 32, 37, 0x65416c7061636153717561643a206f726967696e616c206f776e6572206e6f7420666f756e, mem[mem[64] + 105 len 27]
        require ext_code.size(cryptoAlpacaAddress)
        staticcall cryptoAlpacaAddress.getAlpaca(uint256 rg1) with:
                gas gas_remaining wei
               args _4669
        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 416
        _4730 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4730] = 30
        mem[_4730 + 32] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[352] <= s:
            idx = idx + 1
            s = s - ext_call.return_data[352]
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
        idx = 32
        while idx < 30:
            mem[idx + mem[64] + 68] = mem[idx + _4730 + 32]
            idx = idx + 32
            continue 
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[msg.sender].field_512 - arg1.length:
        if block.number <= stor6:
            if not userInfo[msg.sender].field_256:
                _4706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4706] = 26
                mem[_4706 + 32] = 'SafeMath: division by zero'
                _4744 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4744] = 30
                mem[_4744 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[msg.sender].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[msg.sender].field_0:
                    _4862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4862] = 26
                    mem[_4862 + 32] = 'SafeMath: division by zero'
                    userInfo[msg.sender].field_0 = 0
                    if stor8 < stor8:
                        revert with 0, 'SafeMath: addition overflow'
                    _5055 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5055] = 30
                    mem[_5055 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_256 > stor8:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor8 -= userInfo[msg.sender].field_256
                    userInfo[msg.sender].field_256 = 0
                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                    userInfo[msg.sender].field_544 = uint32(s)
                    _9334 = mem[96]
                    idx = 0
                    while idx < _9334:
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 12
                        if not stor12[mem[(32 * idx) + 128]]:
                            require idx < mem[96]
                            _11192 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _11192
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(cryptoAlpacaAddress)
                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _11192, 1, 160, 0, mem[mem[64] + 196]
                        else:
                            require stor11.length - 1 < stor11.length
                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                            require stor11.length
                            stor11[stor11.length - 1].field_0 = 0
                            stor11[stor11.length - 1].field_256 = 0
                            stor11.length--
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 12
                            stor12[mem[(32 * idx) + 128]] = 0
                            require idx < mem[96]
                            _11672 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _11672
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(cryptoAlpacaAddress)
                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _11672, 1, 160, 0, mem[mem[64] + 196]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    require ext_code.size(alpaAddress)
                    staticcall alpaAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = msg.sender
                    if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                        mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                        require ext_code.size(alpaAddress)
                        call alpaAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[msg.sender].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _5010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5010] = 26
                        mem[_5010 + 32] = 'SafeMath: division by zero'
                        userInfo[msg.sender].field_0 = 0
                        if stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        _5328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5328] = 30
                        mem[_5328 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_256 > stor8:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor8 -= userInfo[msg.sender].field_256
                        userInfo[msg.sender].field_256 = 0
                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                        userInfo[msg.sender].field_544 = uint32(s)
                        _9335 = mem[96]
                        idx = 0
                        while idx < _9335:
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 12
                            if not stor12[mem[(32 * idx) + 128]]:
                                require idx < mem[96]
                                _11195 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11195
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11195, 1, 160, 0, mem[mem[64] + 196]
                            else:
                                require stor11.length - 1 < stor11.length
                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                require stor11.length
                                stor11[stor11.length - 1].field_0 = 0
                                stor11[stor11.length - 1].field_256 = 0
                                stor11.length--
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                stor12[mem[(32 * idx) + 128]] = 0
                                require idx < mem[96]
                                _11675 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11675
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11675, 1, 160, 0, mem[mem[64] + 196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        require ext_code.size(alpaAddress)
                        call alpaAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _5011 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5011] = 26
                        mem[_5011 + 32] = 'SafeMath: division by zero'
                        userInfo[msg.sender].field_0 = 0
                        if stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        _5329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5329] = 30
                        mem[_5329 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_256 > stor8:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor8 -= userInfo[msg.sender].field_256
                        userInfo[msg.sender].field_256 = 0
                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                        userInfo[msg.sender].field_544 = uint32(s)
                        _9336 = mem[96]
                        idx = 0
                        while idx < _9336:
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 12
                            if not stor12[mem[(32 * idx) + 128]]:
                                require idx < mem[96]
                                _11198 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11198
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11198, 1, 160, 0, mem[mem[64] + 196]
                            else:
                                require stor11.length - 1 < stor11.length
                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                require stor11.length
                                stor11[stor11.length - 1].field_0 = 0
                                stor11[stor11.length - 1].field_256 = 0
                                stor11.length--
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                stor12[mem[(32 * idx) + 128]] = 0
                                require idx < mem[96]
                                _11678 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11678
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11678, 1, 160, 0, mem[mem[64] + 196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _4719 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4719] = 26
                mem[_4719 + 32] = 'SafeMath: division by zero'
                _4756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4756] = 30
                mem[_4756 + 32] = 'SafeMath: subtraction overflow'
                if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                    _4887 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4887] = 26
                    mem[_4887 + 32] = 'SafeMath: division by zero'
                    userInfo[msg.sender].field_0 = 0
                    if stor8 < stor8:
                        revert with 0, 'SafeMath: addition overflow'
                    _5106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5106] = 30
                    mem[_5106 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_256 > stor8:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor8 -= userInfo[msg.sender].field_256
                    userInfo[msg.sender].field_256 = 0
                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                    userInfo[msg.sender].field_544 = uint32(s)
                    _9331 = mem[96]
                    idx = 0
                    while idx < _9331:
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 12
                        if not stor12[mem[(32 * idx) + 128]]:
                            require idx < mem[96]
                            _11183 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _11183
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(cryptoAlpacaAddress)
                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _11183, 1, 160, 0, mem[mem[64] + 196]
                        else:
                            require stor11.length - 1 < stor11.length
                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                            require stor11.length
                            stor11[stor11.length - 1].field_0 = 0
                            stor11[stor11.length - 1].field_256 = 0
                            stor11.length--
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 12
                            stor12[mem[(32 * idx) + 128]] = 0
                            require idx < mem[96]
                            _11663 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _11663
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(cryptoAlpacaAddress)
                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _11663, 1, 160, 0, mem[mem[64] + 196]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    require ext_code.size(alpaAddress)
                    staticcall alpaAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = msg.sender
                    if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                        mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                        require ext_code.size(alpaAddress)
                        call alpaAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _5053 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5053] = 26
                        mem[_5053 + 32] = 'SafeMath: division by zero'
                        userInfo[msg.sender].field_0 = 0
                        if stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        _5375 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5375] = 30
                        mem[_5375 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_256 > stor8:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor8 -= userInfo[msg.sender].field_256
                        userInfo[msg.sender].field_256 = 0
                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                        userInfo[msg.sender].field_544 = uint32(s)
                        _9332 = mem[96]
                        idx = 0
                        while idx < _9332:
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 12
                            if not stor12[mem[(32 * idx) + 128]]:
                                require idx < mem[96]
                                _11186 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11186
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11186, 1, 160, 0, mem[mem[64] + 196]
                            else:
                                require stor11.length - 1 < stor11.length
                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                require stor11.length
                                stor11[stor11.length - 1].field_0 = 0
                                stor11[stor11.length - 1].field_256 = 0
                                stor11.length--
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                stor12[mem[(32 * idx) + 128]] = 0
                                require idx < mem[96]
                                _11666 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11666
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11666, 1, 160, 0, mem[mem[64] + 196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        require ext_code.size(alpaAddress)
                        call alpaAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _5054 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5054] = 26
                        mem[_5054 + 32] = 'SafeMath: division by zero'
                        userInfo[msg.sender].field_0 = 0
                        if stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        _5376 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5376] = 30
                        mem[_5376 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_256 > stor8:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor8 -= userInfo[msg.sender].field_256
                        userInfo[msg.sender].field_256 = 0
                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                        userInfo[msg.sender].field_544 = uint32(s)
                        _9333 = mem[96]
                        idx = 0
                        while idx < _9333:
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 12
                            if not stor12[mem[(32 * idx) + 128]]:
                                require idx < mem[96]
                                _11189 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11189
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11189, 1, 160, 0, mem[mem[64] + 196]
                            else:
                                require stor11.length - 1 < stor11.length
                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                require stor11.length
                                stor11[stor11.length - 1].field_0 = 0
                                stor11[stor11.length - 1].field_256 = 0
                                stor11.length--
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                stor12[mem[(32 * idx) + 128]] = 0
                                require idx < mem[96]
                                _11669 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11669
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11669, 1, 160, 0, mem[mem[64] + 196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
        else:
            if not stor8:
                stor6 = block.number
                if not userInfo[msg.sender].field_256:
                    _4711 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4711] = 26
                    mem[_4711 + 32] = 'SafeMath: division by zero'
                    _4751 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4751] = 30
                    mem[_4751 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -userInfo[msg.sender].field_0:
                        _4871 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4871] = 26
                        mem[_4871 + 32] = 'SafeMath: division by zero'
                        userInfo[msg.sender].field_0 = 0
                        if stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        _5084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5084] = 30
                        mem[_5084 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_256 > stor8:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor8 -= userInfo[msg.sender].field_256
                        userInfo[msg.sender].field_256 = 0
                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                        userInfo[msg.sender].field_544 = uint32(s)
                        _9328 = mem[96]
                        idx = 0
                        while idx < _9328:
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 12
                            if not stor12[mem[(32 * idx) + 128]]:
                                require idx < mem[96]
                                _11174 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11174
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11174, 1, 160, 0, mem[mem[64] + 196]
                            else:
                                require stor11.length - 1 < stor11.length
                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                require stor11.length
                                stor11[stor11.length - 1].field_0 = 0
                                stor11[stor11.length - 1].field_256 = 0
                                stor11.length--
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                stor12[mem[(32 * idx) + 128]] = 0
                                require idx < mem[96]
                                _11654 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11654
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11654, 1, 160, 0, mem[mem[64] + 196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = msg.sender
                        if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _5032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5032] = 26
                            mem[_5032 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5341 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5341] = 30
                            mem[_5341 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 -= userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9329 = mem[96]
                            idx = 0
                            while idx < _9329:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11177 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11177
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11177, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11657 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11657
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11657, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _5033 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5033] = 26
                            mem[_5033 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5342 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5342] = 30
                            mem[_5342 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 -= userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9330 = mem[96]
                            idx = 0
                            while idx < _9330:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11180 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11180
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11180, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11660 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11660
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11660, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4722] = 26
                    mem[_4722 + 32] = 'SafeMath: division by zero'
                    _4765 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4765] = 30
                    mem[_4765 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                        _4901 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4901] = 26
                        mem[_4901 + 32] = 'SafeMath: division by zero'
                        userInfo[msg.sender].field_0 = 0
                        if stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        _5143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5143] = 30
                        mem[_5143 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_256 > stor8:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor8 -= userInfo[msg.sender].field_256
                        userInfo[msg.sender].field_256 = 0
                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                        userInfo[msg.sender].field_544 = uint32(s)
                        _9325 = mem[96]
                        idx = 0
                        while idx < _9325:
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 12
                            if not stor12[mem[(32 * idx) + 128]]:
                                require idx < mem[96]
                                _11165 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11165
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11165, 1, 160, 0, mem[mem[64] + 196]
                            else:
                                require stor11.length - 1 < stor11.length
                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                require stor11.length
                                stor11[stor11.length - 1].field_0 = 0
                                stor11[stor11.length - 1].field_256 = 0
                                stor11.length--
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                stor12[mem[(32 * idx) + 128]] = 0
                                require idx < mem[96]
                                _11645 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11645
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(cryptoAlpacaAddress)
                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11645, 1, 160, 0, mem[mem[64] + 196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = msg.sender
                        if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _5082 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5082] = 26
                            mem[_5082 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5407 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5407] = 30
                            mem[_5407 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 -= userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9326 = mem[96]
                            idx = 0
                            while idx < _9326:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11168 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11168
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11168, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11648 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11648
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11648, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _5083 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5083] = 26
                            mem[_5083 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5408 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5408] = 30
                            mem[_5408 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 -= userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9327 = mem[96]
                            idx = 0
                            while idx < _9327:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11171 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11171
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11171, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11651 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11651
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11651, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[mem[64] + 4] = stor6
                require ext_code.size(supplierAddress)
                call supplierAddress.distribute(uint256 rg1) with:
                     gas gas_remaining wei
                    args stor6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    _4718 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4718] = 26
                    mem[_4718 + 32] = 'SafeMath: division by zero'
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / stor8) + stor7 < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 0 / stor8
                    stor6 = block.number
                    if not userInfo[msg.sender].field_256:
                        _4869 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4869] = 26
                        mem[_4869 + 32] = 'SafeMath: division by zero'
                        _4991 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4991] = 30
                        mem[_4991 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not -userInfo[msg.sender].field_0:
                            _5271 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5271] = 26
                            mem[_5271 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5805 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5805] = 30
                            mem[_5805 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 -= userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9322 = mem[96]
                            idx = 0
                            while idx < _9322:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11156 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11156
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11156, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11636 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11636
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11636, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _5669 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5669] = 26
                                mem[_5669 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6584 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6584] = 30
                                mem[_6584 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 -= userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9323 = mem[96]
                                idx = 0
                                while idx < _9323:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11159 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11159
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11159, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11639 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11639
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11639, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _5670 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5670] = 26
                                mem[_5670 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6585 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6585] = 30
                                mem[_6585 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 -= userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9324 = mem[96]
                                idx = 0
                                while idx < _9324:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11162 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11162
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11162, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11642 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11642
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11642, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4900 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4900] = 26
                        mem[_4900 + 32] = 'SafeMath: division by zero'
                        _5028 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5028] = 30
                        mem[_5028 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                            _5313 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5313] = 26
                            mem[_5313 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5939 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5939] = 30
                            mem[_5939 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 -= userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9319 = mem[96]
                            idx = 0
                            while idx < _9319:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11147 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11147
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11147, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11627 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11627
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11627, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _5803 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5803] = 26
                                mem[_5803 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6810 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6810] = 30
                                mem[_6810 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 -= userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9320 = mem[96]
                                idx = 0
                                while idx < _9320:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11150 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11150
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11150, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11630 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11630
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11630, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _5804 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5804] = 26
                                mem[_5804 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6811 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6811] = 30
                                mem[_6811 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 -= userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9321 = mem[96]
                                idx = 0
                                while idx < _9321:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11153 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11153
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11153, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11633 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11633
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11633, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4725 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4725] = 26
                    mem[_4725 + 32] = 'SafeMath: division by zero'
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^16 * ext_call.return_data[0] / stor8) + stor7 < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 10^16 * ext_call.return_data[0] / stor8
                    stor6 = block.number
                    if not userInfo[msg.sender].field_256:
                        _4899 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4899] = 26
                        mem[_4899 + 32] = 'SafeMath: division by zero'
                        _5027 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5027] = 30
                        mem[_5027 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not -userInfo[msg.sender].field_0:
                            _5308 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5308] = 26
                            mem[_5308 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5938 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5938] = 30
                            mem[_5938 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 -= userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9316 = mem[96]
                            idx = 0
                            while idx < _9316:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11138 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11138
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11138, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11618 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11618
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11618, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _5801 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5801] = 26
                                mem[_5801 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6807 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6807] = 30
                                mem[_6807 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 -= userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9317 = mem[96]
                                idx = 0
                                while idx < _9317:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11141 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11141
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11141, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11621 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11621
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11621, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _5802 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5802] = 26
                                mem[_5802 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6808 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6808] = 30
                                mem[_6808 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 -= userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9318 = mem[96]
                                idx = 0
                                while idx < _9318:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11144 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11144
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11144, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11624 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11624
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11624, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4928] = 26
                        mem[_4928 + 32] = 'SafeMath: division by zero'
                        _5073 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5073] = 30
                        mem[_5073 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                            _5365 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5365] = 26
                            mem[_5365 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _6071 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6071] = 30
                            mem[_6071 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 -= userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9313 = mem[96]
                            idx = 0
                            while idx < _9313:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11129 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11129
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11129, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11609 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11609
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11609, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _5936 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5936] = 26
                                mem[_5936 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _7011 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7011] = 30
                                mem[_7011 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 -= userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9314 = mem[96]
                                idx = 0
                                while idx < _9314:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11132 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11132
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11132, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11612 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11612
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11612, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _5937 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5937] = 26
                                mem[_5937 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _7012 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7012] = 30
                                mem[_7012 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 -= userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9315 = mem[96]
                                idx = 0
                                while idx < _9315:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11135 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11135
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11135, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11615 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11615
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11615, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
    else:
        if not s:
            _4682 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4682] = 26
            mem[_4682 + 32] = 'SafeMath: division by zero'
            if not userInfo[msg.sender].field_512 - arg1.length:
                revert with 0, 'SafeMath: division by zero'
            if block.number <= stor6:
                if not userInfo[msg.sender].field_256:
                    _4783 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4783] = 26
                    mem[_4783 + 32] = 'SafeMath: division by zero'
                    _4883 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4883] = 30
                    mem[_4883 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -userInfo[msg.sender].field_0:
                        if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                            _5068 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5068] = 26
                            mem[_5068 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5403 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5403] = 30
                            mem[_5403 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9428 = mem[96]
                            idx = 0
                            while idx < _9428:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11474 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11474
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11474, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11954 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11954
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11954, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5131 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5131] = 26
                            mem[_5131 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                            if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5493 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5493] = 30
                            mem[_5493 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9427 = mem[96]
                            idx = 0
                            while idx < _9427:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11471 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11471
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11471, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11951 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11951
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11951, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = msg.sender
                        if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                _5336 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5336] = 26
                                mem[_5336 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6014 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6014] = 30
                                mem[_6014 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9430 = mem[96]
                                idx = 0
                                while idx < _9430:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11480 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11480
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11480, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11960 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11960
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11960, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5404 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5404] = 26
                                mem[_5404 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6149 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6149] = 30
                                mem[_6149 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9429 = mem[96]
                                idx = 0
                                while idx < _9429:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11477 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11477
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11477, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11957 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11957
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11957, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                _5337 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5337] = 26
                                mem[_5337 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6015 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6015] = 30
                                mem[_6015 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9432 = mem[96]
                                idx = 0
                                while idx < _9432:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11486 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11486
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11486, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11966 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11966
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11966, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5405 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5405] = 26
                                mem[_5405 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6153 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6153] = 30
                                mem[_6153 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9431 = mem[96]
                                idx = 0
                                while idx < _9431:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11483 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11483
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11483, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11963 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11963
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11963, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4811] = 26
                    mem[_4811 + 32] = 'SafeMath: division by zero'
                    _4912 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4912] = 30
                    mem[_4912 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                        if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                            _5126 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5126] = 26
                            mem[_5126 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5490 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5490] = 30
                            mem[_5490 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9422 = mem[96]
                            idx = 0
                            while idx < _9422:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11456 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11456
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11456, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11936 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11936
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11936, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5195 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5195] = 26
                            mem[_5195 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                            if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5598 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5598] = 30
                            mem[_5598 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9421 = mem[96]
                            idx = 0
                            while idx < _9421:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11453 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11453
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11453, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11933 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11933
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11933, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = msg.sender
                        if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                _5401 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5401] = 26
                                mem[_5401 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6145 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6145] = 30
                                mem[_6145 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9424 = mem[96]
                                idx = 0
                                while idx < _9424:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11462 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11462
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11462, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11942 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11942
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11942, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5491 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5491] = 26
                                mem[_5491 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6274 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6274] = 30
                                mem[_6274 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9423 = mem[96]
                                idx = 0
                                while idx < _9423:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11459 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11459
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11459, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11939 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11939
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11939, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                _5402 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5402] = 26
                                mem[_5402 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6146 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6146] = 30
                                mem[_6146 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9426 = mem[96]
                                idx = 0
                                while idx < _9426:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11468 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11468
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11468, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11948 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11948
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11948, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5492 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5492] = 26
                                mem[_5492 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6278 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6278] = 30
                                mem[_6278 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9425 = mem[96]
                                idx = 0
                                while idx < _9425:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11465 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11465
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11465, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11945 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11945
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11945, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
            else:
                if not stor8:
                    stor6 = block.number
                    if not userInfo[msg.sender].field_256:
                        _4799 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4799] = 26
                        mem[_4799 + 32] = 'SafeMath: division by zero'
                        _4898 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4898] = 30
                        mem[_4898 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not -userInfo[msg.sender].field_0:
                            if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                _5094 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5094] = 26
                                mem[_5094 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _5446 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5446] = 30
                                mem[_5446 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9416 = mem[96]
                                idx = 0
                                while idx < _9416:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11438 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11438
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11438, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11918 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11918
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11918, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5165 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5165] = 26
                                mem[_5165 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _5547 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5547] = 30
                                mem[_5547 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9415 = mem[96]
                                idx = 0
                                while idx < _9415:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11435 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11435
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11435, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11915 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11915
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11915, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                    _5355 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5355] = 26
                                    mem[_5355 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6063 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6063] = 30
                                    mem[_6063 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9418 = mem[96]
                                    idx = 0
                                    while idx < _9418:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11444 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11444
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11444, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11924 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11924
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11924, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5447 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5447] = 26
                                    mem[_5447 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6196 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6196] = 30
                                    mem[_6196 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9417 = mem[96]
                                    idx = 0
                                    while idx < _9417:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11441 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11441
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11441, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11921 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11921
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11921, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                    _5356 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5356] = 26
                                    mem[_5356 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6064 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6064] = 30
                                    mem[_6064 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9420 = mem[96]
                                    idx = 0
                                    while idx < _9420:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11450 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11450
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11450, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11930 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11930
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11930, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5448 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5448] = 26
                                    mem[_5448 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6200 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6200] = 30
                                    mem[_6200 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9419 = mem[96]
                                    idx = 0
                                    while idx < _9419:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11447 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11447
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11447, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11927 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11927
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11927, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                    else:
                        if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4824 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4824] = 26
                        mem[_4824 + 32] = 'SafeMath: division by zero'
                        _4923 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4923] = 30
                        mem[_4923 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                            if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                _5160 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5160] = 26
                                mem[_5160 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _5544 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5544] = 30
                                mem[_5544 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9410 = mem[96]
                                idx = 0
                                while idx < _9410:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11420 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11420
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11420, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11900 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11900
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11900, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5223 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5223] = 26
                                mem[_5223 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _5656 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5656] = 30
                                mem[_5656 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9409 = mem[96]
                                idx = 0
                                while idx < _9409:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11417 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11417
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11417, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11897 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11897
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11897, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                    _5444 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5444] = 26
                                    mem[_5444 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6192 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6192] = 30
                                    mem[_6192 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9412 = mem[96]
                                    idx = 0
                                    while idx < _9412:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11426 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11426
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11426, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11906 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11906
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11906, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5545 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5545] = 26
                                    mem[_5545 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6338 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6338] = 30
                                    mem[_6338 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9411 = mem[96]
                                    idx = 0
                                    while idx < _9411:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11423 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11423
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11423, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11903 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11903
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11903, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                    _5445 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5445] = 26
                                    mem[_5445 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6193 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6193] = 30
                                    mem[_6193 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9414 = mem[96]
                                    idx = 0
                                    while idx < _9414:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11432 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11432
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11432, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11912 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11912
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11912, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5546 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5546] = 26
                                    mem[_5546 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6342 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6342] = 30
                                    mem[_6342 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9413 = mem[96]
                                    idx = 0
                                    while idx < _9413:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11429 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11429
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11429, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11909 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11909
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11909, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                else:
                    mem[mem[64] + 4] = stor6
                    require ext_code.size(supplierAddress)
                    call supplierAddress.distribute(uint256 rg1) with:
                         gas gas_remaining wei
                        args stor6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        _4810 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4810] = 26
                        mem[_4810 + 32] = 'SafeMath: division by zero'
                        if not stor8:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor8) + stor7 < stor7:
                            revert with 0, 'SafeMath: addition overflow'
                        stor7 += 0 / stor8
                        stor6 = block.number
                        if not userInfo[msg.sender].field_256:
                            _5092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5092] = 26
                            mem[_5092 + 32] = 'SafeMath: division by zero'
                            _5300 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5300] = 30
                            mem[_5300 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -userInfo[msg.sender].field_0:
                                if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                    _5846 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5846] = 26
                                    mem[_5846 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6876 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6876] = 30
                                    mem[_6876 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9404 = mem[96]
                                    idx = 0
                                    while idx < _9404:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11402 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11402
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11402, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11882 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11882
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11882, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5991 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5991] = 26
                                    mem[_5991 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7081 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7081] = 30
                                    mem[_7081 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9403 = mem[96]
                                    idx = 0
                                    while idx < _9403:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11399 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11399
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11399, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11879 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11879
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11879, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                        _6635 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6635] = 26
                                        mem[_6635 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7788 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7788] = 30
                                        mem[_7788 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9406 = mem[96]
                                        idx = 0
                                        while idx < _9406:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11408 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11408
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11408, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11888 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11888
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11888, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6877 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6877] = 26
                                        mem[_6877 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7967 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7967] = 30
                                        mem[_7967 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9405 = mem[96]
                                        idx = 0
                                        while idx < _9405:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11405 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11405
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11405, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11885 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11885
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11885, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                        _6636 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6636] = 26
                                        mem[_6636 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7789 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7789] = 30
                                        mem[_7789 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9408 = mem[96]
                                        idx = 0
                                        while idx < _9408:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11414 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11414
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11414, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11894 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11894
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11894, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6878 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6878] = 26
                                        mem[_6878 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7971 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7971] = 30
                                        mem[_7971 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9407 = mem[96]
                                        idx = 0
                                        while idx < _9407:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11411 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11411
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11411, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11891 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11891
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11891, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                        else:
                            if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5159] = 26
                            mem[_5159 + 32] = 'SafeMath: division by zero'
                            _5351 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5351] = 30
                            mem[_5351 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                                if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                    _5986 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5986] = 26
                                    mem[_5986 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7078 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7078] = 30
                                    mem[_7078 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9398 = mem[96]
                                    idx = 0
                                    while idx < _9398:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11384 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11384
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11384, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11864 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11864
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11864, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6134 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6134] = 26
                                    mem[_6134 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7239 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7239] = 30
                                    mem[_7239 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9397 = mem[96]
                                    idx = 0
                                    while idx < _9397:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11381 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11381
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11381, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11861 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11861
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11861, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                        _6874 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6874] = 26
                                        mem[_6874 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7963 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7963] = 30
                                        mem[_7963 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9400 = mem[96]
                                        idx = 0
                                        while idx < _9400:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11390 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11390
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11390, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11870 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11870
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11870, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7079 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7079] = 26
                                        mem[_7079 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8127 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8127] = 30
                                        mem[_8127 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9399 = mem[96]
                                        idx = 0
                                        while idx < _9399:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11387 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11387
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11387, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11867 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11867
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11867, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                        _6875 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6875] = 26
                                        mem[_6875 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7964 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7964] = 30
                                        mem[_7964 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9402 = mem[96]
                                        idx = 0
                                        while idx < _9402:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11396 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11396
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11396, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11876 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11876
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11876, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7080 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7080] = 26
                                        mem[_7080 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8131 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8131] = 30
                                        mem[_8131 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9401 = mem[96]
                                        idx = 0
                                        while idx < _9401:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11393 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11393
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11393, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11873 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11873
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11873, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                    else:
                        if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4834 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4834] = 26
                        mem[_4834 + 32] = 'SafeMath: division by zero'
                        if not stor8:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^16 * ext_call.return_data[0] / stor8) + stor7 < stor7:
                            revert with 0, 'SafeMath: addition overflow'
                        stor7 += 10^16 * ext_call.return_data[0] / stor8
                        stor6 = block.number
                        if not userInfo[msg.sender].field_256:
                            _5158 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5158] = 26
                            mem[_5158 + 32] = 'SafeMath: division by zero'
                            _5350 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5350] = 30
                            mem[_5350 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -userInfo[msg.sender].field_0:
                                if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                    _5981 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5981] = 26
                                    mem[_5981 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7075 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7075] = 30
                                    mem[_7075 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9392 = mem[96]
                                    idx = 0
                                    while idx < _9392:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11366 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11366
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11366, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11846 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11846
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11846, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6131 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6131] = 26
                                    mem[_6131 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7235 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7235] = 30
                                    mem[_7235 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9391 = mem[96]
                                    idx = 0
                                    while idx < _9391:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11363 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11363
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11363, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11843 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11843
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11843, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                        _6872 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6872] = 26
                                        mem[_6872 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7959 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7959] = 30
                                        mem[_7959 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9394 = mem[96]
                                        idx = 0
                                        while idx < _9394:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11372 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11372
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11372, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11852 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11852
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11852, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7076 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7076] = 26
                                        mem[_7076 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8117 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8117] = 30
                                        mem[_8117 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9393 = mem[96]
                                        idx = 0
                                        while idx < _9393:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11369 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11369
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11369, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11849 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11849
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11849, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                        _6873 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6873] = 26
                                        mem[_6873 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7960 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7960] = 30
                                        mem[_7960 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9396 = mem[96]
                                        idx = 0
                                        while idx < _9396:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11378 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11378
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11378, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11858 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11858
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11858, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7077 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7077] = 26
                                        mem[_7077 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8121 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8121] = 30
                                        mem[_8121 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9395 = mem[96]
                                        idx = 0
                                        while idx < _9395:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11375 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11375
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11375, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11855 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11855
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11855, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                        else:
                            if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5222 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5222] = 26
                            mem[_5222 + 32] = 'SafeMath: division by zero'
                            _5435 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5435] = 30
                            mem[_5435 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                                if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                    _6126 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6126] = 26
                                    mem[_6126 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7232 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7232] = 30
                                    mem[_7232 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9386 = mem[96]
                                    idx = 0
                                    while idx < _9386:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11348 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11348
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11348, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11828 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11828
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11828, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6265 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6265] = 26
                                    mem[_6265 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7387 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7387] = 30
                                    mem[_7387 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9385 = mem[96]
                                    idx = 0
                                    while idx < _9385:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11345 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11345
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11345, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11825 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11825
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11825, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                        _7073 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7073] = 26
                                        mem[_7073 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8113 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8113] = 30
                                        mem[_8113 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9388 = mem[96]
                                        idx = 0
                                        while idx < _9388:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11354 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11354
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11354, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11834 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11834
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11834, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7233 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7233] = 26
                                        mem[_7233 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8260 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8260] = 30
                                        mem[_8260 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9387 = mem[96]
                                        idx = 0
                                        while idx < _9387:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11351 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11351
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11351, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11831 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11831
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11831, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / userInfo[msg.sender].field_512 - arg1.length:
                                        _7074 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7074] = 26
                                        mem[_7074 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8114 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8114] = 30
                                        mem[_8114 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9390 = mem[96]
                                        idx = 0
                                        while idx < _9390:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11360 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11360
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11360, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11840 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11840
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11840, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 0 / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7234 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7234] = 26
                                        mem[_7234 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * 0 / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8264 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8264] = 30
                                        mem[_8264 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (0 / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = 0 / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9389 = mem[96]
                                        idx = 0
                                        while idx < _9389:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11357 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11357
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11357, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11837 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11837
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11837, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
        else:
            if s * s / s != s:
                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _4689 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4689] = 26
            mem[_4689 + 32] = 'SafeMath: division by zero'
            if not userInfo[msg.sender].field_512 - arg1.length:
                revert with 0, 'SafeMath: division by zero'
            if block.number <= stor6:
                if not userInfo[msg.sender].field_256:
                    _4809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4809] = 26
                    mem[_4809 + 32] = 'SafeMath: division by zero'
                    _4910 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4910] = 30
                    mem[_4910 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -userInfo[msg.sender].field_0:
                        if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                            _5116 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5116] = 26
                            mem[_5116 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5481 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5481] = 30
                            mem[_5481 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9380 = mem[96]
                            idx = 0
                            while idx < _9380:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11330 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11330
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11330, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11810 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11810
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11810, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5192 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5192] = 26
                            mem[_5192 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                            if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5585 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5585] = 30
                            mem[_5585 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9379 = mem[96]
                            idx = 0
                            while idx < _9379:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11327 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11327
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11327, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11807 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11807
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11807, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = msg.sender
                        if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                _5390 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5390] = 26
                                mem[_5390 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6124 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6124] = 30
                                mem[_6124 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9382 = mem[96]
                                idx = 0
                                while idx < _9382:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11336 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11336
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11336, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11816 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11816
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11816, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5482 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5482] = 26
                                mem[_5482 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6257 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6257] = 30
                                mem[_6257 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9381 = mem[96]
                                idx = 0
                                while idx < _9381:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11333 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11333
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11333, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11813 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11813
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11813, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                _5391 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5391] = 26
                                mem[_5391 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6125 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6125] = 30
                                mem[_6125 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9384 = mem[96]
                                idx = 0
                                while idx < _9384:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11342 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11342
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11342, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11822 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11822
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11822, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5483 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5483] = 26
                                mem[_5483 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6261 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6261] = 30
                                mem[_6261 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9383 = mem[96]
                                idx = 0
                                while idx < _9383:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11339 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11339
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11339, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11819 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11819
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11819, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4833 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4833] = 26
                    mem[_4833 + 32] = 'SafeMath: division by zero'
                    _4932 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4932] = 30
                    mem[_4932 + 32] = 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                        if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                            _5187 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5187] = 26
                            mem[_5187 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = 0
                            if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5582 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5582] = 30
                            mem[_5582 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9374 = mem[96]
                            idx = 0
                            while idx < _9374:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11312 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11312
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11312, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11792 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11792
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11792, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5243 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5243] = 26
                            mem[_5243 + 32] = 'SafeMath: division by zero'
                            userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                            if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                revert with 0, 'SafeMath: addition overflow'
                            _5701 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5701] = 30
                            mem[_5701 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                            userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                            userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                            userInfo[msg.sender].field_544 = uint32(s)
                            _9373 = mem[96]
                            idx = 0
                            while idx < _9373:
                                require idx < mem[96]
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 12
                                if not stor12[mem[(32 * idx) + 128]]:
                                    require idx < mem[96]
                                    _11309 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11309
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11309, 1, 160, 0, mem[mem[64] + 196]
                                else:
                                    require stor11.length - 1 < stor11.length
                                    require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                    stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                    stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                    require stor11.length
                                    stor11[stor11.length - 1].field_0 = 0
                                    stor11[stor11.length - 1].field_256 = 0
                                    stor11.length--
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    stor12[mem[(32 * idx) + 128]] = 0
                                    require idx < mem[96]
                                    _11789 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11789
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(cryptoAlpacaAddress)
                                    call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11789, 1, 160, 0, mem[mem[64] + 196]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        require ext_code.size(alpaAddress)
                        staticcall alpaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = msg.sender
                        if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                _5479 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5479] = 26
                                mem[_5479 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6253 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6253] = 30
                                mem[_6253 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9376 = mem[96]
                                idx = 0
                                while idx < _9376:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11318 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11318
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11318, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11798 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11798
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11798, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5583 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5583] = 26
                                mem[_5583 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6400 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6400] = 30
                                mem[_6400 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9375 = mem[96]
                                idx = 0
                                while idx < _9375:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11315 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11315
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11315, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11795 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11795
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11795, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            require ext_code.size(alpaAddress)
                            call alpaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                _5480 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5480] = 26
                                mem[_5480 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6254 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6254] = 30
                                mem[_6254 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9378 = mem[96]
                                idx = 0
                                while idx < _9378:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11324 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11324
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11324, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11804 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11804
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11804, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5584 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5584] = 26
                                mem[_5584 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6404 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6404] = 30
                                mem[_6404 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9377 = mem[96]
                                idx = 0
                                while idx < _9377:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11321 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11321
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11321, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11801 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11801
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11801, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
            else:
                if not stor8:
                    stor6 = block.number
                    if not userInfo[msg.sender].field_256:
                        _4823 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4823] = 26
                        mem[_4823 + 32] = 'SafeMath: division by zero'
                        _4920 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4920] = 30
                        mem[_4920 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not -userInfo[msg.sender].field_0:
                            if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                _5150 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5150] = 26
                                mem[_5150 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _5530 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5530] = 30
                                mem[_5530 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9368 = mem[96]
                                idx = 0
                                while idx < _9368:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11294 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11294
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11294, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11774 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11774
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11774, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5219 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5219] = 26
                                mem[_5219 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _5645 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5645] = 30
                                mem[_5645 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9367 = mem[96]
                                idx = 0
                                while idx < _9367:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11291 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11291
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11291, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11771 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11771
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11771, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                    _5425 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5425] = 26
                                    mem[_5425 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6182 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6182] = 30
                                    mem[_6182 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9370 = mem[96]
                                    idx = 0
                                    while idx < _9370:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11300 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11300
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11300, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11780 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11780
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11780, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5531 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5531] = 26
                                    mem[_5531 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6324 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6324] = 30
                                    mem[_6324 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9369 = mem[96]
                                    idx = 0
                                    while idx < _9369:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11297 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11297
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11297, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11777 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11777
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11777, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                    _5426 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5426] = 26
                                    mem[_5426 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6183 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6183] = 30
                                    mem[_6183 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9372 = mem[96]
                                    idx = 0
                                    while idx < _9372:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11306 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11306
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11306, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11786 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11786
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11786, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5532 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5532] = 26
                                    mem[_5532 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6328 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6328] = 30
                                    mem[_6328 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9371 = mem[96]
                                    idx = 0
                                    while idx < _9371:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11303 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11303
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11303, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11783 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11783
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11783, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                    else:
                        if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4844 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4844] = 26
                        mem[_4844 + 32] = 'SafeMath: division by zero'
                        _4944 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4944] = 30
                        mem[_4944 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                            if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                _5214 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5214] = 26
                                mem[_5214 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = 0
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _5642 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5642] = 30
                                mem[_5642 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9362 = mem[96]
                                idx = 0
                                while idx < _9362:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11276 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11276
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11276, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11756 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11756
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11756, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                    revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5263 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5263] = 26
                                mem[_5263 + 32] = 'SafeMath: division by zero'
                                userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                    revert with 0, 'SafeMath: addition overflow'
                                _5762 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5762] = 30
                                mem[_5762 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                userInfo[msg.sender].field_544 = uint32(s)
                                _9361 = mem[96]
                                idx = 0
                                while idx < _9361:
                                    require idx < mem[96]
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 12
                                    if not stor12[mem[(32 * idx) + 128]]:
                                        require idx < mem[96]
                                        _11273 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11273
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11273, 1, 160, 0, mem[mem[64] + 196]
                                    else:
                                        require stor11.length - 1 < stor11.length
                                        require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                        stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                        stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                        require stor11.length
                                        stor11[stor11.length - 1].field_0 = 0
                                        stor11[stor11.length - 1].field_256 = 0
                                        stor11.length--
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        stor12[mem[(32 * idx) + 128]] = 0
                                        require idx < mem[96]
                                        _11753 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11753
                                        mem[mem[64] + 100] = 1
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(cryptoAlpacaAddress)
                                        call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11753, 1, 160, 0, mem[mem[64] + 196]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            require ext_code.size(alpaAddress)
                            staticcall alpaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                    _5528 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5528] = 26
                                    mem[_5528 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6320 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6320] = 30
                                    mem[_6320 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9364 = mem[96]
                                    idx = 0
                                    while idx < _9364:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11282 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11282
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11282, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11762 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11762
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11762, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5643 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5643] = 26
                                    mem[_5643 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6492 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6492] = 30
                                    mem[_6492 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9363 = mem[96]
                                    idx = 0
                                    while idx < _9363:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11279 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11279
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11279, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11759 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11759
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11759, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(alpaAddress)
                                call alpaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                    _5529 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5529] = 26
                                    mem[_5529 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6321 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6321] = 30
                                    mem[_6321 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9366 = mem[96]
                                    idx = 0
                                    while idx < _9366:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11288 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11288
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11288, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11768 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11768
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11768, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5644 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5644] = 26
                                    mem[_5644 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _6496 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6496] = 30
                                    mem[_6496 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9365 = mem[96]
                                    idx = 0
                                    while idx < _9365:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11285 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11285
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11285, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11765 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11765
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11765, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                else:
                    mem[mem[64] + 4] = stor6
                    require ext_code.size(supplierAddress)
                    call supplierAddress.distribute(uint256 rg1) with:
                         gas gas_remaining wei
                        args stor6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        _4832 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4832] = 26
                        mem[_4832 + 32] = 'SafeMath: division by zero'
                        if not stor8:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor8) + stor7 < stor7:
                            revert with 0, 'SafeMath: addition overflow'
                        stor7 += 0 / stor8
                        stor6 = block.number
                        if not userInfo[msg.sender].field_256:
                            _5148 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5148] = 26
                            mem[_5148 + 32] = 'SafeMath: division by zero'
                            _5343 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5343] = 30
                            mem[_5343 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -userInfo[msg.sender].field_0:
                                if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                    _5955 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5955] = 26
                                    mem[_5955 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7037 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7037] = 30
                                    mem[_7037 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9356 = mem[96]
                                    idx = 0
                                    while idx < _9356:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11258 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11258
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11258, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11738 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11738
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11738, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6101 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6101] = 26
                                    mem[_6101 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7209 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7209] = 30
                                    mem[_7209 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9355 = mem[96]
                                    idx = 0
                                    while idx < _9355:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11255 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11255
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11255, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11735 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11735
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11735, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                        _6825 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6825] = 26
                                        mem[_6825 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7933 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7933] = 30
                                        mem[_7933 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9358 = mem[96]
                                        idx = 0
                                        while idx < _9358:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11264 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11264
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11264, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11744 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11744
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11744, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7038 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7038] = 26
                                        mem[_7038 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8089 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8089] = 30
                                        mem[_8089 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9357 = mem[96]
                                        idx = 0
                                        while idx < _9357:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11261 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11261
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11261, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11741 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11741
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11741, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                        _6826 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6826] = 26
                                        mem[_6826 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7934 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7934] = 30
                                        mem[_7934 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9360 = mem[96]
                                        idx = 0
                                        while idx < _9360:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11270 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11270
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11270, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11750 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11750
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11750, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7039 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7039] = 26
                                        mem[_7039 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8093 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8093] = 30
                                        mem[_8093 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9359 = mem[96]
                                        idx = 0
                                        while idx < _9359:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11267 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11267
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11267, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11747 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11747
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11747, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                        else:
                            if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5213 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5213] = 26
                            mem[_5213 + 32] = 'SafeMath: division by zero'
                            _5421 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5421] = 30
                            mem[_5421 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                                if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                    _6096 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6096] = 26
                                    mem[_6096 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7206 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7206] = 30
                                    mem[_7206 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9350 = mem[96]
                                    idx = 0
                                    while idx < _9350:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11240 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11240
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11240, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11720 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11720
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11720, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6242 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6242] = 26
                                    mem[_6242 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7361 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7361] = 30
                                    mem[_7361 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9349 = mem[96]
                                    idx = 0
                                    while idx < _9349:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11237 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11237
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11237, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11717 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11717
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11717, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                        _7035 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7035] = 26
                                        mem[_7035 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8085 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8085] = 30
                                        mem[_8085 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9352 = mem[96]
                                        idx = 0
                                        while idx < _9352:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11246 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11246
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11246, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11726 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11726
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11726, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7207 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7207] = 26
                                        mem[_7207 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8231 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8231] = 30
                                        mem[_8231 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9351 = mem[96]
                                        idx = 0
                                        while idx < _9351:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11243 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11243
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11243, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11723 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11723
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11723, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                        _7036 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7036] = 26
                                        mem[_7036 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8086 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8086] = 30
                                        mem[_8086 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9354 = mem[96]
                                        idx = 0
                                        while idx < _9354:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11252 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11252
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11252, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11732 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11732
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11732, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7208 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7208] = 26
                                        mem[_7208 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8235 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8235] = 30
                                        mem[_8235 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9353 = mem[96]
                                        idx = 0
                                        while idx < _9353:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11249 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11249
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11249, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11729 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11729
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11729, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                    else:
                        if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4850] = 26
                        mem[_4850 + 32] = 'SafeMath: division by zero'
                        if not stor8:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^16 * ext_call.return_data[0] / stor8) + stor7 < stor7:
                            revert with 0, 'SafeMath: addition overflow'
                        stor7 += 10^16 * ext_call.return_data[0] / stor8
                        stor6 = block.number
                        if not userInfo[msg.sender].field_256:
                            _5212 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5212] = 26
                            mem[_5212 + 32] = 'SafeMath: division by zero'
                            _5420 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5420] = 30
                            mem[_5420 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -userInfo[msg.sender].field_0:
                                if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                    _6091 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6091] = 26
                                    mem[_6091 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7203 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7203] = 30
                                    mem[_7203 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9344 = mem[96]
                                    idx = 0
                                    while idx < _9344:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11222 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11222
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11222, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11702 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11702
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11702, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6239 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6239] = 26
                                    mem[_6239 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7357 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7357] = 30
                                    mem[_7357 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9343 = mem[96]
                                    idx = 0
                                    while idx < _9343:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11219 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11219
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11219, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11699 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11699
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11699, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = -userInfo[msg.sender].field_0
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                        _7033 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7033] = 26
                                        mem[_7033 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8081 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8081] = 30
                                        mem[_8081 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9346 = mem[96]
                                        idx = 0
                                        while idx < _9346:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11228 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11228
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11228, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11708 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11708
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11708, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7204 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7204] = 26
                                        mem[_7204 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8221 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8221] = 30
                                        mem[_8221 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9345 = mem[96]
                                        idx = 0
                                        while idx < _9345:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11225 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11225
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11225, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11705 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11705
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11705, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                        _7034 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7034] = 26
                                        mem[_7034 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8082 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8082] = 30
                                        mem[_8082 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9348 = mem[96]
                                        idx = 0
                                        while idx < _9348:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11234 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11234
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11234, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11714 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11714
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11714, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7205 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7205] = 26
                                        mem[_7205 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8225 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8225] = 30
                                        mem[_8225 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9347 = mem[96]
                                        idx = 0
                                        while idx < _9347:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11231 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11231
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11231, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11711 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11711
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11711, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                        else:
                            if stor7 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor7:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5262 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5262] = 26
                            mem[_5262 + 32] = 'SafeMath: division by zero'
                            _5519 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5519] = 30
                            mem[_5519 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 > stor7 * userInfo[msg.sender].field_256 / 10^16:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                                if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                    _6234 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6234] = 26
                                    mem[_6234 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = 0
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7354 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7354] = 30
                                    mem[_7354 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9338 = mem[96]
                                    idx = 0
                                    while idx < _9338:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11204 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11204
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11204, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11684 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11684
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11684, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6391 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6391] = 26
                                    mem[_6391 + 32] = 'SafeMath: division by zero'
                                    userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                    if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7529 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7529] = 30
                                    mem[_7529 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                    userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                    userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                    userInfo[msg.sender].field_544 = uint32(s)
                                    _9337 = mem[96]
                                    idx = 0
                                    while idx < _9337:
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 12
                                        if not stor12[mem[(32 * idx) + 128]]:
                                            require idx < mem[96]
                                            _11201 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11201
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11201, 1, 160, 0, mem[mem[64] + 196]
                                        else:
                                            require stor11.length - 1 < stor11.length
                                            require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                            stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                            stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                            require stor11.length
                                            stor11[stor11.length - 1].field_0 = 0
                                            stor11[stor11.length - 1].field_256 = 0
                                            stor11.length--
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            stor12[mem[(32 * idx) + 128]] = 0
                                            require idx < mem[96]
                                            _11681 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _11681
                                            mem[mem[64] + 100] = 1
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(cryptoAlpacaAddress)
                                            call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _11681, 1, 160, 0, mem[mem[64] + 196]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                require ext_code.size(alpaAddress)
                                staticcall alpaAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (stor7 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                        _7201 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7201] = 26
                                        mem[_7201 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8217 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8217] = 30
                                        mem[_8217 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9340 = mem[96]
                                        idx = 0
                                        while idx < _9340:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11210 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11210
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11210, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11690 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11690
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11690, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7355 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7355] = 26
                                        mem[_7355 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8377 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8377] = 30
                                        mem[_8377 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9339 = mem[96]
                                        idx = 0
                                        while idx < _9339:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11207 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11207
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11207, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11687 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11687
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11687, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(alpaAddress)
                                    call alpaAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s * s / userInfo[msg.sender].field_512 - arg1.length:
                                        _7202 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7202] = 26
                                        mem[_7202 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = 0
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8218 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8218] = 30
                                        mem[_8218 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9342 = mem[96]
                                        idx = 0
                                        while idx < _9342:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11216 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11216
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11216, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11696 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11696
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11696, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / s * s / userInfo[msg.sender].field_512 - arg1.length != stor7:
                                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7356 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7356] = 26
                                        mem[_7356 + 32] = 'SafeMath: division by zero'
                                        userInfo[msg.sender].field_0 = stor7 * s * s / userInfo[msg.sender].field_512 - arg1.length / 10^16
                                        if (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 < stor8:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _8381 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8381] = 30
                                        mem[_8381 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_256 > (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        stor8 = (s * s / userInfo[msg.sender].field_512 - arg1.length) + stor8 - userInfo[msg.sender].field_256
                                        userInfo[msg.sender].field_256 = s * s / userInfo[msg.sender].field_512 - arg1.length
                                        userInfo[msg.sender].field_512 = uint32(userInfo[msg.sender].field_512 - arg1.length)
                                        userInfo[msg.sender].field_544 = uint32(s)
                                        _9341 = mem[96]
                                        idx = 0
                                        while idx < _9341:
                                            require idx < mem[96]
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 12
                                            if not stor12[mem[(32 * idx) + 128]]:
                                                require idx < mem[96]
                                                _11213 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11213
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11213, 1, 160, 0, mem[mem[64] + 196]
                                            else:
                                                require stor11.length - 1 < stor11.length
                                                require stor12[mem[(32 * idx) + 128]] - 1 < stor11.length
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_0 = stor11[stor11.length - 1].field_0
                                                stor11[stor12[mem[(32 * idx) + 128]] - 1].field_256 = stor11[stor11.length - 1].field_256
                                                stor12[stor11[stor11.length - 1].field_0] = stor12[mem[(32 * idx) + 128]]
                                                require stor11.length
                                                stor11[stor11.length - 1].field_0 = 0
                                                stor11[stor11.length - 1].field_256 = 0
                                                stor11.length--
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 12
                                                stor12[mem[(32 * idx) + 128]] = 0
                                                require idx < mem[96]
                                                _11693 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = msg.sender
                                                mem[mem[64] + 68] = _11693
                                                mem[mem[64] + 100] = 1
                                                mem[mem[64] + 132] = 160
                                                mem[mem[64] + 164] = 0
                                                require ext_code.size(cryptoAlpacaAddress)
                                                call cryptoAlpacaAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), msg.sender, _11693, 1, 160, 0, mem[mem[64] + 196]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            continue 
    stor1 = 1
}



}
