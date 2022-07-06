contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address nftAddress;
mapping of struct listings;
mapping of uint256 sub_750e0155;

function nft() {
    return nftAddress
}

function sub_750e0155(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_750e0155[arg1]
}

function owner() {
    return owner
}

function listings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return listings[arg1].field_0, 
           listings[arg1].field_256,
           listings[arg1].field_512,
           listings[arg1].field_768,
           bool(listings[arg1].field_1024),
           bool(listings[arg1].field_1032)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function sub_a82462a8(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if nftAddress == address(('cd', 4)[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Marketplace: New NFT contract address have same value as the old one'
    nftAddress = address(('cd', 4)[0])
    emit 0x6dd9926e: msg.sender, address(('cd', 4)[0])
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if listings[stor4[arg1]].field_768 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace: not enough tokens send'
    if listings[stor4[arg1]].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace: item is already sold'
    if bool(listings[stor4[arg1]].field_1032) != 1:
        revert with 0, 'Marketplace: item does not exist'
    if listings[stor4[arg1]].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace: item currency is not the native one'
    if listings[stor4[arg1]].field_0 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace: seller has the same address as buyer'
    require ext_code.size(nftAddress)
    call nftAddress.0xf242432a with:
         gas gas_remaining wei
        args 0, listings[stor4[arg1]].field_0, msg.sender, arg1, 1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call listings[stor4[arg1]].field_0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    listings[stor4[arg1]].field_1024 = 1
    emit 0x96c9ec27: msg.value, 0, block.timestamp, arg1, listings[stor4[arg1]].field_0, msg.sender
    listings[stor4[arg1]].field_0 = 0
    listings[stor4[arg1]].field_256 = 0
    listings[stor4[arg1]].field_512 = 0
    listings[stor4[arg1]].field_768 = 0
    listings[stor4[arg1]].field_1024 = 0
    listings[stor4[arg1]].field_1032 = 0
    sub_750e0155[arg1] = 0
}

function list(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(nftAddress)
    staticcall nftAddress.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'Marketplace: Not the item owner'
    require ext_code.size(nftAddress)
    staticcall nftAddress.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Marketplace: Marketplace is not approved to use this tokenId'
    stor1++
    if sub_750e0155[arg1]:
        revert with 0, 'Marketplace: invalid listingId'
    sub_750e0155[arg1] = stor1
    if listings[stor4[arg1]].field_1032:
        revert with 0, 'Marketplace: List already exist'
    if listings[stor4[arg1]].field_1024:
        revert with 0, 'Marketplace: Can not list an already sold item'
    listings[stor1].field_0 = msg.sender
    listings[stor1].field_256 = 0
    listings[stor1].field_512 = 0
    listings[stor1].field_512 = arg1
    listings[stor1].field_768 = arg2
    listings[stor1].field_1024 = 0
    listings[stor1].field_1032 = 1
    emit 0x6f6ddf83: arg2, 0, block.timestamp, stor1, arg1, msg.sender
}



}
