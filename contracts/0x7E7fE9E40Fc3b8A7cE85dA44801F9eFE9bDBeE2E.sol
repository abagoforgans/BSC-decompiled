contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 stor1;
mapping of address addressVars;
mapping of uint256 totalSupply;
mapping of uint256 requestIdByTimestamp;
mapping of uint256 requestIdByRequestQIndex;
mapping of struct disputeUintVars;
mapping of struct stakerInfo;
array of struct newValueCountbyRequestId;
mapping of uint256 requestIdByQueryHash;
mapping of uint256 disputeIdByDisputeHash;

function getRequestIdByTimestamp(uint256 arg1) {
    require calldata.size - 4 >= 32
    return requestIdByTimestamp[arg1]
}

function getAddressVars(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return addressVars[arg1]
}

function totalSupply() {
    return totalSupply['total_supply']
}

function getRequestIdByQueryHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return requestIdByQueryHash[arg1]
}

function isInDispute(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return bool(uint8(newValueCountbyRequestId[arg1][7][arg2].field_0))
}

function getNewValueCountbyRequestId(uint256 arg1) {
    require calldata.size - 4 >= 32
    return newValueCountbyRequestId[arg1].field_768
}

function getUintVar(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function getRequestIdByRequestQIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > 50:
        revert with 0, 'RequestQ index is above 50'
    return requestIdByRequestQIndex[arg1]
}

function getStakerInfo(address arg1) {
    require calldata.size - 4 >= 32
    return stakerInfo[address(arg1)].field_0, stakerInfo[address(arg1)].field_256
}

function getTimestampbyRequestIDandIndex(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < newValueCountbyRequestId[arg1].field_768
    return stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'newValueCountbyRequestId', 72))) + arg2].field_0
}

function getDisputeUintVars(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return disputeUintVars[arg1][5][arg2].field_0
}

function retrieveData(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return newValueCountbyRequestId[arg1][6][arg2].field_0
}

function didVote(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(uint8(disputeUintVars[arg1][6][address(arg2)].field_0))
}

function getAllDisputeVars(uint256 arg1) {
    require calldata.size - 4 >= 32
    return disputeUintVars[arg1].field_0, 
           bool(uint8(disputeUintVars[arg1].field_512)),
           bool(uint8(disputeUintVars[arg1].field_520)),
           bool(uint8(disputeUintVars[arg1].field_528)),
           address(disputeUintVars[arg1].field_512),
           address(disputeUintVars[arg1].field_768),
           address(disputeUintVars[arg1].field_1024),
           Mask(2304, 0, disputeUintVars[arg1][5][sha3('fee')].field_0),
           disputeUintVars[arg1].field_256
}

function getMinedBlockNum(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return newValueCountbyRequestId[arg1][5][arg2].field_0
}

function getDisputeIdByDisputeHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return disputeIdByDisputeHash[arg1]
}

function getRequestUintVars(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return newValueCountbyRequestId[arg1][4][arg2].field_0
}

function getLastNewValue() {
    return newValueCountbyRequestId[stor66[stor64['timeOfLastNewValue']]][6][stor64['timeOfLastNewValue']].field_0, 1
}

function changeDeity(address arg1) {
    require calldata.size - 4 >= 32
    if addressVars['_deity'] != msg.sender:
        revert with 0, 'Sender is not deity'
    addressVars['_deity'] = arg1
}

function getRequestQ() {
    idx = 3360
    s = 1
    while 4992 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return stor1.length, mem[3392 len 1600]
}

function changeBerryContract(address arg1) {
    require calldata.size - 4 >= 32
    if addressVars['_deity'] != msg.sender:
        revert with 0, 'Sender is not deity'
    addressVars['berryContract'] = arg1
    emit 0xfa6e3b02: arg1
}

function _fallback() payable {
    delegate addressVars['berryContract'] with:
       funct call.data[0 len 4]
         gas -1 wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function getSubmissionsByTimestamp(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    idx = 416
    s = 0
    while 576 > idx + 32:
        mem[idx + 32] = newValueCountbyRequestId[arg1][9][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return newValueCountbyRequestId[arg1][9][arg2].field_0, mem[448 len 128]
}

function getMinersByRequestIdAndTimestamp(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    idx = 416
    s = 0
    while 576 > idx + 32:
        mem[idx + 32] = address(newValueCountbyRequestId[arg1][8][arg2][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(newValueCountbyRequestId[arg1][8][arg2].field_0), mem[448 len 128]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x52453aaa308b18710155783ca3a8b31f7eebd3fb)
    delegate 0x52453aaa308b18710155783ca3a8b31f7eebd3fb.0x17408d57 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function didMine(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x1e132f6f84983af87f708debd35b66b3276a99af)
    delegate 0x1e132f6f84983af87f708debd35b66b3276a99af.0x3e0e4206 with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getLastNewValueById(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not newValueCountbyRequestId[arg1].field_768:
        return 0
    require newValueCountbyRequestId[arg1].field_768 - 1 < newValueCountbyRequestId[arg1].field_768
    return newValueCountbyRequestId[arg1][6][stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'newValueCountbyRequestId', 72))) + newValueCountbyRequestId[arg1].field_768].field_0].field_0, 
           1
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x52453aaa308b18710155783ca3a8b31f7eebd3fb)
    delegate 0x52453aaa308b18710155783ca3a8b31f7eebd3fb.0x2826ac83 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function balanceOfAt(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x52453aaa308b18710155783ca3a8b31f7eebd3fb)
    delegate 0x52453aaa308b18710155783ca3a8b31f7eebd3fb.0x7f0ee307 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function allowedToTrade(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x52453aaa308b18710155783ca3a8b31f7eebd3fb)
    delegate 0x52453aaa308b18710155783ca3a8b31f7eebd3fb.0x3dba7659 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getCurrentVariables() {
    mem[128] = newValueCountbyRequestId[stor64['currentRequestId']].field_0
    idx = 128
    s = 0
    while newValueCountbyRequestId[stor64['currentRequestId']].length + 96 > idx:
        mem[idx + 32] = newValueCountbyRequestId[stor64['currentRequestId']][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0, 
           totalSupply['currentRequestId'],
           totalSupply['difficulty'],
           Array(len=newValueCountbyRequestId[stor64['currentRequestId']].length, data=mem[128 len newValueCountbyRequestId[stor64['currentRequestId']].length]),
           newValueCountbyRequestId[stor64['currentRequestId']][4][sha3('granularity')].field_0,
           newValueCountbyRequestId[stor64['currentRequestId']][4][sha3('totalTip')].field_0
}

function getVariablesOnDeck() {
    mem[96] = stor1.length
    idx = 96
    s = 1
    while 1728 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    idx = 2
    s = 1
    t = mem[128]
    while idx < 51:
        if mem[(32 * idx) + 96] <= t:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < 51
        idx = idx + 1
        s = idx
        t = mem[(32 * idx) + 96]
        continue 
    mem[32] = 72
    mem[64] = ceil32(newValueCountbyRequestId[stor67[s]].length) + 1760
    mem[1728] = newValueCountbyRequestId[stor67[s]].length
    mem[0] = sha3(requestIdByRequestQIndex[s], 72)
    mem[1760] = newValueCountbyRequestId[stor67[s]].field_0
    t = 1760
    u = 0
    while newValueCountbyRequestId[stor67[s]].length + 1728 > t:
        mem[t + 32] = stor[u + sha3(mem[0]) + 1]
        t = t + 32
        u = u + 1
        continue 
    mem[mem[64]] = requestIdByRequestQIndex[s]
    mem[mem[64] + 32] = newValueCountbyRequestId[stor67[s]][4][sha3('totalTip')].field_0
    mem[mem[64] + 64] = 96
    mem[mem[64] + 96] = mem[1728]
    _47 = mem[1728]
    mem[mem[64] + 128 len ceil32(mem[1728])] = mem[1760 len ceil32(mem[1728])]
    if not _47 % 32:
        return requestIdByRequestQIndex[s], 
               newValueCountbyRequestId[stor67[s]][4][sha3('totalTip')].field_0,
               96,
               mem[mem[64] + 96 len _47 + 32]
    mem[floor32(_47) + mem[64] + 128] = mem[floor32(_47) + mem[64] + -(_47 % 32) + 160 len _47 % 32]
    return requestIdByRequestQIndex[s], 
           newValueCountbyRequestId[stor67[s]][4][sha3('totalTip')].field_0,
           96,
           mem[mem[64] + 96 len floor32(_47) + 64]
}

function getRequestVars(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = sha3(arg1, 72) + 4
    mem[96] = newValueCountbyRequestId[arg1].length
    mem[0] = sha3(arg1, 72)
    mem[128] = newValueCountbyRequestId[arg1].field_0
    idx = 128
    s = 0
    while newValueCountbyRequestId[arg1].length + 96 > idx:
        mem[idx + 32] = newValueCountbyRequestId[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 160
    mem[ceil32(newValueCountbyRequestId[arg1].length) + 128] = newValueCountbyRequestId[arg1][1].length
    mem[ceil32(newValueCountbyRequestId[arg1].length) + 160] = newValueCountbyRequestId[arg1][1].field_0
    idx = ceil32(newValueCountbyRequestId[arg1].length) + 160
    s = 0
    while ceil32(newValueCountbyRequestId[arg1].length) + newValueCountbyRequestId[arg1][1].length + 128 > idx:
        mem[idx + 32] = newValueCountbyRequestId[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 224] = newValueCountbyRequestId[arg1].field_512
    mem[ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 256] = newValueCountbyRequestId[arg1][4][sha3('granularity')].field_0
    mem[ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 288] = newValueCountbyRequestId[arg1][4][sha3('requestQPosition')].field_0
    mem[ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 320] = newValueCountbyRequestId[arg1][4][sha3('totalTip')].field_0
    mem[ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 160] = 192
    mem[ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 352] = newValueCountbyRequestId[arg1].length
    mem[ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 384 len ceil32(newValueCountbyRequestId[arg1].length)] = mem[128 len ceil32(newValueCountbyRequestId[arg1].length)]
    mem[ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 192] = newValueCountbyRequestId[arg1].length + 224
    mem[newValueCountbyRequestId[arg1].length + ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 384] = newValueCountbyRequestId[arg1][1].length
    mem[newValueCountbyRequestId[arg1].length + ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 416 len ceil32(newValueCountbyRequestId[arg1][1].length)] = mem[ceil32(newValueCountbyRequestId[arg1].length) + 160 len ceil32(newValueCountbyRequestId[arg1][1].length)]
    if not newValueCountbyRequestId[arg1][1].length % 32:
        return Array(len=newValueCountbyRequestId[arg1].length, data=mem[128 len ceil32(newValueCountbyRequestId[arg1].length)], mem[(2 * ceil32(newValueCountbyRequestId[arg1].length)) + ceil32(newValueCountbyRequestId[arg1][1].length) + 384 len newValueCountbyRequestId[arg1][1].length + newValueCountbyRequestId[arg1].length + -ceil32(newValueCountbyRequestId[arg1].length) + 32]), 
               newValueCountbyRequestId[arg1].length + 224,
               newValueCountbyRequestId[arg1].field_512,
               newValueCountbyRequestId[arg1][4][sha3('granularity')].field_0,
               newValueCountbyRequestId[arg1][4][sha3('requestQPosition')].field_0,
               newValueCountbyRequestId[arg1][4][sha3('totalTip')].field_0
    mem[floor32(newValueCountbyRequestId[arg1][1].length) + newValueCountbyRequestId[arg1].length + ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + 416] = mem[floor32(newValueCountbyRequestId[arg1][1].length) + newValueCountbyRequestId[arg1].length + ceil32(newValueCountbyRequestId[arg1].length) + ceil32(newValueCountbyRequestId[arg1][1].length) + -newValueCountbyRequestId[arg1][1].length % 32 + 448 len newValueCountbyRequestId[arg1][1].length % 32]
    return Array(len=newValueCountbyRequestId[arg1].length, data=mem[128 len ceil32(newValueCountbyRequestId[arg1].length)], mem[(2 * ceil32(newValueCountbyRequestId[arg1].length)) + ceil32(newValueCountbyRequestId[arg1][1].length) + 384 len floor32(newValueCountbyRequestId[arg1][1].length) + newValueCountbyRequestId[arg1].length + -ceil32(newValueCountbyRequestId[arg1].length) + 64]), 
           newValueCountbyRequestId[arg1].length + 224,
           newValueCountbyRequestId[arg1].field_512,
           newValueCountbyRequestId[arg1][4][sha3('granularity')].field_0,
           newValueCountbyRequestId[arg1][4][sha3('requestQPosition')].field_0,
           newValueCountbyRequestId[arg1][4][sha3('totalTip')].field_0
}



}
