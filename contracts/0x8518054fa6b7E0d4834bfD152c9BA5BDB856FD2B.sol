contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address poolAddress;

function name() payable {
    return name[0 len name.length]
}

function pool() payable {
    return poolAddress
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'ERC20: approve to 0 address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'LToken: setPool to 0 address'
    if poolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x774c546f6b656e3a20736574506f6f6c2063616c6c6572206973206e6f742063757272656e7420706f6f,
                    mem[206 len 22]
    poolAddress = arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'ERC20: transfer to 0 address'
    if arg2 > balanceOf[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[202 len 26]
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6c556e7369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                    mem[202 len 26]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x65556e7369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                    mem[199 len 29]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if poolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    84,
                    0x774c546f6b656e3a2063616c6c6564206279206e6f6e2d6173736f6369617469766520706f6f6c2c2070726f6261626c7920746865206f726967696e616c20706f6f6c20686173206265656e206d696772617465,
                    mem[248 len 12]
    if not arg1:
        revert with 0, 'LToken: mint to 0 address'
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x65556e7369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                    mem[199 len 29]
    balanceOf[address(arg1)] += arg2
    if arg2 + totalSupply < totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x65556e7369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                    mem[199 len 29]
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'ERC20: transferFrom to 0 address'
    if allowance[address(arg1)][msg.sender] != -1:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'ERC20: transferFrom not approved'
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x6c556e7369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                        mem[202 len 26]
        allowance[address(arg1)][msg.sender] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6c556e7369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                    mem[202 len 26]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x65556e7369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                    mem[199 len 29]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if poolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    84,
                    0x774c546f6b656e3a2063616c6c6564206279206e6f6e2d6173736f6369617469766520706f6f6c2c2070726f6261626c7920746865206f726967696e616c20706f6f6c20686173206265656e206d696772617465,
                    mem[248 len 12]
    if not arg1:
        revert with 0, 'LToken: burn from 0 address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe4c546f6b656e3a206275726e20616d6f756e7420657863656564732062616c616e63,
                    mem[199 len 29]
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6c556e7369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                    mem[202 len 26]
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6c556e7369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                    mem[202 len 26]
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}



}
