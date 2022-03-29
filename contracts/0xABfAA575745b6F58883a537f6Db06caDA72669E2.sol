contract main {




// =====================  Runtime code  =====================


address owner;
address pancakeBunniesAddress;
address cakeTokenAddress;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 startBlockNumber;
uint256 endBlockNumber;
uint256 sub_e39842c3;
uint256 stor8; offset 32
uint256 sub_8d048736;
big480 stor8;
uint256 sub_a5ff07b0;
uint256 sub_687ddf3b;
array of struct stor12;
uint8 stor13;

function startBlockNumber() payable {
    return startBlockNumber
}

function sub_687ddf3b(?) payable {
    return sub_687ddf3b
}

function hasClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function cakeToken() payable {
    return cakeTokenAddress
}

function sub_8d048736(?) payable {
    return sub_8d048736
}

function owner() payable {
    return owner
}

function pancakeBunnies() payable {
    return pancakeBunniesAddress
}

function sub_a5ff07b0(?) payable {
    return sub_a5ff07b0
}

function endBlockNumber() payable {
    return endBlockNumber
}

function canClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_e39842c3(?) payable {
    return sub_e39842c3
}

function _fallback() payable {
    revert
}

function sub_1112effe(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlockNumber = block.number
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeOwnershipNFTContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(pancakeBunniesAddress)
    call pancakeBunniesAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function whitelistAddresses(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function mintNFT(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[msg.sender]:
        revert with 0, 'Cannot claim'
    if stor4[msg.sender]:
        revert with 0, 'Has claimed'
    if sub_a5ff07b0 >= sub_687ddf3b:
        revert with 0, 'Nothing left'
    require ext_code.size(cakeTokenAddress)
    staticcall cakeTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Must own CAKE'
    if arg1 >= stor13:
        revert with 0, 'bunnyId unavailable'
    stor4[msg.sender] = 1
    if sub_a5ff07b0 + 1 < sub_a5ff07b0:
        revert with 0, 'SafeMath: addition overflow'
    sub_a5ff07b0++
    mem[128] = stor12[arg1 << 248].field_0
    idx = 128
    s = 0
    while stor12[arg1 << 248].length + 96 > idx:
        mem[idx + 32] = stor12[arg1 << 248][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(pancakeBunniesAddress)
    call pancakeBunniesAddress.mint(address rg1, string rg2, uint8 rg3) with:
         gas gas_remaining wei
        args msg.sender, Array(len=stor12[arg1 << 248].length, data=mem[128 len stor12[arg1 << 248].length]), arg1 << 248
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit BunnyMint(msg.sender, ext_call.return_data[0], arg1);
}

function withdrawCake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number < endBlockNumber:
        revert with 0, 'too early'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(cakeTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg1) >> 32
    call cakeTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, arg1
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function burnNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(pancakeBunniesAddress)
    staticcall pancakeBunniesAddress.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not the owner'
    if block.number >= endBlockNumber:
        revert with 0, 'too late'
    require ext_code.size(pancakeBunniesAddress)
    call pancakeBunniesAddress.burn(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_e39842c3 + 1 < sub_e39842c3:
        revert with 0, 'SafeMath: addition overflow'
    sub_e39842c3++
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(cakeTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 0, stor8.field_32)
    mem[324 len 0] = 0
    call cakeTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, 0, stor8.field_0), mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, sub_8d048736
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0xf46a8b9b: msg.sender, arg1
}



}
