contract main {




// =====================  Runtime code  =====================


const NAME = 'Social Recovery Module'

const VERSION = '0.1.0'


address stor0;
address managerAddress;
uint256 threshold;
array of address friends;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;

function threshold() payable {
    return threshold
}

function manager() payable {
    return managerAddress
}

function isFriend(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function isConfirmed(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor6[arg1][arg2])
}

function friends(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < friends.length
    return friends[arg1]
}

function isExecuted(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function getDataHash(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = sha3(arg1[all])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function confirmTransaction(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c6564206279206120667269656e,
                    mem[201 len 27]
    if stor5[arg1]:
        revert with 0, 'Recovery already executed'
    stor6[arg1][address(msg.sender)] = 1
}

function isConfirmedByRequiredFriends(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < friends.length:
        mem[0] = friends[idx]
        mem[32] = sha3(arg1, 6)
        if not stor6[arg1][stor3[idx]]:
            if s != threshold:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != threshold:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function changeMasterCopy(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe496e76616c6964206d617374657220636f707920616464726573732070726f76696465,
                    mem[200 len 28]
    stor0 = arg1
    emit ChangedMasterCopy(arg1);
}

function setup(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if arg2 > arg1.length:
        revert with 0, 
                    32,
                    37,
                    0x645468726573686f6c642063616e6e6f742065786365656420667269656e647320636f756e,
                    mem[(32 * arg1.length) + 233 len 27]
    if arg2 < 2:
        revert with 0, 'At least 2 friends required'
    if managerAddress:
        revert with 0, 'Manager has already been set'
    managerAddress = msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Invalid friend address provided'
        if stor4[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 32, 33, 0x644475706c696361746520667269656e6420616464726573732070726f76696465, mem[(32 * arg1.length) + 229 len 31]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[address(mem[(32 * idx) + 128])] = 1
        idx = idx + 1
        continue 
    friends.length = arg1.length
    if not arg1.length:
        idx = 0
        while friends.length > idx:
            friends[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            friends[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while friends.length > idx:
            friends[idx] = 0
            idx = idx + 1
            continue 
    threshold = arg2
}

function recoverAccess(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c6564206279206120667269656e,
                    mem[201 len 27]
    mem[132] = arg1
    mem[164] = arg2
    mem[196] = arg3
    mem[96] = 100
    mem[64] = 228
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0xe318b52b(?????)
    mem[0] = sha3(unknown_0xe318b52b(?????), address(arg1) << 64, 0, address(arg2), arg3)
    mem[32] = 5
    if stor5[unknown_0xe318b52b(?????)][address(arg1) << 64][0][address(arg2)][arg3]:
        revert with 0, 'Recovery already executed'
    idx = 0
    s = 0
    while idx < friends.length:
        mem[0] = friends[idx]
        mem[32] = sha3(sha3(unknown_0xe318b52b(?????), address(arg1) << 64, 0, address(arg2), arg3), 6)
        if not stor6[unknown_0xe318b52b(?????)][address(arg1) << 64][0][address(arg2)][arg3][stor3[idx]]:
            if s != threshold:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != threshold:
                idx = idx + 1
                s = s + 1
                continue 
        stor5[unknown_0xe318b52b(?????)][address(arg1) << 64][0][address(arg2)][arg3] = 1
        mem[228] = 0x468721a700000000000000000000000000000000000000000000000000000000
        mem[232] = managerAddress
        mem[264] = 0
        idx = 0
        while idx < 100:
            mem[idx + 392] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[488] = mem[516 len 4]
        require ext_code.size(managerAddress)
        call managerAddress.0x468721a7 with:
             gas gas_remaining wei
            args managerAddress, 0, 128, 0, 100, mem[392 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Could not execute recovery'
    revert with 0, 32, 37, 0x645265636f7665727920686173206e6f7420656e6f75676820636f6e6669726d6174696f6e, mem[333 len 27]
}



}
