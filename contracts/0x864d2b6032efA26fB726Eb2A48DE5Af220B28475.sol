contract main {




// =====================  Runtime code  =====================


#
#  - vote(uint256 arg1)
#
uint256 sub_9eda62b6;
uint8 stor1;
mapping of uint8 stor2;
mapping of struct stor3;
address stor3608;
uint256 stor3608;
address storFEB5;
uint256 storFEB5;

function votingEnabled() {
    return bool(stor1)
}

function sub_9eda62b6(?) {
    return sub_9eda62b6
}

function sub_eafe6df5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor2[arg1][arg2])
}

function _fallback() payable {
    if msg.sender == address(storFEB5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function admin() {
    if msg.sender == address(storFEB5):
        return address(storFEB5)
    if msg.sender == address(storFEB5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function implementation() {
    if msg.sender == address(storFEB5):
        return address(stor3608)
    if msg.sender == address(storFEB5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_61507ad4(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if msg.sender == address(storFEB5):
        stor1 = uint8(bool(arg1))
    if msg.sender == address(storFEB5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(storFEB5) != msg.sender:
        if msg.sender == address(storFEB5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransparentUpgradeableProxy: new admin is the zero address'
    emit AdminChanged(address(storFEB5), arg1);
    uint256(storFEB5) = arg1
}

function proposalDetail(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor3[arg1].field_0:
            if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3[arg1].field_0):
                if 31 >= uint255(stor3[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor3[arg1].field_8
                else:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                revert with 0, 34
            if stor3[arg1].field_1:
                if 31 >= stor3[arg1].field_1:
                    mem[128] = 256 * stor3[arg1].field_8
                else:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor3[arg1].field_0), data=mem[128 len ceil32(uint255(stor3[arg1].field_0) * 0.5)]), 
               stor3[arg1].field_256,
               stor3[arg1].field_512,
               stor3[arg1].field_768,
               stor3[arg1].field_1024,
               stor3[arg1].field_1280,
               stor3[arg1].field_1536
    if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
        revert with 0, 34
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == uint255(stor3[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3[arg1].field_0):
            if 31 >= uint255(stor3[arg1].field_0) * 0.5:
                mem[128] = 256 * stor3[arg1].field_8
            else:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor3[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
            revert with 0, 34
        if stor3[arg1].field_1:
            if 31 >= stor3[arg1].field_1:
                mem[128] = 256 * stor3[arg1].field_8
            else:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)]), 
           stor3[arg1].field_256,
           stor3[arg1].field_512,
           stor3[arg1].field_768,
           stor3[arg1].field_1024,
           stor3[arg1].field_1280,
           stor3[arg1].field_1536
}

function sub_b3f7a68d(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if address(storFEB5) != msg.sender:
        if msg.sender == address(storFEB5):
            revert with 0, 'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not stor1:
        revert with 0, 'Proposal: voting is not enabled.'
    if stor3[stor0].field_0:
        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
            revert with 0, 34
    else:
        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
            revert with 0, 34
    if stor3[stor0].field_0:
        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3[stor0].field_0):
            if 31 < uint255(stor3[stor0].field_0) * 0.5:
                idx = ceil32(ceil32(arg1.length)) + 353
                s = 0
                while ceil32(ceil32(arg1.length)) + (uint255(stor3[stor0].field_0) * 0.5) + 321 > idx:
                    mem[idx + 32] = stor3[stor0][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
            revert with 0, 34
        if stor3[stor0].field_1:
            if 31 < stor3[stor0].field_1:
                idx = ceil32(ceil32(arg1.length)) + 353
                s = 0
                while ceil32(ceil32(arg1.length)) + stor3[stor0].field_1 + 321 > idx:
                    mem[idx + 32] = stor3[stor0][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if block.timestamp < stor3[stor0].field_768:
        revert with 0, 'Proposal: previous proposal is not finalized.'
    if sub_9eda62b6 > -2:
        revert with 0, 17
    sub_9eda62b6++
    if stor3[stor0].field_0:
        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[stor0][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[stor0].field_0 = 0
            idx = 0
            while (uint255(stor3[stor0].field_0) * 0.5) + 31 / 32 > idx:
                stor3[stor0][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[stor0][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[stor0].field_0 = 0
            idx = 0
            while stor3[stor0].field_1 + 31 / 32 > idx:
                stor3[stor0][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor3[stor0].field_256 = address(arg2)
    stor3[stor0].field_512 = arg3
    stor3[stor0].field_768 = arg4
    stor3[stor0].field_1024 = 0
    stor3[stor0].field_1280 = 0
    stor3[stor0].field_1536 = 0
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(storFEB5) != msg.sender:
        if msg.sender == address(storFEB5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if stor1:
        if stor3[stor0].field_0:
            if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                revert with 0, 34
            if stor3[stor0].field_0:
                if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[stor0].field_0):
                    if 31 < uint255(stor3[stor0].field_0) * 0.5:
                        idx = 352
                        s = 0
                        while (uint255(stor3[stor0].field_0) * 0.5) + 320 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_1:
                    if 31 < stor3[stor0].field_1:
                        idx = 352
                        s = 0
                        while stor3[stor0].field_1 + 320 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if not sub_9eda62b6:
                revert with 0, 'Proposal: no proposal submited.'
            if block.timestamp <= stor3[stor0].field_768:
                revert with 0, 'Proposal: Voting is still open.'
            if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                revert with 0, 'Proposal: Proposal denied.'
            if not stor1:
                if not ext_code.size(arg1):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = arg1
                emit Upgraded(arg1);
            else:
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
        else:
            if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                revert with 0, 34
            if stor3[stor0].field_0:
                if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[stor0].field_0):
                    if 31 < uint255(stor3[stor0].field_0) * 0.5:
                        idx = 352
                        s = 0
                        while (uint255(stor3[stor0].field_0) * 0.5) + 320 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_1:
                    if 31 < stor3[stor0].field_1:
                        idx = 352
                        s = 0
                        while stor3[stor0].field_1 + 320 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if not sub_9eda62b6:
                revert with 0, 'Proposal: no proposal submited.'
            if block.timestamp <= stor3[stor0].field_768:
                revert with 0, 'Proposal: Voting is still open.'
            if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                revert with 0, 'Proposal: Proposal denied.'
            if not stor1:
                if not ext_code.size(arg1):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = arg1
                emit Upgraded(arg1);
            else:
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if address(storFEB5) != msg.sender:
        if msg.sender == address(storFEB5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not stor1:
    if stor3[stor0].field_0:
        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor3[stor0].field_0:
            if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[stor0].field_0):
                if not sub_9eda62b6:
                    revert with 0, 'Proposal: no proposal submited.'
                if block.timestamp <= stor3[stor0].field_768:
                    revert with 0, 'Proposal: Voting is still open.'
                if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                    revert with 0, 'Proposal: Proposal denied.'
                if not stor1:
                    if not ext_code.size(arg1):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = arg1
                    emit Upgraded(arg1);
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = arg2.length
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384 len arg2.length] = arg2[all]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384] = 0
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 384] = 39
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480] = 0
                    delegate arg1.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 484 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        2 * Mask(256, -1, stor3[stor0].field_0),
                                        mem[352 len 96]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480] = return_data.size
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 485] = 32
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 517] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 549 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 416 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]:
                        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)] + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 549] = 0
                    revert with memory
                      from ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 481
                       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) + 68
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_0:
                        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3[stor0].field_0):
                            if 31 < uint255(stor3[stor0].field_0) * 0.5:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                                if not ext_code.size(stor3[stor0].field_256):
                                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                                uint256(stor3608) = stor3[stor0].field_256
                                emit Upgraded(stor3[stor0].field_256);
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                                delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with stor3[stor0].field_256, 
                                                    stor3[stor0].field_512,
                                                    stor3[stor0].field_768,
                                                    stor3[stor0].field_1024,
                                                    stor3[stor0].field_1280,
                                                    stor3[stor0].field_1536,
                                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                                    mem[352 len 96]
                                if delegate.return_code:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            39,
                                            0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                            0
                    else:
                        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                            revert with 0, 34
                        if stor3[stor0].field_1:
                            if 31 < stor3[stor0].field_1:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                                if not ext_code.size(stor3[stor0].field_256):
                                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                                uint256(stor3608) = stor3[stor0].field_256
                                emit Upgraded(stor3[stor0].field_256);
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                                delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with stor3[stor0].field_256, 
                                                    stor3[stor0].field_512,
                                                    stor3[stor0].field_768,
                                                    stor3[stor0].field_1024,
                                                    stor3[stor0].field_1280,
                                                    stor3[stor0].field_1536,
                                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                                    mem[352 len 96]
                                if delegate.return_code:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            39,
                                            0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                            0
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                    if not ext_code.size(stor3[stor0].field_256):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = stor3[stor0].field_256
                    emit Upgraded(stor3[stor0].field_256);
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                    delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        2 * Mask(256, -1, stor3[stor0].field_0),
                                        mem[352 len 96]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = return_data.size
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 741] = 32
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 773] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 805 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])] = mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 672 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]:
                        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)] + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 805] = 0
                    revert with memory
                      from (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 737
                       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) + 68
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                2 * Mask(256, -1, stor3[stor0].field_0),
                                                mem[352 len 96]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                2 * Mask(256, -1, stor3[stor0].field_0),
                                                mem[352 len 96]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                    mem[352 len 96]
            else:
                if 31 < uint255(stor3[stor0].field_0) * 0.5:
                    mem[352] = stor3[stor0].field_0
                    idx = 352
                    s = 0
                    while (uint255(stor3[stor0].field_0) * 0.5) + 320 > idx:
                        mem[idx + 32] = stor3[stor0][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if not sub_9eda62b6:
                        revert with 0, 'Proposal: no proposal submited.'
                    if block.timestamp <= stor3[stor0].field_768:
                        revert with 0, 'Proposal: Voting is still open.'
                    if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                        revert with 0, 'Proposal: Proposal denied.'
                    if not stor1:
                        if not ext_code.size(arg1):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = arg1
                        emit Upgraded(arg1);
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = arg2.length
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384 len arg2.length] = arg2[all]
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384] = 0
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 384] = 39
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                        var45001 = ceil32(arg2.length)
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480] = 0
                        delegate arg1.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 484 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            2 * Mask(256, -1, stor3[stor0].field_0),
                                            mem[352 len 96]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 455 len 25] >> 56,
                                    0
                    if stor3[stor0].field_0:
                        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if stor3[stor0].field_0:
                            if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor3[stor0].field_0):
                                if 31 < uint255(stor3[stor0].field_0) * 0.5:
                                    idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                    s = 0
                                    while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                        mem[idx + 32] = stor3[stor0][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                                revert with 0, 34
                            if stor3[stor0].field_1:
                                if 31 < stor3[stor0].field_1:
                                    idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                    s = 0
                                    while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                        mem[idx + 32] = stor3[stor0][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                        if not ext_code.size(stor3[stor0].field_256):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = stor3[stor0].field_256
                        emit Upgraded(stor3[stor0].field_256);
                        mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                        mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                        mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                        delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            2 * Mask(256, -1, stor3[stor0].field_0),
                                            mem[352 len 96]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                    0
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_0:
                        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3[stor0].field_0):
                            if 31 < uint255(stor3[stor0].field_0) * 0.5:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                            revert with 0, 34
                        if stor3[stor0].field_1:
                            if 31 < stor3[stor0].field_1:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                    if not ext_code.size(stor3[stor0].field_256):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = stor3[stor0].field_256
                    emit Upgraded(stor3[stor0].field_256);
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                    delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        2 * Mask(256, -1, stor3[stor0].field_0),
                                        mem[352 len 96]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 711 len 25] >> 56,
                                0
                mem[352] = 256 * stor3[stor0].field_8
                if not sub_9eda62b6:
                    revert with 0, 'Proposal: no proposal submited.'
                if block.timestamp <= stor3[stor0].field_768:
                    revert with 0, 'Proposal: Voting is still open.'
                if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                    revert with 0, 'Proposal: Proposal denied.'
                if not stor1:
                    if not ext_code.size(arg1):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = arg1
                    emit Upgraded(arg1);
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = arg2.length
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384 len arg2.length] = arg2[all]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384] = 0
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 384] = 39
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480] = 0
                    delegate arg1.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 484 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        2 * Mask(256, -1, stor3[stor0].field_0),
                                        256 * stor3[stor0].field_8,
                                        mem[384 len 64]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480] = return_data.size
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 485] = 32
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 517] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 549 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 416 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]:
                        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)] + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 549] = 0
                    revert with memory
                      from ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 481
                       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) + 68
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_0:
                        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3[stor0].field_0):
                            if 31 < uint255(stor3[stor0].field_0) * 0.5:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                                if not ext_code.size(stor3[stor0].field_256):
                                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                                uint256(stor3608) = stor3[stor0].field_256
                                emit Upgraded(stor3[stor0].field_256);
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                                delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with stor3[stor0].field_256, 
                                                    stor3[stor0].field_512,
                                                    stor3[stor0].field_768,
                                                    stor3[stor0].field_1024,
                                                    stor3[stor0].field_1280,
                                                    stor3[stor0].field_1536,
                                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                                    256 * stor3[stor0].field_8,
                                                    mem[384 len 64]
                                if delegate.return_code:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            39,
                                            0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                            0
                    else:
                        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                            revert with 0, 34
                        if stor3[stor0].field_1:
                            if 31 < stor3[stor0].field_1:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                                if not ext_code.size(stor3[stor0].field_256):
                                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                                uint256(stor3608) = stor3[stor0].field_256
                                emit Upgraded(stor3[stor0].field_256);
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                                delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with stor3[stor0].field_256, 
                                                    stor3[stor0].field_512,
                                                    stor3[stor0].field_768,
                                                    stor3[stor0].field_1024,
                                                    stor3[stor0].field_1280,
                                                    stor3[stor0].field_1536,
                                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                                    256 * stor3[stor0].field_8,
                                                    mem[384 len 64]
                                if delegate.return_code:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            39,
                                            0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                            0
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                    if not ext_code.size(stor3[stor0].field_256):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = stor3[stor0].field_256
                    emit Upgraded(stor3[stor0].field_256);
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                    delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        2 * Mask(256, -1, stor3[stor0].field_0),
                                        256 * stor3[stor0].field_8,
                                        mem[384 len 64]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = return_data.size
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 741] = 32
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 773] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 805 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])] = mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 672 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]:
                        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)] + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 805] = 0
                    revert with memory
                      from (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 737
                       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) + 68
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                2 * Mask(256, -1, stor3[stor0].field_0),
                                                256 * stor3[stor0].field_8,
                                                mem[384 len 64]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                2 * Mask(256, -1, stor3[stor0].field_0),
                                                256 * stor3[stor0].field_8,
                                                mem[384 len 64]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                    256 * stor3[stor0].field_8,
                                    mem[384 len 64]
        else:
            if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                revert with 0, 34
            if not stor3[stor0].field_1:
                if not sub_9eda62b6:
                    revert with 0, 'Proposal: no proposal submited.'
                if block.timestamp <= stor3[stor0].field_768:
                    revert with 0, 'Proposal: Voting is still open.'
                if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                    revert with 0, 'Proposal: Proposal denied.'
                if not stor1:
                    if not ext_code.size(arg1):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = arg1
                    emit Upgraded(arg1);
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = arg2.length
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384 len arg2.length] = arg2[all]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384] = 0
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 384] = 39
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480] = 0
                    delegate arg1.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 484 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        2 * Mask(256, -1, stor3[stor0].field_0),
                                        mem[352 len 96]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480] = return_data.size
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 485] = 32
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 517] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 549 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 416 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]:
                        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)] + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 549] = 0
                    revert with memory
                      from ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 481
                       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) + 68
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_0:
                        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3[stor0].field_0):
                            if 31 < uint255(stor3[stor0].field_0) * 0.5:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                                if not ext_code.size(stor3[stor0].field_256):
                                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                                uint256(stor3608) = stor3[stor0].field_256
                                emit Upgraded(stor3[stor0].field_256);
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                                delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with stor3[stor0].field_256, 
                                                    stor3[stor0].field_512,
                                                    stor3[stor0].field_768,
                                                    stor3[stor0].field_1024,
                                                    stor3[stor0].field_1280,
                                                    stor3[stor0].field_1536,
                                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                                    mem[352 len 96]
                                if delegate.return_code:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            39,
                                            0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                            0
                    else:
                        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                            revert with 0, 34
                        if stor3[stor0].field_1:
                            if 31 < stor3[stor0].field_1:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                                if not ext_code.size(stor3[stor0].field_256):
                                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                                uint256(stor3608) = stor3[stor0].field_256
                                emit Upgraded(stor3[stor0].field_256);
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                                delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with stor3[stor0].field_256, 
                                                    stor3[stor0].field_512,
                                                    stor3[stor0].field_768,
                                                    stor3[stor0].field_1024,
                                                    stor3[stor0].field_1280,
                                                    stor3[stor0].field_1536,
                                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                                    mem[352 len 96]
                                if delegate.return_code:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            39,
                                            0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                            0
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                    if not ext_code.size(stor3[stor0].field_256):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = stor3[stor0].field_256
                    emit Upgraded(stor3[stor0].field_256);
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                    delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        2 * Mask(256, -1, stor3[stor0].field_0),
                                        mem[352 len 96]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = return_data.size
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 741] = 32
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 773] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 805 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])] = mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 672 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]:
                        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)] + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 805] = 0
                    revert with memory
                      from (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 737
                       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) + 68
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                2 * Mask(256, -1, stor3[stor0].field_0),
                                                mem[352 len 96]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                2 * Mask(256, -1, stor3[stor0].field_0),
                                                mem[352 len 96]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                    mem[352 len 96]
            else:
                if 31 < stor3[stor0].field_1:
                    mem[352] = stor3[stor0].field_0
                    idx = 352
                    s = 0
                    while stor3[stor0].field_1 + 320 > idx:
                        mem[idx + 32] = stor3[stor0][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if not sub_9eda62b6:
                        revert with 0, 'Proposal: no proposal submited.'
                    if block.timestamp <= stor3[stor0].field_768:
                        revert with 0, 'Proposal: Voting is still open.'
                    if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                        revert with 0, 'Proposal: Proposal denied.'
                    if not stor1:
                        if not ext_code.size(arg1):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = arg1
                        emit Upgraded(arg1);
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = arg2.length
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384 len arg2.length] = arg2[all]
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384] = 0
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 384] = 39
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                        var46001 = ceil32(arg2.length)
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480] = 0
                        delegate arg1.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 484 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            2 * Mask(256, -1, stor3[stor0].field_0),
                                            mem[352 len 96]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 455 len 25] >> 56,
                                    0
                    if stor3[stor0].field_0:
                        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if stor3[stor0].field_0:
                            if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor3[stor0].field_0):
                                if 31 < uint255(stor3[stor0].field_0) * 0.5:
                                    idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                    s = 0
                                    while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                        mem[idx + 32] = stor3[stor0][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                                revert with 0, 34
                            if stor3[stor0].field_1:
                                if 31 < stor3[stor0].field_1:
                                    idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                    s = 0
                                    while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                        mem[idx + 32] = stor3[stor0][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                        if not ext_code.size(stor3[stor0].field_256):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = stor3[stor0].field_256
                        emit Upgraded(stor3[stor0].field_256);
                        mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                        mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                        mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                        delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            2 * Mask(256, -1, stor3[stor0].field_0),
                                            mem[352 len 96]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                    0
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_0:
                        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3[stor0].field_0):
                            if 31 < uint255(stor3[stor0].field_0) * 0.5:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                            revert with 0, 34
                        if stor3[stor0].field_1:
                            if 31 < stor3[stor0].field_1:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                    if not ext_code.size(stor3[stor0].field_256):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = stor3[stor0].field_256
                    emit Upgraded(stor3[stor0].field_256);
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                    delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        2 * Mask(256, -1, stor3[stor0].field_0),
                                        mem[352 len 96]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 711 len 25] >> 56,
                                0
                mem[352] = 256 * stor3[stor0].field_8
                if not sub_9eda62b6:
                    revert with 0, 'Proposal: no proposal submited.'
                if block.timestamp <= stor3[stor0].field_768:
                    revert with 0, 'Proposal: Voting is still open.'
                if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                    revert with 0, 'Proposal: Proposal denied.'
                if not stor1:
                    if not ext_code.size(arg1):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = arg1
                    emit Upgraded(arg1);
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = arg2.length
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384 len arg2.length] = arg2[all]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384] = 0
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 384] = 39
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480] = 0
                    delegate arg1.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 484 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        2 * Mask(256, -1, stor3[stor0].field_0),
                                        256 * stor3[stor0].field_8,
                                        mem[384 len 64]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 480] = return_data.size
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 485] = 32
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 517] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 549 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 416 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]:
                        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)] + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 549] = 0
                    revert with memory
                      from ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 481
                       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) + 68
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_0:
                        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3[stor0].field_0):
                            if 31 < uint255(stor3[stor0].field_0) * 0.5:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                                if not ext_code.size(stor3[stor0].field_256):
                                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                                uint256(stor3608) = stor3[stor0].field_256
                                emit Upgraded(stor3[stor0].field_256);
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                                delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with stor3[stor0].field_256, 
                                                    stor3[stor0].field_512,
                                                    stor3[stor0].field_768,
                                                    stor3[stor0].field_1024,
                                                    stor3[stor0].field_1280,
                                                    stor3[stor0].field_1536,
                                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                                    256 * stor3[stor0].field_8,
                                                    mem[384 len 64]
                                if delegate.return_code:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            39,
                                            0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                            0
                    else:
                        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                            revert with 0, 34
                        if stor3[stor0].field_1:
                            if 31 < stor3[stor0].field_1:
                                idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                                if not ext_code.size(stor3[stor0].field_256):
                                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                                uint256(stor3608) = stor3[stor0].field_256
                                emit Upgraded(stor3[stor0].field_256);
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                                mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                                if ceil32(arg2.length) > arg2.length:
                                    mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                                delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with stor3[stor0].field_256, 
                                                    stor3[stor0].field_512,
                                                    stor3[stor0].field_768,
                                                    stor3[stor0].field_1024,
                                                    stor3[stor0].field_1280,
                                                    stor3[stor0].field_1536,
                                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                                    256 * stor3[stor0].field_8,
                                                    mem[384 len 64]
                                if delegate.return_code:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            39,
                                            0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                            0
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                    mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                    if not ext_code.size(stor3[stor0].field_256):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = stor3[stor0].field_256
                    emit Upgraded(stor3[stor0].field_256);
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + 640 len arg2.length] = arg2[all]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640] = 0
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 640] = 39
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = 0
                    delegate stor3[stor0].field_256.mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        2 * Mask(256, -1, stor3[stor0].field_0),
                                        256 * stor3[stor0].field_8,
                                        mem[384 len 64]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 736] = return_data.size
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 741] = 32
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 773] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 805 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])] = mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + 672 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]:
                        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)] + (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 805] = 0
                    revert with memory
                      from (2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + ceil32(arg2.length) + ceil32(return_data.size) + 737
                       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(uint255(stor3[stor0].field_0) * 0.5)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) + 68
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(stor3[stor0].field_0) * 0.5) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                2 * Mask(256, -1, stor3[stor0].field_0),
                                                256 * stor3[stor0].field_8,
                                                mem[384 len 64]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(stor3[stor0].field_0) * 0.5) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                2 * Mask(256, -1, stor3[stor0].field_0),
                                                256 * stor3[stor0].field_8,
                                                mem[384 len 64]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 352] = ceil32(uint255(stor3[stor0].field_0) * 0.5) + 576
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 384] = stor3[stor0].field_256
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + 416] = stor3[stor0].field_512
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + 640 len arg2.length] = arg2[all]
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640] = 0
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 640] = 39
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = 0
                delegate stor3[stor0].field_256.mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 740 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    2 * Mask(256, -1, stor3[stor0].field_0),
                                    256 * stor3[stor0].field_8,
                                    mem[384 len 64]
        ('bool', 'returndatasize')
        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 736] = return_data.size
        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 741] = 32
        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 773] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 805 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 672 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])]
        if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]:
            mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)] + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 805] = 0
        revert with memory
          from ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 737
           len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(stor3[stor0].field_1) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) + 68
    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
        revert with 0, 34
    if stor3[stor0].field_0:
        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor3[stor0].field_0):
            if not sub_9eda62b6:
                revert with 0, 'Proposal: no proposal submited.'
            if block.timestamp <= stor3[stor0].field_768:
                revert with 0, 'Proposal: Voting is still open.'
            if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                revert with 0, 'Proposal: Proposal denied.'
            if not stor1:
                if not ext_code.size(arg1):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = arg1
                emit Upgraded(arg1);
                mem[ceil32(stor3[stor0].field_1) + 352] = arg2.length
                mem[ceil32(stor3[stor0].field_1) + 384 len arg2.length] = arg2[all]
                mem[ceil32(stor3[stor0].field_1) + arg2.length + 384] = 0
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 384] = 39
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480] = 0
                delegate arg1.mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 484 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    stor3[stor0].field_0,
                                    mem[352 len 96]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480] = return_data.size
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 485] = 32
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 517] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 549 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 416 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])]
                if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]:
                    mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)] + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 549] = 0
                revert with memory
                  from ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 481
                   len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) + 68
            if stor3[stor0].field_0:
                if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                stor3[stor0].field_0,
                                                mem[352 len 96]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                stor3[stor0].field_0,
                                                mem[352 len 96]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    stor3[stor0].field_0,
                                    mem[352 len 96]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = return_data.size
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 741] = 32
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 773] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 805 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 672 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])]
                if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]:
                    mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)] + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 805] = 0
                revert with memory
                  from ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 737
                   len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) + 68
            if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                revert with 0, 34
            if stor3[stor0].field_0:
                if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[stor0].field_0):
                    if 31 < uint255(stor3[stor0].field_0) * 0.5:
                        idx = ceil32(stor3[stor0].field_1) + 608
                        s = 0
                        while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                        mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                        mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                        if not ext_code.size(stor3[stor0].field_256):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = stor3[stor0].field_256
                        emit Upgraded(stor3[stor0].field_256);
                        mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
                        delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            stor3[stor0].field_0,
                                            mem[352 len 96]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                    0
            else:
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_1:
                    if 31 < stor3[stor0].field_1:
                        idx = ceil32(stor3[stor0].field_1) + 608
                        s = 0
                        while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                        mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                        mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                        if not ext_code.size(stor3[stor0].field_256):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = stor3[stor0].field_256
                        emit Upgraded(stor3[stor0].field_256);
                        mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
                        delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            stor3[stor0].field_0,
                                            mem[352 len 96]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                    0
            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
            if not ext_code.size(stor3[stor0].field_256):
                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
            uint256(stor3608) = stor3[stor0].field_256
            emit Upgraded(stor3[stor0].field_256);
            mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
            mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
            delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
            if not return_data.size:
                if not delegate.return_code:
                    revert with stor3[stor0].field_256, 
                                stor3[stor0].field_512,
                                stor3[stor0].field_768,
                                stor3[stor0].field_1024,
                                stor3[stor0].field_1280,
                                stor3[stor0].field_1536,
                                stor3[stor0].field_0,
                                mem[352 len 96]
        else:
            if 31 < uint255(stor3[stor0].field_0) * 0.5:
                mem[352] = stor3[stor0].field_0
                idx = 352
                s = 0
                while (uint255(stor3[stor0].field_0) * 0.5) + 320 > idx:
                    mem[idx + 32] = stor3[stor0][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not sub_9eda62b6:
                    revert with 0, 'Proposal: no proposal submited.'
                if block.timestamp <= stor3[stor0].field_768:
                    revert with 0, 'Proposal: Voting is still open.'
                if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                    revert with 0, 'Proposal: Proposal denied.'
                if not stor1:
                    if not ext_code.size(arg1):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = arg1
                    emit Upgraded(arg1);
                    mem[ceil32(stor3[stor0].field_1) + 352] = arg2.length
                    mem[ceil32(stor3[stor0].field_1) + 384 len arg2.length] = arg2[all]
                    mem[ceil32(stor3[stor0].field_1) + arg2.length + 384] = 0
                    mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 384] = 39
                    mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                    mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                    var46001 = ceil32(arg2.length)
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480] = 0
                    delegate arg1.mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 484 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        stor3[stor0].field_0,
                                        mem[352 len 96]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 455 len 25] >> 56,
                                0
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_0:
                        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3[stor0].field_0):
                            if 31 < uint255(stor3[stor0].field_0) * 0.5:
                                idx = ceil32(stor3[stor0].field_1) + 608
                                s = 0
                                while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                            revert with 0, 34
                        if stor3[stor0].field_1:
                            if 31 < stor3[stor0].field_1:
                                idx = ceil32(stor3[stor0].field_1) + 608
                                s = 0
                                while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                    mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                    mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                    if not ext_code.size(stor3[stor0].field_256):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = stor3[stor0].field_256
                    emit Upgraded(stor3[stor0].field_256);
                    mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                    mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                    mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                    mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                    delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        stor3[stor0].field_0,
                                        mem[352 len 96]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 711 len 25] >> 56,
                                0
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
                mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
                mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
                mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
                mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
                delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    stor3[stor0].field_0,
                                    mem[352 len 96]
                if delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            39,
                            0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 711 len 25] >> 56,
                            0
            mem[352] = 256 * stor3[stor0].field_8
            if not sub_9eda62b6:
                revert with 0, 'Proposal: no proposal submited.'
            if block.timestamp <= stor3[stor0].field_768:
                revert with 0, 'Proposal: Voting is still open.'
            if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                revert with 0, 'Proposal: Proposal denied.'
            if not stor1:
                if not ext_code.size(arg1):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = arg1
                emit Upgraded(arg1);
                mem[ceil32(stor3[stor0].field_1) + 352] = arg2.length
                mem[ceil32(stor3[stor0].field_1) + 384 len arg2.length] = arg2[all]
                mem[ceil32(stor3[stor0].field_1) + arg2.length + 384] = 0
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 384] = 39
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480] = 0
                delegate arg1.mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 484 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    stor3[stor0].field_0,
                                    256 * stor3[stor0].field_8,
                                    mem[384 len 64]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480] = return_data.size
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 485] = 32
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 517] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 549 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 416 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])]
                if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]:
                    mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)] + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 549] = 0
                revert with memory
                  from ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 481
                   len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) + 68
            if stor3[stor0].field_0:
                if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                stor3[stor0].field_0,
                                                256 * stor3[stor0].field_8,
                                                mem[384 len 64]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                stor3[stor0].field_0,
                                                256 * stor3[stor0].field_8,
                                                mem[384 len 64]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    stor3[stor0].field_0,
                                    256 * stor3[stor0].field_8,
                                    mem[384 len 64]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = return_data.size
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 741] = 32
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 773] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 805 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 672 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])]
                if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]:
                    mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)] + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 805] = 0
                revert with memory
                  from ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 737
                   len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) + 68
            if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                revert with 0, 34
            if stor3[stor0].field_0:
                if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[stor0].field_0):
                    if 31 < uint255(stor3[stor0].field_0) * 0.5:
                        idx = ceil32(stor3[stor0].field_1) + 608
                        s = 0
                        while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                        mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                        mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                        if not ext_code.size(stor3[stor0].field_256):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = stor3[stor0].field_256
                        emit Upgraded(stor3[stor0].field_256);
                        mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
                        delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            stor3[stor0].field_0,
                                            256 * stor3[stor0].field_8,
                                            mem[384 len 64]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                    0
            else:
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_1:
                    if 31 < stor3[stor0].field_1:
                        idx = ceil32(stor3[stor0].field_1) + 608
                        s = 0
                        while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                        mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                        mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                        if not ext_code.size(stor3[stor0].field_256):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = stor3[stor0].field_256
                        emit Upgraded(stor3[stor0].field_256);
                        mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
                        delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            stor3[stor0].field_0,
                                            256 * stor3[stor0].field_8,
                                            mem[384 len 64]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                    0
            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
            if not ext_code.size(stor3[stor0].field_256):
                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
            uint256(stor3608) = stor3[stor0].field_256
            emit Upgraded(stor3[stor0].field_256);
            mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
            mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
            delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
            if not return_data.size:
                if not delegate.return_code:
                    revert with stor3[stor0].field_256, 
                                stor3[stor0].field_512,
                                stor3[stor0].field_768,
                                stor3[stor0].field_1024,
                                stor3[stor0].field_1280,
                                stor3[stor0].field_1536,
                                stor3[stor0].field_0,
                                256 * stor3[stor0].field_8,
                                mem[384 len 64]
    else:
        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
            revert with 0, 34
        if not stor3[stor0].field_1:
            if not sub_9eda62b6:
                revert with 0, 'Proposal: no proposal submited.'
            if block.timestamp <= stor3[stor0].field_768:
                revert with 0, 'Proposal: Voting is still open.'
            if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                revert with 0, 'Proposal: Proposal denied.'
            if not stor1:
                if not ext_code.size(arg1):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = arg1
                emit Upgraded(arg1);
                mem[ceil32(stor3[stor0].field_1) + 352] = arg2.length
                mem[ceil32(stor3[stor0].field_1) + 384 len arg2.length] = arg2[all]
                mem[ceil32(stor3[stor0].field_1) + arg2.length + 384] = 0
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 384] = 39
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480] = 0
                delegate arg1.mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 484 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    stor3[stor0].field_0,
                                    mem[352 len 96]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480] = return_data.size
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 485] = 32
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 517] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 549 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 416 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])]
                if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]:
                    mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)] + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 549] = 0
                revert with memory
                  from ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 481
                   len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) + 68
            if stor3[stor0].field_0:
                if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                stor3[stor0].field_0,
                                                mem[352 len 96]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                stor3[stor0].field_0,
                                                mem[352 len 96]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    stor3[stor0].field_0,
                                    mem[352 len 96]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = return_data.size
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 741] = 32
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 773] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 805 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 672 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])]
                if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]:
                    mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)] + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 805] = 0
                revert with memory
                  from ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 737
                   len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) + 68
            if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                revert with 0, 34
            if stor3[stor0].field_0:
                if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[stor0].field_0):
                    if 31 < uint255(stor3[stor0].field_0) * 0.5:
                        idx = ceil32(stor3[stor0].field_1) + 608
                        s = 0
                        while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                        mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                        mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                        if not ext_code.size(stor3[stor0].field_256):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = stor3[stor0].field_256
                        emit Upgraded(stor3[stor0].field_256);
                        mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
                        delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            stor3[stor0].field_0,
                                            mem[352 len 96]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                    0
            else:
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_1:
                    if 31 < stor3[stor0].field_1:
                        idx = ceil32(stor3[stor0].field_1) + 608
                        s = 0
                        while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                        mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                        mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                        if not ext_code.size(stor3[stor0].field_256):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = stor3[stor0].field_256
                        emit Upgraded(stor3[stor0].field_256);
                        mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
                        delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            stor3[stor0].field_0,
                                            mem[352 len 96]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                    0
            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
            if not ext_code.size(stor3[stor0].field_256):
                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
            uint256(stor3608) = stor3[stor0].field_256
            emit Upgraded(stor3[stor0].field_256);
            mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
            mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
            delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
            if not return_data.size:
                if not delegate.return_code:
                    revert with stor3[stor0].field_256, 
                                stor3[stor0].field_512,
                                stor3[stor0].field_768,
                                stor3[stor0].field_1024,
                                stor3[stor0].field_1280,
                                stor3[stor0].field_1536,
                                stor3[stor0].field_0,
                                mem[352 len 96]
        else:
            if 31 < stor3[stor0].field_1:
                mem[352] = stor3[stor0].field_0
                idx = 352
                s = 0
                while stor3[stor0].field_1 + 320 > idx:
                    mem[idx + 32] = stor3[stor0][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not sub_9eda62b6:
                    revert with 0, 'Proposal: no proposal submited.'
                if block.timestamp <= stor3[stor0].field_768:
                    revert with 0, 'Proposal: Voting is still open.'
                if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                    revert with 0, 'Proposal: Proposal denied.'
                if not stor1:
                    if not ext_code.size(arg1):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = arg1
                    emit Upgraded(arg1);
                    mem[ceil32(stor3[stor0].field_1) + 352] = arg2.length
                    mem[ceil32(stor3[stor0].field_1) + 384 len arg2.length] = arg2[all]
                    mem[ceil32(stor3[stor0].field_1) + arg2.length + 384] = 0
                    mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 384] = 39
                    mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                    mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                    var47001 = ceil32(arg2.length)
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480] = 0
                    delegate arg1.mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 484 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        stor3[stor0].field_0,
                                        mem[352 len 96]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 455 len 25] >> 56,
                                0
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_0:
                        if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3[stor0].field_0):
                            if 31 < uint255(stor3[stor0].field_0) * 0.5:
                                idx = ceil32(stor3[stor0].field_1) + 608
                                s = 0
                                while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                            revert with 0, 34
                        if stor3[stor0].field_1:
                            if 31 < stor3[stor0].field_1:
                                idx = ceil32(stor3[stor0].field_1) + 608
                                s = 0
                                while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                                    mem[idx + 32] = stor3[stor0][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                    mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                    mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                    if not ext_code.size(stor3[stor0].field_256):
                        revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                    uint256(stor3608) = stor3[stor0].field_256
                    emit Upgraded(stor3[stor0].field_256);
                    mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                    mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                    mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                    mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                    delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with stor3[stor0].field_256, 
                                        stor3[stor0].field_512,
                                        stor3[stor0].field_768,
                                        stor3[stor0].field_1024,
                                        stor3[stor0].field_1280,
                                        stor3[stor0].field_1536,
                                        stor3[stor0].field_0,
                                        mem[352 len 96]
                    if delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 711 len 25] >> 56,
                                0
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
                mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
                mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
                mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
                mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
                delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    stor3[stor0].field_0,
                                    mem[352 len 96]
                if delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            39,
                            0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 711 len 25] >> 56,
                            0
            mem[352] = 256 * stor3[stor0].field_8
            if not sub_9eda62b6:
                revert with 0, 'Proposal: no proposal submited.'
            if block.timestamp <= stor3[stor0].field_768:
                revert with 0, 'Proposal: Voting is still open.'
            if stor3[stor0].field_1024 <= stor3[stor0].field_1280:
                revert with 0, 'Proposal: Proposal denied.'
            if not stor1:
                if not ext_code.size(arg1):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = arg1
                emit Upgraded(arg1);
                mem[ceil32(stor3[stor0].field_1) + 352] = arg2.length
                mem[ceil32(stor3[stor0].field_1) + 384 len arg2.length] = arg2[all]
                mem[ceil32(stor3[stor0].field_1) + arg2.length + 384] = 0
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 384] = 39
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 416 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + arg2.length + 384 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480] = 0
                delegate arg1.mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 484 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    stor3[stor0].field_0,
                                    256 * stor3[stor0].field_8,
                                    mem[384 len 64]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 480] = return_data.size
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 481] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 485] = 32
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 517] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]
                mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 549 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + 416 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)])]
                if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]:
                    mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)] + ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 549] = 0
                revert with memory
                  from ceil32(stor3[stor0].field_1) + ceil32(arg2.length) + ceil32(return_data.size) + 481
                   len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + arg2.length + 416 len -arg2.length + ceil32(arg2.length)]) + 68
            if stor3[stor0].field_0:
                if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if stor3[stor0].field_0:
                    if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3[stor0].field_0):
                        if 31 < uint255(stor3[stor0].field_0) * 0.5:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                stor3[stor0].field_0,
                                                256 * stor3[stor0].field_8,
                                                mem[384 len 64]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                else:
                    if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                        revert with 0, 34
                    if stor3[stor0].field_1:
                        if 31 < stor3[stor0].field_1:
                            idx = ceil32(stor3[stor0].field_1) + 608
                            s = 0
                            while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                                mem[idx + 32] = stor3[stor0][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                            if not ext_code.size(stor3[stor0].field_256):
                                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                            uint256(stor3608) = stor3[stor0].field_256
                            emit Upgraded(stor3[stor0].field_256);
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                            mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                            if ceil32(arg2.length) > arg2.length:
                                mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                            delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with stor3[stor0].field_256, 
                                                stor3[stor0].field_512,
                                                stor3[stor0].field_768,
                                                stor3[stor0].field_1024,
                                                stor3[stor0].field_1280,
                                                stor3[stor0].field_1536,
                                                stor3[stor0].field_0,
                                                256 * stor3[stor0].field_8,
                                                mem[384 len 64]
                            if delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 711 len 25] >> 56,
                                        0
                mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                if not ext_code.size(stor3[stor0].field_256):
                    revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                uint256(stor3608) = stor3[stor0].field_256
                emit Upgraded(stor3[stor0].field_256);
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + 640 len arg2.length] = arg2[all]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640] = 0
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 640] = 39
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[arg2.length + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = 0
                delegate stor3[stor0].field_256.mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 740 len arg2.length - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with stor3[stor0].field_256, 
                                    stor3[stor0].field_512,
                                    stor3[stor0].field_768,
                                    stor3[stor0].field_1024,
                                    stor3[stor0].field_1280,
                                    stor3[stor0].field_1536,
                                    stor3[stor0].field_0,
                                    256 * stor3[stor0].field_8,
                                    mem[384 len 64]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 736] = return_data.size
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 741] = 32
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 773] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]
                mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 805 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + 672 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])]
                if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]:
                    mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)] + ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 805] = 0
                revert with memory
                  from ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + ceil32(arg2.length) + ceil32(return_data.size) + 737
                   len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(stor3[stor0].field_1) + ceil32(uint255(stor3[stor0].field_0) * 0.5) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) + 68
            if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                revert with 0, 34
            if stor3[stor0].field_0:
                if stor3[stor0].field_0 == uint255(stor3[stor0].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[stor0].field_0):
                    if 31 < uint255(stor3[stor0].field_0) * 0.5:
                        idx = ceil32(stor3[stor0].field_1) + 608
                        s = 0
                        while ceil32(stor3[stor0].field_1) + (uint255(stor3[stor0].field_0) * 0.5) + 576 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                        mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                        mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                        if not ext_code.size(stor3[stor0].field_256):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = stor3[stor0].field_256
                        emit Upgraded(stor3[stor0].field_256);
                        mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
                        delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            stor3[stor0].field_0,
                                            256 * stor3[stor0].field_8,
                                            mem[384 len 64]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                    0
            else:
                if stor3[stor0].field_0 == stor3[stor0].field_1 < 32:
                    revert with 0, 34
                if stor3[stor0].field_1:
                    if 31 < stor3[stor0].field_1:
                        idx = ceil32(stor3[stor0].field_1) + 608
                        s = 0
                        while ceil32(stor3[stor0].field_1) + stor3[stor0].field_1 + 576 > idx:
                            mem[idx + 32] = stor3[stor0][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
                        mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
                        mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
                        if not ext_code.size(stor3[stor0].field_256):
                            revert with 0, 'UpgradeableProxy: new implementation is not a contract'
                        uint256(stor3608) = stor3[stor0].field_256
                        emit Upgraded(stor3[stor0].field_256);
                        mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
                        mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
                        mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
                        delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with stor3[stor0].field_256, 
                                            stor3[stor0].field_512,
                                            stor3[stor0].field_768,
                                            stor3[stor0].field_1024,
                                            stor3[stor0].field_1280,
                                            stor3[stor0].field_1536,
                                            stor3[stor0].field_0,
                                            256 * stor3[stor0].field_8,
                                            mem[384 len 64]
                        if delegate.return_code:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    39,
                                    0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 711 len 25] >> 56,
                                    0
            mem[ceil32(stor3[stor0].field_1) + 352] = ceil32(stor3[stor0].field_1) + 576
            mem[ceil32(stor3[stor0].field_1) + 384] = stor3[stor0].field_256
            mem[ceil32(stor3[stor0].field_1) + 416] = stor3[stor0].field_512
            if not ext_code.size(stor3[stor0].field_256):
                revert with 0, 'UpgradeableProxy: new implementation is not a contract'
            uint256(stor3608) = stor3[stor0].field_256
            emit Upgraded(stor3[stor0].field_256);
            mem[(2 * ceil32(stor3[stor0].field_1)) + 640 len arg2.length] = arg2[all]
            mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640] = 0
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 640] = 39
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 672 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
            mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 640 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[arg2.length + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = 0
            delegate stor3[stor0].field_256.mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 740 len arg2.length - 4]
            if not return_data.size:
                if not delegate.return_code:
                    revert with stor3[stor0].field_256, 
                                stor3[stor0].field_512,
                                stor3[stor0].field_768,
                                stor3[stor0].field_1024,
                                stor3[stor0].field_1280,
                                stor3[stor0].field_1536,
                                stor3[stor0].field_0,
                                256 * stor3[stor0].field_8,
                                mem[384 len 64]
    ('bool', 'returndatasize')
    mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 736] = return_data.size
    mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if delegate.return_code:
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + ceil32(return_data.size) + 737] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + ceil32(return_data.size) + 741] = 32
    mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + ceil32(return_data.size) + 773] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]
    mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + ceil32(return_data.size) + 805 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])] = mem[(2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + 672 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]:
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)] + (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + ceil32(return_data.size) + 805] = 0
    revert with memory
      from (2 * ceil32(stor3[stor0].field_1)) + ceil32(arg2.length) + ceil32(return_data.size) + 737
       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[(2 * ceil32(stor3[stor0].field_1)) + arg2.length + 672 len -arg2.length + ceil32(arg2.length)]) + 68
}



}
