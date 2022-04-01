contract main {




// =====================  Runtime code  =====================


address owner;
address oracleAddress;
uint32 stor2;
address sub_1d45aba6Address;
address nyaTokenAddress;
uint256 stor4; offset 32
uint256 price;
big736 stor4;
mapping of uint8 stor5;
mapping of address read;

function read(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x734e79616e73776f704e66744f7261636c653a3a6f6e6c794163636573734c6973743a2063616c6c6572206973206e6f7420696e206163636573734c6973,
                    mem[226 len 2]
    return read[address(arg1)][arg2]
}

function sub_1d45aba6(?) payable {
    return address(sub_1d45aba6Address)
}

function oracle() payable {
    return oracleAddress
}

function sub_87a5b67c(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function nyaToken() payable {
    return nyaTokenAddress
}

function owner() payable {
    return owner
}

function price() payable {
    return price
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

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracleAddress = arg1
}

function sub_1acc32d5(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_1d45aba6Address) = arg1
}

function addAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        stor5[address(arg1)] = 1
        emit 0xcd3f8164: arg1
}

function removeAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
        stor5[address(arg1)] = 0
        emit AccessRemoved(arg1);
}

function sub_501a5162(?) payable {
    require calldata.size - 4 >= 96
    if oracleAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x744e79616e73776f704e66744f7261636c653a3a6f6e6c794f7261636c653a2063616c6c6572206973206e6f74206f7261636c,
                    mem[215 len 13]
    read[address(arg1)][arg2] = arg3
    emit 0x3dc9faa5: arg1, arg2, arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function request(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(nyaTokenAddress)
    staticcall nyaTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < price:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe4e79616e73776f704e66744f7261636c653a3a726571756573742072657175657374657220696e73756666696369656e742062616c616e63,
                    mem[221 len 7]
    if not ext_code.size(nyaTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sub_1d45aba6Address), Mask(224, 0, stor4.field_32)
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call nyaTokenAddress with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(736, 0, stor4.field_0), mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(sub_1d45aba6Address), price
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit 0xf2dc0b6f: arg1, arg2, msg.sender
}



}
