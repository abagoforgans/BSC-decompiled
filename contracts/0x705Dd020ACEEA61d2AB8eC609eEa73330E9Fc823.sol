contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function run() {
    require ext_code.size(0x2e3a6445a4b93257f8fd53c69a41224e8ed18e57)
    staticcall 0x2e3a6445a4b93257f8fd53c69a41224e8ed18e57.epochTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x2e3a6445a4b93257f8fd53c69a41224e8ed18e57)
    staticcall 0x2e3a6445a4b93257f8fd53c69a41224e8ed18e57.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        require ext_code.size(0x2e3a6445a4b93257f8fd53c69a41224e8ed18e57)
        call 0x2e3a6445a4b93257f8fd53c69a41224e8ed18e57.BOOTSTRAP() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb8b604e535e6dff57eab68e4d4c12d55738c1d)
        staticcall 0xb8b604e535e6dff57eab68e4d4c12d55738c1d.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb8b604e535e6dff57eab68e4d4c12d55738c1d)
        call 0x00b8b604e535e6dff57eab68e4d4c12d55738c1d.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0x929648fa0dfc3637d55226ce5e3f75cae1566fce, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
