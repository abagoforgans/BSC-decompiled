contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
uint8 initialized;
address nftTokenAddress; offset 8
address tokenAddress;
uint256 sub_7d5130ae;
mapping of struct sub_c529de65;

function initialized() {
    return bool(initialized)
}

function sub_7d5130ae(?) {
    return sub_7d5130ae
}

function owner() {
    return owner
}

function geUnlockTime() {
    return geUnlockTime
}

function sub_c529de65(?) {
    require calldata.size - 4 >= 32
    return sub_c529de65[arg1].field_0, 
           sub_c529de65[arg1].field_256,
           sub_c529de65[arg1].field_512,
           sub_c529de65[arg1].field_768,
           sub_c529de65[arg1].field_1024,
           sub_c529de65[arg1].field_1280,
           sub_c529de65[arg1].field_1536,
           bool(sub_c529de65[arg1].field_1792),
           sub_c529de65[arg1].field_2048
}

function nftToken() {
    return nftTokenAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function sub_49e4ea60(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7d5130ae = arg1
    emit 0x940b7dde: arg1, arg1
}

function changeTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
    nftTokenAddress = arg2
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    geUnlockTime = block.timestamp + arg1
    emit 0xfe8be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0xfe8be007: owner, stor1
    owner = stor1
}

function sub_1cb9a109(?) {
    require calldata.size - 4 >= 32
    if sub_c529de65[arg1].field_512 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The caller is not the owner of NFT.'
    sub_c529de65[arg1].field_1792 = not sub_c529de65[arg1].field_1792 or Mask(248, 8, sub_c529de65[arg1].field_1792)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    stor1 = owner
    owner = arg1
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if initialized:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: Contract is already initialized'
    tokenAddress = arg1
    nftTokenAddress = arg2
    sub_7d5130ae = 1
    owner = msg.sender
    stor1 = msg.sender
    emit 0xfe8be007: 0, msg.sender
    initialized = 1
}

function withdrawNFT(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_c529de65[arg1].field_0)
    call sub_c529de65[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function changeTokenPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require msg.sender == sub_c529de65[arg1].field_512
    sub_c529de65[arg1].field_512 = sub_c529de65[arg1].field_512
    sub_c529de65[arg1].field_768 = sub_c529de65[arg1].field_768
    sub_c529de65[arg1].field_1024 = sub_c529de65[arg1].field_1024
    sub_c529de65[arg1].field_1280 = arg2
    sub_c529de65[arg1].field_1792 = uint8(bool(sub_c529de65[arg1].field_1792))
    sub_c529de65[arg1].field_2048 = block.timestamp
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function removeFromSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_c529de65[arg1].field_512 != msg.sender:
        revert with 0, 'Caller is not the owner of the NFT.'
    require ext_code.size(sub_c529de65[arg1].field_0)
    call sub_c529de65[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c529de65[arg1].field_0 = 0
    sub_c529de65[arg1].field_256 = 0
    sub_c529de65[arg1].field_512 = 0
    sub_c529de65[arg1].field_768 = 0
    sub_c529de65[arg1].field_1024 = 0
    sub_c529de65[arg1].field_1280 = 0
    sub_c529de65[arg1].field_1536 = 0
    sub_c529de65[arg1].field_1792 = 0
    sub_c529de65[arg1].field_2048 = 0
}

function sub_ad0adcce(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Please approve us to utilize your NFT.'
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_c529de65[arg2].field_1536 > -2:
        revert with 0, 17
    sub_c529de65[arg2].field_0 = address(arg1)
    sub_c529de65[arg2].field_256 = arg2
    sub_c529de65[arg2].field_512 = msg.sender
    sub_c529de65[arg2].field_768 = this.address
    if sub_c529de65[arg2].field_512:
        sub_c529de65[arg2].field_1024 = sub_c529de65[arg2].field_512
    else:
        sub_c529de65[arg2].field_1024 = msg.sender
    sub_c529de65[arg2].field_1280 = arg3
    sub_c529de65[arg2].field_1536++
    sub_c529de65[arg2].field_1792 = 1
    sub_c529de65[arg2].field_2048 = block.timestamp
    emit 0x8ba81819: arg3, arg2, msg.sender
}

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    if msg.sender == sub_c529de65[arg1].field_512:
        revert with 0, 'The owner can not buy the NFT.'
    require sub_c529de65[arg1].field_1792
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_c529de65[arg1].field_1280:
        revert with 0, 'Please allow us to spend the token amount.'
    if not sub_7d5130ae:
        require ext_code.size(tokenAddress)
        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, sub_c529de65[arg1].field_512, sub_c529de65[arg1].field_1280
    else:
        if msg.sender == owner:
            require ext_code.size(tokenAddress)
            call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, sub_c529de65[arg1].field_512, sub_c529de65[arg1].field_1280
        else:
            if not sub_c529de65[arg1].field_1280:
                if 0 > sub_c529de65[arg1].field_1280:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_c529de65[arg1].field_1280 < 0:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, sub_c529de65[arg1].field_512, sub_c529de65[arg1].field_1280
            else:
                if sub_c529de65[arg1].field_1280 and sub_7d5130ae > -1 / sub_c529de65[arg1].field_1280:
                    revert with 0, 17
                if not sub_c529de65[arg1].field_1280:
                    revert with 0, 18
                if sub_c529de65[arg1].field_1280 * sub_7d5130ae / sub_c529de65[arg1].field_1280 != sub_7d5130ae:
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_c529de65[arg1].field_1280 * sub_7d5130ae / 100 > sub_c529de65[arg1].field_1280:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_c529de65[arg1].field_1280 < sub_c529de65[arg1].field_1280 * sub_7d5130ae / 100:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), sub_c529de65[arg1].field_1280 * sub_7d5130ae / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(tokenAddress)
                call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, sub_c529de65[arg1].field_512, sub_c529de65[arg1].field_1280 - (sub_c529de65[arg1].field_1280 * sub_7d5130ae / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_c529de65[arg1].field_1536 > -2:
        revert with 0, 17
    sub_c529de65[arg1].field_512 = msg.sender
    sub_c529de65[arg1].field_768 = sub_c529de65[arg1].field_768
    sub_c529de65[arg1].field_1024 = sub_c529de65[arg1].field_512
    sub_c529de65[arg1].field_1536++
    sub_c529de65[arg1].field_1792 = 0
    sub_c529de65[arg1].field_2048 = block.timestamp
    emit NftBought(sub_c529de65[arg1].field_1280, arg1, msg.sender, msg.sender);
}



}
