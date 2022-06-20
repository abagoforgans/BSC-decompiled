contract main {




// =====================  Runtime code  =====================


const sub_cb688e40(?) = 0

const sub_f3e892bb(?) = 1


address owner;
uint32 stor1;
address sub_6064fcc8Address;
address nftAddress;
address whitelistAddress;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 totalDistributions;
uint8 stor7;

function totalDistributions() payable {
    return totalDistributions
}

function sub_2079ea1c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function sub_2866ed21(?) payable {
    return bool(stor7)
}

function nft() payable {
    return nftAddress
}

function sub_49a19f32(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function sub_6064fcc8(?) payable {
    return address(sub_6064fcc8Address)
}

function owner() payable {
    return owner
}

function whitelist() payable {
    return whitelistAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nftAddress = arg1
}

function setClaimEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = uint8(arg1)
    emit 0xcb411286: arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_ce548772(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.userContribution(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function sub_e4fe4e8a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1d6e88cf(?) payable {
    if not stor7:
        revert with 0, 'ElvantisNFTClaim: Claim disabled'
    if stor5[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ElvantisNFTClaim: ALready Claimed!'
    require ext_code.size(nftAddress)
    call nftAddress.0xf242432a with:
         gas gas_remaining wei
        args 0, uint32(stor1), msg.sender, 1, 1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalDistributions == -1:
        revert with 0, 17
    totalDistributions++
    stor5[msg.sender] = 1
    emit 0x59ddec13: msg.sender
}

function claimSpecial() payable {
    if not stor7:
        revert with 0, 'ElvantisNFTClaim: Claim disabled'
    if stor4[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ElvantisNFTClaim: ALready Claimed!'
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.userContribution(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ElvantisNFTClaim: Only Whitelist buyers can claim this NFT!'
    require ext_code.size(nftAddress)
    call nftAddress.0xf242432a with:
         gas gas_remaining wei
        args address(sub_6064fcc8Address), msg.sender, 0, 1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalDistributions == -1:
        revert with 0, 17
    totalDistributions++
    stor4[msg.sender] = 1
    emit 0xcf9cf807: msg.sender
}



}
