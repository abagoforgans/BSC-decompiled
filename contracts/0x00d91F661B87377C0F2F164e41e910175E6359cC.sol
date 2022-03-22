contract main {




// =====================  Runtime code  =====================


const ref = 0x6decba7a077cb103f47ee136cba0118a5741861

const token = 0x10747e2045a0ef884a0586ac81558f43285ea3c7


mapping of uint256 claimed;

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return claimed[arg1]
}

function _fallback() payable {
    revert
}

function claim() payable {
    require ext_code.size(0x6decba7a077cb103f47ee136cba0118a5741861)
    staticcall 0x6decba7a077cb103f47ee136cba0118a5741861.0x133af456 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] - claimed[msg.sender]:
        require ext_code.size(0x10747e2045a0ef884a0586ac81558f43285ea3c7)
        call 0x10747e2045a0ef884a0586ac81558f43285ea3c7.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if (7 * ext_call.return_data[0]) - (7 * claimed[msg.sender]) / ext_call.return_data[0] - claimed[msg.sender] != 7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(0x10747e2045a0ef884a0586ac81558f43285ea3c7)
        call 0x10747e2045a0ef884a0586ac81558f43285ea3c7.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (7 * ext_call.return_data[0]) - (7 * claimed[msg.sender]) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    claimed[msg.sender] = ext_call.return_data[0]
}



}
