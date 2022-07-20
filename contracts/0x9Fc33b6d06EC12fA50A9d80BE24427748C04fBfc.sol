contract main {




// =====================  Runtime code  =====================


#
#  - finalize()
#
const WBNB = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
address sub_6f589ffdAddress;
address sub_639991aaAddress;
uint256 startTime;
uint256 endTime;
uint256 totalSupply;
uint256 stor156; offset 1
uint256 sub_b525dc3e;
uint256 sub_1e1ba5f7;
uint256 sub_117ba91c;
uint256 desiredLiquidity;
address sub_672cc77cAddress;
address sub_30f83ef2Address;
address treasuryAddress;
array of address accountList;
mapping of uint256 userBalances;
mapping of uint8 stor165;
array of address stor43658028565286330362031464835422074478844716094187158437491953646570912254743;

function sub_117ba91c(?) {
    return sub_117ba91c
}

function totalSupply() {
    return totalSupply
}

function sub_1e1ba5f7(?) {
    return sub_1e1ba5f7
}

function userBalances(address arg1) {
    require calldata.size - 4 >= 32
    return userBalances[arg1]
}

function sub_30f83ef2(?) {
    return sub_30f83ef2Address
}

function endTime() {
    return endTime
}

function desiredLiquidity() {
    return desiredLiquidity
}

function accountList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < accountList.length
    return accountList[arg1]
}

function accountListLength() {
    return accountList.length
}

function isStaked(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor165[arg1])
}

function treasury() {
    return treasuryAddress
}

function sub_639991aa(?) {
    return sub_639991aaAddress
}

function sub_672cc77c(?) {
    return sub_672cc77cAddress
}

function sub_6f589ffd(?) {
    return sub_6f589ffdAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_b525dc3e(?) {
    return sub_b525dc3e
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b0605827(?) {
    if not sub_1e1ba5f7:
        if not stor156:
            revert with 0, 'SafeMath: division by zero'
        return (0 / stor156)
    if 10^18 * sub_1e1ba5f7 / sub_1e1ba5f7 != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not stor156:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * sub_1e1ba5f7 / stor156)
}

function setPresaleTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if block.timestamp >= startTime:
        revert with 0, 'Presale: already started'
    if block.timestamp >= arg1:
        revert with 0, 'Presale: invalid time values'
    if arg1 >= arg2:
        revert with 0, 'Presale: invalid time values'
    startTime = arg1
    endTime = arg2
    emit 0x7546cf1f: arg1, arg2
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe50726573616c653a2074726561737572792061646472657373206973207a6572,
                    mem[197 len 31]
    treasuryAddress = arg1
    emit TreasuryUpdated(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function stake() {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not userBalances[msg.sender]:
        revert with 0, 'Presale: no amount to stake'
    if sub_117ba91c <= 0:
        revert with 0, 'Presale: no raised fund'
    if totalSupply <= 0:
        revert with 0, 'Presale: no raised fund'
    if not sub_639991aaAddress:
        revert with 0, 'Presale: presaleFarm must be set'
    if stor165[msg.sender]:
        revert with 0, 'Presale: already stake'
    stor165[msg.sender] = 1
    if not userBalances[msg.sender]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_639991aaAddress)
        call sub_639991aaAddress.stakeBehalf(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0 / totalSupply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Staked((0 / totalSupply), msg.sender);
    else:
        if sub_117ba91c * userBalances[msg.sender] / userBalances[msg.sender] != sub_117ba91c:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_639991aaAddress)
        call sub_639991aaAddress.stakeBehalf(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, sub_117ba91c * userBalances[msg.sender] / totalSupply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Staked((sub_117ba91c * userBalances[msg.sender] / totalSupply), msg.sender);
    stor101 = 1
}

function depositBNB() payable {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7350726573616c653a2076616c7565206d75737420626520686967686572207468616e20,
                    mem[200 len 28]
    if block.timestamp < startTime:
        revert with 0, 'Presale: not presale period'
    if block.timestamp > endTime:
        revert with 0, 'Presale: not presale period'
    if totalSupply >= sub_b525dc3e:
        revert with 0, 'Presale: sold out'
    if msg.value + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + totalSupply <= sub_b525dc3e:
        if not userBalances[address(msg.sender)]:
            accountList.length++
            stor6085[stor163.length] = msg.sender
        if msg.value + userBalances[address(msg.sender)] < userBalances[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        userBalances[address(msg.sender)] += msg.value
        if msg.value + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += msg.value
        emit Deposited(msg.value, msg.sender);
    else:
        if msg.value + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if sub_b525dc3e > msg.value + totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        call msg.sender with:
           value msg.value + totalSupply - sub_b525dc3e wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, '!safeTransferETH'
        if msg.value + totalSupply - sub_b525dc3e > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userBalances[address(msg.sender)]:
            accountList.length++
            stor6085[stor163.length] = msg.sender
        if -totalSupply + sub_b525dc3e + userBalances[address(msg.sender)] < userBalances[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        userBalances[address(msg.sender)] = -totalSupply + sub_b525dc3e + userBalances[address(msg.sender)]
        if sub_b525dc3e < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply = sub_b525dc3e
        emit Deposited((-totalSupply + sub_b525dc3e), msg.sender);
    stor101 = 1
}

function sub_85b534b2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f50726573616c653a20696e76616c69642070726573616c654661726d20616464726573,
                    mem[200 len 28]
    sub_639991aaAddress = arg1
    require ext_code.size(sub_30f83ef2Address)
    staticcall sub_30f83ef2Address.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x775361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_30f83ef2Address):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(sub_30f83ef2Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call sub_30f83ef2Address with:
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1
        if not approve(address arg1, uint256 arg2), address(arg1) << 64:
            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0x4ff1a7d0: arg1
}

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
        sub_672cc77cAddress = arg1
        sub_6f589ffdAddress = arg2
        sub_30f83ef2Address = arg3
        treasuryAddress = arg4
        startTime = arg5
        endTime = arg6
        sub_1e1ba5f7 = arg7
        sub_b525dc3e = arg8
        desiredLiquidity = -1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x30496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor101 = 1
            sub_672cc77cAddress = arg1
            sub_6f589ffdAddress = arg2
            sub_30f83ef2Address = arg3
            treasuryAddress = arg4
            startTime = arg5
            endTime = arg6
            sub_1e1ba5f7 = arg7
            sub_b525dc3e = arg8
            desiredLiquidity = -1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x30496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor101 = 1
                sub_672cc77cAddress = arg1
                sub_6f589ffdAddress = arg2
                sub_30f83ef2Address = arg3
                treasuryAddress = arg4
                startTime = arg5
                endTime = arg6
                sub_1e1ba5f7 = arg7
                sub_b525dc3e = arg8
                desiredLiquidity = -1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x30496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor101 = 1
                    sub_672cc77cAddress = arg1
                    sub_6f589ffdAddress = arg2
                    sub_30f83ef2Address = arg3
                    treasuryAddress = arg4
                    startTime = arg5
                    endTime = arg6
                    sub_1e1ba5f7 = arg7
                    sub_b525dc3e = arg8
                    desiredLiquidity = -1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x30496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor101 = 1
                        sub_672cc77cAddress = arg1
                        sub_6f589ffdAddress = arg2
                        sub_30f83ef2Address = arg3
                        treasuryAddress = arg4
                        startTime = arg5
                        endTime = arg6
                        sub_1e1ba5f7 = arg7
                        sub_b525dc3e = arg8
                        desiredLiquidity = -1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x30496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                            sub_672cc77cAddress = arg1
                            sub_6f589ffdAddress = arg2
                            sub_30f83ef2Address = arg3
                            treasuryAddress = arg4
                            startTime = arg5
                            endTime = arg6
                            sub_1e1ba5f7 = arg7
                            sub_b525dc3e = arg8
                            desiredLiquidity = -1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x30496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor101 = 1
                                sub_672cc77cAddress = arg1
                                sub_6f589ffdAddress = arg2
                                sub_30f83ef2Address = arg3
                                treasuryAddress = arg4
                                startTime = arg5
                                endTime = arg6
                                sub_1e1ba5f7 = arg7
                                sub_b525dc3e = arg8
                                desiredLiquidity = -1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                sub_672cc77cAddress = arg1
                                sub_6f589ffdAddress = arg2
                                sub_30f83ef2Address = arg3
                                treasuryAddress = arg4
                                startTime = arg5
                                endTime = arg6
                                sub_1e1ba5f7 = arg7
                                sub_b525dc3e = arg8
                                desiredLiquidity = -1
                                uint8(stor0.field_8) = 0
}



}
