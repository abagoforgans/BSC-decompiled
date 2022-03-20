contract main {




// =====================  Runtime code  =====================


address _governanceAddress;
array of uint8 stor1;
mapping of uint256 _pIDxAddr;
mapping of uint256 _pIDxName;
mapping of struct _plyr;
mapping of uint8 stor5;
uint256 totalReferReward;
uint256 _pID;
uint256 _totalRegisterCount;
uint256 _refer1RewardRate;
uint256 _refer2RewardRate;
uint256 _baseRate;
uint256 _registrationBaseFee;
uint256 _registrationStep;
uint256 _stepFee;
uint256 _defaulRefer;
uint32 stor16;
address _teamWalletAddress;
uint256 stor16;
address sub_74f9b464Address;

function _plyr(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(_plyr[arg1].field_0), 
           uint256(_plyr[arg1].field_256),
           uint8(_plyr[arg1].field_512),
           uint256(_plyr[arg1].field_768),
           uint256(_plyr[arg1].field_1024),
           uint256(_plyr[arg1].field_1280),
           uint256(_plyr[arg1].field_1536),
           uint256(_plyr[arg1].field_1792),
           uint256(_plyr[arg1].field_2048)
}

function _pIDxName(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return _pIDxName[arg1]
}

function _governance() {
    return _governanceAddress
}

function _registrationBaseFee() {
    return _registrationBaseFee
}

function _teamWallet() {
    return address(_teamWalletAddress)
}

function _pID() {
    return _pID
}

function _pIDxAddr(address arg1) {
    require calldata.size - 4 >= 32
    return _pIDxAddr[arg1]
}

function _refer1RewardRate() {
    return _refer1RewardRate
}

function sub_74f9b464(?) {
    return sub_74f9b464Address
}

function _totalRegisterCount() {
    return _totalRegisterCount
}

function _baseRate() {
    return _baseRate
}

function _refer2RewardRate() {
    return _refer2RewardRate
}

function _defaulRefer() {
    return _defaulRefer
}

function _totalReferReward() {
    return totalReferReward
}

function _pools(address arg1) {
    require calldata.size - 4 >= 32
    return bool(uint8(stor1[arg1]))
}

function _stepFee() {
    return _stepFee
}

function getTotalReferReward() {
    return totalReferReward
}

function _plyrNames(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[arg1][arg2])
}

function _registrationStep() {
    return _registrationStep
}

function _fallback() payable {
    revert
}

function getPlayerName(address arg1) {
    require calldata.size - 4 >= 32
    if _pID:
        return uint256(_plyr[stor2[address(arg1)]].field_256)
    else:
        return 0
}

function setDegoContract(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_74f9b464Address = arg1
}

function setRegistrationStep(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _registrationStep = arg1
}

function setReferRewardRate(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _refer1RewardRate = arg1
    _refer2RewardRate = arg2
}

function seizeEth() {
    call address(_teamWalletAddress) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPlayerLaffName(address arg1) {
    require calldata.size - 4 >= 32
    if _pID:
        if uint256(_plyr[stor2[address(arg1)]].field_768):
            return uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_256)
        else:
            return 0
    else:
        return 0
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
}

function balances() {
    require ext_code.size(sub_74f9b464Address)
    staticcall sub_74f9b464Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function hasRefer(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor1[msg.sender]):
        revert with 0, 'invalid pool address!'
    if not _pIDxAddr[address(arg1)]:
        _pID++
        _pIDxAddr[address(arg1)] = _pID + 1
        address(_plyr[stor7 + 1].field_0) = arg1
    return bool(uint256(_plyr[stor2[address(arg1)]].field_768))
}

function getPlayerInfo(address arg1) {
    require calldata.size - 4 >= 32
    if _pID:
        return uint256(_plyr[stor2[address(arg1)]].field_1280), 
               uint256(_plyr[stor2[address(arg1)]].field_1536),
               uint256(_plyr[stor2[address(arg1)]].field_1792),
               uint256(_plyr[stor2[address(arg1)]].field_2048)
    else:
        return 0
}

function removePool(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not uint8(stor1[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x73646572702c207468617420706f6f6c206d75737420626520726567697374657265,
                    mem[198 len 30]
    uint8(stor1[address(arg1)]) = 0
    emit eveRemovePool(arg1);
}

function addPool(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if uint8(stor1[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73646572702c207468617420706f6f6c20616c7265616479206265656e20726567697374657265,
                    mem[203 len 25]
    uint8(stor1[address(arg1)]) = 1
    emit eveAddPool(arg1);
}

function getRegistrationFee() {
    if _totalRegisterCount < _registrationStep:
        return _registrationBaseFee
    if not _registrationStep:
        return _registrationBaseFee
    if not _totalRegisterCount / _registrationStep:
        if _registrationBaseFee < _registrationBaseFee:
            revert with 0, 'SafeMath: addition overflow'
        return _registrationBaseFee
    if _stepFee * _totalRegisterCount / _registrationStep / _totalRegisterCount / _registrationStep != _stepFee:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if (_stepFee * _totalRegisterCount / _registrationStep) + _registrationBaseFee < _registrationBaseFee:
        revert with 0, 'SafeMath: addition overflow'
    return ((_stepFee * _totalRegisterCount / _registrationStep) + _registrationBaseFee)
}

function seize(address arg1) {
    require calldata.size - 4 >= 32
    if sub_74f9b464Address == arg1:
        revert with 0, 'forbbiden dego'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor16)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: TRANSFER_FAILED'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'SafeERC20: TRANSFER_FAILED'
    return ext_call.return_data[0]
}

function checkIfNameValid(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if arg1.length > 32:
        revert with 0, 
                    32,
                    42,
                    0xfe737472696e67206d757374206265206265747765656e203120616e6420333220636861726163746572,
                    mem[ceil32(arg1.length) + 238 len 22]
    if arg1.length <= 0:
        revert with 0, 
                    32,
                    42,
                    0xfe737472696e67206d757374206265206265747765656e203120616e6420333220636861726163746572,
                    mem[ceil32(arg1.length) + 238 len 22]
    require 0 < arg1.length
    if 0 >= arg1.length:
        revert with 0, 'string cannot be only numbers'
    require 0 < arg1.length
    require 0 < arg1.length
    require 0 < arg1.length
    revert with 0, 
                32,
                34,
                0x77737472696e6720636f6e7461696e7320696e76616c696420636861726163746572,
                mem[ceil32(arg1.length) + 230 len 30]
}

function claim() {
    if not uint256(_plyr[stor2[msg.sender]].field_1280):
        revert with 0, 'only have reward'
    if uint256(_plyr[stor2[msg.sender]].field_1280) + uint256(_plyr[stor2[msg.sender]].field_1536) < uint256(_plyr[stor2[msg.sender]].field_1536):
        revert with 0, 'SafeMath: addition overflow'
    uint256(_plyr[stor2[msg.sender]].field_1536) += uint256(_plyr[stor2[msg.sender]].field_1280)
    uint256(_plyr[stor2[msg.sender]].field_1280) = 0
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, _plyr[stor2[msg.sender]].field_1312)
    call sub_74f9b464Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, 0, _plyr[stor2[msg.sender]].field_1280), mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: TRANSFER_FAILED'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'SafeERC20: TRANSFER_FAILED'
    require ext_code.size(sub_74f9b464Address)
    staticcall sub_74f9b464Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit eveClaim(_pIDxAddr[address(msg.sender)], msg.sender, uint256(_plyr[stor2[msg.sender]].field_1280), ext_call.return_data[0]);
}

function registerNameXName(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(this.address)
    staticcall this.address.getRegistrationFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < ext_call.return_data[0]:
        revert with 0, 
                    32,
                    38,
                    0x64756d6d2e2e2e2e2e2020796f75206861766520746f2070617920746865206e616d65206665,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 266 len 26]
    if arg1.length > 32:
        revert with 0, 
                    32,
                    42,
                    0xfe737472696e67206d757374206265206265747765656e203120616e6420333220636861726163746572,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 270 len 22]
    if arg1.length <= 0:
        revert with 0, 
                    32,
                    42,
                    0xfe737472696e67206d757374206265206265747765656e203120616e6420333220636861726163746572,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 270 len 22]
    require 0 < arg1.length
    if 0 >= arg1.length:
        revert with 0, 'string cannot be only numbers'
    require 0 < arg1.length
    require 0 < arg1.length
    require 0 < arg1.length
    revert with 0, 
                32,
                34,
                0x77737472696e6720636f6e7461696e7320696e76616c696420636861726163746572,
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 262 len 30]
}

function bindRefer(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not uint8(stor1[msg.sender]):
        revert with 0, 'invalid pool address!'
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _3 = mem[128]
    require msg.sender
    require arg1
    if _pIDxAddr[address(arg1)]:
        if uint256(_plyr[stor2[address(arg1)]].field_768):
            mem[ceil32(arg2.length) + 128] = 0
        else:
            if not _pIDxName[mem[128]]:
                uint256(_plyr[stor2[address(arg1)]].field_768) = _pIDxName[stor15]
                uint256(_plyr[stor3[stor15]].field_1792)++
                if uint256(_plyr[stor3[stor15]].field_768):
                    uint256(_plyr[uint256(_plyr[stor3[stor15]].field_768)].field_2048)++
                mem[ceil32(arg2.length) + 128] = _pIDxAddr[address(arg1)]
                mem[ceil32(arg2.length) + 160] = arg1
                emit eveBindRefer(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], _defaulRefer, _pIDxName[stor15], address(_plyr[stor3[stor15]].field_0), uint256(_plyr[stor3[stor15]].field_256));
            else:
                _15 = sha3(mem[128], 3)
                if _pIDxName[mem[128]] == _pIDxAddr[address(arg1)]:
                    uint256(_plyr[stor2[address(arg1)]].field_768) = _pIDxName[stor15]
                    uint256(_plyr[stor3[stor15]].field_1792)++
                    if uint256(_plyr[stor3[stor15]].field_768):
                        uint256(_plyr[uint256(_plyr[stor3[stor15]].field_768)].field_2048)++
                    mem[ceil32(arg2.length) + 128] = _pIDxAddr[address(arg1)]
                    mem[ceil32(arg2.length) + 160] = arg1
                    emit eveBindRefer(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], _3, _pIDxName[stor15], address(_plyr[stor3[stor15]].field_0), uint256(_plyr[stor3[stor15]].field_256));
                else:
                    uint256(_plyr[stor2[address(arg1)]].field_768) = _pIDxName[mem[128]]
                    uint256(_plyr[stor3[mem[128]]].field_1792)++
                    if not uint256(_plyr[stor3[mem[128]]].field_768):
                        _25 = sha3(_pIDxName[mem[128]], 4)
                        mem[ceil32(arg2.length) + 128] = _pIDxAddr[address(arg1)]
                        mem[ceil32(arg2.length) + 160] = arg1
                        emit eveBindRefer(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], _3, uint256(stor[_15]), address(stor[_25]), uint256(stor1[_25]));
                    else:
                        uint256(_plyr[uint256(_plyr[stor3[mem[128]]].field_768)].field_2048)++
                        _47 = sha3(_pIDxName[mem[128]], 4)
                        mem[ceil32(arg2.length) + 128] = _pIDxAddr[address(arg1)]
                        mem[ceil32(arg2.length) + 160] = arg1
                        emit eveBindRefer(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], _3, uint256(stor[_15]), address(stor[_47]), uint256(stor1[_47]));
            mem[ceil32(arg2.length) + 128] = 1
    else:
        _pID++
        _pIDxAddr[address(arg1)] = _pID + 1
        address(_plyr[stor7 + 1].field_0) = arg1
        if uint256(_plyr[stor2[address(arg1)]].field_768):
            mem[ceil32(arg2.length) + 128] = 0
        else:
            if not _pIDxName[mem[128]]:
                uint256(_plyr[stor2[address(arg1)]].field_768) = _pIDxName[stor15]
                uint256(_plyr[stor3[stor15]].field_1792)++
                if uint256(_plyr[stor3[stor15]].field_768):
                    uint256(_plyr[uint256(_plyr[stor3[stor15]].field_768)].field_2048)++
                mem[ceil32(arg2.length) + 128] = _pIDxAddr[address(arg1)]
                mem[ceil32(arg2.length) + 160] = arg1
                emit eveBindRefer(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], _defaulRefer, _pIDxName[stor15], address(_plyr[stor3[stor15]].field_0), uint256(_plyr[stor3[stor15]].field_256));
            else:
                _16 = sha3(mem[128], 3)
                if _pIDxName[mem[128]] == _pIDxAddr[address(arg1)]:
                    uint256(_plyr[stor2[address(arg1)]].field_768) = _pIDxName[stor15]
                    uint256(_plyr[stor3[stor15]].field_1792)++
                    if uint256(_plyr[stor3[stor15]].field_768):
                        uint256(_plyr[uint256(_plyr[stor3[stor15]].field_768)].field_2048)++
                    mem[ceil32(arg2.length) + 128] = _pIDxAddr[address(arg1)]
                    mem[ceil32(arg2.length) + 160] = arg1
                    emit eveBindRefer(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], _3, _pIDxName[stor15], address(_plyr[stor3[stor15]].field_0), uint256(_plyr[stor3[stor15]].field_256));
                else:
                    uint256(_plyr[stor2[address(arg1)]].field_768) = _pIDxName[mem[128]]
                    uint256(_plyr[stor3[mem[128]]].field_1792)++
                    if not uint256(_plyr[stor3[mem[128]]].field_768):
                        _36 = sha3(_pIDxName[mem[128]], 4)
                        mem[ceil32(arg2.length) + 128] = _pIDxAddr[address(arg1)]
                        mem[ceil32(arg2.length) + 160] = arg1
                        emit eveBindRefer(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], _3, uint256(stor[_16]), address(stor[_36]), uint256(stor1[_36]));
                    else:
                        uint256(_plyr[uint256(_plyr[stor3[mem[128]]].field_768)].field_2048)++
                        _60 = sha3(_pIDxName[mem[128]], 4)
                        mem[ceil32(arg2.length) + 128] = _pIDxAddr[address(arg1)]
                        mem[ceil32(arg2.length) + 160] = arg1
                        emit eveBindRefer(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], _3, uint256(stor[_16]), address(stor[_60]), uint256(stor1[_60]));
            mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function settleReward(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor1[msg.sender]):
        revert with 0, 'invalid pool address!'
    require arg1
    if not _pIDxAddr[address(arg1)]:
        _pID++
        _pIDxAddr[address(arg1)] = _pID + 1
        address(_plyr[stor7 + 1].field_0) = arg1
    if uint256(_plyr[stor2[address(arg1)]].field_768):
        if not arg2:
            return 0
        if _refer1RewardRate * arg2 / arg2 != _refer1RewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not _baseRate:
            revert with 0, 'SafeMath: division by zero'
        if (_refer1RewardRate * arg2 / _baseRate) + uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_1280) < uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_1280):
            revert with 0, 'SafeMath: addition overflow'
        uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_1280) += _refer1RewardRate * arg2 / _baseRate
        if (_refer1RewardRate * arg2 / _baseRate) + totalReferReward < totalReferReward:
            revert with 0, 'SafeMath: addition overflow'
        totalReferReward += _refer1RewardRate * arg2 / _baseRate
        if _refer1RewardRate * arg2 / _baseRate < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2:
            if not _baseRate:
                revert with 0, 'SafeMath: division by zero'
            if uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_768):
                if (0 / _baseRate) + uint256(_plyr[uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_768)].field_1280) < uint256(_plyr[uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_768)].field_1280):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(_plyr[uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_768)].field_1280) += 0 / _baseRate
                if (0 / _baseRate) + totalReferReward < totalReferReward:
                    revert with 0, 'SafeMath: addition overflow'
                totalReferReward += 0 / _baseRate
                if arg2 + uint256(_plyr[stor2[address(arg1)]].field_1024) < uint256(_plyr[stor2[address(arg1)]].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(_plyr[stor2[address(arg1)]].field_1024) += arg2
                if (0 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate) < _refer1RewardRate * arg2 / _baseRate:
                    revert with 0, 'SafeMath: addition overflow'
                emit eveSettle(_pIDxAddr[address(arg1)], uint256(_plyr[stor2[address(arg1)]].field_768), uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_768), _refer1RewardRate * arg2 / _baseRate, 0 / _baseRate, arg2);
            else:
                if (0 / _baseRate) + uint256(_plyr[stor3[stor15]].field_1280) < uint256(_plyr[stor3[stor15]].field_1280):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(_plyr[stor3[stor15]].field_1280) += 0 / _baseRate
                if (0 / _baseRate) + totalReferReward < totalReferReward:
                    revert with 0, 'SafeMath: addition overflow'
                totalReferReward += 0 / _baseRate
                if arg2 + uint256(_plyr[stor2[address(arg1)]].field_1024) < uint256(_plyr[stor2[address(arg1)]].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(_plyr[stor2[address(arg1)]].field_1024) += arg2
                if (0 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate) < _refer1RewardRate * arg2 / _baseRate:
                    revert with 0, 'SafeMath: addition overflow'
                emit eveSettle(_pIDxAddr[address(arg1)], uint256(_plyr[stor2[address(arg1)]].field_768), _pIDxName[stor15], _refer1RewardRate * arg2 / _baseRate, 0 / _baseRate, arg2);
            return ((0 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate))
        if _refer2RewardRate * arg2 / arg2 != _refer2RewardRate:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not _baseRate:
            revert with 0, 'SafeMath: division by zero'
        if uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_768):
            if (_refer2RewardRate * arg2 / _baseRate) + uint256(_plyr[uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_768)].field_1280) < uint256(_plyr[uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_768)].field_1280):
                revert with 0, 'SafeMath: addition overflow'
            uint256(_plyr[uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_768)].field_1280) += _refer2RewardRate * arg2 / _baseRate
            if (_refer2RewardRate * arg2 / _baseRate) + totalReferReward < totalReferReward:
                revert with 0, 'SafeMath: addition overflow'
            totalReferReward += _refer2RewardRate * arg2 / _baseRate
            if arg2 + uint256(_plyr[stor2[address(arg1)]].field_1024) < uint256(_plyr[stor2[address(arg1)]].field_1024):
                revert with 0, 'SafeMath: addition overflow'
            uint256(_plyr[stor2[address(arg1)]].field_1024) += arg2
            if (_refer2RewardRate * arg2 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate) < _refer1RewardRate * arg2 / _baseRate:
                revert with 0, 'SafeMath: addition overflow'
            emit eveSettle(_pIDxAddr[address(arg1)], uint256(_plyr[stor2[address(arg1)]].field_768), uint256(_plyr[uint256(_plyr[stor2[address(arg1)]].field_768)].field_768), _refer1RewardRate * arg2 / _baseRate, _refer2RewardRate * arg2 / _baseRate, arg2);
        else:
            if (_refer2RewardRate * arg2 / _baseRate) + uint256(_plyr[stor3[stor15]].field_1280) < uint256(_plyr[stor3[stor15]].field_1280):
                revert with 0, 'SafeMath: addition overflow'
            uint256(_plyr[stor3[stor15]].field_1280) += _refer2RewardRate * arg2 / _baseRate
            if (_refer2RewardRate * arg2 / _baseRate) + totalReferReward < totalReferReward:
                revert with 0, 'SafeMath: addition overflow'
            totalReferReward += _refer2RewardRate * arg2 / _baseRate
            if arg2 + uint256(_plyr[stor2[address(arg1)]].field_1024) < uint256(_plyr[stor2[address(arg1)]].field_1024):
                revert with 0, 'SafeMath: addition overflow'
            uint256(_plyr[stor2[address(arg1)]].field_1024) += arg2
            if (_refer2RewardRate * arg2 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate) < _refer1RewardRate * arg2 / _baseRate:
                revert with 0, 'SafeMath: addition overflow'
            emit eveSettle(_pIDxAddr[address(arg1)], uint256(_plyr[stor2[address(arg1)]].field_768), _pIDxName[stor15], _refer1RewardRate * arg2 / _baseRate, _refer2RewardRate * arg2 / _baseRate, arg2);
    else:
        uint256(_plyr[stor2[address(arg1)]].field_768) = _pIDxName[stor15]
        if not arg2:
            return 0
        if _refer1RewardRate * arg2 / arg2 != _refer1RewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not _baseRate:
            revert with 0, 'SafeMath: division by zero'
        if (_refer1RewardRate * arg2 / _baseRate) + uint256(_plyr[stor3[stor15]].field_1280) < uint256(_plyr[stor3[stor15]].field_1280):
            revert with 0, 'SafeMath: addition overflow'
        uint256(_plyr[stor3[stor15]].field_1280) += _refer1RewardRate * arg2 / _baseRate
        if (_refer1RewardRate * arg2 / _baseRate) + totalReferReward < totalReferReward:
            revert with 0, 'SafeMath: addition overflow'
        totalReferReward += _refer1RewardRate * arg2 / _baseRate
        if _refer1RewardRate * arg2 / _baseRate < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2:
            if not _baseRate:
                revert with 0, 'SafeMath: division by zero'
            if uint256(_plyr[stor3[stor15]].field_768):
                if (0 / _baseRate) + uint256(_plyr[uint256(_plyr[stor3[stor15]].field_768)].field_1280) < uint256(_plyr[uint256(_plyr[stor3[stor15]].field_768)].field_1280):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(_plyr[uint256(_plyr[stor3[stor15]].field_768)].field_1280) += 0 / _baseRate
                if (0 / _baseRate) + totalReferReward < totalReferReward:
                    revert with 0, 'SafeMath: addition overflow'
                totalReferReward += 0 / _baseRate
                if arg2 + uint256(_plyr[stor2[address(arg1)]].field_1024) < uint256(_plyr[stor2[address(arg1)]].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(_plyr[stor2[address(arg1)]].field_1024) += arg2
                if (0 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate) < _refer1RewardRate * arg2 / _baseRate:
                    revert with 0, 'SafeMath: addition overflow'
                emit eveSettle(_pIDxAddr[address(arg1)], _pIDxName[stor15], uint256(_plyr[stor3[stor15]].field_768), _refer1RewardRate * arg2 / _baseRate, 0 / _baseRate, arg2);
            else:
                if (0 / _baseRate) + uint256(_plyr[stor3[stor15]].field_1280) < uint256(_plyr[stor3[stor15]].field_1280):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(_plyr[stor3[stor15]].field_1280) += 0 / _baseRate
                if (0 / _baseRate) + totalReferReward < totalReferReward:
                    revert with 0, 'SafeMath: addition overflow'
                totalReferReward += 0 / _baseRate
                if arg2 + uint256(_plyr[stor2[address(arg1)]].field_1024) < uint256(_plyr[stor2[address(arg1)]].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(_plyr[stor2[address(arg1)]].field_1024) += arg2
                if (0 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate) < _refer1RewardRate * arg2 / _baseRate:
                    revert with 0, 'SafeMath: addition overflow'
                emit eveSettle(_pIDxAddr[address(arg1)], _pIDxName[stor15], _pIDxName[stor15], _refer1RewardRate * arg2 / _baseRate, 0 / _baseRate, arg2);
            return ((0 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate))
        if _refer2RewardRate * arg2 / arg2 != _refer2RewardRate:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not _baseRate:
            revert with 0, 'SafeMath: division by zero'
        if uint256(_plyr[stor3[stor15]].field_768):
            if (_refer2RewardRate * arg2 / _baseRate) + uint256(_plyr[uint256(_plyr[stor3[stor15]].field_768)].field_1280) < uint256(_plyr[uint256(_plyr[stor3[stor15]].field_768)].field_1280):
                revert with 0, 'SafeMath: addition overflow'
            uint256(_plyr[uint256(_plyr[stor3[stor15]].field_768)].field_1280) += _refer2RewardRate * arg2 / _baseRate
            if (_refer2RewardRate * arg2 / _baseRate) + totalReferReward < totalReferReward:
                revert with 0, 'SafeMath: addition overflow'
            totalReferReward += _refer2RewardRate * arg2 / _baseRate
            if arg2 + uint256(_plyr[stor2[address(arg1)]].field_1024) < uint256(_plyr[stor2[address(arg1)]].field_1024):
                revert with 0, 'SafeMath: addition overflow'
            uint256(_plyr[stor2[address(arg1)]].field_1024) += arg2
            if (_refer2RewardRate * arg2 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate) < _refer1RewardRate * arg2 / _baseRate:
                revert with 0, 'SafeMath: addition overflow'
            emit eveSettle(_pIDxAddr[address(arg1)], _pIDxName[stor15], uint256(_plyr[stor3[stor15]].field_768), _refer1RewardRate * arg2 / _baseRate, _refer2RewardRate * arg2 / _baseRate, arg2);
        else:
            if (_refer2RewardRate * arg2 / _baseRate) + uint256(_plyr[stor3[stor15]].field_1280) < uint256(_plyr[stor3[stor15]].field_1280):
                revert with 0, 'SafeMath: addition overflow'
            uint256(_plyr[stor3[stor15]].field_1280) += _refer2RewardRate * arg2 / _baseRate
            if (_refer2RewardRate * arg2 / _baseRate) + totalReferReward < totalReferReward:
                revert with 0, 'SafeMath: addition overflow'
            totalReferReward += _refer2RewardRate * arg2 / _baseRate
            if arg2 + uint256(_plyr[stor2[address(arg1)]].field_1024) < uint256(_plyr[stor2[address(arg1)]].field_1024):
                revert with 0, 'SafeMath: addition overflow'
            uint256(_plyr[stor2[address(arg1)]].field_1024) += arg2
            if (_refer2RewardRate * arg2 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate) < _refer1RewardRate * arg2 / _baseRate:
                revert with 0, 'SafeMath: addition overflow'
            emit eveSettle(_pIDxAddr[address(arg1)], _pIDxName[stor15], _pIDxName[stor15], _refer1RewardRate * arg2 / _baseRate, _refer2RewardRate * arg2 / _baseRate, arg2);
    return ((_refer2RewardRate * arg2 / _baseRate) + (_refer1RewardRate * arg2 / _baseRate))
}



}
