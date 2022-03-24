contract main {




// =====================  Runtime code  =====================


const sub_7587f576(?) = 0xb14796d751eb4f2570065a479f9e526eabeb2077c564c8a1c5ea559883ea2fab

const sub_767e15c1(?) = 0x2a11db67c480122765825a7e4bc5428e8b7b9eca0d4e62b91aac194f99edd0d7

const getFeeManagerMode = 0xf2aed8f700000000000000000000000000000000000000000000000000000000


uint256 homeFee;
address erc677tokenAddress;
address storAB54;
uint256 foreignFee;

function erc677token() {
    return erc677tokenAddress
}

function getHomeFee() {
    return homeFee
}

function getForeignFee() {
    return foreignFee
}

function _fallback() payable {
    revert
}

function setHomeFee(uint256 arg1) {
    require arg1 < 10^18
    homeFee = arg1
    emit HomeFeeUpdated(arg1);
}

function setForeignFee(uint256 arg1) {
    require arg1 < 10^18
    foreignFee = arg1
    emit ForeignFeeUpdated(arg1);
}

function calculateFee(uint256 arg1, bool arg2, bytes32 arg3) {
    if arg3 == 0x89d93e5e92f7e37e490c25f0e50f7f4aad7cc94b308a566553280967be38bcf1:
        if not arg2:
            return homeFee
        if homeFee <= arg1:
            return (arg1 - homeFee)
    else:
        if not arg2:
            return foreignFee
        if foreignFee <= arg1:
            return (arg1 - foreignFee)
    revert
}

function distributeFeeFromSignatures(uint256 arg1) {
    require ext_code.size(storAB54)
    call storAB54.validatorCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg1 / ext_call.return_data[0]:
        require 0 <= arg1
        if arg1 <= 0:
            require ext_code.size(storAB54)
            call storAB54.0x8d37052c with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 <= 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                    mem[32] = 2
                    mem[132] = arg1 / ext_call.return_data[0]
                    require ext_code.size(erc677tokenAddress)
                    call erc677tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if s != 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                    mem[32] = 2
                    mem[132] = arg1 / ext_call.return_data[0]
                    require ext_code.size(erc677tokenAddress)
                    call erc677tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(storAB54)
                call storAB54.0x81b91174 with:
                     gas gas_remaining wei
                    args address(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                mem[32] = 2
                mem[132] = arg1 + (arg1 / ext_call.return_data[0])
                require ext_code.size(erc677tokenAddress)
                call erc677tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1 + (arg1 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = address(idx)
                require ext_code.size(storAB54)
                call storAB54.0x8d37052c with:
                     gas gas_remaining wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
        else:
            require 1 <= block.number
            require ext_call.return_data[0]
            require ext_code.size(storAB54)
            call storAB54.0x8d37052c with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 <= 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                    mem[32] = 2
                    mem[132] = arg1 / ext_call.return_data[0]
                    require ext_code.size(erc677tokenAddress)
                    call erc677tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if block.hash(block.number - 1) % ext_call.return_data[0] != s:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                    mem[32] = 2
                    mem[132] = arg1 / ext_call.return_data[0]
                    require ext_code.size(erc677tokenAddress)
                    call erc677tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(storAB54)
                call storAB54.0x81b91174 with:
                     gas gas_remaining wei
                    args address(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                mem[32] = 2
                mem[132] = arg1 + (arg1 / ext_call.return_data[0])
                require ext_code.size(erc677tokenAddress)
                call erc677tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1 + (arg1 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = address(idx)
                require ext_code.size(storAB54)
                call storAB54.0x8d37052c with:
                     gas gas_remaining wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
    else:
        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] / arg1 / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= arg1
        if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
            require ext_code.size(storAB54)
            call storAB54.0x8d37052c with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                    mem[32] = 2
                    mem[132] = arg1 / ext_call.return_data[0]
                    require ext_code.size(erc677tokenAddress)
                    call erc677tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if s != 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                    mem[32] = 2
                    mem[132] = arg1 / ext_call.return_data[0]
                    require ext_code.size(erc677tokenAddress)
                    call erc677tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(storAB54)
                call storAB54.0x81b91174 with:
                     gas gas_remaining wei
                    args address(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                mem[32] = 2
                mem[132] = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                require ext_code.size(erc677tokenAddress)
                call erc677tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = address(idx)
                require ext_code.size(storAB54)
                call storAB54.0x8d37052c with:
                     gas gas_remaining wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
        else:
            require 1 <= block.number
            require ext_call.return_data[0]
            require ext_code.size(storAB54)
            call storAB54.0x8d37052c with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                    mem[32] = 2
                    mem[132] = arg1 / ext_call.return_data[0]
                    require ext_code.size(erc677tokenAddress)
                    call erc677tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if block.hash(block.number - 1) % ext_call.return_data[0] != s:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                    mem[32] = 2
                    mem[132] = arg1 / ext_call.return_data[0]
                    require ext_code.size(erc677tokenAddress)
                    call erc677tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(storAB54)
                call storAB54.0x81b91174 with:
                     gas gas_remaining wei
                    args address(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = 0xa8b0ade3e2b734f043ce298aca4cc8d19d74270223f34531d0988b7d00cba21d
                mem[32] = 2
                mem[132] = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                require ext_code.size(erc677tokenAddress)
                call erc677tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = address(idx)
                require ext_code.size(storAB54)
                call storAB54.0x8d37052c with:
                     gas gas_remaining wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
}

function distributeFeeFromAffirmation(uint256 arg1) {
    require ext_code.size(storAB54)
    call storAB54.validatorCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg1 / ext_call.return_data[0]:
        require 0 <= arg1
        if arg1 <= 0:
            require ext_code.size(storAB54)
            call storAB54.0x8d37052c with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 <= 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(ext_call.return_data[0]) with:
                       value arg1 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[129] = address(ext_call.return_data[0])
                        create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                        code: code.data[2743 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if s != 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(ext_call.return_data[0]) with:
                       value arg1 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[129] = address(ext_call.return_data[0])
                        create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                        code: code.data[2743 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(storAB54)
                call storAB54.0x81b91174 with:
                     gas gas_remaining wei
                    args address(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call address(ext_call.return_data[0]) with:
                   value arg1 + (arg1 / ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    mem[129] = address(ext_call.return_data[0])
                    create contract with ('add', ('param', 'arg1'), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                    code: code.data[2743 len 33], address(ext_call.return_data[0])
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[100] = address(idx)
                require ext_code.size(storAB54)
                call storAB54.0x8d37052c with:
                     gas gas_remaining wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
        else:
            require 1 <= block.number
            require ext_call.return_data[0]
            require ext_code.size(storAB54)
            call storAB54.0x8d37052c with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 <= 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(ext_call.return_data[0]) with:
                       value arg1 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[129] = address(ext_call.return_data[0])
                        create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                        code: code.data[2743 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if block.hash(block.number - 1) % ext_call.return_data[0] != s:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(ext_call.return_data[0]) with:
                       value arg1 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[129] = address(ext_call.return_data[0])
                        create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                        code: code.data[2743 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(storAB54)
                call storAB54.0x81b91174 with:
                     gas gas_remaining wei
                    args address(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call address(ext_call.return_data[0]) with:
                   value arg1 + (arg1 / ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    mem[129] = address(ext_call.return_data[0])
                    create contract with ('add', ('param', 'arg1'), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                    code: code.data[2743 len 33], address(ext_call.return_data[0])
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[100] = address(idx)
                require ext_code.size(storAB54)
                call storAB54.0x8d37052c with:
                     gas gas_remaining wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
    else:
        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] / arg1 / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= arg1
        if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
            require ext_code.size(storAB54)
            call storAB54.0x8d37052c with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(ext_call.return_data[0]) with:
                       value arg1 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[129] = address(ext_call.return_data[0])
                        create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                        code: code.data[2743 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if s != 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(ext_call.return_data[0]) with:
                       value arg1 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[129] = address(ext_call.return_data[0])
                        create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                        code: code.data[2743 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(storAB54)
                call storAB54.0x81b91174 with:
                     gas gas_remaining wei
                    args address(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call address(ext_call.return_data[0]) with:
                   value arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    mem[129] = address(ext_call.return_data[0])
                    create contract with ('add', ('param', 'arg1'), ('mul', -1, ('ext_call.return_data', 0, 32), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                    code: code.data[2743 len 33], address(ext_call.return_data[0])
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[100] = address(idx)
                require ext_code.size(storAB54)
                call storAB54.0x8d37052c with:
                     gas gas_remaining wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
        else:
            require 1 <= block.number
            require ext_call.return_data[0]
            require ext_code.size(storAB54)
            call storAB54.0x8d37052c with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(ext_call.return_data[0]) with:
                       value arg1 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[129] = address(ext_call.return_data[0])
                        create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                        code: code.data[2743 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if block.hash(block.number - 1) % ext_call.return_data[0] != s:
                    require ext_code.size(storAB54)
                    call storAB54.0x81b91174 with:
                         gas gas_remaining wei
                        args address(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(ext_call.return_data[0]) with:
                       value arg1 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[129] = address(ext_call.return_data[0])
                        create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                        code: code.data[2743 len 33], address(ext_call.return_data[0])
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = address(idx)
                    require ext_code.size(storAB54)
                    call storAB54.0x8d37052c with:
                         gas gas_remaining wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(storAB54)
                call storAB54.0x81b91174 with:
                     gas gas_remaining wei
                    args address(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call address(ext_call.return_data[0]) with:
                   value arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    mem[129] = address(ext_call.return_data[0])
                    create contract with ('add', ('param', 'arg1'), ('mul', -1, ('ext_call.return_data', 0, 32), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                    code: code.data[2743 len 33], address(ext_call.return_data[0])
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[100] = address(idx)
                require ext_code.size(storAB54)
                call storAB54.0x8d37052c with:
                     gas gas_remaining wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
}



}
