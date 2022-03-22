contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;

function owner() payable {
    return owner
}

function destroy() payable {
    require msg.sender == address(stor3.field_0)
    selfdestruct(0)
}

function _fallback() payable {
    revert
}

function claimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor1)
    call stor1.0xae169a50 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor3.field_0)
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getWinningNumbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor1)
    staticcall stor1.maxNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor1)
    staticcall stor1.totalAddresses() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.totalAmount() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 352] = 64
    if not uint8(stor3.field_160):
        mem[(4 * ceil32(return_data.size)) + 224] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
    else:
        mem[(4 * ceil32(return_data.size)) + 224] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0] + 1) % ext_call.return_data[0]) + 1)
    mem[(4 * ceil32(return_data.size)) + 256] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0] + arg1) % ext_call.return_data[0]) + 1)
    mem[(4 * ceil32(return_data.size)) + 288] = uint8((sha3(block.hash(block.number - 1), block.timestamp) % ext_call.return_data[0]) + 1)
    mem[(4 * ceil32(return_data.size)) + 320] = uint8((sha3(block.hash(block.number - 1), block.difficulty) % ext_call.return_data[0]) + 1)
    idx = 0
    s = (4 * ceil32(return_data.size)) + 224
    t = (4 * ceil32(return_data.size)) + 736
    while idx < 4:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (4 * ceil32(return_data.size)) + 736
       len 128
}

function sub_9276fb4a(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.drawed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Lottery is in drawed state.'
    if uint8(stor3.field_160):
        Mask(96, 0, stor3.field_160) = 0
    require ext_code.size(stor1)
    staticcall stor1.minPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.maxNumber() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor1)
    staticcall stor1.totalAddresses() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.totalAmount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 480] = 64
    if not uint8(stor3.field_160):
        mem[(7 * ceil32(return_data.size)) + 352] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
    else:
        mem[(7 * ceil32(return_data.size)) + 352] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0] + 1) % ext_call.return_data[0]) + 1)
    mem[(7 * ceil32(return_data.size)) + 384] = uint8((sha3(block.hash(block.number - 1), 2 * ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
    mem[(7 * ceil32(return_data.size)) + 416] = uint8((sha3(block.hash(block.number - 1), block.timestamp) % ext_call.return_data[0]) + 1)
    mem[(7 * ceil32(return_data.size)) + 448] = uint8((sha3(block.hash(block.number - 1), block.difficulty) % ext_call.return_data[0]) + 1)
    mem[(7 * ceil32(return_data.size)) + 868] = stor1
    mem[(7 * ceil32(return_data.size)) + 900] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 868] = ext_call.return_data[0]
    idx = 0
    s = (7 * ceil32(return_data.size)) + 352
    t = (8 * ceil32(return_data.size)) + 900
    while idx < 4:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    call stor1.buy(uint256 rg1, uint8[4] rg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], mem[(8 * ceil32(return_data.size)) + 900 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = (7 * ceil32(return_data.size)) + 352
    t = (8 * ceil32(return_data.size)) + 896
    while idx < 4:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x5078effd: ext_call.return_data[0], mem[(8 * ceil32(return_data.size)) + 896 len 128]
}



}
