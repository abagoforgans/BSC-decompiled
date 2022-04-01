contract main {




// =====================  Runtime code  =====================


address sub_286c2addAddress;

function sub_286c2add(?) payable {
    return sub_286c2addAddress
}

function _fallback() payable {
    revert
}

function getCreator(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0xfe4e79616e73776f704e66744f7261636c65436f6e73756d65723a3a67657443726561746f722063616c6c657220697320636f6e74726163,
                    mem[220 len 8]
    require ext_code.size(sub_286c2addAddress)
    staticcall sub_286c2addAddress.read(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}



}
