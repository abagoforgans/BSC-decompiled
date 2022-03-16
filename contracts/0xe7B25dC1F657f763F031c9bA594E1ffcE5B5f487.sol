contract main {




// =====================  Runtime code  =====================


address implAddress;
address governorAddress;
uint256 mintCumulation;
uint256 amountPerBlock;
uint256 nounce;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor11;
uint256 stor12;
uint256 interestsPerBlock;
mapping of struct users;

function name() payable {
    return name[0 len name.length]
}

function governor() payable {
    return governorAddress
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function amountPerBlock() payable {
    return amountPerBlock
}

function nounce() payable {
    return nounce
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function impl() payable {
    return implAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    return users[arg1].field_0, users[arg1].field_256, users[arg1].field_512
}

function interestsPerBlock() payable {
    return interestsPerBlock
}

function mintCumulation() payable {
    return mintCumulation
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function incNounce() payable {
    nounce++
}

function getProductivity(address arg1) payable {
    require calldata.size - 4 >= 32
    return users[address(arg1)].field_0, stor12
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function upgradeImpl(address arg1) payable {
    require calldata.size - 4 >= 32
    if implAddress != msg.sender:
        revert with 0, 'FORBIDDEN'
    if not arg1:
        revert with 0, 'INVALID_ADDRESS'
    if arg1 == implAddress:
        revert with 0, 'NO_CHANGE'
    implAddress = arg1
    emit ImplChanged(implAddress, arg1);
}

function upgradeGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'FORBIDDEN'
    if not arg1:
        revert with 0, 'INVALID_ADDRESS'
    if arg1 == governorAddress:
        revert with 0, 'NO_CHANGE'
    governorAddress = arg1
    emit GovernorChanged(governorAddress, arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERC20Token: INSUFFICIENT_BALANCE'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    if not arg1:
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4552433230546f6b656e3a20494e53554646494349454e545f414c4c4f57414e43,
                    mem[198 len 30]
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'ERC20Token: INSUFFICIENT_BALANCE'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    if not arg2:
        if arg3 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function changeInterestRatePerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'FORBIDDEN'
    if arg1 == amountPerBlock:
        revert with 0, 'AMOUNT_PER_BLOCK_NO_CHANGE'
    if block.number > stor11:
        if stor12:
            if stor11 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor11:
                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if stor12 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor12
                if interestsPerBlock + (0 / stor12) < interestsPerBlock:
                    revert with 0, 'SafeMath: addition overflow'
                interestsPerBlock += 0 / stor12
            else:
                require block.number - stor11
                if (block.number * amountPerBlock) - (stor11 * amountPerBlock) / block.number - stor11 != amountPerBlock:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if balanceOf[address(this.address)] + (block.number * amountPerBlock) - (stor11 * amountPerBlock) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                if totalSupply + (block.number * amountPerBlock) - (stor11 * amountPerBlock) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply = totalSupply + (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                if not (block.number * amountPerBlock) - (stor11 * amountPerBlock):
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if interestsPerBlock + (0 / stor12) < interestsPerBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    interestsPerBlock += 0 / stor12
                else:
                    require (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                    if (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / (block.number * amountPerBlock) - (stor11 * amountPerBlock) != 10^12:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if interestsPerBlock + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12) < interestsPerBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    interestsPerBlock += (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12
        stor11 = block.number
    amountPerBlock = arg1
    emit InterestRatePerBlockChanged(amountPerBlock, arg1);
    return 1
}

function takeWithAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= stor11:
        if not users[address(arg1)].field_0:
            if users[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(arg1)].field_256 + users[address(arg1)].field_512 < -users[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-users[address(arg1)].field_256 + users[address(arg1)].field_512)
        require users[address(arg1)].field_0
        if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if users[address(arg1)].field_256 > users[address(arg1)].field_0 * interestsPerBlock / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 + users[address(arg1)].field_512)
    if not stor12:
        if not users[address(arg1)].field_0:
            if users[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(arg1)].field_256 + users[address(arg1)].field_512 < -users[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-users[address(arg1)].field_256 + users[address(arg1)].field_512)
        require users[address(arg1)].field_0
        if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if users[address(arg1)].field_256 > users[address(arg1)].field_0 * interestsPerBlock / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 + users[address(arg1)].field_512)
    if stor11 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - stor11:
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if interestsPerBlock + (0 / stor12) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not users[address(arg1)].field_0:
            if users[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(arg1)].field_256 + users[address(arg1)].field_512 < -users[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-users[address(arg1)].field_256 + users[address(arg1)].field_512)
        require users[address(arg1)].field_0
        if (interestsPerBlock * users[address(arg1)].field_0) + (0 / stor12 * users[address(arg1)].field_0) / users[address(arg1)].field_0 != interestsPerBlock + (0 / stor12):
            revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if users[address(arg1)].field_256 > (interestsPerBlock * users[address(arg1)].field_0) + (0 / stor12 * users[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((interestsPerBlock * users[address(arg1)].field_0) + (0 / stor12 * users[address(arg1)].field_0) / 10^12) - users[address(arg1)].field_256 + users[address(arg1)].field_512)
    require block.number - stor11
    if (block.number * amountPerBlock) - (stor11 * amountPerBlock) / block.number - stor11 != amountPerBlock:
        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * amountPerBlock) - (stor11 * amountPerBlock):
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if interestsPerBlock + (0 / stor12) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not users[address(arg1)].field_0:
            if users[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(arg1)].field_256 + users[address(arg1)].field_512 < -users[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-users[address(arg1)].field_256 + users[address(arg1)].field_512)
        require users[address(arg1)].field_0
        if (interestsPerBlock * users[address(arg1)].field_0) + (0 / stor12 * users[address(arg1)].field_0) / users[address(arg1)].field_0 != interestsPerBlock + (0 / stor12):
            revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if users[address(arg1)].field_256 > (interestsPerBlock * users[address(arg1)].field_0) + (0 / stor12 * users[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((interestsPerBlock * users[address(arg1)].field_0) + (0 / stor12 * users[address(arg1)].field_0) / 10^12) - users[address(arg1)].field_256 + users[address(arg1)].field_512)
    require (block.number * amountPerBlock) - (stor11 * amountPerBlock)
    if (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / (block.number * amountPerBlock) - (stor11 * amountPerBlock) != 10^12:
        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if stor12 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor12
    if interestsPerBlock + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12) < interestsPerBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not users[address(arg1)].field_0:
        if users[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -users[address(arg1)].field_256 + users[address(arg1)].field_512 < -users[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-users[address(arg1)].field_256 + users[address(arg1)].field_512)
    require users[address(arg1)].field_0
    if (interestsPerBlock * users[address(arg1)].field_0) + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12 * users[address(arg1)].field_0) / users[address(arg1)].field_0 != interestsPerBlock + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12):
        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if users[address(arg1)].field_256 > (interestsPerBlock * users[address(arg1)].field_0) + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12 * users[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if users[address(arg1)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((interestsPerBlock * users[address(arg1)].field_0) + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12 * users[address(arg1)].field_0) / 10^12) - users[address(arg1)].field_256 + users[address(arg1)].field_512)
}

function take() payable {
    if block.number <= stor11:
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < -users[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512)
        require users[address(msg.sender)].field_0
        if users[address(msg.sender)].field_0 * interestsPerBlock / users[address(msg.sender)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_0 * interestsPerBlock / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512)
    if not stor12:
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < -users[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512)
        require users[address(msg.sender)].field_0
        if users[address(msg.sender)].field_0 * interestsPerBlock / users[address(msg.sender)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_0 * interestsPerBlock / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512)
    if stor11 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - stor11:
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if interestsPerBlock + (0 / stor12) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < -users[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512)
        require users[address(msg.sender)].field_0
        if (interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / users[address(msg.sender)].field_0 != interestsPerBlock + (0 / stor12):
            revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if users[address(msg.sender)].field_256 > (interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512)
    require block.number - stor11
    if (block.number * amountPerBlock) - (stor11 * amountPerBlock) / block.number - stor11 != amountPerBlock:
        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * amountPerBlock) - (stor11 * amountPerBlock):
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if interestsPerBlock + (0 / stor12) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < -users[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512)
        require users[address(msg.sender)].field_0
        if (interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / users[address(msg.sender)].field_0 != interestsPerBlock + (0 / stor12):
            revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if users[address(msg.sender)].field_256 > (interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512)
    require (block.number * amountPerBlock) - (stor11 * amountPerBlock)
    if (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / (block.number * amountPerBlock) - (stor11 * amountPerBlock) != 10^12:
        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if stor12 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor12
    if interestsPerBlock + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12) < interestsPerBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not users[address(msg.sender)].field_0:
        if users[address(msg.sender)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < -users[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512)
    require users[address(msg.sender)].field_0
    if (interestsPerBlock * users[address(msg.sender)].field_0) + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12 * users[address(msg.sender)].field_0) / users[address(msg.sender)].field_0 != interestsPerBlock + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12):
        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if users[address(msg.sender)].field_256 > (interestsPerBlock * users[address(msg.sender)].field_0) + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12 * users[address(msg.sender)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if users[address(msg.sender)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((interestsPerBlock * users[address(msg.sender)].field_0) + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12 * users[address(msg.sender)].field_0) / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512)
}

function takeWithBlock() payable {
    if block.number <= stor11:
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < -users[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512, block.number
        require users[address(msg.sender)].field_0
        if users[address(msg.sender)].field_0 * interestsPerBlock / users[address(msg.sender)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_0 * interestsPerBlock / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512, 
               block.number
    if not stor12:
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < -users[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512, block.number
        require users[address(msg.sender)].field_0
        if users[address(msg.sender)].field_0 * interestsPerBlock / users[address(msg.sender)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_0 * interestsPerBlock / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512, 
               block.number
    if stor11 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - stor11:
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if interestsPerBlock + (0 / stor12) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < -users[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512, block.number
        require users[address(msg.sender)].field_0
        if (interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / users[address(msg.sender)].field_0 != interestsPerBlock + (0 / stor12):
            revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if users[address(msg.sender)].field_256 > (interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512, 
               block.number
    require block.number - stor11
    if (block.number * amountPerBlock) - (stor11 * amountPerBlock) / block.number - stor11 != amountPerBlock:
        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * amountPerBlock) - (stor11 * amountPerBlock):
        if stor12 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor12
        if interestsPerBlock + (0 / stor12) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < -users[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512, block.number
        require users[address(msg.sender)].field_0
        if (interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / users[address(msg.sender)].field_0 != interestsPerBlock + (0 / stor12):
            revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if users[address(msg.sender)].field_256 > (interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if users[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((interestsPerBlock * users[address(msg.sender)].field_0) + (0 / stor12 * users[address(msg.sender)].field_0) / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512, 
               block.number
    require (block.number * amountPerBlock) - (stor11 * amountPerBlock)
    if (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / (block.number * amountPerBlock) - (stor11 * amountPerBlock) != 10^12:
        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if stor12 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor12
    if interestsPerBlock + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12) < interestsPerBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not users[address(msg.sender)].field_0:
        if users[address(msg.sender)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < -users[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512, block.number
    require users[address(msg.sender)].field_0
    if (interestsPerBlock * users[address(msg.sender)].field_0) + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12 * users[address(msg.sender)].field_0) / users[address(msg.sender)].field_0 != interestsPerBlock + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12):
        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if users[address(msg.sender)].field_256 > (interestsPerBlock * users[address(msg.sender)].field_0) + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12 * users[address(msg.sender)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if users[address(msg.sender)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((interestsPerBlock * users[address(msg.sender)].field_0) + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12 * users[address(msg.sender)].field_0) / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512, 
           block.number
}

function mint() payable {
    if block.number <= stor11:
        if users[address(msg.sender)].field_0 > 0:
            if not users[address(msg.sender)].field_0:
                if users[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if users[address(msg.sender)].field_512 - users[address(msg.sender)].field_256 < users[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(msg.sender)].field_512 -= users[address(msg.sender)].field_256
                if mintCumulation - users[address(msg.sender)].field_256 < mintCumulation:
                    revert with 0, 'SafeMath: addition overflow'
                mintCumulation -= users[address(msg.sender)].field_256
            else:
                require users[address(msg.sender)].field_0
                if users[address(msg.sender)].field_0 * interestsPerBlock / users[address(msg.sender)].field_0 != interestsPerBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_0 * interestsPerBlock / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if users[address(msg.sender)].field_512 + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256 < users[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(msg.sender)].field_512 = users[address(msg.sender)].field_512 + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256
                if mintCumulation + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256 < mintCumulation:
                    revert with 0, 'SafeMath: addition overflow'
                mintCumulation = mintCumulation + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256
            if not users[address(msg.sender)].field_0:
                users[address(msg.sender)].field_256 = 0
            else:
                require users[address(msg.sender)].field_0
                if users[address(msg.sender)].field_0 * interestsPerBlock / users[address(msg.sender)].field_0 != interestsPerBlock:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                users[address(msg.sender)].field_256 = users[address(msg.sender)].field_0 * interestsPerBlock / 10^12
    else:
        if not stor12:
            stor11 = block.number
            if users[address(msg.sender)].field_0 > 0:
                if not users[address(msg.sender)].field_0:
                    if users[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(msg.sender)].field_512 - users[address(msg.sender)].field_256 < users[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(msg.sender)].field_512 -= users[address(msg.sender)].field_256
                    if mintCumulation - users[address(msg.sender)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation -= users[address(msg.sender)].field_256
                else:
                    require users[address(msg.sender)].field_0
                    if users[address(msg.sender)].field_0 * interestsPerBlock / users[address(msg.sender)].field_0 != interestsPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_0 * interestsPerBlock / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(msg.sender)].field_512 + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256 < users[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(msg.sender)].field_512 = users[address(msg.sender)].field_512 + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256
                    if mintCumulation + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation = mintCumulation + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256
                if not users[address(msg.sender)].field_0:
                    users[address(msg.sender)].field_256 = 0
                else:
                    require users[address(msg.sender)].field_0
                    if users[address(msg.sender)].field_0 * interestsPerBlock / users[address(msg.sender)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    users[address(msg.sender)].field_256 = users[address(msg.sender)].field_0 * interestsPerBlock / 10^12
        else:
            if stor11 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor11:
                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if stor12 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor12
                if interestsPerBlock + (0 / stor12) < interestsPerBlock:
                    revert with 0, 'SafeMath: addition overflow'
                interestsPerBlock += 0 / stor12
            else:
                require block.number - stor11
                if (block.number * amountPerBlock) - (stor11 * amountPerBlock) / block.number - stor11 != amountPerBlock:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if balanceOf[address(this.address)] + (block.number * amountPerBlock) - (stor11 * amountPerBlock) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                if totalSupply + (block.number * amountPerBlock) - (stor11 * amountPerBlock) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply = totalSupply + (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                if not (block.number * amountPerBlock) - (stor11 * amountPerBlock):
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if interestsPerBlock + (0 / stor12) < interestsPerBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    interestsPerBlock += 0 / stor12
                else:
                    require (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                    if (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / (block.number * amountPerBlock) - (stor11 * amountPerBlock) != 10^12:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if interestsPerBlock + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12) < interestsPerBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    interestsPerBlock += (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12
            stor11 = block.number
            if users[address(msg.sender)].field_0 > 0:
                if not users[address(msg.sender)].field_0:
                    if users[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(msg.sender)].field_512 - users[address(msg.sender)].field_256 < users[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(msg.sender)].field_512 -= users[address(msg.sender)].field_256
                    if mintCumulation - users[address(msg.sender)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation -= users[address(msg.sender)].field_256
                else:
                    require users[address(msg.sender)].field_0
                    if users[address(msg.sender)].field_0 * interestsPerBlock / users[address(msg.sender)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_0 * interestsPerBlock / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(msg.sender)].field_512 + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256 < users[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(msg.sender)].field_512 = users[address(msg.sender)].field_512 + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256
                    if mintCumulation + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation = mintCumulation + (users[address(msg.sender)].field_0 * interestsPerBlock / 10^12) - users[address(msg.sender)].field_256
                if not users[address(msg.sender)].field_0:
                    users[address(msg.sender)].field_256 = 0
                else:
                    require users[address(msg.sender)].field_0
                    if users[address(msg.sender)].field_0 * interestsPerBlock / users[address(msg.sender)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    users[address(msg.sender)].field_256 = users[address(msg.sender)].field_0 * interestsPerBlock / 10^12
    if users[address(msg.sender)].field_512 <= 0:
        revert with 0, 'NO_PRODUCTIVITY'
    if balanceOf[address(this.address)] < users[address(msg.sender)].field_512:
        revert with 0, 'ERC20Token: INSUFFICIENT_BALANCE'
    if users[address(msg.sender)].field_512 > balanceOf[address(this.address)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(this.address)] -= users[address(msg.sender)].field_512
    if balanceOf[address(msg.sender)] + users[address(msg.sender)].field_512 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += users[address(msg.sender)].field_512
    if not msg.sender:
        if users[address(msg.sender)].field_512 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= users[address(msg.sender)].field_512
    emit Transfer(users[address(msg.sender)].field_512, this.address, msg.sender);
    users[address(msg.sender)].field_512 = 0
    return users[address(msg.sender)].field_512
}

function decreaseProductivity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if implAddress != msg.sender:
        revert with 0, 'FORBIDDEN'
    if arg2 <= 0:
        revert with 0, 'INSUFFICIENT_PRODUCTIVITY'
    if users[address(arg1)].field_0 < arg2:
        revert with 0, 'INSUFFICIENT_PRODUCTIVITY'
    if block.number <= stor11:
        if users[address(arg1)].field_0 <= 0:
            if arg2 > users[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            users[address(arg1)].field_0 -= arg2
            if not users[address(arg1)].field_0:
                users[address(arg1)].field_256 = 0
            else:
                require users[address(arg1)].field_0
                if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
        else:
            if not users[address(arg1)].field_0:
                if users[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if users[address(arg1)].field_512 - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(arg1)].field_512 -= users[address(arg1)].field_256
                if mintCumulation - users[address(arg1)].field_256 < mintCumulation:
                    revert with 0, 'SafeMath: addition overflow'
                mintCumulation -= users[address(arg1)].field_256
            else:
                require users[address(arg1)].field_0
                if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if users[address(arg1)].field_256 > users[address(arg1)].field_0 * interestsPerBlock / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(arg1)].field_512 = users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
                if mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < mintCumulation:
                    revert with 0, 'SafeMath: addition overflow'
                mintCumulation = mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
            if not users[address(arg1)].field_0:
                users[address(arg1)].field_256 = 0
            else:
                require users[address(arg1)].field_0
                if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
            if arg2 > users[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            users[address(arg1)].field_0 -= arg2
            if not users[address(arg1)].field_0:
                users[address(arg1)].field_256 = 0
            else:
                require users[address(arg1)].field_0
                if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
    else:
        if not stor12:
            stor11 = block.number
            if users[address(arg1)].field_0 <= 0:
                if arg2 > users[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[address(arg1)].field_0 -= arg2
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
            else:
                if not users[address(arg1)].field_0:
                    if users[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(arg1)].field_512 - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(arg1)].field_512 -= users[address(arg1)].field_256
                    if mintCumulation - users[address(arg1)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation -= users[address(arg1)].field_256
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if users[address(arg1)].field_256 > users[address(arg1)].field_0 * interestsPerBlock / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(arg1)].field_512 = users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
                    if mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation = mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
                if arg2 > users[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[address(arg1)].field_0 -= arg2
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
        else:
            if stor11 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor11:
                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if stor12 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor12
                if interestsPerBlock + (0 / stor12) < interestsPerBlock:
                    revert with 0, 'SafeMath: addition overflow'
                interestsPerBlock += 0 / stor12
            else:
                require block.number - stor11
                if (block.number * amountPerBlock) - (stor11 * amountPerBlock) / block.number - stor11 != amountPerBlock:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if balanceOf[address(this.address)] + (block.number * amountPerBlock) - (stor11 * amountPerBlock) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                if totalSupply + (block.number * amountPerBlock) - (stor11 * amountPerBlock) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply = totalSupply + (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                if not (block.number * amountPerBlock) - (stor11 * amountPerBlock):
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if interestsPerBlock + (0 / stor12) < interestsPerBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    interestsPerBlock += 0 / stor12
                else:
                    require (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                    if (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / (block.number * amountPerBlock) - (stor11 * amountPerBlock) != 10^12:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if interestsPerBlock + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12) < interestsPerBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    interestsPerBlock += (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12
            stor11 = block.number
            if users[address(arg1)].field_0 <= 0:
                if arg2 > users[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[address(arg1)].field_0 -= arg2
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
            else:
                if not users[address(arg1)].field_0:
                    if users[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(arg1)].field_512 - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(arg1)].field_512 -= users[address(arg1)].field_256
                    if mintCumulation - users[address(arg1)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation -= users[address(arg1)].field_256
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if users[address(arg1)].field_256 > users[address(arg1)].field_0 * interestsPerBlock / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(arg1)].field_512 = users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
                    if mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation = mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
                if arg2 > users[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[address(arg1)].field_0 -= arg2
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
    if arg2 > stor12:
        revert with 0, 'SafeMath: subtraction overflow'
    stor12 -= arg2
    emit ProductivityDecreased(arg2, arg1);
    return 1
}

function increaseProductivity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if implAddress != msg.sender:
        revert with 0, 'FORBIDDEN'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7750524f4455435449564954595f56414c55455f4d5553545f42455f475245415445525f5448414e5f5a4552,
                    mem[208 len 20]
    if block.number <= stor11:
        if users[address(arg1)].field_0 <= 0:
            if stor12 + arg2 < stor12:
                revert with 0, 'SafeMath: addition overflow'
            stor12 += arg2
            if users[address(arg1)].field_0 + arg2 < users[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            users[address(arg1)].field_0 += arg2
            if not users[address(arg1)].field_0:
                users[address(arg1)].field_256 = 0
            else:
                require users[address(arg1)].field_0
                if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
        else:
            if not users[address(arg1)].field_0:
                if users[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if users[address(arg1)].field_512 - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(arg1)].field_512 -= users[address(arg1)].field_256
                if mintCumulation - users[address(arg1)].field_256 < mintCumulation:
                    revert with 0, 'SafeMath: addition overflow'
                mintCumulation -= users[address(arg1)].field_256
            else:
                require users[address(arg1)].field_0
                if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if users[address(arg1)].field_256 > users[address(arg1)].field_0 * interestsPerBlock / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(arg1)].field_512 = users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
                if mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < mintCumulation:
                    revert with 0, 'SafeMath: addition overflow'
                mintCumulation = mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
            if not users[address(arg1)].field_0:
                users[address(arg1)].field_256 = 0
            else:
                require users[address(arg1)].field_0
                if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
            if stor12 + arg2 < stor12:
                revert with 0, 'SafeMath: addition overflow'
            stor12 += arg2
            if users[address(arg1)].field_0 + arg2 < users[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            users[address(arg1)].field_0 += arg2
            if not users[address(arg1)].field_0:
                users[address(arg1)].field_256 = 0
            else:
                require users[address(arg1)].field_0
                if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
    else:
        if not stor12:
            stor11 = block.number
            if users[address(arg1)].field_0 <= 0:
                if stor12 + arg2 < stor12:
                    revert with 0, 'SafeMath: addition overflow'
                stor12 += arg2
                if users[address(arg1)].field_0 + arg2 < users[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(arg1)].field_0 += arg2
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
            else:
                if not users[address(arg1)].field_0:
                    if users[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(arg1)].field_512 - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(arg1)].field_512 -= users[address(arg1)].field_256
                    if mintCumulation - users[address(arg1)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation -= users[address(arg1)].field_256
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if users[address(arg1)].field_256 > users[address(arg1)].field_0 * interestsPerBlock / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(arg1)].field_512 = users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
                    if mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation = mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
                if stor12 + arg2 < stor12:
                    revert with 0, 'SafeMath: addition overflow'
                stor12 += arg2
                if users[address(arg1)].field_0 + arg2 < users[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(arg1)].field_0 += arg2
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
        else:
            if stor11 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor11:
                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if stor12 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor12
                if interestsPerBlock + (0 / stor12) < interestsPerBlock:
                    revert with 0, 'SafeMath: addition overflow'
                interestsPerBlock += 0 / stor12
            else:
                require block.number - stor11
                if (block.number * amountPerBlock) - (stor11 * amountPerBlock) / block.number - stor11 != amountPerBlock:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if balanceOf[address(this.address)] + (block.number * amountPerBlock) - (stor11 * amountPerBlock) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                if totalSupply + (block.number * amountPerBlock) - (stor11 * amountPerBlock) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply = totalSupply + (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                if not (block.number * amountPerBlock) - (stor11 * amountPerBlock):
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if interestsPerBlock + (0 / stor12) < interestsPerBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    interestsPerBlock += 0 / stor12
                else:
                    require (block.number * amountPerBlock) - (stor11 * amountPerBlock)
                    if (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / (block.number * amountPerBlock) - (stor11 * amountPerBlock) != 10^12:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stor12 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor12
                    if interestsPerBlock + ((10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12) < interestsPerBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    interestsPerBlock += (10^12 * block.number * amountPerBlock) - (10^12 * stor11 * amountPerBlock) / stor12
            stor11 = block.number
            if users[address(arg1)].field_0 <= 0:
                if stor12 + arg2 < stor12:
                    revert with 0, 'SafeMath: addition overflow'
                stor12 += arg2
                if users[address(arg1)].field_0 + arg2 < users[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(arg1)].field_0 += arg2
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
            else:
                if not users[address(arg1)].field_0:
                    if users[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(arg1)].field_512 - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(arg1)].field_512 -= users[address(arg1)].field_256
                    if mintCumulation - users[address(arg1)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation -= users[address(arg1)].field_256
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if users[address(arg1)].field_256 > users[address(arg1)].field_0 * interestsPerBlock / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < users[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    users[address(arg1)].field_512 = users[address(arg1)].field_512 + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
                    if mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256 < mintCumulation:
                        revert with 0, 'SafeMath: addition overflow'
                    mintCumulation = mintCumulation + (users[address(arg1)].field_0 * interestsPerBlock / 10^12) - users[address(arg1)].field_256
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
                if stor12 + arg2 < stor12:
                    revert with 0, 'SafeMath: addition overflow'
                stor12 += arg2
                if users[address(arg1)].field_0 + arg2 < users[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(arg1)].field_0 += arg2
                if not users[address(arg1)].field_0:
                    users[address(arg1)].field_256 = 0
                else:
                    require users[address(arg1)].field_0
                    if users[address(arg1)].field_0 * interestsPerBlock / users[address(arg1)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    users[address(arg1)].field_256 = users[address(arg1)].field_0 * interestsPerBlock / 10^12
    emit ProductivityIncreased(arg2, arg1);
    return 1
}



}
