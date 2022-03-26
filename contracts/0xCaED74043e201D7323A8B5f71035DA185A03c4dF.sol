contract main {




// =====================  Runtime code  =====================


const PERMIT_TYPEHASH = 0x78ecb86225a2600f4a19912d238c02ae4aba51082b8a69ebd615456f7e702c07


address owner;
uint256 DOMAIN_SEPARATOR;
address sub_0f9d1d92Address;
mapping of uint256 sub_836ae5d2;

function sub_0f9d1d92(?) payable {
    return sub_0f9d1d92Address
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function sub_836ae5d2(?) payable {
    require calldata.size - 4 >= 64
    return sub_836ae5d2[address(arg1)][address(arg2)]
}

function owner() payable {
    return owner
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

function sub_85712696(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0f9d1d92Address = arg1
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

function sub_91844f6a(?) payable {
    require calldata.size - 4 >= 224
    if arg4 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e53656c664d696e744d616e616765723a3a5065726d69743a205065726d697420455850495245,
                    mem[203 len 25]
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x78ecb86225a2600f4a19912d238c02ae4aba51082b8a69ebd615456f7e702c07, address(arg1), address(arg2), arg3, sub_836ae5d2[address(arg1)][address(arg2)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_0f9d1d92Address)
    call sub_0f9d1d92Address.0x24d7806c with:
         gas gas_remaining wei
        args address(signer)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(signer):
        revert with 0, 
                    32,
                    76,
                    0x7353656c664d696e744d616e616765723a3a494e56414c49445f5349474e41545552453a20506c656173652072657175657374206e6577207065726d6974206f7220636f6e74616374207573,
                    mem[594 len 20]
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    76,
                    0x7353656c664d696e744d616e616765723a3a494e56414c49445f5349474e41545552453a20506c656173652072657175657374206e6577207065726d6974206f7220636f6e74616374207573,
                    mem[594 len 20]
    require ext_code.size(arg1)
    call arg1.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x72c506a4: sub_836ae5d2[address(arg1)][address(arg2)], arg3, arg1, arg2
    sub_836ae5d2[address(arg1)][address(arg2)]++
}



}
