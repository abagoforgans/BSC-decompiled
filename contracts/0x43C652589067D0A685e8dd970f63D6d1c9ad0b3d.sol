contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
address owner; offset 16
uint256 stor0; offset 8
mapping of address reward;
mapping of uint256 registerHeights;

function registerHeights(address arg1) payable {
    require calldata.size - 4 >= 32
    return registerHeights[arg1]
}

function owner() payable {
    return owner
}

function rewardAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    return reward[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7952657761726452656769737465723a2063616c6c6572206973206e6f7420746865206f776e65,
                    mem[203 len 25]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6452657761726452656769737465723a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[209 len 19]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x79496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg1
            emit OwnershipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            owner = arg1
            emit OwnershipTransferred(0, arg1);
            uint8(stor0.field_8) = 0
}

function registerContract(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7252657761726452656769737465723a20636f6e7472616374416464722073686f756c64206e6f7420626520656d7074,
                    mem[212 len 16]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7452657761726452656769737465723a20726577617264416464722073686f756c64206e6f7420626520656d7074,
                    mem[210 len 18]
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7952657761726452656769737465723a20636f6e747261637441646472206973206e6f74206120636f6e74726163,
                    mem[210 len 18]
    emit 0xfa7091c2: arg1, msg.sender, arg2
    return 1
}

function checkRegistryRequest(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7952657761726452656769737465723a2063616c6c6572206973206e6f7420746865206f776e65,
                    mem[203 len 25]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7452657761726452656769737465723a20636f6e74726163744164647220697320656d7074,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7352657761726452656769737465723a207265776172644164647220697320656d7074,
                    mem[199 len 29]
    if arg3 < registerHeights[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0xfe52657761726452656769737465723a20726567697374657248656967687420697320736d616c6c6572207468616e207468652070726576696f7573206865696768,
                    mem[230 len 30]
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7952657761726452656769737465723a20636f6e747261637441646472206973206e6f74206120636f6e74726163,
                    mem[210 len 18]
    reward[address(arg1)] = arg2
    registerHeights[address(arg1)] = arg3
    emit 0xea8a4092: arg1, arg2, arg3
    return 1
}



}
