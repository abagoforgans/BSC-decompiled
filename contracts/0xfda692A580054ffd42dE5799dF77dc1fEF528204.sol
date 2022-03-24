contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function changeMasterCopy(address arg1) payable {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe496e76616c6964206d617374657220636f707920616464726573732070726f76696465,
                    mem[200 len 28]
    stor0 = arg1
    emit ChangedMasterCopy(arg1);
}



}
