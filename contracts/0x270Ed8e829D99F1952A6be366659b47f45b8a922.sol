contract main {




// =====================  Runtime code  =====================


#
#  - sub_12d1c5b4(?)
#
uint8 stor0;
uint8 stor0; offset 8
address stor0; offset 16
uint256 stor0; offset 8
address signerAddress;

function getSigner() payable {
    return signerAddress
}

function _fallback() payable {
    revert
}

function transferSignership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if signerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game Wallet: caller is not the signer'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game Wallet:: new signer is the zero address'
    emit SignershipTransferred(signerAddress, arg1);
    signerAddress = arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        address(stor0.field_16) = arg1
        signerAddress = msg.sender
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            address(stor0.field_16) = arg1
            signerAddress = msg.sender
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            address(stor0.field_16) = arg1
            signerAddress = msg.sender
            Mask(248, 0, stor0.field_8) = 0
}

function sub_691dcea7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(stor0.field_16))
    staticcall address(stor0.field_16).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Game Wallet: insufficient funds.'
    require ext_code.size(address(stor0.field_16))
    call address(stor0.field_16).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Game Wallet: failed transfer tokens'
    emit Deposit(arg1, block.timestamp, msg.sender);
}



}
