contract main {




// =====================  Runtime code  =====================


#
#  - sub_0ba23b0b(?)
#  - sub_bcdc72e1(?)
#
const LAST_LEVEL = 12


address owner;
mapping of struct users;
mapping of address idTo;
mapping of address userIds;
mapping of uint256 balances;
uint256 lastUserId;
address ownerContract;
uint8 sub_4849cf27; offset 160
mapping of uint256 levelPrice;

function usersActiveX3Levels(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    return bool(users[address(arg1)][3][arg2 << 248].field_0)
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function idToAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return idTo[arg1]
}

function lastUserId() payable {
    return lastUserId
}

function userIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return userIds[arg1]
}

function sub_4849cf27(?) payable {
    return bool(sub_4849cf27)
}

function isUserExists(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(users[address(arg1)].field_0)
}

function ownerContract() payable {
    return ownerContract
}

function owner() payable {
    return owner
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    return users[arg1].field_0, users[arg1].field_256, users[arg1].field_512
}

function levelPrice(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return levelPrice[arg1]
}

function findFreeX3Referrer(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    s = arg1
    while not users[users[address(arg1)].field_256][3][arg2 << 248].field_0:
        mem[0] = arg2
        mem[32] = sha3(users[address(arg1)].field_256, 1) + 3
        s = users[address(s)].field_256
        continue 
    return users[address(s)].field_256
}

function _fallback() payable {
    revert
}

function get3XMatrix(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if users[address(arg1)][4][arg2 << 248].field_256:
        mem[128] = users[address(arg1)][4][arg2 << 248][1].field_0
        idx = 128
        s = 0
        while (32 * users[address(arg1)][4][arg2 << 248].field_256) + 96 > idx:
            mem[idx + 32] = users[address(arg1)][4][arg2 << 248][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * users[address(arg1)][4][arg2 << 248].field_256) + 288 len floor32(users[address(arg1)][4][arg2 << 248].field_256)] = mem[128 len floor32(users[address(arg1)][4][arg2 << 248].field_256)]
    return users[address(arg1)][4][arg2 << 248].field_0, 
           Array(len=users[address(arg1)][4][arg2 << 248].field_256, data=mem[128 len floor32(users[address(arg1)][4][arg2 << 248].field_256)], mem[(32 * users[address(arg1)][4][arg2 << 248].field_256) + floor32(users[address(arg1)][4][arg2 << 248].field_256) + 288 len (32 * users[address(arg1)][4][arg2 << 248].field_256) - floor32(users[address(arg1)][4][arg2 << 248].field_256)]),
           users[address(arg1)][4][arg2 << 248].field_768,
           bool(users[address(arg1)][4][arg2 << 248].field_512)
}



}
