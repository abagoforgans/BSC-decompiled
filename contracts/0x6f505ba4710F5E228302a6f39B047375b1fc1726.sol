contract main {




// =====================  Runtime code  =====================


const name = 'oken'

const totalSupply = 0

const decimals = 18

const symbol = ''

const feePerc = 10


address owner;
uint256 price;
uint8 depth;
uint256 sub_19863f35;
array of uint256 sub_28ba9741;
mapping of address sub_2c2dbcb9;
mapping of uint256 sub_b880d229;
mapping of uint8 sub_1b3ce95f;
mapping of struct sub_92d5e98b;
uint256 sub_ace6aea2;
uint256 sub_f7cfbeb3;
mapping of uint256 sub_9fdb54c7;

function sub_19863f35(?) {
    return sub_19863f35
}

function sub_1b3ce95f(?) {
    require calldata.size - 4 >= 32
    return sub_1b3ce95f[arg1]
}

function sub_28ba9741(?) {
    require calldata.size - 4 >= 32
    return sub_28ba9741[address(arg1)]
}

function sub_2c2dbcb9(?) {
    require calldata.size - 4 >= 32
    return sub_2c2dbcb9[arg1]
}

function depth() {
    return depth
}

function owner() {
    return owner
}

function sub_92d5e98b(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_92d5e98b[arg1].field_0), uint256(sub_92d5e98b[arg1].field_256)
}

function sub_9fdb54c7(?) {
    require calldata.size - 4 >= 32
    return sub_9fdb54c7[arg1]
}

function price() {
    return price
}

function sub_ace6aea2(?) {
    return sub_ace6aea2
}

function sub_b880d229(?) {
    require calldata.size - 4 >= 32
    return sub_b880d229[arg1]
}

function sub_f7beb7f9(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_28ba9741[arg1]
    return sub_28ba9741[arg1][arg2]
}

function sub_f7cfbeb3(?) {
    return sub_f7cfbeb3
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return 0
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    return 0
}

function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                37,
                0xfe4e6f7420616363657074696e67207061796d656e747320616e79206f7468657220776179,
                mem[201 len 27]
}

function play(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value < 2 * price:
        revert with 0, 'Insufficient amount sent.'
    if not sub_1b3ce95f[arg1]:
        revert with 0, 'Referral already used up.'
    sub_2c2dbcb9[stor3] = msg.sender
    sub_28ba9741[address(msg.sender)]++
    sub_28ba9741[address(msg.sender)][sub_28ba9741[address(msg.sender)]] = sub_19863f35
    sub_b880d229[stor3] = arg1
    sub_1b3ce95f[stor3] = 2
    sub_1b3ce95f[arg1] = uint8(sub_1b3ce95f[arg1] - 1)
    sub_9fdb54c7[stor3] = 2^depth
    uint256(sub_92d5e98b[stor3].field_0) = 0
    uint256(sub_92d5e98b[stor3].field_256) = sub_f7cfbeb3
    uint256(sub_92d5e98b[stor10].field_0) = sub_19863f35
    sub_f7cfbeb3 = sub_19863f35
    if not sub_1b3ce95f[arg1]:
        if arg1 != sub_ace6aea2:
            uint256(sub_92d5e98b[uint256(sub_92d5e98b[arg1].field_0)].field_256) = uint256(sub_92d5e98b[arg1].field_256)
            uint256(sub_92d5e98b[uint256(sub_92d5e98b[arg1].field_256)].field_0) = uint256(sub_92d5e98b[arg1].field_0)
        else:
            sub_ace6aea2 = uint256(sub_92d5e98b[arg1].field_0)
            uint256(sub_92d5e98b[uint256(sub_92d5e98b[arg1].field_0)].field_256) = 0
        uint256(sub_92d5e98b[arg1].field_0) = 0
        uint256(sub_92d5e98b[arg1].field_256) = 0
    idx = 1
    s = arg1
    while uint8(idx) < depth:
        mem[0] = s
        mem[32] = 6
        idx = idx + 1
        s = sub_b880d229[s]
        continue 
    sub_9fdb54c7[arg1 + (256 * None - 1)]--
    call sub_2c2dbcb9[arg1 + (256 * None - 1)] with:
       value price - (10 * price / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_2c2dbcb9[arg1] with:
       value price wei
         gas 2300 * is_zero(value) wei
    call owner with:
       value 10 * price / 100 wei
         gas 2300 * is_zero(value) wei
    sub_19863f35++
    if msg.value - (2 * price):
        call msg.sender with:
           value msg.value - (2 * price) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_73fd72ff(?) payable {
    if msg.value < (20 * price / 100) + (2 * price):
        revert with 0, 'Insufficient amount sent.'
    if not sub_1b3ce95f[stor9]:
        revert with 0, 'Referral already used up.'
    sub_2c2dbcb9[stor3] = msg.sender
    sub_28ba9741[address(msg.sender)]++
    sub_28ba9741[address(msg.sender)][sub_28ba9741[address(msg.sender)]] = sub_19863f35
    sub_b880d229[stor3] = sub_ace6aea2
    sub_1b3ce95f[stor3] = 2
    sub_1b3ce95f[stor9] = uint8(sub_1b3ce95f[stor9] - 1)
    sub_9fdb54c7[stor3] = 2^depth
    uint256(sub_92d5e98b[stor3].field_0) = 0
    uint256(sub_92d5e98b[stor3].field_256) = sub_f7cfbeb3
    uint256(sub_92d5e98b[stor10].field_0) = sub_19863f35
    sub_f7cfbeb3 = sub_19863f35
    if not sub_1b3ce95f[stor9]:
        if sub_ace6aea2 != sub_ace6aea2:
            uint256(sub_92d5e98b[uint256(sub_92d5e98b[stor9].field_0)].field_256) = uint256(sub_92d5e98b[stor9].field_256)
            uint256(sub_92d5e98b[uint256(sub_92d5e98b[stor9].field_256)].field_0) = uint256(sub_92d5e98b[stor9].field_0)
        else:
            sub_ace6aea2 = uint256(sub_92d5e98b[stor9].field_0)
            uint256(sub_92d5e98b[uint256(sub_92d5e98b[stor9].field_0)].field_256) = 0
        uint256(sub_92d5e98b[stor9].field_0) = 0
        uint256(sub_92d5e98b[stor9].field_256) = 0
    idx = 1
    s = sub_ace6aea2
    while uint8(idx) < depth:
        mem[0] = s
        mem[32] = 6
        idx = idx + 1
        s = sub_b880d229[s]
        continue 
    sub_9fdb54c7[stor9 + (256 * None - 1)]--
    call sub_2c2dbcb9[stor9 + (256 * None - 1)] with:
       value price - (10 * price / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_2c2dbcb9[stor9] with:
       value price wei
         gas 2300 * is_zero(value) wei
    call owner with:
       value 10 * price / 100 wei
         gas 2300 * is_zero(value) wei
    sub_19863f35++
    call owner with:
       value 20 * price / 100 wei
         gas 2300 * is_zero(value) wei
    if msg.value - (2 * price) - (20 * price / 100):
        call msg.sender with:
           value msg.value - (2 * price) - (20 * price / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    t = 0
    while idx < sub_28ba9741[address(arg1)]:
        require idx < sub_28ba9741[address(arg1)]
        require idx < sub_28ba9741[address(arg1)]
        _18 = sha3(sub_28ba9741[address(arg1)][idx], 7)
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = sub_1b3ce95f[stor4[address(arg1)][idx]] + s
        t = t + sub_9fdb54c7[stor4[address(arg1)][idx]]
        continue 
    return ((90 * t * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * sub_28ba9741[address(arg1)] * price / 100) + (price * stor[_18] * sub_28ba9741[address(arg1)]))
}



}
