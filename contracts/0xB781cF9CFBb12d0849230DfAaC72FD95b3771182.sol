contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


array of address players;
address stor1;
uint256 ticketPrice;
uint256 sub_c7f698f9;
address lastWinnerAddress;
uint256 tax;
uint256 sub_a0c923c8;
uint256 winnerCount;
uint256 totalPrize;
uint256 stor9;

function getTax() {
    return tax
}

function getTicketPrice() {
    return ticketPrice
}

function sub_a0c923c8(?) {
    return sub_a0c923c8
}

function getWinnerCount() {
    return winnerCount
}

function getTotalPrize() {
    return totalPrize
}

function sub_c7f698f9(?) {
    return sub_c7f698f9
}

function players(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < players.length
    return address(players[arg1])
}

function getLastWinner() {
    return lastWinnerAddress
}

function _fallback() payable {
    revert
}

function setTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor1:
        tax = arg1
    return tax
}

function sub_e9f03b88(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor1:
        sub_a0c923c8 = arg1
    return sub_a0c923c8
}

function setTicketPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor1:
        ticketPrice = arg1
    return ticketPrice
}

function pickWinner() {
    if stor1 != msg.sender:
        revert with 0, 'Sorry, you are not an admin'
    if players.length < sub_a0c923c8:
        revert with 0, 'Not enough ticket sold yet'
    if not players.length:
        revert with 'NH{q', 18
    if sha3(block.difficulty, block.timestamp, players.length) % players.length >= players.length:
        revert with 'NH{q', 50
    lastWinnerAddress = address(players[sha3(block.difficulty, block.timestamp, players.length) % players.length])
    if eth.balance(this.address) and tax > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if stor9 > (-1 * eth.balance(this.address) * tax) - 1:
        revert with 'NH{q', 17
    stor9 += eth.balance(this.address) * tax
    if eth.balance(this.address) < eth.balance(this.address) * tax:
        revert with 'NH{q', 17
    sub_c7f698f9 = eth.balance(this.address) - (eth.balance(this.address) * tax)
    call lastWinnerAddress with:
       value eth.balance(this.address) - (eth.balance(this.address) * tax) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value eth.balance(this.address) * tax wei
         gas 2300 * is_zero(value) wei
    players.length = 0
    idx = 0
    while players.length > idx:
        uint256(players[idx]) = 0
        idx = idx + 1
        continue 
}



}
