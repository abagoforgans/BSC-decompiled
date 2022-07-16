contract main {




// =====================  Runtime code  =====================


#
#  - claim()
#  - rawFulfillRandomness(bytes32 arg1, uint256 arg2)
#  - distribute()
#  - _fallback()
#
const sub_0688cf66(?) = 2 * 10^17

const sub_26b2388f(?) = 5 * 10^16

const squid = 0x2766cc2537538ac68816b6b5a393fa978a4a89

const usdt = 0x55d398326f99059ff775485246999027b3197955

const sub_4fcf4b64(?) = (25 * 10^13 * 3600)

const sub_5c56c10b(?) = 0x747973a5a2a4ae1d3a8fdf5479f1514f65db9c31

const sub_6592b587(?) = 10

const sub_76b9b99d(?) = 0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c

const sub_93acc5e2(?) = 8 * 10^16

const sub_c7256b29(?) = 10^17

const router = 0x10ed43c718714eb63d5aa57b78b54704e256024e

const LINK_TOKEN = 0x404460c6a5ede2d891e8297795264fde62adbb75


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint256 stor1;
address owner;
address stor3;
address stor4;
mapping of uint256 stor5;
address oracleAddress;
uint256 sub_c7790c5b;
uint256 sub_92e9d048;
uint256 sub_f6f0f983;
address sub_bbf30f2dAddress;
uint256 start;
uint256 end;
uint256 sub_e3a4f456;
uint8 distributed;
mapping of struct bets;
mapping of uint256 sub_abde72d8;
array of struct winners;

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function sub_92e9d048(?) {
    return sub_92e9d048
}

function winners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < winners.length
    return winners[arg1].field_0, winners[arg1].field_256, winners[arg1].field_512, bool(winners[arg1].field_768)
}

function sub_abde72d8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_abde72d8[arg1]
}

function sub_bbf30f2d(?) {
    return sub_bbf30f2dAddress
}

function start() {
    return start
}

function sub_c7790c5b(?) {
    return sub_c7790c5b
}

function bets(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if bets[arg1].field_160 >= 5:
        revert with 0, 33
    if bets[arg1].field_512 >= 5:
        revert with 0, 33
    return bets[arg1].field_0, bets[arg1].field_0, bets[arg1].field_256, bets[arg1].field_512, bets[arg1].field_768
}

function sub_e3a4f456(?) {
    return sub_e3a4f456
}

function end() {
    return end
}

function sub_f6f0f983(?) {
    return sub_f6f0f983
}

function distributed() {
    return bool(distributed)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateEnd(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    end = arg1
}

function sub_639be025(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e3a4f456 = arg1
}

function sub_a70d9eb1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f6f0f983 = arg1
}

function sub_b604c5d3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^18:
        revert with 0, 'SquidGame: slippage too high'
    sub_92e9d048 = arg1
}

function sub_ec4b75b1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^18:
        revert with 0, 'SquidGame: slippage too high'
    sub_c7790c5b = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_8e610328(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not bets[arg1].field_0:
        revert with 0, 'SquidGame: Invalid bet id'
    if bets[arg1].field_768 > -7201:
        revert with 0, 17
    if block.timestamp < bets[arg1].field_768 + (2 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SquidGame: This bet is not elegible for reimbursment'
    if bets[arg1].field_512 > 4:
        revert with 0, 33
    if bets[arg1].field_512:
        revert with 0, 'SquidGame: This bet was resolved'
    bets[arg1].field_512 = 4
    if eth.balance(this.address) < bets[arg1].field_256:
        revert with 0, 'Address: insufficient balance'
    call bets[arg1].field_0 with:
       value bets[arg1].field_256 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    if bets[arg1].field_512 >= 5:
        revert with 0, 33
    emit 0xe77e6c55: bets[arg1].field_512, arg1
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'SquidGame: Oracle is null'
    if not arg2:
        revert with 0, 'SquidGame: devs wallet is null'
    if arg4 <= arg3:
        revert with 0, 'SquidGame: Invalid end date'
    if block.timestamp > -3601:
        revert with 0, 17
    if arg3 < block.timestamp + 3600:
        revert with 0, 'SquidGame: Invalid start date'
    if uint8(stor0.field_8):
        stor1 = 1
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor4 = 0x747973a5a2a4ae1d3a8fdf5479f1514f65db9c31
        stor3 = 0x404460c6a5ede2d891e8297795264fde62adbb75
        oracleAddress = arg1
        sub_c7790c5b = 5 * 10^17
        sub_92e9d048 = 2 * 10^17
        sub_f6f0f983 = 2 * 10^17
        start = arg3
        end = arg4
        sub_bbf30f2dAddress = arg2
        sub_e3a4f456 = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor1 = 1
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor4 = 0x747973a5a2a4ae1d3a8fdf5479f1514f65db9c31
            stor3 = 0x404460c6a5ede2d891e8297795264fde62adbb75
            oracleAddress = arg1
            sub_c7790c5b = 5 * 10^17
            sub_92e9d048 = 2 * 10^17
            sub_f6f0f983 = 2 * 10^17
            start = arg3
            end = arg4
            sub_bbf30f2dAddress = arg2
            sub_e3a4f456 = 0
        else:
            uint16(stor0.field_0) = 257
            stor1 = 1
            uint8(stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor4 = 0x747973a5a2a4ae1d3a8fdf5479f1514f65db9c31
                stor3 = 0x404460c6a5ede2d891e8297795264fde62adbb75
                oracleAddress = arg1
                sub_c7790c5b = 5 * 10^17
                sub_92e9d048 = 2 * 10^17
                sub_f6f0f983 = 2 * 10^17
                start = arg3
                end = arg4
                sub_bbf30f2dAddress = arg2
                sub_e3a4f456 = 0
            else:
                uint16(stor0.field_0) = 257
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor4 = 0x747973a5a2a4ae1d3a8fdf5479f1514f65db9c31
                    stor3 = 0x404460c6a5ede2d891e8297795264fde62adbb75
                    oracleAddress = arg1
                    sub_c7790c5b = 5 * 10^17
                    sub_92e9d048 = 2 * 10^17
                    sub_f6f0f983 = 2 * 10^17
                    start = arg3
                    end = arg4
                    sub_bbf30f2dAddress = arg2
                    sub_e3a4f456 = 0
                else:
                    uint16(stor0.field_0) = 257
                    stor4 = 0x747973a5a2a4ae1d3a8fdf5479f1514f65db9c31
                    stor3 = 0x404460c6a5ede2d891e8297795264fde62adbb75
                    uint8(stor0.field_8) = 0
                    oracleAddress = arg1
                    sub_c7790c5b = 5 * 10^17
                    sub_92e9d048 = 2 * 10^17
                    sub_f6f0f983 = 2 * 10^17
                    start = arg3
                    end = arg4
                    sub_bbf30f2dAddress = arg2
                    sub_e3a4f456 = 0
                    uint8(stor0.field_8) = 0
}

function placeBet(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp < start:
        revert with 0, 'SquidGame: The game is over'
    if block.timestamp >= end:
        revert with 0, 'SquidGame: The game is over'
    if not winners.length:
        if 5000 <= winners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'SquidGame: Max unique winners reached. You can continue to play using an address that has had win already'
    else:
        if sub_abde72d8[address(msg.sender)] >= winners.length:
            revert with 0, 50
        if winners[stor16[address(msg.sender)]].field_0 != msg.sender:
            if 5000 <= winners.length:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'SquidGame: Max unique winners reached. You can continue to play using an address that has had win already'
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 2 * 10^17:
        revert with 0, 'SquidGame: Not enough LINK'
    if arg1 > 4:
        revert with 0, 33
    if arg1 != 2:
        if arg1 > 4:
            revert with 0, 33
        if arg1 != 3:
            revert with 0, 'SquidGame: Incorrect bet'
    if msg.value != 35 * 10^15:
        if msg.value != 5 * 10^16:
            if msg.value != 10^17:
                if msg.value != 25 * 10^16:
                    if msg.value != 10^18:
                        revert with 0, 'SquidGame: Incorrect bet value'
    mem[ceil32(return_data.size) + 196] = stor4
    mem[ceil32(return_data.size) + 228] = 2 * 10^17
    mem[ceil32(return_data.size) + 260] = 96
    mem[ceil32(return_data.size) + 292] = 64
    mem[ceil32(return_data.size) + 324 len 64] = 0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c, 0
    require ext_code.size(stor3)
    call stor3.transferAndCall(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args stor4, 2 * 10^17, 96, 64, 0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 224] = 0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c
    mem[(2 * ceil32(return_data.size)) + 256] = 0
    mem[(2 * ceil32(return_data.size)) + 288] = this.address
    mem[(2 * ceil32(return_data.size)) + 320] = stor5[0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c]
    if 1 > !stor5[0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c]:
        revert with 0, 17
    stor5[0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c]++
    if arg1 > 4:
        revert with 0, 33
    bets[0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c][sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128])].field_0 = msg.sender
    if arg1 > 4:
        revert with 0, 33
    bets[0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c][sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128])].field_0 = msg.sender
    bets[0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c][sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128])].field_160 = Mask(96, 0, arg1)
    bets[0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c][sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128])].field_256 = msg.value
    bets[0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c][sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128])].field_512 = 0
    bets[0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c][sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128])].field_768 = 0
    bets[0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c][sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128])].field_768 = block.timestamp
    if arg1 >= 5:
        revert with 0, 33
    emit 0xd9769125: msg.value, arg1, sha3(0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c, sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128])), msg.sender
    stor1 = 1
}



}
