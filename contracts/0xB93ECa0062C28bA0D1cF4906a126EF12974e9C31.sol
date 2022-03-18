contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function execute(address[] arg1, bytes arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len arg2.length] = arg2[all]
    if msg.sender == this.address:
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _152 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            require ext_code.size(address(_152))
            call address(_152).0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg1.length
            _179 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
            require ext_code.size(address(_179))
            call address(_179).0xdd62ed3e with:
                 gas gas_remaining wei
                args msg.sender, this.address
            mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg1.length
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                _248 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                require ext_code.size(address(_248))
                call address(_248).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
            else:
                _251 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                require ext_code.size(address(_251))
                call address(_251).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
            mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg2.length:
            call mem[(32 * arg1.length) + idx + 160 len 20].mem[(32 * arg1.length) + idx + 212 len 4] with:
                 gas gas_remaining - 20000 wei
                args mem[(32 * arg1.length) + idx + 216 len mem[(32 * arg1.length) + idx + 180] - 4]
            require ext_call.success
            s = (32 * arg1.length) + idx + 212
            s = mem[(32 * arg1.length) + idx + 180]
            s = mem[(32 * arg1.length) + idx + 160 len 20]
            idx = idx + mem[(32 * arg1.length) + idx + 180] + 52
            continue 
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _339 = mem[(32 * idx) + 128]
            require idx < arg1.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = ext_call.return_data[0]
            require ext_code.size(address(_339))
            call address(_339).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        if msg.sender == owner:
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _149 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                require ext_code.size(address(_149))
                call address(_149).0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg1.length
                _174 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                require ext_code.size(address(_174))
                call address(_174).0xdd62ed3e with:
                     gas gas_remaining wei
                    args msg.sender, this.address
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg1.length
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    _241 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(_241))
                    call address(_241).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                else:
                    _244 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(_244))
                    call address(_244).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                call mem[(32 * arg1.length) + idx + 160 len 20].mem[(32 * arg1.length) + idx + 212 len 4] with:
                     gas gas_remaining - 20000 wei
                    args mem[(32 * arg1.length) + idx + 216 len mem[(32 * arg1.length) + idx + 180] - 4]
                require ext_call.success
                s = (32 * arg1.length) + idx + 212
                s = mem[(32 * arg1.length) + idx + 180]
                s = mem[(32 * arg1.length) + idx + 160 len 20]
                idx = idx + mem[(32 * arg1.length) + idx + 180] + 52
                continue 
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _337 = mem[(32 * idx) + 128]
                require idx < arg1.length
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = ext_call.return_data[0]
                require ext_code.size(address(_337))
                call address(_337).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
            mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = call.func_hash
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _146 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                require ext_code.size(address(_146))
                call address(_146).0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg1.length
                _169 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                require ext_code.size(address(_169))
                call address(_169).0xdd62ed3e with:
                     gas gas_remaining wei
                    args msg.sender, this.address
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg1.length
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    _234 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(_234))
                    call address(_234).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                else:
                    _237 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
                    mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(_237))
                    call address(_237).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                call mem[(32 * arg1.length) + idx + 160 len 20].mem[(32 * arg1.length) + idx + 212 len 4] with:
                     gas gas_remaining - 20000 wei
                    args mem[(32 * arg1.length) + idx + 216 len mem[(32 * arg1.length) + idx + 180] - 4]
                require ext_call.success
                s = (32 * arg1.length) + idx + 212
                s = mem[(32 * arg1.length) + idx + 180]
                s = mem[(32 * arg1.length) + idx + 160 len 20]
                idx = idx + mem[(32 * arg1.length) + idx + 180] + 52
                continue 
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _335 = mem[(32 * idx) + 128]
                require idx < arg1.length
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = ext_call.return_data[0]
                require ext_code.size(address(_335))
                call address(_335).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
}



}
