contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 90
    stor2 = 5 * 10^16
    stor0 = msg.sender
    return code.data[103 len 4742]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 sub_c40efa7a;
array of struct gameEntry;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function getGameEntry(uint256 arg1) {
    require arg1 < gameEntry.length
    return gameEntry[arg1].field_0, 
           gameEntry[arg1].field_256,
           gameEntry[arg1].field_512,
           gameEntry[arg1].field_768,
           gameEntry[arg1].field_1024,
           bool(gameEntry[arg1].field_1280)
}

function sub_8b1674c3(?) {
    return sub_c40efa7a
}

function sub_c40efa7a(?) {
    return sub_c40efa7a
}

function getGameCount() {
    return gameEntry.length
}

function Kill() {
    require stor0 == msg.sender
    emit Status(Array(len=42, data='Contract was killed, We will be ', 'back soon!'), address(msg.sender), eth.balance(this.address), 1);
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function setMaxAmountToBet(uint256 arg1) {
    require stor0 == msg.sender
    sub_c40efa7a = arg1
    return sub_c40efa7a
}

function withdrawFunds(uint256 arg1) {
    require stor0 == msg.sender
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit Status(Array(len=4, data='Poo!'), address(msg.sender), arg1, 1);
}

function depositFunds(uint256 arg1) payable {
    require stor0 == msg.sender
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit Status(Array(len=4, data='Pee!'), address(msg.sender), msg.value, 1);
}

function Play() payable {
    require msg.value <= sub_c40efa7a
    if bool(block.timestamp):
        emit Status(string arg1, address arg2, uint256 arg3, bool arg4):
                    128,
                    address(msg.sender),
                    msg.value,
                    0,
                    44,
                    'Sorry, you lost your shit! Pleas',
                    'e try again!',
        stor4 = msg.sender
        stor5 = block.number
        stor6 = block.timestamp
        stor7 = msg.value
        stor8 = 0
        stor9 = 0
        gameEntry.length++
        if not gameEntry.length <= gameEntry.length + 1:
            idx = (6 * gameEntry.length) + 6
            while 6 * gameEntry.length > idx:
                gameEntry[idx].field_0 = 0
                gameEntry[idx].field_256 = 0
                gameEntry[idx].field_512 = 0
                gameEntry[idx].field_768 = 0
                gameEntry[idx].field_1024 = 0
                gameEntry[idx].field_1280 = 0
                idx = idx + 6
                continue 
    else:
        if eth.balance(this.address) >= msg.value * stor1 + 100 / 100:
            emit Status(Array(len=42, data='You win! Play again for double o', 'r nothing!'), address(msg.sender), (100 * msg.value) + (stor1 * msg.value) / 100, 1);
            call msg.sender with:
               value (100 * msg.value) + (stor1 * msg.value) / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            stor4 = msg.sender
            stor5 = block.number
            stor6 = block.timestamp
            stor7 = msg.value
            stor8 = (100 * msg.value) + (stor1 * msg.value) / 100
            stor9 = 1
            gameEntry.length++
            if not gameEntry.length <= gameEntry.length + 1:
                idx = (6 * gameEntry.length) + 6
                while 6 * gameEntry.length > idx:
                    gameEntry[idx].field_0 = 0
                    gameEntry[idx].field_256 = 0
                    gameEntry[idx].field_512 = 0
                    gameEntry[idx].field_768 = 0
                    gameEntry[idx].field_1024 = 0
                    gameEntry[idx].field_1280 = 0
                    idx = idx + 6
                    continue 
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Status(Array(len=98, data='Congratulations, you win! Sorry,', ' we didn't have enought money, w', 'e will deposit everything we hav', 'e!'), address(msg.sender), msg.value, 1);
            stor4 = msg.sender
            stor5 = block.number
            stor6 = block.timestamp
            stor7 = msg.value
            stor8 = eth.balance(this.address)
            stor9 = 1
            gameEntry.length++
            if not gameEntry.length <= gameEntry.length + 1:
                idx = (6 * gameEntry.length) + 6
                while 6 * gameEntry.length > idx:
                    gameEntry[idx].field_0 = 0
                    gameEntry[idx].field_256 = 0
                    gameEntry[idx].field_512 = 0
                    gameEntry[idx].field_768 = 0
                    gameEntry[idx].field_1024 = 0
                    gameEntry[idx].field_1280 = 0
                    idx = idx + 6
                    continue 
    gameEntry[gameEntry.length].field_0 = stor4
    gameEntry[gameEntry.length].field_256 = stor5
    gameEntry[gameEntry.length].field_512 = stor6
    gameEntry[gameEntry.length].field_768 = stor7
    gameEntry[gameEntry.length].field_1024 = stor8
    gameEntry[gameEntry.length].field_1280 = uint8(bool(stor9))
}



}
