contract main {




// =====================  Runtime code  =====================


const AIRDROP_AMOUNT = 500 * 10^18


address owner;
uint256 stor1;
array of struct stor2;
mapping of uint256 stor3;
address woolControllerAddress;

function owner() payable {
    return owner
}

function woolController() payable {
    return woolControllerAddress
}

function canClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claim() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require stor3[address(msg.sender)]
    if stor3[address(msg.sender)]:
        require stor2.length - 1 < stor2.length
        require stor3[address(msg.sender)] - 1 < stor2.length
        stor2[stor3[address(msg.sender)]].field_0 = stor2[stor2.length].field_0
        stor3[stor2[stor2.length].field_0] = stor3[address(msg.sender)]
        require stor2.length
        stor2[stor2.length].field_0 = 0
        stor2.length--
        stor3[address(msg.sender)] = 0
    require ext_code.size(woolControllerAddress)
    call woolControllerAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, 500 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function addToWhitelist(address[] arg1) payable {
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
        if not stor3[address(cd[((32 * idx) + arg1 + 36)])]:
            stor2.length++
            stor2[stor2.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
            stor2[stor2.length].field_160 = 0
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 3
            stor3[address(cd[((32 * idx) + arg1 + 36)])] = stor2.length
        idx = idx + 1
        continue 
}



}
