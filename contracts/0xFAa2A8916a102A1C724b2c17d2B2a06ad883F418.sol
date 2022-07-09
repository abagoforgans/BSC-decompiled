contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
uint256 price;
uint256 sub_2515dad6;
uint256 stor12;
uint256 max;
uint256 sub_268e7958;
uint256 price1;
uint256 price2;
uint256 price3;
uint256 price4;
uint256 sub_109fea86;
mapping of address users;
array of struct sub_10ad5d9e;
mapping of uint256 sub_962f2835;

function sub_109fea86(?) {
    return sub_109fea86
}

function sub_10ad5d9e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_10ad5d9e.length
    return sub_10ad5d9e[arg1].field_0, sub_10ad5d9e[arg1].field_256, sub_10ad5d9e[arg1].field_512
}

function sub_2515dad6(?) {
    return sub_2515dad6
}

function sub_268e7958(?) {
    return sub_268e7958
}

function price4() {
    return price4
}

function price2() {
    return price2
}

function max() {
    return max
}

function price1() {
    return price1
}

function sub_962f2835(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_962f2835[arg1]
}

function price() {
    return price
}

function users(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1]
}

function price3() {
    return price3
}

function _fallback() payable {
    revert
}

function random() {
    if stor12 == -1:
        revert with 'NH{q', 17
    stor12++
    sub_2515dad6 = sha3(block.timestamp, msg.sender, stor12) % 100
    return (sha3(block.timestamp, msg.sender, stor12) % 100)
}

function setMaxBuy(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorteo: Must have admin role to setAdmin'
    max = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorteo: Must have admin role to setAdmin'
    stor0 = arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorteo: Must have admin role to setPrice'
    price = arg1
}

function setPrice3(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorteo: Must have admin role to setPrice'
    price3 = arg1
}

function setPrice1(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorteo: Must have admin role to setPrice'
    price1 = arg1
}

function setPrice4(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorteo: Must have admin role to setPrice'
    price4 = arg1
}

function setPrice2(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorteo: Must have admin role to setPrice'
    price2 = arg1
}

function setFeeBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorteo: Must have admin role to withdraw'
    sub_109fea86 = arg1
}

function withdrawBNB() {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorteo: Must have admin role to withdraw'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorteo: Must have admin role to withdraw'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4f0c3882(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Sorteo: Must have admin role to setAddMinterAdminNFT1'
    require ext_code.size(stor1)
    call stor1.addMinterAdmin(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2a269bb6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lottery: Must have admin role to setAddMinterAdminNFT2'
    require ext_code.size(stor2)
    call stor2.addMinterAdmin(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_38c8b92a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lottery: Must have admin role to setAddMinterAdminNFT5'
    require ext_code.size(stor5)
    call stor5.addMinterAdmin(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_65d80247(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lottery: Must have admin role to setAddMinterAdminNFT4'
    require ext_code.size(stor4)
    call stor4.addMinterAdmin(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6e08b733(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lottery: Must have admin role to setAddMinterAdminNFT3'
    require ext_code.size(stor3)
    call stor3.addMinterAdmin(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a6fedf4a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != price4:
        revert with 0, 'Sorteo: Incorrect amount'
    if not msg.sender:
        revert with 0, 'Sorteo: Incorrect address'
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Sorteo: You dont have enough money'
    if msg.value < sub_109fea86:
        revert with 0, 'Play: The amount of BNB is insufficient'
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args stor8, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xbe08c5e6: 0, arg1, msg.sender
    if max < sub_268e7958:
        revert with 0, 'Limit mint. Thanks'
    require ext_code.size(stor6)
    call stor6.0xd0888d44 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_962f2835[address(msg.sender)] = 6
    if sub_268e7958 == -1:
        revert with 'NH{q', 17
    sub_268e7958++
}

function sub_25cccb94(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != price1:
        revert with 0, 'Sorteo: Incorrect amount'
    if not msg.sender:
        revert with 0, 'Sorteo: Incorrect address'
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Sorteo: You dont have enough money'
    if msg.value < sub_109fea86:
        revert with 0, 'Play: The amount of BNB is insufficient'
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args stor8, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xbe08c5e6: 0, arg1, msg.sender
    if max < sub_268e7958:
        revert with 0, 'Limit mint. Thanks'
    if stor12 == -1:
        revert with 'NH{q', 17
    stor12++
    sub_2515dad6 = sha3(block.timestamp, msg.sender, stor12) % 100
    if sha3(block.timestamp, msg.sender, stor12) % 100 >= 0:
        if sha3(block.timestamp, msg.sender, stor12) % 100 <= 70:
            require ext_code.size(stor1)
            call stor1.0xd0888d44 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_962f2835[address(msg.sender)] = 1
        if sha3(block.timestamp, msg.sender, stor12) % 100 >= 71:
            if sha3(block.timestamp, msg.sender, stor12) % 100 <= 96:
                require ext_code.size(stor2)
                call stor2.0xd0888d44 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_962f2835[address(msg.sender)] = 2
            if sha3(block.timestamp, msg.sender, stor12) % 100 >= 97:
                if sha3(block.timestamp, msg.sender, stor12) % 100 <= 98:
                    require ext_code.size(stor3)
                    call stor3.0xd0888d44 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_962f2835[address(msg.sender)] = 3
                if sha3(block.timestamp, msg.sender, stor12) % 100 >= 99:
                    if sha3(block.timestamp, msg.sender, stor12) % 100 <= 100:
                        require ext_code.size(stor4)
                        call stor4.0xd0888d44 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_962f2835[address(msg.sender)] = 4
    if sub_268e7958 == -1:
        revert with 'NH{q', 17
    sub_268e7958++
}

function mint2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != price2:
        revert with 0, 'Sorteo: Incorrect amount'
    if not msg.sender:
        revert with 0, 'Sorteo: Incorrect address'
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Sorteo: You dont have enough money'
    if msg.value < sub_109fea86:
        revert with 0, 'Play: The amount of BNB is insufficient'
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args stor8, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xbe08c5e6: 0, arg1, msg.sender
    if max < sub_268e7958:
        revert with 0, 'Limit mint. Thanks'
    if stor12 == -1:
        revert with 'NH{q', 17
    stor12++
    sub_2515dad6 = sha3(block.timestamp, msg.sender, stor12) % 100
    if sha3(block.timestamp, msg.sender, stor12) % 100 >= 0:
        if sha3(block.timestamp, msg.sender, stor12) % 100 <= 10:
            require ext_code.size(stor1)
            call stor1.0xd0888d44 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_962f2835[address(msg.sender)] = 1
        if sha3(block.timestamp, msg.sender, stor12) % 100 >= 11:
            if sha3(block.timestamp, msg.sender, stor12) % 100 <= 80:
                require ext_code.size(stor2)
                call stor2.0xd0888d44 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_962f2835[address(msg.sender)] = 2
            if sha3(block.timestamp, msg.sender, stor12) % 100 >= 81:
                if sha3(block.timestamp, msg.sender, stor12) % 100 <= 98:
                    require ext_code.size(stor3)
                    call stor3.0xd0888d44 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_962f2835[address(msg.sender)] = 3
                if sha3(block.timestamp, msg.sender, stor12) % 100 >= 99:
                    if sha3(block.timestamp, msg.sender, stor12) % 100 <= 100:
                        require ext_code.size(stor4)
                        call stor4.0xd0888d44 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_962f2835[address(msg.sender)] = 4
    if sub_268e7958 == -1:
        revert with 'NH{q', 17
    sub_268e7958++
}

function sub_1913df1d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != price3:
        revert with 0, 'Sorteo: Incorrect amount'
    if not msg.sender:
        revert with 0, 'Sorteo: Incorrect address'
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Sorteo: You dont have enough money'
    if msg.value < sub_109fea86:
        revert with 0, 'Play: The amount of BNB is insufficient'
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args stor8, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xbe08c5e6: 0, arg1, msg.sender
    if max < sub_268e7958:
        revert with 0, 'Limit mint. Thanks'
    if stor12 == -1:
        revert with 'NH{q', 17
    stor12++
    sub_2515dad6 = sha3(block.timestamp, msg.sender, stor12) % 100
    if sha3(block.timestamp, msg.sender, stor12) % 100 >= 0:
        if sha3(block.timestamp, msg.sender, stor12) % 100 <= 5:
            require ext_code.size(stor1)
            call stor1.0xd0888d44 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_962f2835[address(msg.sender)] = 1
        if sha3(block.timestamp, msg.sender, stor12) % 100 >= 6:
            if sha3(block.timestamp, msg.sender, stor12) % 100 <= 15:
                require ext_code.size(stor2)
                call stor2.0xd0888d44 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_962f2835[address(msg.sender)] = 2
            if sha3(block.timestamp, msg.sender, stor12) % 100 >= 16:
                if sha3(block.timestamp, msg.sender, stor12) % 100 <= 65:
                    require ext_code.size(stor3)
                    call stor3.0xd0888d44 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_962f2835[address(msg.sender)] = 3
                if sha3(block.timestamp, msg.sender, stor12) % 100 >= 66:
                    if sha3(block.timestamp, msg.sender, stor12) % 100 <= 90:
                        require ext_code.size(stor4)
                        call stor4.0xd0888d44 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_962f2835[address(msg.sender)] = 4
                    if sha3(block.timestamp, msg.sender, stor12) % 100 >= 91:
                        if sha3(block.timestamp, msg.sender, stor12) % 100 <= 100:
                            require ext_code.size(stor5)
                            call stor5.0xd0888d44 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_962f2835[address(msg.sender)] = 5
    if sub_268e7958 == -1:
        revert with 'NH{q', 17
    sub_268e7958++
}



}
