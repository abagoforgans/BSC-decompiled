contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
uint256 index;
uint256 stor3;
address stor4;
address stor5;
mapping of struct auctionList;
mapping of uint256 sub_020b0517;

function sub_020b0517(?) payable {
    require calldata.size - 4 >= 64
    return sub_020b0517[arg1][arg2]
}

function name() payable {
    return name[0 len name.length]
}

function index() payable {
    return index
}

function auctionList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return auctionList[arg1].field_0, 
           auctionList[arg1].field_256,
           auctionList[arg1].field_512,
           auctionList[arg1].field_768,
           auctionList[arg1].field_1024,
           bool(auctionList[arg1].field_1280)
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_84f241f4(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < auctionList[arg1].field_768:
        return 0
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawFee() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3 <= 0:
        revert with 0, 'No Fee Amounts'
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor3 = 0
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
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

function refund(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not auctionList[arg1].field_1280:
        revert with 0, 'Invalid auction'
    if block.timestamp < auctionList[arg1].field_768:
        revert with 0, 'Auction is still open'
    if auctionList[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6c546f6b656e732063616e20626520636c61696d6564206f6e6c79206279207468652063726561746f72206f66207468652061756374696f,
                    mem[220 len 8]
    if auctionList[arg1].field_256:
        revert with 0, 'Existing bider for this auction'
    auctionList[arg1].field_1280 = 0
    emit 0xd41a727f: arg1, msg.sender
}

function claimToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not auctionList[arg1].field_1280:
        revert with 0, 'Invalid auction'
    if auctionList[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6c546f6b656e732063616e20626520636c61696d6564206f6e6c79206279207468652063726561746f72206f66207468652061756374696f,
                    mem[220 len 8]
    require ext_code.size(stor5)
    call stor5.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args auctionList[arg1].field_0, auctionList[arg1].field_256, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 += 10 * auctionList[arg1].field_512 / 100
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args auctionList[arg1].field_0, 90 * auctionList[arg1].field_512 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    auctionList[arg1].field_1280 = 0
    emit TokensClaimed(arg1, msg.sender);
}

function bid(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(auctionList[arg1].field_1280) != 1:
        revert with 0, 'Invalid auction'
    if block.timestamp >= auctionList[arg1].field_768:
        revert with 0, 'Auction is not open'
    if arg2 <= auctionList[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6e4e657720626964207072696365206d75737420626520686967686572207468616e207468652063757272656e74206269,
                    mem[213 len 15]
    if msg.sender == auctionList[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe43726561746f72206f66207468652061756374696f6e2063616e6e6f7420706c616365206e6577206269,
                    mem[207 len 21]
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if auctionList[arg1].field_1024 > 0:
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
             gas gas_remaining wei
            args auctionList[arg1].field_256, auctionList[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    sub_020b0517[arg1][address(msg.sender)] = arg2
    auctionList[arg1].field_256 = msg.sender
    auctionList[arg1].field_512 = arg2
    auctionList[arg1].field_1024++
    emit 0x819577ef: arg1, arg2
    return 1
}

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 <= block.timestamp:
        revert with 0, 'Invalid end date for auction'
    if arg2 <= 0:
        revert with 0, 'Invalid initial bid price'
    require ext_code.size(stor5)
    staticcall stor5.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7243616c6c6572206973206e6f7420746865206f776e6572206f6620746865204e46,
                    mem[198 len 30]
    if bool(auctionList[arg1].field_1280) == 1:
        revert with 0, 'Currently on Auction'
    require ext_code.size(stor5)
    staticcall stor5.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x5452657175697265204e4654206f776e657273686970207472616e7366657220617070726f7661,
                    mem[203 len 25]
    auctionList[arg1].field_0 = msg.sender
    auctionList[arg1].field_256 = 0
    auctionList[arg1].field_512 = 0
    auctionList[arg1].field_512 = arg2
    auctionList[arg1].field_768 = arg3
    auctionList[arg1].field_1024 = 0
    auctionList[arg1].field_1280 = 1
    index++
    emit 0xebcedfe5: arg1, msg.sender, 0, arg2, arg3, 0, 1
    return index
}

function claimNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not auctionList[arg1].field_1280:
        revert with 0, 'Invalid auction'
    require ext_code.size(stor5)
    staticcall stor5.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73596f752061726520616c7265616479206f776e6572206f662074686973204e46,
                    mem[197 len 31]
    if block.timestamp < auctionList[arg1].field_768:
        revert with 0, 'Auction is still open'
    if auctionList[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x544e46542063616e20626520636c61696d6564206f6e6c79206279207468652063757272656e7420626964206f776e65,
                    mem[212 len 16]
    require ext_code.size(stor5)
    call stor5.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args auctionList[arg1].field_0, auctionList[arg1].field_256, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 += 10 * auctionList[arg1].field_512 / 100
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args auctionList[arg1].field_0, 90 * auctionList[arg1].field_512 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    auctionList[arg1].field_1280 = 0
    emit NFTClaimed(arg1, msg.sender);
}



}
