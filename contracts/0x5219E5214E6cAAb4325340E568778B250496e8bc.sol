contract main {




// =====================  Runtime code  =====================


const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address authorityAddress;
address owner;
address newOwner;
array of address sub_79b88e78;
array of address token;
address GST2Address;

function sub_79b88e78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return sub_79b88e78[arg1]
}

function owner() payable {
    return owner
}

function GST2() payable {
    return GST2Address
}

function authority() payable {
    return authorityAddress
}

function newOwner() payable {
    return newOwner
}

function sub_d50f189c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return token[arg1]
}

function getToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return token[arg1]
}

function _fallback() payable {
    revert
}

function disableOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    owner = 0
    emit OwnerUpdate(msg.sender, 0);
}

function getAddr(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        return 0
    if arg1 > 3:
        return 0
    require arg1 < 3
    return sub_79b88e78[arg1]
}

function setAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function setToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    if arg1 > 0:
        if arg1 <= 2:
            require arg1 < 2
            token[arg1] = arg2
}

function setAddr(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    if arg1 > 0:
        if arg1 <= 3:
            require arg1 < 3
            sub_79b88e78[arg1] = arg2
}

function acceptOwnership() payable {
    if newOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4163636570744f776e6572736869703a206f6e6c79206e6577206f776e657220646f2074686973,
                    mem[204 len 24]
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    if owner == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e5472616e736665724f776e6572736869703a207468652073616d65206f776e6572,
                    mem[198 len 30]
    newOwner = arg1
}



}
