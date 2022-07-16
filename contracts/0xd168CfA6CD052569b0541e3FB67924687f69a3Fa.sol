contract main {




// =====================  Runtime code  =====================


#
#  - claim()
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
array of uint256 stor22581645139872629890233439717971975110198959689450188087151966948260709403753;
array of uint256 stor22581645139872629890233439717971975110198959689450188087151966948260709403754;
array of uint8 stor22581645139872629890233439717971975110198959689450188087151966948260709403755;

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
        if msg.value != 10^17:
            if msg.value != 25 * 10^16:
                if msg.value != 5 * 10^17:
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

function rawFulfillRandomness(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor4 != msg.sender:
        revert with 0, 'Only VRFCoordinator can fulfill'
    if arg2 % 100 < 10:
        mem[32] = 15
        if bets[arg1].field_512 > 4:
            revert with 0, 33
        if not bets[arg1].field_512:
            bets[arg1].field_512 = 1
            mem[96] = bets[arg1].field_0
            if bets[arg1].field_160 > 4:
                revert with 0, 33
            mem[128] = bets[arg1].field_160
            mem[160] = bets[arg1].field_256
            if bets[arg1].field_512 > 4:
                revert with 0, 33
            mem[192] = bets[arg1].field_512
            mem[224] = bets[arg1].field_768
            mem[260] = 2 * 10^17
            require ext_code.size(oracleAddress)
            call oracleAddress.0xb109c952 with:
                 gas gas_remaining wei
                args 2 * 10^17
            mem[256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < ext_call.return_data[0]:
                revert with 0, 'Address: insufficient balance'
            call owner with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                if bets[arg1].field_257 < ext_call.return_data[0]:
                    revert with 0, 17
                if eth.balance(this.address) < bets[arg1].field_257 - ext_call.return_data[0]:
                    revert with 0, 'Address: insufficient balance'
                call bets[arg1].field_0 with:
                   value bets[arg1].field_257 - ext_call.return_data[0] wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    if bets[arg1].field_258 > !bets[arg1].field_259:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 256] = 3
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 320] = 0x55d398326f99059ff775485246999027b3197955
                    mem[ceil32(return_data.size) + 352] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                    mem[(2 * ceil32(return_data.size)) + 388] = bets[arg1].field_258 + bets[arg1].field_259
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0x1f1033e7 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 32]
                    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 < sub_c7790c5b:
                        revert with 0, 17
                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 388] = this.address
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 32]
                    mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 384] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 388] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                    mem[(6 * ceil32(return_data.size)) + 420] = 128
                    mem[(6 * ceil32(return_data.size)) + 516] = 3
                    idx = 0
                    s = ceil32(return_data.size) + 288
                    t = (6 * ceil32(return_data.size)) + 548
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 452] = this.address
                    mem[(6 * ceil32(return_data.size)) + 484] = -1
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value bets[arg1].field_258 + bets[arg1].field_259 wei
                         gas gas_remaining wei
                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 548 len 96]), address(this.address), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 388] = this.address
                    mem[0] = arg1
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(7 * ceil32(return_data.size)) + 384] = bets[arg1].field_258 + bets[arg1].field_259
                    emit 0x1e8ab247: bets[arg1].field_258 + bets[arg1].field_259, 0
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    mem[(7 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= bets[arg1].field_258 + bets[arg1].field_259:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + 416] = ext_call.return_data[12 len 20]
                    if 1 >= bets[arg1].field_258 + bets[arg1].field_259:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + 448] = 0x55d398326f99059ff775485246999027b3197955
                    mem[(8 * ceil32(return_data.size)) + 484] = bets[arg1].field_259
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0xe5517db with:
                         gas gas_remaining wei
                        args bets[arg1].field_259
                    mem[(8 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 < sub_92e9d048:
                        revert with 0, 17
                    if ext_call.return_data[0] and -sub_92e9d048 + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(10 * ceil32(return_data.size)) + 480] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 484] = (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18
                    mem[(10 * ceil32(return_data.size)) + 516] = 128
                    mem[(10 * ceil32(return_data.size)) + 612] = bets[arg1].field_258 + bets[arg1].field_259
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 416
                    t = (10 * ceil32(return_data.size)) + 644
                    while idx < bets[arg1].field_258 + bets[arg1].field_259:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(10 * ceil32(return_data.size)) + 548] = this.address
                    mem[(10 * ceil32(return_data.size)) + 580] = -1
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value bets[arg1].field_259 wei
                         gas gas_remaining wei
                        args (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18, Array(len=bets[arg1].field_258 + bets[arg1].field_259, data=mem[(10 * ceil32(return_data.size)) + 644 len 32 * bets[arg1].field_258 + bets[arg1].field_259]), address(this.address), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (11 * ceil32(return_data.size)) + 480
                    require return_data.size >= 32
                    _4260 = mem[(10 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32
                    require mem[(10 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 <= test266151307()
                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 511 < (10 * ceil32(return_data.size)) + return_data.size + 480
                    _4264 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 480]
                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 480] > test266151307():
                        revert with 0, 65
                    if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 480]) + 481 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 480]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 480]) + 481
                    mem[(11 * ceil32(return_data.size)) + 480] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 480]
                    require (32 * _4264) + _4260 + 32 <= return_data.size
                    mem[(11 * ceil32(return_data.size)) + 512 len ceil32(32 * _4264)] = mem[(10 * ceil32(return_data.size)) + _4260 + 512 len ceil32(32 * _4264)]
                    if 1 >= _4264:
                        revert with 0, 50
                    _5444 = mem[(11 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    mem[mem[64] + 36] = 0 / 10^18
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    call ????????????????????????????????????????.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, 0 / 10^18
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5560 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5560] == bool(mem[_5560])
                    mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    mem[mem[64] + 36] = _5444
                    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                    call 0x55d398326f99059ff775485246999027b3197955.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _5444
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5624 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5624] == bool(mem[_5624])
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0x2766cc2537538ac68816b6b5a393fa978a4a89, 0x55d398326f99059ff775485246999027b3197955, 0 / 10^18, _5444, 1, 1, owner, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit 0x89213de0: 0 / 10^18, _5444, bets[arg1].field_0, bets[arg1].field_256
                else:
                    mem[ceil32(return_data.size) + 256] = return_data.size
                    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    if bets[arg1].field_258 > !bets[arg1].field_259:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 257] = 3
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 289] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = 0x55d398326f99059ff775485246999027b3197955
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 353] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = bets[arg1].field_258 + bets[arg1].field_259
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0x1f1033e7 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(return_data.size) + 32]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 < sub_c7790c5b:
                        revert with 0, 17
                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = this.address
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len (5 * ceil32(return_data.size)) + 32]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 128
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = 3
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(return_data.size) + 289
                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 549
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = -1
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value bets[arg1].field_258 + bets[arg1].field_259 wei
                         gas gas_remaining wei
                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 96]), address(this.address), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = this.address
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = bets[arg1].field_258 + bets[arg1].field_259
                    emit 0x1e8ab247: bets[arg1].field_258 + bets[arg1].field_259, 0
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 481] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= bets[arg1].field_258 + bets[arg1].field_259:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 417] = ext_call.return_data[12 len 20]
                    if 1 >= bets[arg1].field_258 + bets[arg1].field_259:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = bets[arg1].field_259
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0xe5517db with:
                         gas gas_remaining wei
                        args bets[arg1].field_259
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 481] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 < sub_92e9d048:
                        revert with 0, 17
                    if ext_call.return_data[0] and -sub_92e9d048 + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = 128
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 613] = bets[arg1].field_258 + bets[arg1].field_259
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 417
                    t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 645
                    while idx < bets[arg1].field_258 + bets[arg1].field_259:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = this.address
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = -1
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value bets[arg1].field_259 wei
                         gas gas_remaining wei
                        args (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18, Array(len=bets[arg1].field_258 + bets[arg1].field_259, data=mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 645 len 32 * bets[arg1].field_258 + bets[arg1].field_259]), address(this.address), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 481
                    require return_data.size >= 32
                    _4261 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32
                    require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 <= test266151307()
                    require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 512 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 481
                    _4265 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481]
                    if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481] > test266151307():
                        revert with 0, 65
                    if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481]) + 482 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481]) + 482
                    mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 481] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481]
                    require (32 * _4265) + _4261 + 32 <= return_data.size
                    mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len ceil32(32 * _4265)] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _4261 + 513 len ceil32(32 * _4265)]
                    if 1 >= _4265:
                        revert with 0, 50
                    _5445 = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                    mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    mem[mem[64] + 36] = 0 / 10^18
                    mem[0] = arg1
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    call ????????????????????????????????????????.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, 0 / 10^18
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5561 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5561] == bool(mem[_5561])
                    mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    mem[mem[64] + 36] = _5445
                    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                    call 0x55d398326f99059ff775485246999027b3197955.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _5445
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5625 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5625] == bool(mem[_5625])
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0x2766cc2537538ac68816b6b5a393fa978a4a89, 0x55d398326f99059ff775485246999027b3197955, 0 / 10^18, _5445, 1, 1, owner, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit 0x89213de0: 0 / 10^18, _5445, bets[arg1].field_0, bets[arg1].field_256
            else:
                mem[ceil32(return_data.size) + 256] = return_data.size
                mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                if bets[arg1].field_257 < ext_call.return_data[0]:
                    revert with 0, 17
                if eth.balance(this.address) < bets[arg1].field_257 - ext_call.return_data[0]:
                    revert with 0, 'Address: insufficient balance'
                call bets[arg1].field_0 with:
                   value bets[arg1].field_257 - ext_call.return_data[0] wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    if bets[arg1].field_258 > !bets[arg1].field_259:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 257] = 3
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 289] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = 0x55d398326f99059ff775485246999027b3197955
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 353] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = bets[arg1].field_258 + bets[arg1].field_259
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0x1f1033e7 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(return_data.size) + 32]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 < sub_c7790c5b:
                        revert with 0, 17
                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = this.address
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len (5 * ceil32(return_data.size)) + 32]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 128
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = 3
                    idx = 0
                    s = ceil32(return_data.size) + ceil32(return_data.size) + 289
                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 549
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = -1
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value bets[arg1].field_258 + bets[arg1].field_259 wei
                         gas gas_remaining wei
                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 96]), address(this.address), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = this.address
                    mem[0] = arg1
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = bets[arg1].field_258 + bets[arg1].field_259
                    emit 0x1e8ab247: bets[arg1].field_258 + bets[arg1].field_259, 0
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 481] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= bets[arg1].field_258 + bets[arg1].field_259:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 417] = ext_call.return_data[12 len 20]
                    if 1 >= bets[arg1].field_258 + bets[arg1].field_259:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = bets[arg1].field_259
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0xe5517db with:
                         gas gas_remaining wei
                        args bets[arg1].field_259
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 481] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 < sub_92e9d048:
                        revert with 0, 17
                    if ext_call.return_data[0] and -sub_92e9d048 + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = 128
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 613] = bets[arg1].field_258 + bets[arg1].field_259
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 417
                    t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 645
                    while idx < bets[arg1].field_258 + bets[arg1].field_259:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = this.address
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = -1
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value bets[arg1].field_259 wei
                         gas gas_remaining wei
                        args (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18, Array(len=bets[arg1].field_258 + bets[arg1].field_259, data=mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 645 len 32 * bets[arg1].field_258 + bets[arg1].field_259]), address(this.address), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 481
                    require return_data.size >= 32
                    _4262 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32
                    require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 <= test266151307()
                    require (10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 512 < (10 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 481
                    _4266 = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481]
                    if mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481] > test266151307():
                        revert with 0, 65
                    if (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481]) + 482 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481]) + 482
                    mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 481] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 481 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 481]
                    require (32 * _4266) + _4262 + 32 <= return_data.size
                    mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len ceil32(32 * _4266)] = mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + _4262 + 513 len ceil32(32 * _4266)]
                    if 1 >= _4266:
                        revert with 0, 50
                    _5446 = mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                    mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    mem[mem[64] + 36] = 0 / 10^18
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    call ????????????????????????????????????????.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, 0 / 10^18
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5562] == bool(mem[_5562])
                    mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    mem[mem[64] + 36] = _5446
                    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                    call 0x55d398326f99059ff775485246999027b3197955.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _5446
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5626 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5626] == bool(mem[_5626])
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0x2766cc2537538ac68816b6b5a393fa978a4a89, 0x55d398326f99059ff775485246999027b3197955, 0 / 10^18, _5446, 1, 1, owner, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit 0x89213de0: 0 / 10^18, _5446, bets[arg1].field_0, bets[arg1].field_256
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 257] = return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    if bets[arg1].field_258 > !bets[arg1].field_259:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 258] = 3
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 386] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 290] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 322] = 0x55d398326f99059ff775485246999027b3197955
                    mem[(4 * ceil32(return_data.size)) + 354] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                    mem[(6 * ceil32(return_data.size)) + 390] = bets[arg1].field_258 + bets[arg1].field_259
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0x1f1033e7 with:
                         gas gas_remaining wei
                        args bets[arg1].field_258 + bets[arg1].field_259, mem[(6 * ceil32(return_data.size)) + 422 len 9 * ceil32(return_data.size)]
                    mem[(6 * ceil32(return_data.size)) + 386] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 < sub_c7790c5b:
                        revert with 0, 17
                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(8 * ceil32(return_data.size)) + 390] = this.address
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(8 * ceil32(return_data.size)) + 390 len (13 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + 386] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 390] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                    mem[(8 * ceil32(return_data.size)) + 422] = 128
                    mem[(8 * ceil32(return_data.size)) + 518] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 290
                    t = (8 * ceil32(return_data.size)) + 550
                    while idx < mem[(4 * ceil32(return_data.size)) + 258]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + 454] = this.address
                    mem[(8 * ceil32(return_data.size)) + 486] = -1
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value bets[arg1].field_258 + bets[arg1].field_259 wei
                         gas gas_remaining wei
                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[(8 * ceil32(return_data.size)) + 518 len (32 * mem[(4 * ceil32(return_data.size)) + 258]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(8 * ceil32(return_data.size)) + 390] = this.address
                    mem[0] = arg1
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(8 * ceil32(return_data.size)) + 386] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(10 * ceil32(return_data.size)) + 386] = bets[arg1].field_258 + bets[arg1].field_259
                    emit 0x1e8ab247: bets[arg1].field_258 + bets[arg1].field_259, 0
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    mem[(10 * ceil32(return_data.size)) + 482] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= bets[arg1].field_258 + bets[arg1].field_259:
                        revert with 0, 50
                    mem[(10 * ceil32(return_data.size)) + 418] = ext_call.return_data[12 len 20]
                    if 1 >= bets[arg1].field_258 + bets[arg1].field_259:
                        revert with 0, 50
                    mem[(10 * ceil32(return_data.size)) + 450] = 0x55d398326f99059ff775485246999027b3197955
                    mem[(11 * ceil32(return_data.size)) + 486] = bets[arg1].field_259
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0xe5517db with:
                         gas gas_remaining wei
                        args bets[arg1].field_259
                    mem[(11 * ceil32(return_data.size)) + 482] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 < sub_92e9d048:
                        revert with 0, 17
                    if ext_call.return_data[0] and -sub_92e9d048 + 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(13 * ceil32(return_data.size)) + 482] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(13 * ceil32(return_data.size)) + 486] = (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18
                    mem[(13 * ceil32(return_data.size)) + 518] = 128
                    mem[(13 * ceil32(return_data.size)) + 614] = bets[arg1].field_258 + bets[arg1].field_259
                    idx = 0
                    s = (10 * ceil32(return_data.size)) + 418
                    t = (13 * ceil32(return_data.size)) + 646
                    while idx < bets[arg1].field_258 + bets[arg1].field_259:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(13 * ceil32(return_data.size)) + 550] = this.address
                    mem[(13 * ceil32(return_data.size)) + 582] = -1
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value bets[arg1].field_259 wei
                         gas gas_remaining wei
                        args (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18, Array(len=bets[arg1].field_258 + bets[arg1].field_259, data=mem[(13 * ceil32(return_data.size)) + 646 len 32 * bets[arg1].field_258 + bets[arg1].field_259]), address(this.address), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(13 * ceil32(return_data.size)) + 482 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (14 * ceil32(return_data.size)) + 482
                    require return_data.size >= 32
                    _4263 = mem[(13 * ceil32(return_data.size)) + 482 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 482 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 482 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 513 < (13 * ceil32(return_data.size)) + return_data.size + 482
                    _4267 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 482 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 482]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 482 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 482] > test266151307():
                        revert with 0, 65
                    if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 482 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 482]) + 483 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 482 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 482]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 482 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 482]) + 483
                    mem[(14 * ceil32(return_data.size)) + 482] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 482 len 4], Mask(224, 32, (10^18 * ext_call.return_data[0]) - (sub_92e9d048 * ext_call.return_data[0]) / 10^18) >> 32 + 482]
                    require (32 * _4267) + _4263 + 32 <= return_data.size
                    mem[(14 * ceil32(return_data.size)) + 514 len ceil32(32 * _4267)] = mem[(13 * ceil32(return_data.size)) + _4263 + 514 len ceil32(32 * _4267)]
                    if 1 >= _4267:
                        revert with 0, 50
                    _5447 = mem[(14 * ceil32(return_data.size)) + 546]
                    mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    mem[mem[64] + 36] = 0 / 10^18
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    call ????????????????????????????????????????.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, 0 / 10^18
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5563 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5563] == bool(mem[_5563])
                    mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    mem[mem[64] + 36] = _5447
                    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                    call 0x55d398326f99059ff775485246999027b3197955.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _5447
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5627] == bool(mem[_5627])
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args 0x2766cc2537538ac68816b6b5a393fa978a4a89, 0x55d398326f99059ff775485246999027b3197955, 0 / 10^18, _5447, 1, 1, owner, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit 0x89213de0: 0 / 10^18, _5447, bets[arg1].field_0, bets[arg1].field_256
            emit 0xe77e6c55: 1, arg1
    else:
        if bets[arg1].field_512 > 4:
            revert with 0, 33
        if arg2 % 100 < 55:
            if not bets[arg1].field_512:
                bets[arg1].field_512 = 2
                if bets[arg1].field_160 > 4:
                    revert with 0, 33
                if bets[arg1].field_160 != 2:
                    if bets[arg1].field_160 > 4:
                        revert with 0, 33
                    if bets[arg1].field_512 > 4:
                        revert with 0, 33
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0xb109c952 with:
                         gas gas_remaining wei
                        args 2 * 10^17
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < ext_call.return_data[0]:
                        revert with 0, 'Address: insufficient balance'
                    call owner with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    if bets[arg1].field_256 < ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    if not return_data.size:
                        mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 320] = 0x55d398326f99059ff775485246999027b3197955
                        mem[ceil32(return_data.size) + 352] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                        mem[(2 * ceil32(return_data.size)) + 388] = bets[arg1].field_256 - ext_call.return_data[0]
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0x1f1033e7 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 32]
                        mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10^18 < sub_c7790c5b:
                            revert with 0, 17
                        if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                        staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 32]
                        mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(6 * ceil32(return_data.size)) + 384] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 388] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                        idx = 0
                        s = ceil32(return_data.size) + 288
                        t = (6 * ceil32(return_data.size)) + 548
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value bets[arg1].field_256 - ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 548 len 96]), address(this.address), -1
                    else:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 289] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = 0x55d398326f99059ff775485246999027b3197955
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 353] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = bets[arg1].field_256 - ext_call.return_data[0]
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0x1f1033e7 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(return_data.size) + 32]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10^18 < sub_c7790c5b:
                            revert with 0, 17
                        if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = this.address
                        require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                        staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len (5 * ceil32(return_data.size)) + 32]
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(return_data.size) + 289
                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 549
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value bets[arg1].field_256 - ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 96]), address(this.address), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    emit 0x1e8ab247: bets[arg1].field_256 - ext_call.return_data[0], 0
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    call ????????????????????????????????????????.burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x4eecafe0: 0, bets[arg1].field_0, bets[arg1].field_256
                else:
                    mem[96] = bets[arg1].field_0
                    if bets[arg1].field_160 > 4:
                        revert with 0, 33
                    mem[128] = bets[arg1].field_160
                    mem[160] = bets[arg1].field_256
                    if bets[arg1].field_512 > 4:
                        revert with 0, 33
                    mem[192] = bets[arg1].field_512
                    mem[224] = bets[arg1].field_768
                    if not winners.length:
                        mem[256] = bets[arg1].field_0
                        mem[288] = bets[arg1].field_256
                        mem[320] = 0
                        mem[352] = 0
                        winners.length++
                        winners[winners.length].field_0 = bets[arg1].field_0
                        stor31EC[stor17.length] = bets[arg1].field_256
                        stor31EC[stor17.length] = 0
                        stor31EC[stor17.length] = 0
                        mem[32] = 16
                        sub_abde72d8[stor15[arg1].field_0] = winners.length
                        if bets[arg1].field_256 and 5 * 10^16 > -1 / bets[arg1].field_256:
                            revert with 0, 17
                        mem[388] = 2 * 10^17
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0xb109c952 with:
                             gas gas_remaining wei
                            args 2 * 10^17
                        mem[384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < ext_call.return_data[0]:
                            revert with 0, 'Address: insufficient balance'
                        call owner with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if return_data.size:
                            mem[ceil32(return_data.size) + 384] = return_data.size
                            mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                revert with 0, 17
                            if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                revert with 0, 17
                            if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                revert with 0, 'Address: insufficient balance'
                            call bets[arg1].field_0 with:
                               value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                mem[0] = bets[arg1].field_0
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                idx = 0
                                s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                require return_data.size >= 32
                                _2598 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                _2630 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                require (32 * _2630) + _2598 + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2630)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2598 + 545 len ceil32(32 * _2630)]
                                if 0 >= _2630:
                                    revert with 0, 50
                                _4174 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4222 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 10^18 > !sub_f6f0f983:
                                    revert with 0, 17
                                if mem[_4222] and sub_f6f0f983 + 10^18 > -1 / mem[_4222]:
                                    revert with 0, 17
                                if _4174 > (10^18 * mem[_4222]) + (sub_f6f0f983 * mem[_4222]) / 10^18:
                                    revert with 0, 'SquidGame: Invalid amount to mint'
                                mem[mem[64] + 4] = bets[arg1].field_0
                                mem[mem[64] + 36] = _4174
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args bets[arg1].field_0, _4174
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = _4174
                                emit 0x60792e1c: _4174, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                _4550 = mem[64]
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_4550]:
                                    revert with 0, 50
                                mem[_4550 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_4550]:
                                    revert with 0, 50
                                mem[_4550 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                mem[0] = bets[arg1].field_0
                                if 2 >= mem[_4550]:
                                    revert with 0, 50
                                mem[_4550 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[_4550 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                mem[_4550 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^18 < sub_c7790c5b:
                                    revert with 0, 17
                                if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[_4550 + (2 * ceil32(return_data.size)) + 132] = this.address
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4550 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4550 + (4 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[_4550 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[_4550 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                mem[_4550 + (4 * ceil32(return_data.size)) + 164] = 128
                                mem[_4550 + (4 * ceil32(return_data.size)) + 260] = mem[_4550]
                                idx = 0
                                s = _4550 + 32
                                t = _4550 + (4 * ceil32(return_data.size)) + 292
                                while idx < mem[_4550]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                     gas gas_remaining wei
                                    args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4550 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4550]) + 32]
                            else:
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                mem[(4 * ceil32(return_data.size)) + 386] = 3
                                mem[0] = bets[arg1].field_0
                                mem[(4 * ceil32(return_data.size)) + 418] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[(4 * ceil32(return_data.size)) + 450] = 0x55d398326f99059ff775485246999027b3197955
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 514] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 482] = ext_call.return_data[12 len 20]
                                mem[(6 * ceil32(return_data.size)) + 514] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 518] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                mem[(6 * ceil32(return_data.size)) + 550] = 64
                                mem[(6 * ceil32(return_data.size)) + 582] = 3
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 418
                                t = (6 * ceil32(return_data.size)) + 614
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 614 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 514 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 514
                                require return_data.size >= 32
                                _2599 = mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                require mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 545 < (6 * ceil32(return_data.size)) + return_data.size + 514
                                _2631 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514] > test266151307():
                                    revert with 0, 65
                                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515
                                mem[(7 * ceil32(return_data.size)) + 514] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                require (32 * _2631) + _2599 + 32 <= return_data.size
                                mem[(7 * ceil32(return_data.size)) + 546 len ceil32(32 * _2631)] = mem[(6 * ceil32(return_data.size)) + _2599 + 546 len ceil32(32 * _2631)]
                                if 0 >= _2631:
                                    revert with 0, 50
                                _4177 = mem[(7 * ceil32(return_data.size)) + 546]
                                mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4223 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 10^18 > !sub_f6f0f983:
                                    revert with 0, 17
                                if mem[_4223] and sub_f6f0f983 + 10^18 > -1 / mem[_4223]:
                                    revert with 0, 17
                                if _4177 > (10^18 * mem[_4223]) + (sub_f6f0f983 * mem[_4223]) / 10^18:
                                    revert with 0, 'SquidGame: Invalid amount to mint'
                                mem[mem[64] + 4] = bets[arg1].field_0
                                mem[mem[64] + 36] = _4177
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args bets[arg1].field_0, _4177
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = _4177
                                emit 0x60792e1c: _4177, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                _4553 = mem[64]
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_4553]:
                                    revert with 0, 50
                                mem[_4553 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_4553]:
                                    revert with 0, 50
                                mem[_4553 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                mem[0] = bets[arg1].field_0
                                if 2 >= mem[_4553]:
                                    revert with 0, 50
                                mem[_4553 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[_4553 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                mem[_4553 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^18 < sub_c7790c5b:
                                    revert with 0, 17
                                if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[_4553 + (2 * ceil32(return_data.size)) + 132] = this.address
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4553 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4553 + (4 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[_4553 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[_4553 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                mem[_4553 + (4 * ceil32(return_data.size)) + 164] = 128
                                mem[_4553 + (4 * ceil32(return_data.size)) + 260] = mem[_4553]
                                idx = 0
                                s = _4553 + 32
                                t = _4553 + (4 * ceil32(return_data.size)) + 292
                                while idx < mem[_4553]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                     gas gas_remaining wei
                                    args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4553 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4553]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                            staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, 0
                        else:
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                revert with 0, 17
                            if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                revert with 0, 17
                            if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                revert with 0, 'Address: insufficient balance'
                            call bets[arg1].field_0 with:
                               value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                mem[ceil32(return_data.size) + 384] = 3
                                mem[0] = bets[arg1].field_0
                                mem[ceil32(return_data.size) + 416] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[ceil32(return_data.size) + 448] = 0x55d398326f99059ff775485246999027b3197955
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 512] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 516] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + 548] = 64
                                mem[(2 * ceil32(return_data.size)) + 580] = 3
                                idx = 0
                                s = ceil32(return_data.size) + 416
                                t = (2 * ceil32(return_data.size)) + 612
                                while idx < mem[ceil32(return_data.size) + 384]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 580 len (32 * mem[ceil32(return_data.size) + 384]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                _2596 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                                _2628 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513
                                mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                require (32 * _2628) + _2596 + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 544 len ceil32(32 * _2628)] = mem[(2 * ceil32(return_data.size)) + _2596 + 544 len ceil32(32 * _2628)]
                                if 0 >= _2628:
                                    revert with 0, 50
                                _4168 = mem[(4 * ceil32(return_data.size)) + 544]
                                mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4220 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 10^18 > !sub_f6f0f983:
                                    revert with 0, 17
                                if mem[_4220] and sub_f6f0f983 + 10^18 > -1 / mem[_4220]:
                                    revert with 0, 17
                                if _4168 > (10^18 * mem[_4220]) + (sub_f6f0f983 * mem[_4220]) / 10^18:
                                    revert with 0, 'SquidGame: Invalid amount to mint'
                                mem[mem[64] + 4] = bets[arg1].field_0
                                mem[mem[64] + 36] = _4168
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args bets[arg1].field_0, _4168
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = _4168
                                emit 0x60792e1c: _4168, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                _4544 = mem[64]
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_4544]:
                                    revert with 0, 50
                                mem[_4544 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_4544]:
                                    revert with 0, 50
                                mem[_4544 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                mem[0] = bets[arg1].field_0
                                if 2 >= mem[_4544]:
                                    revert with 0, 50
                                mem[_4544 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[_4544 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                mem[_4544 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^18 < sub_c7790c5b:
                                    revert with 0, 17
                                if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[_4544 + (2 * ceil32(return_data.size)) + 132] = this.address
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4544 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4544 + (4 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[_4544 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[_4544 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                mem[_4544 + (4 * ceil32(return_data.size)) + 164] = 128
                                mem[_4544 + (4 * ceil32(return_data.size)) + 260] = mem[_4544]
                                idx = 0
                                s = _4544 + 32
                                t = _4544 + (4 * ceil32(return_data.size)) + 292
                                while idx < mem[_4544]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                     gas gas_remaining wei
                                    args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4544 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4544]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, 0
                            else:
                                mem[ceil32(return_data.size) + 384] = return_data.size
                                mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                mem[0] = bets[arg1].field_0
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                idx = 0
                                s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                require return_data.size >= 32
                                _2597 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                _2629 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                require (32 * _2629) + _2597 + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2629)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2597 + 545 len ceil32(32 * _2629)]
                                if 0 >= _2629:
                                    revert with 0, 50
                                _4171 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4221 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 10^18 > !sub_f6f0f983:
                                    revert with 0, 17
                                if mem[_4221] and sub_f6f0f983 + 10^18 > -1 / mem[_4221]:
                                    revert with 0, 17
                                if _4171 > (10^18 * mem[_4221]) + (sub_f6f0f983 * mem[_4221]) / 10^18:
                                    revert with 0, 'SquidGame: Invalid amount to mint'
                                mem[mem[64] + 4] = bets[arg1].field_0
                                mem[mem[64] + 36] = _4171
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args bets[arg1].field_0, _4171
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = _4171
                                emit 0x60792e1c: _4171, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                _4547 = mem[64]
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_4547]:
                                    revert with 0, 50
                                mem[_4547 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_4547]:
                                    revert with 0, 50
                                mem[_4547 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                mem[0] = bets[arg1].field_0
                                if 2 >= mem[_4547]:
                                    revert with 0, 50
                                mem[_4547 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[_4547 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                mem[_4547 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^18 < sub_c7790c5b:
                                    revert with 0, 17
                                if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[_4547 + (2 * ceil32(return_data.size)) + 132] = this.address
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4547 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4547 + (4 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[_4547 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[_4547 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                mem[_4547 + (4 * ceil32(return_data.size)) + 164] = 128
                                mem[_4547 + (4 * ceil32(return_data.size)) + 260] = mem[_4547]
                                idx = 0
                                s = _4547 + 32
                                t = _4547 + (4 * ceil32(return_data.size)) + 292
                                while idx < mem[_4547]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4547 + (4 * ceil32(return_data.size)) + 196] = this.address
                                mem[_4547 + (4 * ceil32(return_data.size)) + 228] = -1
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                                   value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4547 + (4 * ceil32(return_data.size)) + (32 * mem[_4547]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5577 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5577] < ext_call.return_data[0]:
                                    revert with 0, 17
                                emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, mem[_5577] - ext_call.return_data[0]
                    else:
                        if sub_abde72d8[stor15[arg1].field_0] >= winners.length:
                            revert with 0, 50
                        if winners[stor16[stor15[arg1].field_0]].field_0 == bets[arg1].field_0:
                            mem[32] = 16
                            mem[256] = bets[arg1].field_0
                            if sub_abde72d8[stor15[arg1].field_0] >= winners.length:
                                revert with 0, 50
                            if winners[stor16[stor15[arg1].field_0]].field_256 > !bets[arg1].field_256:
                                revert with 0, 17
                            mem[288] = winners[stor16[stor15[arg1].field_0]].field_256 + bets[arg1].field_256
                            mem[320] = 0
                            mem[352] = 0
                            if sub_abde72d8[stor15[arg1].field_0] >= winners.length:
                                revert with 0, 50
                            winners[stor16[stor15[arg1].field_0]].field_0 = bets[arg1].field_0
                            winners[stor16[stor15[arg1].field_0]].field_256 += bets[arg1].field_256
                            winners[stor16[stor15[arg1].field_0]].field_512 = 0
                            winners[stor16[stor15[arg1].field_0]].field_768 = 0
                            if bets[arg1].field_256 and 5 * 10^16 > -1 / bets[arg1].field_256:
                                revert with 0, 17
                            mem[388] = 2 * 10^17
                            require ext_code.size(oracleAddress)
                            call oracleAddress.0xb109c952 with:
                                 gas gas_remaining wei
                                args 2 * 10^17
                            mem[384] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < ext_call.return_data[0]:
                                revert with 0, 'Address: insufficient balance'
                            call owner with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                    revert with 0, 17
                                if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                    revert with 0, 17
                                if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                    revert with 0, 'Address: insufficient balance'
                                call bets[arg1].field_0 with:
                                   value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + 384] = 3
                                    mem[0] = 17
                                    mem[ceil32(return_data.size) + 416] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + 448] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 512] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 516] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + 548] = 64
                                    mem[(2 * ceil32(return_data.size)) + 580] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 416
                                    t = (2 * ceil32(return_data.size)) + 612
                                    while idx < mem[ceil32(return_data.size) + 384]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 580 len (32 * mem[ceil32(return_data.size) + 384]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 512
                                    require return_data.size >= 32
                                    _2600 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                                    _2632 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513
                                    mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                    require (32 * _2632) + _2600 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + 544 len ceil32(32 * _2632)] = mem[(2 * ceil32(return_data.size)) + _2600 + 544 len ceil32(32 * _2632)]
                                    if 0 >= _2632:
                                        revert with 0, 50
                                    _4180 = mem[(4 * ceil32(return_data.size)) + 544]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4224 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4224] and sub_f6f0f983 + 10^18 > -1 / mem[_4224]:
                                        revert with 0, 17
                                    if _4180 > (10^18 * mem[_4224]) + (sub_f6f0f983 * mem[_4224]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4180
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4180
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4180
                                    emit 0x60792e1c: _4180, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4556 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4556]:
                                        revert with 0, 50
                                    mem[_4556 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4556]:
                                        revert with 0, 50
                                    mem[_4556 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = 17
                                    if 2 >= mem[_4556]:
                                        revert with 0, 50
                                    mem[_4556 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4556 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4556 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4556 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4556 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4556 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4556 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4556 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4556 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4556 + (4 * ceil32(return_data.size)) + 260] = mem[_4556]
                                    idx = 0
                                    s = _4556 + 32
                                    t = _4556 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4556]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4556 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4556]) + 32]
                                else:
                                    mem[ceil32(return_data.size) + 384] = return_data.size
                                    mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                    mem[0] = 17
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                    while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                    require return_data.size >= 32
                                    _2601 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                    _2633 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    require (32 * _2633) + _2601 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2633)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2601 + 545 len ceil32(32 * _2633)]
                                    if 0 >= _2633:
                                        revert with 0, 50
                                    _4183 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4225 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4225] and sub_f6f0f983 + 10^18 > -1 / mem[_4225]:
                                        revert with 0, 17
                                    if _4183 > (10^18 * mem[_4225]) + (sub_f6f0f983 * mem[_4225]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4183
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4183
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4183
                                    emit 0x60792e1c: _4183, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4559 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4559]:
                                        revert with 0, 50
                                    mem[_4559 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4559]:
                                        revert with 0, 50
                                    mem[_4559 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = 17
                                    if 2 >= mem[_4559]:
                                        revert with 0, 50
                                    mem[_4559 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4559 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4559 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4559 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4559 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4559 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4559 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4559 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4559 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4559 + (4 * ceil32(return_data.size)) + 260] = mem[_4559]
                                    idx = 0
                                    s = _4559 + 32
                                    t = _4559 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4559]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4559 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4559]) + 32]
                            else:
                                mem[ceil32(return_data.size) + 384] = return_data.size
                                mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                    revert with 0, 17
                                if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                    revert with 0, 17
                                if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                    revert with 0, 'Address: insufficient balance'
                                call bets[arg1].field_0 with:
                                   value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                    mem[0] = 17
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                    while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                    require return_data.size >= 32
                                    _2602 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                    _2634 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    require (32 * _2634) + _2602 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2634)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2602 + 545 len ceil32(32 * _2634)]
                                    if 0 >= _2634:
                                        revert with 0, 50
                                    _4186 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4226 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4226] and sub_f6f0f983 + 10^18 > -1 / mem[_4226]:
                                        revert with 0, 17
                                    if _4186 > (10^18 * mem[_4226]) + (sub_f6f0f983 * mem[_4226]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4186
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4186
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4186
                                    emit 0x60792e1c: _4186, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4562 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4562]:
                                        revert with 0, 50
                                    mem[_4562 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4562]:
                                        revert with 0, 50
                                    mem[_4562 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = 17
                                    if 2 >= mem[_4562]:
                                        revert with 0, 50
                                    mem[_4562 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4562 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4562 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4562 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4562 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4562 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4562 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4562 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4562 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4562 + (4 * ceil32(return_data.size)) + 260] = mem[_4562]
                                    idx = 0
                                    s = _4562 + 32
                                    t = _4562 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4562]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4562 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4562]) + 32]
                                else:
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = return_data.size
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[(4 * ceil32(return_data.size)) + 386] = 3
                                    mem[0] = 17
                                    mem[(4 * ceil32(return_data.size)) + 418] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[(4 * ceil32(return_data.size)) + 450] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[(4 * ceil32(return_data.size)) + 514] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 482] = ext_call.return_data[12 len 20]
                                    mem[(6 * ceil32(return_data.size)) + 514] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 518] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(6 * ceil32(return_data.size)) + 550] = 64
                                    mem[(6 * ceil32(return_data.size)) + 582] = 3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 418
                                    t = (6 * ceil32(return_data.size)) + 614
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 614 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 514 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 514
                                    require return_data.size >= 32
                                    _2603 = mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 545 < (6 * ceil32(return_data.size)) + return_data.size + 514
                                    _2635 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514] > test266151307():
                                        revert with 0, 65
                                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515
                                    mem[(7 * ceil32(return_data.size)) + 514] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                    require (32 * _2635) + _2603 + 32 <= return_data.size
                                    mem[(7 * ceil32(return_data.size)) + 546 len ceil32(32 * _2635)] = mem[(6 * ceil32(return_data.size)) + _2603 + 546 len ceil32(32 * _2635)]
                                    if 0 >= _2635:
                                        revert with 0, 50
                                    _4189 = mem[(7 * ceil32(return_data.size)) + 546]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4227 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4227] and sub_f6f0f983 + 10^18 > -1 / mem[_4227]:
                                        revert with 0, 17
                                    if _4189 > (10^18 * mem[_4227]) + (sub_f6f0f983 * mem[_4227]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4189
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4189
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4189
                                    emit 0x60792e1c: _4189, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4565 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4565]:
                                        revert with 0, 50
                                    mem[_4565 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4565]:
                                        revert with 0, 50
                                    mem[_4565 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = 17
                                    if 2 >= mem[_4565]:
                                        revert with 0, 50
                                    mem[_4565 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4565 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4565 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4565 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4565 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4565 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4565 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4565 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4565 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4565 + (4 * ceil32(return_data.size)) + 260] = mem[_4565]
                                    idx = 0
                                    s = _4565 + 32
                                    t = _4565 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4565]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4565 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4565]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                            staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, 0
                        else:
                            mem[256] = bets[arg1].field_0
                            mem[288] = bets[arg1].field_256
                            mem[320] = 0
                            mem[352] = 0
                            winners.length++
                            winners[winners.length].field_0 = bets[arg1].field_0
                            stor31EC[stor17.length] = bets[arg1].field_256
                            stor31EC[stor17.length] = 0
                            stor31EC[stor17.length] = 0
                            mem[32] = 16
                            sub_abde72d8[stor15[arg1].field_0] = winners.length
                            if bets[arg1].field_256 and 5 * 10^16 > -1 / bets[arg1].field_256:
                                revert with 0, 17
                            mem[388] = 2 * 10^17
                            require ext_code.size(oracleAddress)
                            call oracleAddress.0xb109c952 with:
                                 gas gas_remaining wei
                                args 2 * 10^17
                            mem[384] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < ext_call.return_data[0]:
                                revert with 0, 'Address: insufficient balance'
                            call owner with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if return_data.size:
                                mem[ceil32(return_data.size) + 384] = return_data.size
                                mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                    revert with 0, 17
                                if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                    revert with 0, 17
                                if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                    revert with 0, 'Address: insufficient balance'
                                call bets[arg1].field_0 with:
                                   value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                    mem[0] = bets[arg1].field_0
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                    while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                    require return_data.size >= 32
                                    _2606 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                    _2638 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    require (32 * _2638) + _2606 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2638)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2606 + 545 len ceil32(32 * _2638)]
                                    if 0 >= _2638:
                                        revert with 0, 50
                                    _4198 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4230 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4230] and sub_f6f0f983 + 10^18 > -1 / mem[_4230]:
                                        revert with 0, 17
                                    if _4198 > (10^18 * mem[_4230]) + (sub_f6f0f983 * mem[_4230]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4198
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4198
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4198
                                    emit 0x60792e1c: _4198, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4574 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4574]:
                                        revert with 0, 50
                                    mem[_4574 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4574]:
                                        revert with 0, 50
                                    mem[_4574 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = bets[arg1].field_0
                                    if 2 >= mem[_4574]:
                                        revert with 0, 50
                                    mem[_4574 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4574 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4574 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4574 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4574 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4574 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4574 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4574 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4574 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4574 + (4 * ceil32(return_data.size)) + 260] = mem[_4574]
                                    idx = 0
                                    s = _4574 + 32
                                    t = _4574 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4574]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4574 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4574]) + 32]
                                else:
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = return_data.size
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[(4 * ceil32(return_data.size)) + 386] = 3
                                    mem[0] = bets[arg1].field_0
                                    mem[(4 * ceil32(return_data.size)) + 418] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[(4 * ceil32(return_data.size)) + 450] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[(4 * ceil32(return_data.size)) + 514] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 482] = ext_call.return_data[12 len 20]
                                    mem[(6 * ceil32(return_data.size)) + 514] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 518] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(6 * ceil32(return_data.size)) + 550] = 64
                                    mem[(6 * ceil32(return_data.size)) + 582] = 3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 418
                                    t = (6 * ceil32(return_data.size)) + 614
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 614 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 514 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 514
                                    require return_data.size >= 32
                                    _2607 = mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 545 < (6 * ceil32(return_data.size)) + return_data.size + 514
                                    _2639 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514] > test266151307():
                                        revert with 0, 65
                                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515
                                    mem[(7 * ceil32(return_data.size)) + 514] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                    require (32 * _2639) + _2607 + 32 <= return_data.size
                                    mem[(7 * ceil32(return_data.size)) + 546 len ceil32(32 * _2639)] = mem[(6 * ceil32(return_data.size)) + _2607 + 546 len ceil32(32 * _2639)]
                                    if 0 >= _2639:
                                        revert with 0, 50
                                    _4201 = mem[(7 * ceil32(return_data.size)) + 546]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4231 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4231] and sub_f6f0f983 + 10^18 > -1 / mem[_4231]:
                                        revert with 0, 17
                                    if _4201 > (10^18 * mem[_4231]) + (sub_f6f0f983 * mem[_4231]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4201
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4201
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4201
                                    emit 0x60792e1c: _4201, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4577 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4577]:
                                        revert with 0, 50
                                    mem[_4577 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4577]:
                                        revert with 0, 50
                                    mem[_4577 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = bets[arg1].field_0
                                    if 2 >= mem[_4577]:
                                        revert with 0, 50
                                    mem[_4577 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4577 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4577 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4577 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4577 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4577 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4577 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4577 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4577 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4577 + (4 * ceil32(return_data.size)) + 260] = mem[_4577]
                                    idx = 0
                                    s = _4577 + 32
                                    t = _4577 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4577]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4577 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4577]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, 0
                            else:
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                    revert with 0, 17
                                if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                    revert with 0, 17
                                if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                    revert with 0, 'Address: insufficient balance'
                                call bets[arg1].field_0 with:
                                   value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    mem[ceil32(return_data.size) + 384] = return_data.size
                                    mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                    mem[0] = bets[arg1].field_0
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                    while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                    require return_data.size >= 32
                                    _2605 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                    _2637 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    require (32 * _2637) + _2605 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2637)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2605 + 545 len ceil32(32 * _2637)]
                                    if 0 >= _2637:
                                        revert with 0, 50
                                    _4195 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4229 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4229] and sub_f6f0f983 + 10^18 > -1 / mem[_4229]:
                                        revert with 0, 17
                                    if _4195 > (10^18 * mem[_4229]) + (sub_f6f0f983 * mem[_4229]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4195
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4195
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4195
                                    emit 0x60792e1c: _4195, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4571 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4571]:
                                        revert with 0, 50
                                    mem[_4571 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4571]:
                                        revert with 0, 50
                                    mem[_4571 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = bets[arg1].field_0
                                    if 2 >= mem[_4571]:
                                        revert with 0, 50
                                    mem[_4571 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4571 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4571 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4571 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4571 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4571 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4571 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4571 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4571 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4571 + (4 * ceil32(return_data.size)) + 260] = mem[_4571]
                                    idx = 0
                                    s = _4571 + 32
                                    t = _4571 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4571]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4571 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4571]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, 0
                                else:
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + 384] = 3
                                    mem[0] = bets[arg1].field_0
                                    mem[ceil32(return_data.size) + 416] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + 448] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 512] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 516] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + 548] = 64
                                    mem[(2 * ceil32(return_data.size)) + 580] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 416
                                    t = (2 * ceil32(return_data.size)) + 612
                                    while idx < mem[ceil32(return_data.size) + 384]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 580 len (32 * mem[ceil32(return_data.size) + 384]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 512
                                    require return_data.size >= 32
                                    _2604 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                                    _2636 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513
                                    mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                    require (32 * _2636) + _2604 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + 544 len ceil32(32 * _2636)] = mem[(2 * ceil32(return_data.size)) + _2604 + 544 len ceil32(32 * _2636)]
                                    if 0 >= _2636:
                                        revert with 0, 50
                                    _4192 = mem[(4 * ceil32(return_data.size)) + 544]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4228 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4228] and sub_f6f0f983 + 10^18 > -1 / mem[_4228]:
                                        revert with 0, 17
                                    if _4192 > (10^18 * mem[_4228]) + (sub_f6f0f983 * mem[_4228]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4192
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4192
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4192
                                    emit 0x60792e1c: _4192, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4568 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4568]:
                                        revert with 0, 50
                                    mem[_4568 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4568]:
                                        revert with 0, 50
                                    mem[_4568 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = bets[arg1].field_0
                                    if 2 >= mem[_4568]:
                                        revert with 0, 50
                                    mem[_4568 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4568 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4568 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4568 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4568 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4568 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4568 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4568 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4568 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4568 + (4 * ceil32(return_data.size)) + 260] = mem[_4568]
                                    idx = 0
                                    s = _4568 + 32
                                    t = _4568 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4568]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4568 + (4 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_4568 + (4 * ceil32(return_data.size)) + 228] = -1
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4568 + (4 * ceil32(return_data.size)) + (32 * mem[_4568]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5584 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5584] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, mem[_5584] - ext_call.return_data[0]
                emit 0xe77e6c55: 2, arg1
        else:
            if not bets[arg1].field_512:
                bets[arg1].field_512 = 3
                if bets[arg1].field_160 > 4:
                    revert with 0, 33
                if bets[arg1].field_160 != 3:
                    if bets[arg1].field_160 > 4:
                        revert with 0, 33
                    if bets[arg1].field_512 > 4:
                        revert with 0, 33
                    require ext_code.size(oracleAddress)
                    call oracleAddress.0xb109c952 with:
                         gas gas_remaining wei
                        args 2 * 10^17
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < ext_call.return_data[0]:
                        revert with 0, 'Address: insufficient balance'
                    call owner with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    if bets[arg1].field_256 < ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    if not return_data.size:
                        mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 320] = 0x55d398326f99059ff775485246999027b3197955
                        mem[ceil32(return_data.size) + 352] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                        mem[(2 * ceil32(return_data.size)) + 388] = bets[arg1].field_256 - ext_call.return_data[0]
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0x1f1033e7 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 32]
                        mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10^18 < sub_c7790c5b:
                            revert with 0, 17
                        if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                        staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 32]
                        mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(6 * ceil32(return_data.size)) + 384] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 388] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                        idx = 0
                        s = ceil32(return_data.size) + 288
                        t = (6 * ceil32(return_data.size)) + 548
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value bets[arg1].field_256 - ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 548 len 96]), address(this.address), -1
                    else:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 289] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = 0x55d398326f99059ff775485246999027b3197955
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 353] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = bets[arg1].field_256 - ext_call.return_data[0]
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0x1f1033e7 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(return_data.size) + 32]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10^18 < sub_c7790c5b:
                            revert with 0, 17
                        if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = this.address
                        require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                        staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len (5 * ceil32(return_data.size)) + 32]
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                        idx = 0
                        s = ceil32(return_data.size) + ceil32(return_data.size) + 289
                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 549
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value bets[arg1].field_256 - ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 96]), address(this.address), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    emit 0x1e8ab247: bets[arg1].field_256 - ext_call.return_data[0], 0
                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                    call ????????????????????????????????????????.burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x4eecafe0: 0, bets[arg1].field_0, bets[arg1].field_256
                else:
                    mem[96] = bets[arg1].field_0
                    if bets[arg1].field_160 > 4:
                        revert with 0, 33
                    mem[128] = bets[arg1].field_160
                    mem[160] = bets[arg1].field_256
                    if bets[arg1].field_512 > 4:
                        revert with 0, 33
                    mem[192] = bets[arg1].field_512
                    mem[224] = bets[arg1].field_768
                    if not winners.length:
                        mem[256] = bets[arg1].field_0
                        mem[288] = bets[arg1].field_256
                        mem[320] = 0
                        mem[352] = 0
                        winners.length++
                        winners[winners.length].field_0 = bets[arg1].field_0
                        stor31EC[stor17.length] = bets[arg1].field_256
                        stor31EC[stor17.length] = 0
                        stor31EC[stor17.length] = 0
                        mem[32] = 16
                        sub_abde72d8[stor15[arg1].field_0] = winners.length
                        if bets[arg1].field_256 and 5 * 10^16 > -1 / bets[arg1].field_256:
                            revert with 0, 17
                        mem[388] = 2 * 10^17
                        require ext_code.size(oracleAddress)
                        call oracleAddress.0xb109c952 with:
                             gas gas_remaining wei
                            args 2 * 10^17
                        mem[384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < ext_call.return_data[0]:
                            revert with 0, 'Address: insufficient balance'
                        call owner with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                revert with 0, 17
                            if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                revert with 0, 17
                            if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                revert with 0, 'Address: insufficient balance'
                            call bets[arg1].field_0 with:
                               value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                mem[ceil32(return_data.size) + 384] = 3
                                mem[0] = bets[arg1].field_0
                                mem[ceil32(return_data.size) + 416] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[ceil32(return_data.size) + 448] = 0x55d398326f99059ff775485246999027b3197955
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 512] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 516] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + 548] = 64
                                mem[(2 * ceil32(return_data.size)) + 580] = 3
                                idx = 0
                                s = ceil32(return_data.size) + 416
                                t = (2 * ceil32(return_data.size)) + 612
                                while idx < mem[ceil32(return_data.size) + 384]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 580 len (32 * mem[ceil32(return_data.size) + 384]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                _2584 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                                _2616 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513
                                mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                require (32 * _2616) + _2584 + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 544 len ceil32(32 * _2616)] = mem[(2 * ceil32(return_data.size)) + _2584 + 544 len ceil32(32 * _2616)]
                                if 0 >= _2616:
                                    revert with 0, 50
                                _4132 = mem[(4 * ceil32(return_data.size)) + 544]
                                mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4208 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 10^18 > !sub_f6f0f983:
                                    revert with 0, 17
                                if mem[_4208] and sub_f6f0f983 + 10^18 > -1 / mem[_4208]:
                                    revert with 0, 17
                                if _4132 > (10^18 * mem[_4208]) + (sub_f6f0f983 * mem[_4208]) / 10^18:
                                    revert with 0, 'SquidGame: Invalid amount to mint'
                                mem[mem[64] + 4] = bets[arg1].field_0
                                mem[mem[64] + 36] = _4132
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args bets[arg1].field_0, _4132
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = _4132
                                emit 0x60792e1c: _4132, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                _4508 = mem[64]
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_4508]:
                                    revert with 0, 50
                                mem[_4508 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_4508]:
                                    revert with 0, 50
                                mem[_4508 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                mem[0] = bets[arg1].field_0
                                if 2 >= mem[_4508]:
                                    revert with 0, 50
                                mem[_4508 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[_4508 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                mem[_4508 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^18 < sub_c7790c5b:
                                    revert with 0, 17
                                if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[_4508 + (2 * ceil32(return_data.size)) + 132] = this.address
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4508 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4508 + (4 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[_4508 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[_4508 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                mem[_4508 + (4 * ceil32(return_data.size)) + 164] = 128
                                mem[_4508 + (4 * ceil32(return_data.size)) + 260] = mem[_4508]
                                idx = 0
                                s = _4508 + 32
                                t = _4508 + (4 * ceil32(return_data.size)) + 292
                                while idx < mem[_4508]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                     gas gas_remaining wei
                                    args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4508 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4508]) + 32]
                            else:
                                mem[ceil32(return_data.size) + 384] = return_data.size
                                mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                mem[0] = bets[arg1].field_0
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                idx = 0
                                s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                require return_data.size >= 32
                                _2585 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                _2617 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                require (32 * _2617) + _2585 + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2617)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2585 + 545 len ceil32(32 * _2617)]
                                if 0 >= _2617:
                                    revert with 0, 50
                                _4135 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4209 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 10^18 > !sub_f6f0f983:
                                    revert with 0, 17
                                if mem[_4209] and sub_f6f0f983 + 10^18 > -1 / mem[_4209]:
                                    revert with 0, 17
                                if _4135 > (10^18 * mem[_4209]) + (sub_f6f0f983 * mem[_4209]) / 10^18:
                                    revert with 0, 'SquidGame: Invalid amount to mint'
                                mem[mem[64] + 4] = bets[arg1].field_0
                                mem[mem[64] + 36] = _4135
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args bets[arg1].field_0, _4135
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = _4135
                                emit 0x60792e1c: _4135, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                _4511 = mem[64]
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_4511]:
                                    revert with 0, 50
                                mem[_4511 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_4511]:
                                    revert with 0, 50
                                mem[_4511 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                mem[0] = bets[arg1].field_0
                                if 2 >= mem[_4511]:
                                    revert with 0, 50
                                mem[_4511 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[_4511 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                mem[_4511 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^18 < sub_c7790c5b:
                                    revert with 0, 17
                                if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[_4511 + (2 * ceil32(return_data.size)) + 132] = this.address
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4511 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4511 + (4 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[_4511 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[_4511 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                mem[_4511 + (4 * ceil32(return_data.size)) + 164] = 128
                                mem[_4511 + (4 * ceil32(return_data.size)) + 260] = mem[_4511]
                                idx = 0
                                s = _4511 + 32
                                t = _4511 + (4 * ceil32(return_data.size)) + 292
                                while idx < mem[_4511]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                     gas gas_remaining wei
                                    args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4511 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4511]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                            staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, 0
                        else:
                            mem[ceil32(return_data.size) + 384] = return_data.size
                            mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                revert with 0, 17
                            if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                revert with 0, 17
                            if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                revert with 0, 'Address: insufficient balance'
                            call bets[arg1].field_0 with:
                               value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if return_data.size:
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                mem[(4 * ceil32(return_data.size)) + 386] = 3
                                mem[0] = bets[arg1].field_0
                                mem[(4 * ceil32(return_data.size)) + 418] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[(4 * ceil32(return_data.size)) + 450] = 0x55d398326f99059ff775485246999027b3197955
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 514] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 482] = ext_call.return_data[12 len 20]
                                mem[(6 * ceil32(return_data.size)) + 514] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 518] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                mem[(6 * ceil32(return_data.size)) + 550] = 64
                                mem[(6 * ceil32(return_data.size)) + 582] = 3
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 418
                                t = (6 * ceil32(return_data.size)) + 614
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 614 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 514 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 514
                                require return_data.size >= 32
                                _2587 = mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                require mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 545 < (6 * ceil32(return_data.size)) + return_data.size + 514
                                _2619 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514] > test266151307():
                                    revert with 0, 65
                                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515
                                mem[(7 * ceil32(return_data.size)) + 514] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                require (32 * _2619) + _2587 + 32 <= return_data.size
                                mem[(7 * ceil32(return_data.size)) + 546 len ceil32(32 * _2619)] = mem[(6 * ceil32(return_data.size)) + _2587 + 546 len ceil32(32 * _2619)]
                                if 0 >= _2619:
                                    revert with 0, 50
                                _4141 = mem[(7 * ceil32(return_data.size)) + 546]
                                mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4211 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 10^18 > !sub_f6f0f983:
                                    revert with 0, 17
                                if mem[_4211] and sub_f6f0f983 + 10^18 > -1 / mem[_4211]:
                                    revert with 0, 17
                                if _4141 > (10^18 * mem[_4211]) + (sub_f6f0f983 * mem[_4211]) / 10^18:
                                    revert with 0, 'SquidGame: Invalid amount to mint'
                                mem[mem[64] + 4] = bets[arg1].field_0
                                mem[mem[64] + 36] = _4141
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args bets[arg1].field_0, _4141
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = _4141
                                emit 0x60792e1c: _4141, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                _4517 = mem[64]
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_4517]:
                                    revert with 0, 50
                                mem[_4517 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_4517]:
                                    revert with 0, 50
                                mem[_4517 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                mem[0] = bets[arg1].field_0
                                if 2 >= mem[_4517]:
                                    revert with 0, 50
                                mem[_4517 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[_4517 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                mem[_4517 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^18 < sub_c7790c5b:
                                    revert with 0, 17
                                if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[_4517 + (2 * ceil32(return_data.size)) + 132] = this.address
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4517 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4517 + (4 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[_4517 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[_4517 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                mem[_4517 + (4 * ceil32(return_data.size)) + 164] = 128
                                mem[_4517 + (4 * ceil32(return_data.size)) + 260] = mem[_4517]
                                idx = 0
                                s = _4517 + 32
                                t = _4517 + (4 * ceil32(return_data.size)) + 292
                                while idx < mem[_4517]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                     gas gas_remaining wei
                                    args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4517 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4517]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, 0
                            else:
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                mem[0] = bets[arg1].field_0
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                idx = 0
                                s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                require return_data.size >= 32
                                _2586 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                _2618 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                require (32 * _2618) + _2586 + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2618)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2586 + 545 len ceil32(32 * _2618)]
                                if 0 >= _2618:
                                    revert with 0, 50
                                _4138 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4210 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 10^18 > !sub_f6f0f983:
                                    revert with 0, 17
                                if mem[_4210] and sub_f6f0f983 + 10^18 > -1 / mem[_4210]:
                                    revert with 0, 17
                                if _4138 > (10^18 * mem[_4210]) + (sub_f6f0f983 * mem[_4210]) / 10^18:
                                    revert with 0, 'SquidGame: Invalid amount to mint'
                                mem[mem[64] + 4] = bets[arg1].field_0
                                mem[mem[64] + 36] = _4138
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args bets[arg1].field_0, _4138
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = _4138
                                emit 0x60792e1c: _4138, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                _4514 = mem[64]
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_4514]:
                                    revert with 0, 50
                                mem[_4514 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_4514]:
                                    revert with 0, 50
                                mem[_4514 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                mem[0] = bets[arg1].field_0
                                if 2 >= mem[_4514]:
                                    revert with 0, 50
                                mem[_4514 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                mem[_4514 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                require ext_code.size(oracleAddress)
                                call oracleAddress.0x1f1033e7 with:
                                     gas gas_remaining wei
                                    args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                mem[_4514 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 10^18 < sub_c7790c5b:
                                    revert with 0, 17
                                if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[_4514 + (2 * ceil32(return_data.size)) + 132] = this.address
                                mem[0] = bets[arg1].field_0
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4514 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4514 + (4 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                mem[_4514 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[_4514 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                mem[_4514 + (4 * ceil32(return_data.size)) + 164] = 128
                                mem[_4514 + (4 * ceil32(return_data.size)) + 260] = mem[_4514]
                                idx = 0
                                s = _4514 + 32
                                t = _4514 + (4 * ceil32(return_data.size)) + 292
                                while idx < mem[_4514]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4514 + (4 * ceil32(return_data.size)) + 196] = this.address
                                mem[_4514 + (4 * ceil32(return_data.size)) + 228] = -1
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                                   value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4514 + (4 * ceil32(return_data.size)) + (32 * mem[_4514]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5566 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5566] < ext_call.return_data[0]:
                                    revert with 0, 17
                                emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, mem[_5566] - ext_call.return_data[0]
                    else:
                        if sub_abde72d8[stor15[arg1].field_0] >= winners.length:
                            revert with 0, 50
                        if winners[stor16[stor15[arg1].field_0]].field_0 != bets[arg1].field_0:
                            mem[256] = bets[arg1].field_0
                            mem[288] = bets[arg1].field_256
                            mem[320] = 0
                            mem[352] = 0
                            winners.length++
                            winners[winners.length].field_0 = bets[arg1].field_0
                            stor31EC[stor17.length] = bets[arg1].field_256
                            stor31EC[stor17.length] = 0
                            stor31EC[stor17.length] = 0
                            mem[32] = 16
                            sub_abde72d8[stor15[arg1].field_0] = winners.length
                            if bets[arg1].field_256 and 5 * 10^16 > -1 / bets[arg1].field_256:
                                revert with 0, 17
                            mem[388] = 2 * 10^17
                            require ext_code.size(oracleAddress)
                            call oracleAddress.0xb109c952 with:
                                 gas gas_remaining wei
                                args 2 * 10^17
                            mem[384] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < ext_call.return_data[0]:
                                revert with 0, 'Address: insufficient balance'
                            call owner with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                    revert with 0, 17
                                if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                    revert with 0, 17
                                if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                    revert with 0, 'Address: insufficient balance'
                                call bets[arg1].field_0 with:
                                   value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + 384] = 3
                                    mem[0] = bets[arg1].field_0
                                    mem[ceil32(return_data.size) + 416] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + 448] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 512] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 516] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + 548] = 64
                                    mem[(2 * ceil32(return_data.size)) + 580] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 416
                                    t = (2 * ceil32(return_data.size)) + 612
                                    while idx < mem[ceil32(return_data.size) + 384]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 580 len (32 * mem[ceil32(return_data.size) + 384]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 512
                                    require return_data.size >= 32
                                    _2592 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                                    _2624 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513
                                    mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                    require (32 * _2624) + _2592 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + 544 len ceil32(32 * _2624)] = mem[(2 * ceil32(return_data.size)) + _2592 + 544 len ceil32(32 * _2624)]
                                    if 0 >= _2624:
                                        revert with 0, 50
                                    _4156 = mem[(4 * ceil32(return_data.size)) + 544]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4216 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4216] and sub_f6f0f983 + 10^18 > -1 / mem[_4216]:
                                        revert with 0, 17
                                    if _4156 > (10^18 * mem[_4216]) + (sub_f6f0f983 * mem[_4216]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4156
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4156
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4156
                                    emit 0x60792e1c: _4156, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4532 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4532]:
                                        revert with 0, 50
                                    mem[_4532 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4532]:
                                        revert with 0, 50
                                    mem[_4532 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = bets[arg1].field_0
                                    if 2 >= mem[_4532]:
                                        revert with 0, 50
                                    mem[_4532 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4532 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4532 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4532 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4532 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4532 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4532 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4532 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4532 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4532 + (4 * ceil32(return_data.size)) + 260] = mem[_4532]
                                    idx = 0
                                    s = _4532 + 32
                                    t = _4532 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4532]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4532 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4532]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, 0
                                else:
                                    mem[ceil32(return_data.size) + 384] = return_data.size
                                    mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                    mem[0] = bets[arg1].field_0
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                    while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                    require return_data.size >= 32
                                    _2593 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                    _2625 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    require (32 * _2625) + _2593 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2625)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2593 + 545 len ceil32(32 * _2625)]
                                    if 0 >= _2625:
                                        revert with 0, 50
                                    _4159 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4217 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4217] and sub_f6f0f983 + 10^18 > -1 / mem[_4217]:
                                        revert with 0, 17
                                    if _4159 > (10^18 * mem[_4217]) + (sub_f6f0f983 * mem[_4217]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4159
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4159
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4159
                                    emit 0x60792e1c: _4159, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4535 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4535]:
                                        revert with 0, 50
                                    mem[_4535 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4535]:
                                        revert with 0, 50
                                    mem[_4535 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = bets[arg1].field_0
                                    if 2 >= mem[_4535]:
                                        revert with 0, 50
                                    mem[_4535 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4535 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4535 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4535 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4535 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4535 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4535 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4535 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4535 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4535 + (4 * ceil32(return_data.size)) + 260] = mem[_4535]
                                    idx = 0
                                    s = _4535 + 32
                                    t = _4535 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4535]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4535 + (4 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_4535 + (4 * ceil32(return_data.size)) + 228] = -1
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4535 + (4 * ceil32(return_data.size)) + (32 * mem[_4535]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5573 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5573] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, mem[_5573] - ext_call.return_data[0]
                            else:
                                mem[ceil32(return_data.size) + 384] = return_data.size
                                mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                    revert with 0, 17
                                if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                    revert with 0, 17
                                if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                    revert with 0, 'Address: insufficient balance'
                                call bets[arg1].field_0 with:
                                   value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if return_data.size:
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = return_data.size
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[(4 * ceil32(return_data.size)) + 386] = 3
                                    mem[0] = bets[arg1].field_0
                                    mem[(4 * ceil32(return_data.size)) + 418] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[(4 * ceil32(return_data.size)) + 450] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[(4 * ceil32(return_data.size)) + 514] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 482] = ext_call.return_data[12 len 20]
                                    mem[(6 * ceil32(return_data.size)) + 514] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 518] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(6 * ceil32(return_data.size)) + 550] = 64
                                    mem[(6 * ceil32(return_data.size)) + 582] = 3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 418
                                    t = (6 * ceil32(return_data.size)) + 614
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 614 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 514 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 514
                                    require return_data.size >= 32
                                    _2595 = mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 545 < (6 * ceil32(return_data.size)) + return_data.size + 514
                                    _2627 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514] > test266151307():
                                        revert with 0, 65
                                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515
                                    mem[(7 * ceil32(return_data.size)) + 514] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                    require (32 * _2627) + _2595 + 32 <= return_data.size
                                    mem[(7 * ceil32(return_data.size)) + 546 len ceil32(32 * _2627)] = mem[(6 * ceil32(return_data.size)) + _2595 + 546 len ceil32(32 * _2627)]
                                    if 0 >= _2627:
                                        revert with 0, 50
                                    _4165 = mem[(7 * ceil32(return_data.size)) + 546]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4219 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4219] and sub_f6f0f983 + 10^18 > -1 / mem[_4219]:
                                        revert with 0, 17
                                    if _4165 > (10^18 * mem[_4219]) + (sub_f6f0f983 * mem[_4219]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4165
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4165
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4165
                                    emit 0x60792e1c: _4165, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4541 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4541]:
                                        revert with 0, 50
                                    mem[_4541 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4541]:
                                        revert with 0, 50
                                    mem[_4541 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = bets[arg1].field_0
                                    if 2 >= mem[_4541]:
                                        revert with 0, 50
                                    mem[_4541 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4541 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4541 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4541 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4541 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4541 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4541 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4541 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4541 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4541 + (4 * ceil32(return_data.size)) + 260] = mem[_4541]
                                    idx = 0
                                    s = _4541 + 32
                                    t = _4541 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4541]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4541 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4541]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, 0
                                else:
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                    mem[0] = bets[arg1].field_0
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                    while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                    require return_data.size >= 32
                                    _2594 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                    _2626 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    require (32 * _2626) + _2594 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2626)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2594 + 545 len ceil32(32 * _2626)]
                                    if 0 >= _2626:
                                        revert with 0, 50
                                    _4162 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4218 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4218] and sub_f6f0f983 + 10^18 > -1 / mem[_4218]:
                                        revert with 0, 17
                                    if _4162 > (10^18 * mem[_4218]) + (sub_f6f0f983 * mem[_4218]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4162
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4162
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4162
                                    emit 0x60792e1c: _4162, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4538 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4538]:
                                        revert with 0, 50
                                    mem[_4538 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4538]:
                                        revert with 0, 50
                                    mem[_4538 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = bets[arg1].field_0
                                    if 2 >= mem[_4538]:
                                        revert with 0, 50
                                    mem[_4538 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4538 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4538 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4538 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = bets[arg1].field_0
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4538 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4538 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4538 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4538 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4538 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4538 + (4 * ceil32(return_data.size)) + 260] = mem[_4538]
                                    idx = 0
                                    s = _4538 + 32
                                    t = _4538 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4538]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4538 + (4 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_4538 + (4 * ceil32(return_data.size)) + 228] = -1
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4538 + (4 * ceil32(return_data.size)) + (32 * mem[_4538]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5574 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5574] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, mem[_5574] - ext_call.return_data[0]
                        else:
                            mem[32] = 16
                            mem[256] = bets[arg1].field_0
                            if sub_abde72d8[stor15[arg1].field_0] >= winners.length:
                                revert with 0, 50
                            if winners[stor16[stor15[arg1].field_0]].field_256 > !bets[arg1].field_256:
                                revert with 0, 17
                            mem[288] = winners[stor16[stor15[arg1].field_0]].field_256 + bets[arg1].field_256
                            mem[320] = 0
                            mem[352] = 0
                            if sub_abde72d8[stor15[arg1].field_0] >= winners.length:
                                revert with 0, 50
                            winners[stor16[stor15[arg1].field_0]].field_0 = bets[arg1].field_0
                            winners[stor16[stor15[arg1].field_0]].field_256 += bets[arg1].field_256
                            winners[stor16[stor15[arg1].field_0]].field_512 = 0
                            winners[stor16[stor15[arg1].field_0]].field_768 = 0
                            if bets[arg1].field_256 and 5 * 10^16 > -1 / bets[arg1].field_256:
                                revert with 0, 17
                            mem[388] = 2 * 10^17
                            require ext_code.size(oracleAddress)
                            call oracleAddress.0xb109c952 with:
                                 gas gas_remaining wei
                                args 2 * 10^17
                            mem[384] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < ext_call.return_data[0]:
                                revert with 0, 'Address: insufficient balance'
                            call owner with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                    revert with 0, 17
                                if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                    revert with 0, 17
                                if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                    revert with 0, 'Address: insufficient balance'
                                call bets[arg1].field_0 with:
                                   value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + 384] = 3
                                    mem[0] = 17
                                    mem[ceil32(return_data.size) + 416] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + 448] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 512] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 516] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + 548] = 64
                                    mem[(2 * ceil32(return_data.size)) + 580] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 416
                                    t = (2 * ceil32(return_data.size)) + 612
                                    while idx < mem[ceil32(return_data.size) + 384]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 580 len (32 * mem[ceil32(return_data.size) + 384]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 512
                                    require return_data.size >= 32
                                    _2588 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                                    _2620 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]) + 513
                                    mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 512]
                                    require (32 * _2620) + _2588 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + 544 len ceil32(32 * _2620)] = mem[(2 * ceil32(return_data.size)) + _2588 + 544 len ceil32(32 * _2620)]
                                    if 0 >= _2620:
                                        revert with 0, 50
                                    _4144 = mem[(4 * ceil32(return_data.size)) + 544]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4212 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4212] and sub_f6f0f983 + 10^18 > -1 / mem[_4212]:
                                        revert with 0, 17
                                    if _4144 > (10^18 * mem[_4212]) + (sub_f6f0f983 * mem[_4212]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4144
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4144
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4144
                                    emit 0x60792e1c: _4144, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4520 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4520]:
                                        revert with 0, 50
                                    mem[_4520 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4520]:
                                        revert with 0, 50
                                    mem[_4520 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = 17
                                    if 2 >= mem[_4520]:
                                        revert with 0, 50
                                    mem[_4520 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4520 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4520 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4520 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4520 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4520 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4520 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4520 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4520 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4520 + (4 * ceil32(return_data.size)) + 260] = mem[_4520]
                                    idx = 0
                                    s = _4520 + 32
                                    t = _4520 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4520]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4520 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4520]) + 32]
                                else:
                                    mem[ceil32(return_data.size) + 384] = return_data.size
                                    mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                    mem[0] = 17
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                    while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                    require return_data.size >= 32
                                    _2589 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                    _2621 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    require (32 * _2621) + _2589 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2621)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2589 + 545 len ceil32(32 * _2621)]
                                    if 0 >= _2621:
                                        revert with 0, 50
                                    _4147 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4213 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4213] and sub_f6f0f983 + 10^18 > -1 / mem[_4213]:
                                        revert with 0, 17
                                    if _4147 > (10^18 * mem[_4213]) + (sub_f6f0f983 * mem[_4213]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4147
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4147
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4147
                                    emit 0x60792e1c: _4147, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4523 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4523]:
                                        revert with 0, 50
                                    mem[_4523 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4523]:
                                        revert with 0, 50
                                    mem[_4523 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = 17
                                    if 2 >= mem[_4523]:
                                        revert with 0, 50
                                    mem[_4523 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4523 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4523 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4523 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4523 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4523 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4523 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4523 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4523 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4523 + (4 * ceil32(return_data.size)) + 260] = mem[_4523]
                                    idx = 0
                                    s = _4523 + 32
                                    t = _4523 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4523]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18, 128, address(this.address), -1, mem[_4523 + (4 * ceil32(return_data.size)) + 260 len (32 * mem[_4523]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, 0
                            else:
                                mem[ceil32(return_data.size) + 384] = return_data.size
                                mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                if bets[arg1].field_256 < 5 * 10^16 * bets[arg1].field_256 / 10^18:
                                    revert with 0, 17
                                if bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) < ext_call.return_data[0]:
                                    revert with 0, 17
                                if eth.balance(this.address) < bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]:
                                    revert with 0, 'Address: insufficient balance'
                                call bets[arg1].field_0 with:
                                   value bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
                                    mem[0] = 17
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 449] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 513] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 481] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 64
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + ceil32(return_data.size) + 417
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                                    while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513
                                    require return_data.size >= 32
                                    _2590 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 544 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 513
                                    _2622 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]) + 514
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 513 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 513]
                                    require (32 * _2622) + _2590 + 32 <= return_data.size
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545 len ceil32(32 * _2622)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2590 + 545 len ceil32(32 * _2622)]
                                    if 0 >= _2622:
                                        revert with 0, 50
                                    _4150 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 545]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4214 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4214] and sub_f6f0f983 + 10^18 > -1 / mem[_4214]:
                                        revert with 0, 17
                                    if _4150 > (10^18 * mem[_4214]) + (sub_f6f0f983 * mem[_4214]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4150
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4150
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4150
                                    emit 0x60792e1c: _4150, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4526 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4526]:
                                        revert with 0, 50
                                    mem[_4526 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4526]:
                                        revert with 0, 50
                                    mem[_4526 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = 17
                                    if 2 >= mem[_4526]:
                                        revert with 0, 50
                                    mem[_4526 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4526 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4526 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4526 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4526 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4526 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4526 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4526 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4526 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4526 + (4 * ceil32(return_data.size)) + 260] = mem[_4526]
                                    idx = 0
                                    s = _4526 + 32
                                    t = _4526 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4526]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4526 + (4 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_4526 + (4 * ceil32(return_data.size)) + 228] = -1
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4526 + (4 * ceil32(return_data.size)) + (32 * mem[_4526]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5570 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5570] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, mem[_5570] - ext_call.return_data[0]
                                else:
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] = return_data.size
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[(4 * ceil32(return_data.size)) + 386] = 3
                                    mem[0] = 17
                                    mem[(4 * ceil32(return_data.size)) + 418] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[(4 * ceil32(return_data.size)) + 450] = 0x55d398326f99059ff775485246999027b3197955
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[(4 * ceil32(return_data.size)) + 514] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 482] = ext_call.return_data[12 len 20]
                                    mem[(6 * ceil32(return_data.size)) + 514] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 518] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    mem[(6 * ceil32(return_data.size)) + 550] = 64
                                    mem[(6 * ceil32(return_data.size)) + 582] = 3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 418
                                    t = (6 * ceil32(return_data.size)) + 614
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0], Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 614 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 514 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 514
                                    require return_data.size >= 32
                                    _2591 = mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 545 < (6 * ceil32(return_data.size)) + return_data.size + 514
                                    _2623 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514] > test266151307():
                                        revert with 0, 65
                                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]) + 515
                                    mem[(7 * ceil32(return_data.size)) + 514] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 514 len 4], Mask(224, 32, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]) >> 32 + 514]
                                    require (32 * _2623) + _2591 + 32 <= return_data.size
                                    mem[(7 * ceil32(return_data.size)) + 546 len ceil32(32 * _2623)] = mem[(6 * ceil32(return_data.size)) + _2591 + 546 len ceil32(32 * _2623)]
                                    if 0 >= _2623:
                                        revert with 0, 50
                                    _4153 = mem[(7 * ceil32(return_data.size)) + 546]
                                    mem[mem[64] + 4] = bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4215 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 10^18 > !sub_f6f0f983:
                                        revert with 0, 17
                                    if mem[_4215] and sub_f6f0f983 + 10^18 > -1 / mem[_4215]:
                                        revert with 0, 17
                                    if _4153 > (10^18 * mem[_4215]) + (sub_f6f0f983 * mem[_4215]) / 10^18:
                                        revert with 0, 'SquidGame: Invalid amount to mint'
                                    mem[mem[64] + 4] = bets[arg1].field_0
                                    mem[mem[64] + 36] = _4153
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    call ????????????????????????????????????????.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args bets[arg1].field_0, _4153
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = _4153
                                    emit 0x60792e1c: _4153, bets[arg1].field_0, bets[arg1].field_256 - (5 * 10^16 * bets[arg1].field_256 / 10^18) - ext_call.return_data[0]
                                    _4529 = mem[64]
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[mem[64] + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 0 >= mem[_4529]:
                                        revert with 0, 50
                                    mem[_4529 + 32] = ext_call.return_data[12 len 20]
                                    if 1 >= mem[_4529]:
                                        revert with 0, 50
                                    mem[_4529 + 64] = 0x55d398326f99059ff775485246999027b3197955
                                    mem[0] = 17
                                    if 2 >= mem[_4529]:
                                        revert with 0, 50
                                    mem[_4529 + 96] = 0x2766cc2537538ac68816b6b5a393fa978a4a89
                                    mem[_4529 + ceil32(return_data.size) + 132] = 5 * 10^16 * bets[arg1].field_256 / 10^18
                                    require ext_code.size(oracleAddress)
                                    call oracleAddress.0x1f1033e7 with:
                                         gas gas_remaining wei
                                        args (5 * 10^16 * bets[arg1].field_256 / 10^18)
                                    mem[_4529 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^18 < sub_c7790c5b:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and -sub_c7790c5b + 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[_4529 + (2 * ceil32(return_data.size)) + 132] = this.address
                                    mem[0] = 17
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4529 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4529 + (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    mem[_4529 + (4 * ceil32(return_data.size)) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[_4529 + (4 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[0]) - (sub_c7790c5b * ext_call.return_data[0]) / 10^18
                                    mem[_4529 + (4 * ceil32(return_data.size)) + 164] = 128
                                    mem[_4529 + (4 * ceil32(return_data.size)) + 260] = mem[_4529]
                                    idx = 0
                                    s = _4529 + 32
                                    t = _4529 + (4 * ceil32(return_data.size)) + 292
                                    while idx < mem[_4529]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4529 + (4 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_4529 + (4 * ceil32(return_data.size)) + 228] = -1
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
                                       value 5 * 10^16 * bets[arg1].field_256 / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4529 + (4 * ceil32(return_data.size)) + (32 * mem[_4529]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89)
                                    staticcall 0xfe0000000000000000000000002766cc2537538ac68816b6b5a393fa978a4a89.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5571 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5571] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    emit 0x1e8ab247: 5 * 10^16 * bets[arg1].field_256 / 10^18, mem[_5571] - ext_call.return_data[0]
                emit 0xe77e6c55: 3, arg1
}



}
