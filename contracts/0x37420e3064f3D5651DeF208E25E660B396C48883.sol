contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function _fallback() payable {
    revert
}

function sub_f0fab362(?) payable {
    require calldata.size - 4 >= 160
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe6e6f7420617574686f72697a656420746f206d616b65207472616e73616374696f6e,
                    mem[199 len 29]
}

function MODIP(address[] arg1, uint256 arg2, uint256 arg3, address arg4, bool arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0, 
                    32,
                    35,
                    0xfe6e6f7420617574686f72697a656420746f206d616b65207472616e73616374696f6e,
                    mem[(32 * arg1.length) + 231 len 29]
}



}
