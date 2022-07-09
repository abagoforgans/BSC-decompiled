contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 name;
array of struct gameEntry;

function name() {
    return name[0 len name.length]
}

function getGameEntry(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < gameEntry.length
    return gameEntry[arg1].field_0, 
           gameEntry[arg1].field_256,
           gameEntry[arg1].field_512,
           bool(gameEntry[arg1].field_520),
           gameEntry[arg1].field_768
}

function getGameCount() {
    return gameEntry.length
}

function destroy() {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x74546869732066756e6374696f6e2063616e206f6e6c79206265206c61756e6368656420627920746865206f776e65,
                    mem[211 len 17]
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x74546869732066756e6374696f6e2063616e206f6e6c79206265206c61756e6368656420627920746865206f776e65,
                    mem[211 len 17]
    if arg1 >= eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x74596f752063616e6e6f74207769746864726177206d6f7265207468616e207768617420697320617661696c61626c6520696e2074686520636f6e74726163,
                    mem[227 len 1]
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lottery(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        if arg1 != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        60,
                        0x725661726961626c6520276775657373272073686f756c6420626520656974686572203020282768656164732729206f7220312028277461696c7327,
                        mem[224 len 4]
    if msg.value <= 0:
        revert with 0, 'Bet more than 0'
    if msg.value > eth.balance(this.address) - msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe596f752063616e6e6f7420626574206d6f7265207468616e207768617420697320617661696c61626c6520696e20746865206a61636b706f,
                    mem[221 len 7]
    if arg1 != bool(sha3(block.difficulty, msg.sender, block.timestamp)):
        emit 0x911dde7c: bool(sha3(block.difficulty, msg.sender, block.timestamp))
        gameEntry.length++
        gameEntry[gameEntry.length].field_0 = msg.sender
        gameEntry[gameEntry.length].field_256 = msg.value
        gameEntry[gameEntry.length].field_512 = arg1
        gameEntry[gameEntry.length].field_520 = 0
        gameEntry[gameEntry.length].field_768 = eth.balance(this.address)
        return 0
    call msg.sender with:
       value 2 * msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x911dde7c: bool(sha3(block.difficulty, msg.sender, block.timestamp))
    gameEntry.length++
    gameEntry[gameEntry.length].field_0 = msg.sender
    gameEntry[gameEntry.length].field_256 = msg.value
    gameEntry[gameEntry.length].field_512 = arg1
    gameEntry[gameEntry.length].field_520 = 1
    gameEntry[gameEntry.length].field_768 = eth.balance(this.address)
    return 1
}



}
