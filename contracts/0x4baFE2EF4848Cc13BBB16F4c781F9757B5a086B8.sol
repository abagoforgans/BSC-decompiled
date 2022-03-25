contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function enableModule(address arg1) payable {
    revert
}

function createAndAddModules(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        _8 = mem[idx + 128]
        delegate arg1.mem[idx + 160 len 4] with:
             gas gas_remaining wei
            args mem[idx + 164 len mem[idx + 128] - 4]
        require delegate.return_code
        mem[ceil32(arg2.length) + 128] = 0x610b592500000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + 132] = address(delegate.return_data[0])
        require ext_code.size(this.address)
        call this.address.0x610b5925 with:
             gas gas_remaining wei
            args address(delegate.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + ceil32(_8) + 32
        s = address(delegate.return_data[0])
        continue 
}



}
