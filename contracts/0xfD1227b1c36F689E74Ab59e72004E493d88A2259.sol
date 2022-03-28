contract main {




// =====================  Runtime code  =====================


#
#  - burnWithPermit(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7)
#
address factoryAddress;

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.name() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[_7 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        call arg1.0x95d89b41 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_7 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _7 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _659 = mem[_7 + ceil32(return_data.size) + 128]
        require mem[_7 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require return_data.size >= mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128] + mem[_7 + ceil32(return_data.size) + 128] + 32 and mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128] <= 4294967296
        mem[_7 + (2 * ceil32(return_data.size)) + 128] = mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128]
        _665 = mem[_7 + ceil32(return_data.size) + _659 + 128]
        mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + ceil32(return_data.size) + _659 + 128])] = mem[_7 + ceil32(return_data.size) + _659 + 160 len ceil32(mem[_7 + ceil32(return_data.size) + _659 + 128])]
        if not _665 % 32:
            mem[64] = _665 + _7 + (2 * ceil32(return_data.size)) + 160
            mem[_665 + _7 + (2 * ceil32(return_data.size)) + 160] = 0x6dc6720b00000000000000000000000000000000000000000000000000000000
            mem[_665 + _7 + (2 * ceil32(return_data.size)) + 164] = 64
            mem[_665 + _7 + (2 * ceil32(return_data.size)) + 228] = mem[ceil32(return_data.size) + 96]
            _1299 = mem[ceil32(return_data.size) + 96]
            mem[_665 + _7 + (2 * ceil32(return_data.size)) + 260 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_665 + _7 + (2 * ceil32(return_data.size)) + 196] = mem[ceil32(return_data.size) + 96] + 96
                mem[mem[ceil32(return_data.size) + 96] + _665 + _7 + (2 * ceil32(return_data.size)) + 260] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _665 + _7 + (2 * ceil32(return_data.size)) + 292 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.0x6dc6720b with:
                        gas gas_remaining wei
                       args 64, mem[_665 + _7 + (2 * ceil32(return_data.size)) + 196 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 96]
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _665 + _7 + (2 * ceil32(return_data.size)) + 260] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _665 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 292 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_665 + _7 + (2 * ceil32(return_data.size)) + 196] = floor32(mem[ceil32(return_data.size) + 96]) + 128
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _665 + _7 + (2 * ceil32(return_data.size)) + 292] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _665 + _7 + (2 * ceil32(return_data.size)) + 324 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.0x6dc6720b with:
                        gas gas_remaining wei
                       args 64, mem[_665 + _7 + (2 * ceil32(return_data.size)) + 196 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_665 + _7 + (2 * ceil32(return_data.size)) + 160] = 0x708d5bbc00000000000000000000000000000000000000000000000000000000
            mem[_665 + _7 + (2 * ceil32(return_data.size)) + 164] = 32
            mem[_665 + _7 + (2 * ceil32(return_data.size)) + 196] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[_665 + _7 + (2 * ceil32(return_data.size)) + 228 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                require ext_code.size(factoryAddress)
                call factoryAddress.symbolToAddress(string rg1) with:
                     gas gas_remaining wei
                    args 32, mem[_665 + _7 + (2 * ceil32(return_data.size)) + 196 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + 32]
            else:
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _665 + _7 + (2 * ceil32(return_data.size)) + 228] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _665 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 260 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                require ext_code.size(factoryAddress)
                call factoryAddress.symbolToAddress(string rg1) with:
                     gas gas_remaining wei
                    args Array(len=mem[_7 + (2 * ceil32(return_data.size)) + 128], data=mem[_665 + _7 + (2 * ceil32(return_data.size)) + 228 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                revert with 0, 
                            32,
                            48,
                            0xfe4d61746174616b69546f6b656e4275726e65723a3a4241445f544f4b454e3a204661696c656420746f206c6f6f6b75,
                            mem[_665 + _7 + (2 * ceil32(return_data.size)) + 276 len 16]
            if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                revert with 0, 
                            32,
                            48,
                            0xfe4d61746174616b69546f6b656e4275726e65723a3a4241445f544f4b454e3a204661696c656420746f206c6f6f6b75,
                            mem[_665 + _7 + (2 * ceil32(return_data.size)) + 276 len 16]
        else:
            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + -(_665 % 32) + 192 len _665 % 32]
            mem[64] = floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 192
            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 192] = 0x6dc6720b00000000000000000000000000000000000000000000000000000000
            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 196] = 64
            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 260] = mem[ceil32(return_data.size) + 96]
            _1305 = mem[ceil32(return_data.size) + 96]
            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 292 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 228] = mem[ceil32(return_data.size) + 96] + 96
                mem[mem[ceil32(return_data.size) + 96] + floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 292] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 324 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.0x6dc6720b with:
                        gas gas_remaining wei
                       args 64, mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 228 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 96]
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 292] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_665) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 324 len mem[ceil32(return_data.size) + 96] % 32]
                mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 228] = floor32(mem[ceil32(return_data.size) + 96]) + 128
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 324] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 356 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.0x6dc6720b with:
                        gas gas_remaining wei
                       args 64, mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 228 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 192] = 0x708d5bbc00000000000000000000000000000000000000000000000000000000
            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 196] = 32
            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 228] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 260 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                require ext_code.size(factoryAddress)
                call factoryAddress.symbolToAddress(string rg1) with:
                     gas gas_remaining wei
                    args 32, mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 228 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + 32]
            else:
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 260] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_665) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 292 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                require ext_code.size(factoryAddress)
                call factoryAddress.symbolToAddress(string rg1) with:
                     gas gas_remaining wei
                    args Array(len=mem[_7 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 260 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                revert with 0, 
                            32,
                            48,
                            0xfe4d61746174616b69546f6b656e4275726e65723a3a4241445f544f4b454e3a204661696c656420746f206c6f6f6b75,
                            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 308 len 16]
            if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                revert with 0, 
                            32,
                            48,
                            0xfe4d61746174616b69546f6b656e4275726e65723a3a4241445f544f4b454e3a204661696c656420746f206c6f6f6b75,
                            mem[floor32(_665) + _7 + (2 * ceil32(return_data.size)) + 308 len 16]
    else:
        mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
        mem[floor32(_7) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        call arg1.0x95d89b41 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_7) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_7) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _662 = mem[floor32(_7) + ceil32(return_data.size) + 160]
        require mem[floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296
        require mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
        require return_data.size >= mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160] <= 4294967296
        mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160]
        _667 = mem[floor32(_7) + ceil32(return_data.size) + _662 + 160]
        mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + ceil32(return_data.size) + _662 + 160])] = mem[floor32(_7) + ceil32(return_data.size) + _662 + 192 len ceil32(mem[floor32(_7) + ceil32(return_data.size) + _662 + 160])]
        if not _667 % 32:
            mem[64] = _667 + floor32(_7) + (2 * ceil32(return_data.size)) + 192
            mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 0x6dc6720b00000000000000000000000000000000000000000000000000000000
            mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 196] = 64
            mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 260] = mem[ceil32(return_data.size) + 96]
            mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 292 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 228] = mem[ceil32(return_data.size) + 96] + 96
                mem[mem[ceil32(return_data.size) + 96] + _667 + floor32(_7) + (2 * ceil32(return_data.size)) + 292] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + _667 + floor32(_7) + (2 * ceil32(return_data.size)) + 324 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.0x6dc6720b with:
                        gas gas_remaining wei
                       args 64, mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 228 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 96]
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _667 + floor32(_7) + (2 * ceil32(return_data.size)) + 292] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _667 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 324 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 228] = floor32(mem[ceil32(return_data.size) + 96]) + 128
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _667 + floor32(_7) + (2 * ceil32(return_data.size)) + 324] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _667 + floor32(_7) + (2 * ceil32(return_data.size)) + 356 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.0x6dc6720b with:
                        gas gas_remaining wei
                       args 64, mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 228 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 0x708d5bbc00000000000000000000000000000000000000000000000000000000
            mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 196] = 32
            mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 228] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 260 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                require ext_code.size(factoryAddress)
                call factoryAddress.symbolToAddress(string rg1) with:
                     gas gas_remaining wei
                    args 32, mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 228 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + 32]
            else:
                mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _667 + floor32(_7) + (2 * ceil32(return_data.size)) + 260] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _667 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 292 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
                require ext_code.size(factoryAddress)
                call factoryAddress.symbolToAddress(string rg1) with:
                     gas gas_remaining wei
                    args Array(len=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], data=mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 260 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                revert with 0, 
                            32,
                            48,
                            0xfe4d61746174616b69546f6b656e4275726e65723a3a4241445f544f4b454e3a204661696c656420746f206c6f6f6b75,
                            mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 308 len 16]
            if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                revert with 0, 
                            32,
                            48,
                            0xfe4d61746174616b69546f6b656e4275726e65723a3a4241445f544f4b454e3a204661696c656420746f206c6f6f6b75,
                            mem[_667 + floor32(_7) + (2 * ceil32(return_data.size)) + 308 len 16]
        else:
            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + -(_667 % 32) + 224 len _667 % 32]
            mem[64] = floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 224
            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 0x6dc6720b00000000000000000000000000000000000000000000000000000000
            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 228] = 64
            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 292] = mem[ceil32(return_data.size) + 96]
            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 324 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 260] = mem[ceil32(return_data.size) + 96] + 96
                mem[mem[ceil32(return_data.size) + 96] + floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 324] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 356 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.0x6dc6720b with:
                        gas gas_remaining wei
                       args 64, mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 260 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 96]
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 324] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 356 len mem[ceil32(return_data.size) + 96] % 32]
                mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 260] = floor32(mem[ceil32(return_data.size) + 96]) + 128
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 356] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 388 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.0x6dc6720b with:
                        gas gas_remaining wei
                       args 64, mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 260 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 0x708d5bbc00000000000000000000000000000000000000000000000000000000
            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 228] = 32
            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 260] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 292 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                require ext_code.size(factoryAddress)
                call factoryAddress.symbolToAddress(string rg1) with:
                     gas gas_remaining wei
                    args 32, mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 260 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + 32]
            else:
                mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 292] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 324 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
                require ext_code.size(factoryAddress)
                call factoryAddress.symbolToAddress(string rg1) with:
                     gas gas_remaining wei
                    args Array(len=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], data=mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 292 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                revert with 0, 
                            32,
                            48,
                            0xfe4d61746174616b69546f6b656e4275726e65723a3a4241445f544f4b454e3a204661696c656420746f206c6f6f6b75,
                            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 340 len 16]
            if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                revert with 0, 
                            32,
                            48,
                            0xfe4d61746174616b69546f6b656e4275726e65723a3a4241445f544f4b454e3a204661696c656420746f206c6f6f6b75,
                            mem[floor32(_667) + floor32(_7) + (2 * ceil32(return_data.size)) + 340 len 16]
    ('eq', ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)), ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)))
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x9dc29fac with:
         gas gas_remaining wei
        args this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x390e7c1e: arg3, arg1, arg2
}



}
