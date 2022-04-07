contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function difficulty() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0xb12aff7664b16cb99339be399b863feecd64d14817be7e1f042f97e3f358e64e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function timeTarget() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0xad16221efc80aaf1b7e69bd3ecb61ba5ffa539adf129c3b4ffff769c9b5bbc33
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function disputeFee() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0x8b75eb45d88e80f0e4ec77d23936268694c0e7ac2e0c9085c5c6bdfcfbc49239
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function requestCount() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0x5de9147d05477c0a5dc675aeea733157f5092f82add148cf39d579cafe3dc98
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function stakeAmount() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0x7be108969d31a3f0b261465c71f2b0ba9301cd914d55d9091c3b36a49d4d41b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function stakerCount() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0xedddb9344bfe0dadc78c558b8ffca446679cbffc17be64eb83973fce7bea5f34
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function slotProgress() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0x6c505cb2db6644f57b42d87bd9407b0f66788b07d0617a2bc1356a0e69e66f9a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function disputeCount() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0x475da5340e76792184fb177cb85d21980c2530616313aef501564d484eb5ca1e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function currentTotalTips() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0xd26d9834adf5a73309c4974bf654850bb699df8505e70d4cfde365c417b19dfc
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function timeOfLastNewValue() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0x97e6eb29f6a85471f7cc9b57f9e4c3deaf398cfc9798673160d7798baf0b13a4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function _owner() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x133bee5e with:
            gas gas_remaining wei
           args 0x9dbc393ddc18fd27b1d9b1b129059925688d2f2d5818a5ec3ebb750b7c286ea6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function _deity() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x133bee5e with:
            gas gas_remaining wei
           args 0xc72fb71df90ec89e61e8dea6fee5142880a8a329caaae9ff4931955d88f59990
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_20bf9f2d(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0x133bee5e with:
            gas gas_remaining wei
           args 0x8765ff26ad721181b6bac6acbcf4fbab9d61cc3a50d3ab4b6650b1dc1423a48d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function pending_owner() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x133bee5e with:
            gas gas_remaining wei
           args 0x44b2657a0f8a90ed8e62f4c4cceca06eacaa9b4b25751ae1ebca9280a70abd68
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function getNewValueCountbyRequestId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x46eee1c4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function retrieveData(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor0)
    staticcall stor0.0x93fa4915 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function isInDispute(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor0)
    staticcall stor0.0x3df0777b with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function totalTip(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0xe0ae93c1 with:
            gas gas_remaining wei
           args arg1, 0x2a9e355a92978430eca9c1aa3a9ba590094bac282594bccf82de16b83046e2c3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getTimestampbyRequestIDandIndex(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor0)
    staticcall stor0.0x77fbb663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_8f1f1904(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x46eee1c4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x77fbb663 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x93fa4915 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0
    return ext_call.return_data[0]
}

function getCurrentValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x46eee1c4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x77fbb663 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x93fa4915 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0, 0, ext_call.return_data[0]
    return 1, ext_call.return_data[0], ext_call.return_data[0]
}

function currentReward() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0x48dd4d5794e69cea63353d940276ad61f89c65942226a2bb5bd352536892f82
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    if ext_call.return_data[0] > 48 * 24 * 3600:
        staticcall stor0.0x612c8f7f with:
                gas gas_remaining wei
               args 0xd26d9834adf5a73309c4974bf654850bb699df8505e70d4cfde365c417b19dfc
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return (ext_call.return_data[0] / 5)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0x48dd4d5794e69cea63353d940276ad61f89c65942226a2bb5bd352536892f82
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require (ext_call.return_data[0] / 12 * 3600) + 1
    require ext_code.size(stor0)
    staticcall stor0.0x612c8f7f with:
            gas gas_remaining wei
           args 0xd26d9834adf5a73309c4974bf654850bb699df8505e70d4cfde365c417b19dfc
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ((61728395061728390000 / (ext_call.return_data[0] / 12 * 3600) + 1) + ext_call.return_data[0] / 5)
}

function getIndexForDataBefore(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = arg1
    require ext_code.size(stor0)
    staticcall stor0.0x46eee1c4 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            return 0
        mem[ceil32(return_data.size) + 100] = arg1
        mem[ceil32(return_data.size) + 132] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x77fbb663 with:
                gas gas_remaining wei
               args arg1, 0
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= arg2:
                return 0
            mem[(2 * ceil32(return_data.size)) + 100] = arg1
            mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] - 1
            require ext_code.size(stor0)
            staticcall stor0.0x77fbb663 with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0] - 1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if ext_call.success:
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg2:
                    return 1, ext_call.return_data[0] - 1
                mem[(4 * ceil32(return_data.size)) + 100] = arg1
                mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] - 1 / 2) + 1
                require ext_code.size(stor0)
                staticcall stor0.0x77fbb663 with:
                        gas gas_remaining wei
                       args arg1, (ext_call.return_data[0] - 1 / 2) + 1
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                s = ext_call.return_data[0]
                s = 0
                t = 0
                while ext_call.success:
                    _37 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _38 = mem[_37]
                    require mem[_37] == mem[_37]
                    mem[mem[64] + 4] = arg1
                    if mem[_37] >= arg2:
                        mem[mem[64] + 36] = (ext_call.return_data[0] + -s - 1 / 2) + s
                        require ext_code.size(stor0)
                        staticcall stor0.0x77fbb663 with:
                                gas gas_remaining wei
                               args arg1, (ext_call.return_data[0] + -s - 1 / 2) + s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _43 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_43] == mem[_43]
                        if mem[_43] < arg2:
                            return 1, (ext_call.return_data[0] + -s - 1 / 2) + s
                        mem[mem[64]] = 0x77fbb66300000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 100] = arg1
                        mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
                        require ext_code.size(stor0)
                        staticcall stor0.0x77fbb663 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 160]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _38
                        s = s
                        t = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
                        continue 
                    mem[mem[64] + 36] = (ext_call.return_data[0] + -s - 1 / 2) + s + 2
                    require ext_code.size(stor0)
                    staticcall stor0.0x77fbb663 with:
                            gas gas_remaining wei
                           args arg1, (ext_call.return_data[0] + -s - 1 / 2) + s + 2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _44 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_44] == mem[_44]
                    if mem[_44] >= arg2:
                        return 1, (ext_call.return_data[0] + -s - 1 / 2) + s + 1
                    mem[mem[64]] = 0x77fbb66300000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = arg1
                    mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] + -(ext_call.return_data[0] + -s - 1 / 2) + -s - 3 / 2) + (ext_call.return_data[0] + -s - 1 / 2) + s + 3
                    require ext_code.size(stor0)
                    staticcall stor0.0x77fbb663 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _38
                    s = (ext_call.return_data[0] + -s - 1 / 2) + s + 2
                    t = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
                    continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function getDataBefore(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = arg1
    require ext_code.size(stor0)
    staticcall stor0.0x46eee1c4 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0
    mem[ceil32(return_data.size) + 100] = arg1
    mem[ceil32(return_data.size) + 132] = 0
    require ext_code.size(stor0)
    staticcall stor0.0x77fbb663 with:
            gas gas_remaining wei
           args arg1, 0
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg2:
        return 0
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] - 1
    require ext_code.size(stor0)
    staticcall stor0.0x77fbb663 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0] - 1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg2:
        mem[(4 * ceil32(return_data.size)) + 100] = arg1
        mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] - 1 / 2) + 1
        require ext_code.size(stor0)
        staticcall stor0.0x77fbb663 with:
                gas gas_remaining wei
               args arg1, (ext_call.return_data[0] - 1 / 2) + 1
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = 0
        t = 0
        while ext_call.success:
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_67]
            require mem[_67] == mem[_67]
            mem[mem[64] + 4] = arg1
            if mem[_67] >= arg2:
                mem[mem[64] + 36] = (ext_call.return_data[0] + -s - 1 / 2) + s
                require ext_code.size(stor0)
                staticcall stor0.0x77fbb663 with:
                        gas gas_remaining wei
                       args arg1, (ext_call.return_data[0] + -s - 1 / 2) + s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _73 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_73] == mem[_73]
                if mem[_73] >= arg2:
                    mem[mem[64]] = 0x77fbb66300000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = arg1
                    mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
                    require ext_code.size(stor0)
                    staticcall stor0.0x77fbb663 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _68
                    s = s
                    t = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
                    continue 
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = (ext_call.return_data[0] + -s - 1 / 2) + s
                require ext_code.size(stor0)
                staticcall stor0.0x77fbb663 with:
                        gas gas_remaining wei
                       args arg1, (ext_call.return_data[0] + -s - 1 / 2) + s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _83 = mem[_81]
                require mem[_81] == mem[_81]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _83
                require ext_code.size(stor0)
                staticcall stor0.0x93fa4915 with:
                        gas gas_remaining wei
                       args arg1, _83
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _89 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_89] == mem[_89]
                if mem[_89] <= 0:
                    return 0
                return 1, mem[_89], _83
            mem[mem[64] + 36] = (ext_call.return_data[0] + -s - 1 / 2) + s + 2
            require ext_code.size(stor0)
            staticcall stor0.0x77fbb663 with:
                    gas gas_remaining wei
                   args arg1, (ext_call.return_data[0] + -s - 1 / 2) + s + 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _74 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_74] == mem[_74]
            if mem[_74] < arg2:
                mem[mem[64]] = 0x77fbb66300000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 100] = arg1
                mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] + -(ext_call.return_data[0] + -s - 1 / 2) + -s - 3 / 2) + (ext_call.return_data[0] + -s - 1 / 2) + s + 3
                require ext_code.size(stor0)
                staticcall stor0.0x77fbb663 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 160]
                mem[mem[64]] = ext_call.return_data[0]
                s = _68
                s = (ext_call.return_data[0] + -s - 1 / 2) + s + 2
                t = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
                continue 
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
            require ext_code.size(stor0)
            staticcall stor0.0x77fbb663 with:
                    gas gas_remaining wei
                   args arg1, (ext_call.return_data[0] + -s - 1 / 2) + s + 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _84 = mem[_82]
            require mem[_82] == mem[_82]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _84
            require ext_code.size(stor0)
            staticcall stor0.0x93fa4915 with:
                    gas gas_remaining wei
                   args arg1, _84
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_90] == mem[_90]
            if mem[_90] <= 0:
                return 0
            return 1, mem[_90], _84
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.0x77fbb663 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x93fa4915 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0
    return 1, ext_call.return_data[0], ext_call.return_data[0]
}

function sub_268190ba(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = arg1
    require ext_code.size(stor0)
    staticcall stor0.0x46eee1c4 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0
    mem[ceil32(return_data.size) + 100] = arg1
    mem[ceil32(return_data.size) + 132] = 0
    require ext_code.size(stor0)
    staticcall stor0.0x77fbb663 with:
            gas gas_remaining wei
           args arg1, 0
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg2:
        return 0
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] - 1
    require ext_code.size(stor0)
    staticcall stor0.0x77fbb663 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0] - 1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg2:
        mem[(4 * ceil32(return_data.size)) + 100] = arg1
        mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] - 1 / 2) + 1
        require ext_code.size(stor0)
        staticcall stor0.0x77fbb663 with:
                gas gas_remaining wei
               args arg1, (ext_call.return_data[0] - 1 / 2) + 1
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = 0
        t = 0
        while ext_call.success:
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_67]
            require mem[_67] == mem[_67]
            mem[mem[64] + 4] = arg1
            if mem[_67] >= arg2:
                mem[mem[64] + 36] = (ext_call.return_data[0] + -s - 1 / 2) + s
                require ext_code.size(stor0)
                staticcall stor0.0x77fbb663 with:
                        gas gas_remaining wei
                       args arg1, (ext_call.return_data[0] + -s - 1 / 2) + s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _73 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_73] == mem[_73]
                if mem[_73] >= arg2:
                    mem[mem[64]] = 0x77fbb66300000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = arg1
                    mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
                    require ext_code.size(stor0)
                    staticcall stor0.0x77fbb663 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _68
                    s = s
                    t = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
                    continue 
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = (ext_call.return_data[0] + -s - 1 / 2) + s
                require ext_code.size(stor0)
                staticcall stor0.0x77fbb663 with:
                        gas gas_remaining wei
                       args arg1, (ext_call.return_data[0] + -s - 1 / 2) + s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _83 = mem[_81]
                require mem[_81] == mem[_81]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _83
                require ext_code.size(stor0)
                staticcall stor0.0x93fa4915 with:
                        gas gas_remaining wei
                       args arg1, _83
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _89 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_89] == mem[_89]
                if mem[_89] <= 0:
                    return 0
                mem[mem[64]] = mem[_89]
                return mem[mem[64]], _83
            mem[mem[64] + 36] = (ext_call.return_data[0] + -s - 1 / 2) + s + 2
            require ext_code.size(stor0)
            staticcall stor0.0x77fbb663 with:
                    gas gas_remaining wei
                   args arg1, (ext_call.return_data[0] + -s - 1 / 2) + s + 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _74 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_74] == mem[_74]
            if mem[_74] < arg2:
                mem[mem[64]] = 0x77fbb66300000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 100] = arg1
                mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] + -(ext_call.return_data[0] + -s - 1 / 2) + -s - 3 / 2) + (ext_call.return_data[0] + -s - 1 / 2) + s + 3
                require ext_code.size(stor0)
                staticcall stor0.0x77fbb663 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 160]
                mem[mem[64]] = ext_call.return_data[0]
                s = _68
                s = (ext_call.return_data[0] + -s - 1 / 2) + s + 2
                t = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
                continue 
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = (ext_call.return_data[0] + -s - 1 / 2) + s + 1
            require ext_code.size(stor0)
            staticcall stor0.0x77fbb663 with:
                    gas gas_remaining wei
                   args arg1, (ext_call.return_data[0] + -s - 1 / 2) + s + 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _84 = mem[_82]
            require mem[_82] == mem[_82]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _84
            require ext_code.size(stor0)
            staticcall stor0.0x93fa4915 with:
                    gas gas_remaining wei
                   args arg1, _84
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_90] == mem[_90]
            if mem[_90] <= 0:
                return 0
            mem[mem[64]] = mem[_90]
            return mem[mem[64]], _84
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.0x77fbb663 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x93fa4915 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0
    return ext_call.return_data[0], ext_call.return_data[0]
}

function getLastNewValues(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = arg1
    require ext_code.size(stor0)
    staticcall stor0.0x46eee1c4 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 <= ext_call.return_data[0]:
        require arg2 <= test266151307()
        mem[ceil32(return_data.size) + 96] = arg2
        mem[64] = ceil32(return_data.size) + (32 * arg2) + 128
        if not arg2:
            idx = 0
            while idx < arg2:
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = ext_call.return_data[0] + -idx - 1
                require ext_code.size(stor0)
                staticcall stor0.0x77fbb663 with:
                        gas gas_remaining wei
                       args arg1, ext_call.return_data[0] + -idx - 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _97 = mem[_91]
                require mem[_91] == mem[_91]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _97
                require ext_code.size(stor0)
                staticcall stor0.0x93fa4915 with:
                        gas gas_remaining wei
                       args arg1, _97
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _121 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _123 = mem[_121]
                require mem[_121] == mem[_121]
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = _97
                mem[_131 + 32] = _123
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _131
                idx = idx + 1
                continue 
            _77 = mem[64]
            mem[mem[64]] = 32
            _79 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _79:
                _141 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_141 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _77 + (64 * _79) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg2) + 192
        mem[ceil32(return_data.size) + (32 * arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg2) + 160] = 0
        mem[var44001] = ceil32(return_data.size) + (32 * arg2) + 128
        s = var44001
        idx = var44002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[ceil32(return_data.size) + (32 * arg2) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg2) + 160] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2:
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = ext_call.return_data[0] + -idx - 1
            require ext_code.size(stor0)
            staticcall stor0.0x77fbb663 with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0] + -idx - 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _191 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _197 = mem[_191]
            require mem[_191] == mem[_191]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _197
            require ext_code.size(stor0)
            staticcall stor0.0x93fa4915 with:
                    gas gas_remaining wei
                   args arg1, _197
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _207 = mem[_205]
            require mem[_205] == mem[_205]
            _209 = mem[64]
            mem[64] = mem[64] + 64
            mem[_209] = _197
            mem[_209 + 32] = _207
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _209
            idx = idx + 1
            continue 
        _183 = mem[64]
        mem[mem[64]] = 32
        _185 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _185:
            _213 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_213 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _183 + (64 * _185) + -mem[64] + 64
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = ext_call.return_data[0] + -idx - 1
            require ext_code.size(stor0)
            staticcall stor0.0x77fbb663 with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0] + -idx - 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _92 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _99 = mem[_92]
            require mem[_92] == mem[_92]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _99
            require ext_code.size(stor0)
            staticcall stor0.0x93fa4915 with:
                    gas gas_remaining wei
                   args arg1, _99
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _125 = mem[_122]
            require mem[_122] == mem[_122]
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = _99
            mem[_133 + 32] = _125
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _133
            idx = idx + 1
            continue 
        _78 = mem[64]
        mem[mem[64]] = 32
        _80 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _80:
            _142 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_142 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _78 + (64 * _80) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
    mem[var45001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    s = var45001
    idx = var45002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = ext_call.return_data[0] + -idx - 1
        require ext_code.size(stor0)
        staticcall stor0.0x77fbb663 with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[0] + -idx - 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _198 = mem[_192]
        require mem[_192] == mem[_192]
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = _198
        require ext_code.size(stor0)
        staticcall stor0.0x93fa4915 with:
                gas gas_remaining wei
               args arg1, _198
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _206 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _208 = mem[_206]
        require mem[_206] == mem[_206]
        _211 = mem[64]
        mem[64] = mem[64] + 64
        mem[_211] = _198
        mem[_211 + 32] = _208
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _211
        idx = idx + 1
        continue 
    _184 = mem[64]
    mem[mem[64]] = 32
    _186 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _186:
        _214 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_214 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _184 + (64 * _186) + -mem[64] + 64
}



}
