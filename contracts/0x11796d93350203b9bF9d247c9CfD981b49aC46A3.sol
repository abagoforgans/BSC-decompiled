contract main {




// =====================  Runtime code  =====================


const decimals = 18


uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
mapping of uint256 balanceOf;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 invested;
uint256 totalSupply;
uint256 stor14;
uint256 stakingRequirement;
uint256 totalHolder;
uint256 totalDonation;
address stor18;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function stakingRequirement() {
    return stakingRequirement
}

function balanceOf(address arg1) {
    return uint256(balanceOf[address(arg1)])
}

function myTokens() {
    return uint256(balanceOf[address(msg.sender)])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getInvested() {
    return invested[address(msg.sender)]
}

function totalDonation() {
    return totalDonation
}

function totalHolder() {
    return totalHolder
}

function _fallback() payable {
    revert
}

function dividendsOf(address arg1) {
    return (Mask(192, 64, (stor14 * uint256(balanceOf[address(arg1)])) - stor11[address(arg1)]) >> 64)
}

function sellPrice() {
    require 10^18 * stor5 / 10^18 == stor5
    require 10^18 * stor5 / 100 <= 10^18
    return (-(10^18 * stor5 / 100) + 10^18)
}

function buyPrice() {
    require 10^18 * stor3 / 10^18 == stor3
    require (10^18 * stor3 / 100) + 10^18 >= 10^18
    return ((10^18 * stor3 / 100) + 10^18)
}

function calculateTokensReceived(uint256 arg1) {
    if not arg1:
        if 0 <= arg1:
            return arg1
    else:
        if arg1:
            if arg1 * stor3 / arg1 == stor3:
                if arg1 * stor3 / 100 <= arg1:
                    return (arg1 - (arg1 * stor3 / 100))
    revert
}

function sub_fa68479f(?) {
    require arg1 <= totalSupply
    if not arg1:
        if 0 <= arg1:
            return arg1
    else:
        if arg1:
            if arg1 * stor5 / arg1 == stor5:
                if arg1 * stor5 / 100 <= arg1:
                    return (arg1 - (arg1 * stor5 / 100))
    revert
}

function myDividends(bool arg1) {
    if arg1:
        return ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)])
    return (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64)
}

function sub_a8fe92a1(?) {
    require ext_code.size(stor18)
    call stor18.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function distribute(uint256 arg1) {
    if arg1 <= 0:
        revert with 0, 'must be a positive value'
    require ext_code.size(stor18)
    call stor18.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'transfer must succeed'
    totalDonation += arg1
    require totalSupply
    require stor14 + (arg1 << 64 / totalSupply) >= stor14
    stor14 += arg1 << 64 / totalSupply
    emit onDistribute(arg1, msg.sender);
    return 0
}

function withdraw() {
    require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] > 0
    stor11[address(msg.sender)] += Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)])
    stor10[address(msg.sender)] = 0
    require ext_code.size(stor18)
    call stor18.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit onWithdraw(((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]), msg.sender);
}

function sell(uint256 arg1) {
    require uint256(balanceOf[address(msg.sender)]) > 0
    require arg1 <= uint256(balanceOf[address(msg.sender)])
    if not arg1:
        require 0 <= arg1
        require stor10[stor8] >= stor10[stor8]
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= uint256(balanceOf[address(msg.sender)])
        uint256(balanceOf[address(msg.sender)]) -= arg1
        stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * arg1) - (arg1 << 64)
        if totalSupply > 0:
            require totalSupply
            require stor14 + (0 / totalSupply) >= stor14
            stor14 += 0 / totalSupply
        emit Transfer(arg1, msg.sender, 0);
        emit onTokenSell(arg1, arg1, block.timestamp, msg.sender);
    else:
        require arg1
        require arg1 * stor5 / arg1 == stor5
        if not arg1 * stor5 / 100:
            require 0 <= arg1 * stor5 / 100
            require arg1 * stor5 / 100 <= arg1
            require stor10[stor8] >= stor10[stor8]
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) -= arg1
            stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * arg1) - (arg1 - (arg1 * stor5 / 100) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor14 + (arg1 * stor5 / 100 << 64 / totalSupply) >= stor14
                stor14 += arg1 * stor5 / 100 << 64 / totalSupply
        else:
            require arg1 * stor5 / 100
            require arg1 * stor5 / 100 * stor7 / arg1 * stor5 / 100 == stor7
            require arg1 * stor5 / 100 * stor7 / 100 <= arg1 * stor5 / 100
            require arg1 * stor5 / 100 <= arg1
            require stor10[stor8] + (arg1 * stor5 / 100 * stor7 / 100) >= stor10[stor8]
            stor10[stor8] += arg1 * stor5 / 100 * stor7 / 100
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) -= arg1
            stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * arg1) - (arg1 - (arg1 * stor5 / 100) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor14 + ((arg1 * stor5 / 100) - (arg1 * stor5 / 100 * stor7 / 100) << 64 / totalSupply) >= stor14
                stor14 += (arg1 * stor5 / 100) - (arg1 * stor5 / 100 * stor7 / 100) << 64 / totalSupply
        emit Transfer(arg1, msg.sender, 0);
        emit onTokenSell(arg1, arg1 - (arg1 * stor5 / 100), block.timestamp, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require uint256(balanceOf[address(msg.sender)]) > 0
    require arg2 <= uint256(balanceOf[address(msg.sender)])
    if (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] > 0:
        require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] > 0
        stor11[address(msg.sender)] += Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)])
        stor10[address(msg.sender)] = 0
        require ext_code.size(stor18)
        call stor18.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit onWithdraw(((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]), msg.sender);
    if not arg2:
        require 0 <= arg2
        require 0 <= totalSupply
        require arg2 <= uint256(balanceOf[address(msg.sender)])
        uint256(balanceOf[address(msg.sender)]) -= arg2
        require uint256(balanceOf[address(arg1)]) + arg2 >= uint256(balanceOf[address(arg1)])
        uint256(balanceOf[address(arg1)]) += arg2
        stor11[address(msg.sender)] += -1 * stor14 * arg2
        stor11[address(arg1)] += stor14 * arg2
        require totalSupply
        require stor14 + (0 / totalSupply) >= stor14
        stor14 += 0 / totalSupply
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require arg2
        require arg2 * stor4 / arg2 == stor4
        require arg2 * stor4 / 100 <= arg2
        require arg2 * stor4 / 100 <= totalSupply
        totalSupply -= arg2 * stor4 / 100
        require arg2 <= uint256(balanceOf[address(msg.sender)])
        uint256(balanceOf[address(msg.sender)]) -= arg2
        require uint256(balanceOf[address(arg1)]) + arg2 - (arg2 * stor4 / 100) >= uint256(balanceOf[address(arg1)])
        uint256(balanceOf[address(arg1)]) = uint256(balanceOf[address(arg1)]) + arg2 - (arg2 * stor4 / 100)
        stor11[address(msg.sender)] += -1 * stor14 * arg2
        stor11[address(arg1)] = stor11[address(arg1)] + (arg2 * stor14) - (arg2 * stor4 / 100 * stor14)
        require totalSupply
        require stor14 + (arg2 * stor4 / 100 << 64 / totalSupply) >= stor14
        stor14 += arg2 * stor4 / 100 << 64 / totalSupply
        emit Transfer((arg2 - (arg2 * stor4 / 100)), msg.sender, arg1);
    return 1
}

function exit() {
    if uint256(balanceOf[address(msg.sender)]) > 0:
        require uint256(balanceOf[address(msg.sender)]) > 0
        require uint256(balanceOf[address(msg.sender)]) <= uint256(balanceOf[address(msg.sender)])
        if not uint256(balanceOf[address(msg.sender)]):
            require 0 <= uint256(balanceOf[address(msg.sender)])
            require stor10[stor8] >= stor10[stor8]
            require uint256(balanceOf[address(msg.sender)]) <= totalSupply
            totalSupply -= uint256(balanceOf[address(msg.sender)])
            require uint256(balanceOf[address(msg.sender)]) <= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = 0
            stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * uint256(balanceOf[address(msg.sender)])) - Mask(192, 0, balanceOf[address(msg.sender)])
            if totalSupply > 0:
                require totalSupply
                require stor14 + (0 / totalSupply) >= stor14
                stor14 += 0 / totalSupply
            emit Transfer(uint256(balanceOf[address(msg.sender)]), msg.sender, 0);
            emit onTokenSell(uint256(balanceOf[address(msg.sender)]), uint256(balanceOf[address(msg.sender)]), block.timestamp, msg.sender);
        else:
            require uint256(balanceOf[address(msg.sender)])
            require uint256(balanceOf[address(msg.sender)]) * stor5 / uint256(balanceOf[address(msg.sender)]) == stor5
            if not uint256(balanceOf[address(msg.sender)]) * stor5 / 100:
                require 0 <= uint256(balanceOf[address(msg.sender)]) * stor5 / 100
                require uint256(balanceOf[address(msg.sender)]) * stor5 / 100 <= uint256(balanceOf[address(msg.sender)])
                require stor10[stor8] >= stor10[stor8]
                require uint256(balanceOf[address(msg.sender)]) <= totalSupply
                totalSupply -= uint256(balanceOf[address(msg.sender)])
                require uint256(balanceOf[address(msg.sender)]) <= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = 0
                stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * uint256(balanceOf[address(msg.sender)])) - (uint256(balanceOf[address(msg.sender)]) - (uint256(balanceOf[address(msg.sender)]) * stor5 / 100) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor14 + (uint256(balanceOf[address(msg.sender)]) * stor5 / 100 << 64 / totalSupply) >= stor14
                    stor14 += uint256(balanceOf[address(msg.sender)]) * stor5 / 100 << 64 / totalSupply
            else:
                require uint256(balanceOf[address(msg.sender)]) * stor5 / 100
                require uint256(balanceOf[address(msg.sender)]) * stor5 / 100 * stor7 / uint256(balanceOf[address(msg.sender)]) * stor5 / 100 == stor7
                require uint256(balanceOf[address(msg.sender)]) * stor5 / 100 * stor7 / 100 <= uint256(balanceOf[address(msg.sender)]) * stor5 / 100
                require uint256(balanceOf[address(msg.sender)]) * stor5 / 100 <= uint256(balanceOf[address(msg.sender)])
                require stor10[stor8] + (uint256(balanceOf[address(msg.sender)]) * stor5 / 100 * stor7 / 100) >= stor10[stor8]
                stor10[stor8] += uint256(balanceOf[address(msg.sender)]) * stor5 / 100 * stor7 / 100
                require uint256(balanceOf[address(msg.sender)]) <= totalSupply
                totalSupply -= uint256(balanceOf[address(msg.sender)])
                require uint256(balanceOf[address(msg.sender)]) <= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = 0
                stor11[address(msg.sender)] = stor11[address(msg.sender)] - (stor14 * uint256(balanceOf[address(msg.sender)])) - (uint256(balanceOf[address(msg.sender)]) - (uint256(balanceOf[address(msg.sender)]) * stor5 / 100) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor14 + ((uint256(balanceOf[address(msg.sender)]) * stor5 / 100) - (uint256(balanceOf[address(msg.sender)]) * stor5 / 100 * stor7 / 100) << 64 / totalSupply) >= stor14
                    stor14 += (uint256(balanceOf[address(msg.sender)]) * stor5 / 100) - (uint256(balanceOf[address(msg.sender)]) * stor5 / 100 * stor7 / 100) << 64 / totalSupply
            emit Transfer(uint256(balanceOf[address(msg.sender)]), msg.sender, 0);
            emit onTokenSell(uint256(balanceOf[address(msg.sender)]), uint256(balanceOf[address(msg.sender)]) - (uint256(balanceOf[address(msg.sender)]) * stor5 / 100), block.timestamp, msg.sender);
    require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] > 0
    stor11[address(msg.sender)] += Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)])
    stor10[address(msg.sender)] = 0
    require ext_code.size(stor18)
    call stor18.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit onWithdraw(((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]), msg.sender);
}

function buyFor(uint256 arg1, address arg2, address arg3) {
    require ext_code.size(stor18)
    call stor18.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'transfer must succeed'
    require block.timestamp >= stor0
    if not invested[address(msg.sender)]:
        totalHolder++
    invested[address(msg.sender)] += arg1
    if not arg1:
        require 0 <= arg1
        require arg1 > 0
        require arg1 + totalSupply >= arg1
        require arg1 + totalSupply > totalSupply
        require stor10[stor8] >= stor10[stor8]
        if arg3:
            if arg3 != arg2:
                if uint256(balanceOf[address(arg3)]) >= stakingRequirement:
                    require stor10[address(arg3)] >= stor10[address(arg3)]
        if totalSupply <= 0:
            totalSupply = arg1
            require uint256(balanceOf[address(arg2)]) + arg1 >= uint256(balanceOf[address(arg2)])
            uint256(balanceOf[address(arg2)]) += arg1
            stor11[address(arg2)] += stor14 * arg1
        else:
            require totalSupply + arg1 >= totalSupply
            totalSupply += arg1
            require totalSupply
            stor14 += 0 / totalSupply
            require uint256(balanceOf[address(arg2)]) + arg1 >= uint256(balanceOf[address(arg2)])
            uint256(balanceOf[address(arg2)]) += arg1
            stor11[address(arg2)] = stor11[address(arg2)] + (stor14 * arg1) - (arg1 * 0 / totalSupply)
        emit Transfer(arg1, 0, arg2);
        emit onTokenPurchase(arg1, arg1, block.timestamp, arg2, arg3);
        return arg1
    require arg1
    require arg1 * stor3 / arg1 == stor3
    if not arg1 * stor3 / 100:
        if not arg1 * stor3 / 100:
            require 0 <= arg1 * stor3 / 100
            require arg1 * stor3 / 100 <= arg1
            require arg1 - (arg1 * stor3 / 100) > 0
            require totalSupply >= 0
            require arg1 - (arg1 * stor3 / 100) + totalSupply > totalSupply
            require stor10[stor8] >= stor10[stor8]
            if not arg3:
                require arg1 * stor3 / 100 >= arg1 * stor3 / 100
            else:
                if arg3 == arg2:
                    require arg1 * stor3 / 100 >= arg1 * stor3 / 100
                else:
                    if uint256(balanceOf[address(arg3)]) < stakingRequirement:
                        require arg1 * stor3 / 100 >= arg1 * stor3 / 100
                    else:
                        require stor10[address(arg3)] >= stor10[address(arg3)]
            if totalSupply <= 0:
                totalSupply = arg1 - (arg1 * stor3 / 100)
                require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * stor3 / 100 << 64)
            else:
                require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                require totalSupply
                stor14 += arg1 * stor3 / 100 << 64 / totalSupply
                require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * arg1 * stor3 / 100 << 64 / totalSupply) + (arg1 * stor3 / 100 * arg1 * stor3 / 100 << 64 / totalSupply)
        else:
            require arg1 * stor3 / 100
            require arg1 * stor3 / 100 * stor6 / arg1 * stor3 / 100 == stor6
            require arg1 * stor3 / 100 * stor6 / 100 >= arg1 * stor3 / 100 * stor6 / 100
            require arg1 * stor3 / 100 * stor6 / 100 <= arg1 * stor3 / 100
            require arg1 * stor3 / 100 <= arg1
            require arg1 - (arg1 * stor3 / 100) > 0
            require totalSupply >= 0
            require arg1 - (arg1 * stor3 / 100) + totalSupply > totalSupply
            require stor10[stor8] >= stor10[stor8]
            if not arg3:
                require arg1 * stor3 / 100 >= (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100)
                if totalSupply <= 0:
                    totalSupply = arg1 - (arg1 * stor3 / 100)
                    require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                    uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                    stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * stor3 / 100 << 64)
                else:
                    require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                    totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                    require totalSupply
                    stor14 += arg1 * stor3 / 100 << 64 / totalSupply
                    require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                    uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                    stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * arg1 * stor3 / 100 << 64 / totalSupply) + (arg1 * stor3 / 100 * arg1 * stor3 / 100 << 64 / totalSupply)
            else:
                if arg3 == arg2:
                    require arg1 * stor3 / 100 >= (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100)
                    if totalSupply <= 0:
                        totalSupply = arg1 - (arg1 * stor3 / 100)
                        require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                        uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                        stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * stor3 / 100 << 64)
                    else:
                        require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                        totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                        require totalSupply
                        stor14 += arg1 * stor3 / 100 << 64 / totalSupply
                        require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                        uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                        stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * arg1 * stor3 / 100 << 64 / totalSupply) + (arg1 * stor3 / 100 * arg1 * stor3 / 100 << 64 / totalSupply)
                else:
                    if uint256(balanceOf[address(arg3)]) < stakingRequirement:
                        require arg1 * stor3 / 100 >= (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100)
                        if totalSupply <= 0:
                            totalSupply = arg1 - (arg1 * stor3 / 100)
                            require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                            uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * stor3 / 100 << 64)
                        else:
                            require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                            totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                            require totalSupply
                            stor14 += arg1 * stor3 / 100 << 64 / totalSupply
                            require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                            uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * arg1 * stor3 / 100 << 64 / totalSupply) + (arg1 * stor3 / 100 * arg1 * stor3 / 100 << 64 / totalSupply)
                    else:
                        require stor10[address(arg3)] + (arg1 * stor3 / 100 * stor6 / 100) >= stor10[address(arg3)]
                        stor10[address(arg3)] += arg1 * stor3 / 100 * stor6 / 100
                        if totalSupply <= 0:
                            totalSupply = arg1 - (arg1 * stor3 / 100)
                            require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                            uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) << 64)
                        else:
                            require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                            totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                            require totalSupply
                            stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) << 64 / totalSupply
                            require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                            uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) << 64 / totalSupply)
    else:
        require arg1 * stor3 / 100
        require arg1 * stor3 / 100 * stor7 / arg1 * stor3 / 100 == stor7
        if not arg1 * stor3 / 100:
            require arg1 * stor3 / 100 * stor7 / 100 >= 0
            require arg1 * stor3 / 100 * stor7 / 100 <= arg1 * stor3 / 100
            require arg1 * stor3 / 100 <= arg1
            require arg1 - (arg1 * stor3 / 100) > 0
            require totalSupply >= 0
            require arg1 - (arg1 * stor3 / 100) + totalSupply > totalSupply
            require stor10[stor8] + (arg1 * stor3 / 100 * stor7 / 100) >= stor10[stor8]
            stor10[stor8] += arg1 * stor3 / 100 * stor7 / 100
            if arg3:
                if arg3 != arg2:
                    if uint256(balanceOf[address(arg3)]) >= stakingRequirement:
                        require stor10[address(arg3)] >= stor10[address(arg3)]
            if totalSupply <= 0:
                totalSupply = arg1 - (arg1 * stor3 / 100)
                require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64)
            else:
                require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                require totalSupply
                stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply
                require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply)
        else:
            require arg1 * stor3 / 100
            require arg1 * stor3 / 100 * stor6 / arg1 * stor3 / 100 == stor6
            require (arg1 * stor3 / 100 * stor6 / 100) + (arg1 * stor3 / 100 * stor7 / 100) >= arg1 * stor3 / 100 * stor6 / 100
            require (arg1 * stor3 / 100 * stor6 / 100) + (arg1 * stor3 / 100 * stor7 / 100) <= arg1 * stor3 / 100
            require arg1 * stor3 / 100 <= arg1
            require arg1 - (arg1 * stor3 / 100) > 0
            require totalSupply >= 0
            require arg1 - (arg1 * stor3 / 100) + totalSupply > totalSupply
            require stor10[stor8] + (arg1 * stor3 / 100 * stor7 / 100) >= stor10[stor8]
            stor10[stor8] += arg1 * stor3 / 100 * stor7 / 100
            if not arg3:
                require 0 >= -arg1 * stor3 / 100 * stor6 / 100
                if totalSupply <= 0:
                    totalSupply = arg1 - (arg1 * stor3 / 100)
                    require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                    uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                    stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64)
                else:
                    require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                    totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                    require totalSupply
                    stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply
                    require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                    uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                    stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply)
            else:
                if arg3 == arg2:
                    require 0 >= -arg1 * stor3 / 100 * stor6 / 100
                    if totalSupply <= 0:
                        totalSupply = arg1 - (arg1 * stor3 / 100)
                        require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                        uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                        stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64)
                    else:
                        require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                        totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                        require totalSupply
                        stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply
                        require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                        uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                        stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply)
                else:
                    if uint256(balanceOf[address(arg3)]) < stakingRequirement:
                        require 0 >= -arg1 * stor3 / 100 * stor6 / 100
                        if totalSupply <= 0:
                            totalSupply = arg1 - (arg1 * stor3 / 100)
                            require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                            uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64)
                        else:
                            require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                            totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                            require totalSupply
                            stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply
                            require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                            uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply)
                    else:
                        require stor10[address(arg3)] + (arg1 * stor3 / 100 * stor6 / 100) >= stor10[address(arg3)]
                        stor10[address(arg3)] += arg1 * stor3 / 100 * stor6 / 100
                        if totalSupply <= 0:
                            totalSupply = arg1 - (arg1 * stor3 / 100)
                            require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                            uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64)
                        else:
                            require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                            totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                            require totalSupply
                            stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply
                            require uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(arg2)])
                            uint256(balanceOf[address(arg2)]) = uint256(balanceOf[address(arg2)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(arg2)] = stor11[address(arg2)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply)
    emit Transfer((arg1 - (arg1 * stor3 / 100)), 0, arg2);
    emit onTokenPurchase(arg1, arg1 - (arg1 * stor3 / 100), block.timestamp, arg2, arg3);
    return (arg1 - (arg1 * stor3 / 100))
}

function buy(uint256 arg1, address arg2) {
    require ext_code.size(stor18)
    call stor18.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'transfer must succeed'
    require block.timestamp >= stor0
    if not invested[address(msg.sender)]:
        totalHolder++
    invested[address(msg.sender)] += arg1
    if not arg1:
        require 0 <= arg1
        require arg1 > 0
        require arg1 + totalSupply >= arg1
        require arg1 + totalSupply > totalSupply
        require stor10[stor8] >= stor10[stor8]
        if arg2:
            if arg2 != msg.sender:
                if uint256(balanceOf[address(arg2)]) >= stakingRequirement:
                    require stor10[address(arg2)] >= stor10[address(arg2)]
        if totalSupply <= 0:
            totalSupply = arg1
            require uint256(balanceOf[address(msg.sender)]) + arg1 >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) += arg1
            stor11[address(msg.sender)] += stor14 * arg1
        else:
            require totalSupply + arg1 >= totalSupply
            totalSupply += arg1
            require totalSupply
            stor14 += 0 / totalSupply
            require uint256(balanceOf[address(msg.sender)]) + arg1 >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) += arg1
            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (stor14 * arg1) - (arg1 * 0 / totalSupply)
        emit Transfer(arg1, 0, msg.sender);
        emit onTokenPurchase(arg1, arg1, block.timestamp, msg.sender, arg2);
        return arg1
    require arg1
    require arg1 * stor3 / arg1 == stor3
    if not arg1 * stor3 / 100:
        if not arg1 * stor3 / 100:
            require 0 <= arg1 * stor3 / 100
            require arg1 * stor3 / 100 <= arg1
            require arg1 - (arg1 * stor3 / 100) > 0
            require totalSupply >= 0
            require arg1 - (arg1 * stor3 / 100) + totalSupply > totalSupply
            require stor10[stor8] >= stor10[stor8]
            if not arg2:
                require arg1 * stor3 / 100 >= arg1 * stor3 / 100
            else:
                if arg2 == msg.sender:
                    require arg1 * stor3 / 100 >= arg1 * stor3 / 100
                else:
                    if uint256(balanceOf[address(arg2)]) < stakingRequirement:
                        require arg1 * stor3 / 100 >= arg1 * stor3 / 100
                    else:
                        require stor10[address(arg2)] >= stor10[address(arg2)]
            if totalSupply <= 0:
                totalSupply = arg1 - (arg1 * stor3 / 100)
                require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * stor3 / 100 << 64)
            else:
                require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                require totalSupply
                stor14 += arg1 * stor3 / 100 << 64 / totalSupply
                require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * arg1 * stor3 / 100 << 64 / totalSupply) + (arg1 * stor3 / 100 * arg1 * stor3 / 100 << 64 / totalSupply)
        else:
            require arg1 * stor3 / 100
            require arg1 * stor3 / 100 * stor6 / arg1 * stor3 / 100 == stor6
            require arg1 * stor3 / 100 * stor6 / 100 >= arg1 * stor3 / 100 * stor6 / 100
            require arg1 * stor3 / 100 * stor6 / 100 <= arg1 * stor3 / 100
            require arg1 * stor3 / 100 <= arg1
            require arg1 - (arg1 * stor3 / 100) > 0
            require totalSupply >= 0
            require arg1 - (arg1 * stor3 / 100) + totalSupply > totalSupply
            require stor10[stor8] >= stor10[stor8]
            if not arg2:
                require arg1 * stor3 / 100 >= (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100)
                if totalSupply <= 0:
                    totalSupply = arg1 - (arg1 * stor3 / 100)
                    require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                    uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * stor3 / 100 << 64)
                else:
                    require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                    totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                    require totalSupply
                    stor14 += arg1 * stor3 / 100 << 64 / totalSupply
                    require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                    uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * arg1 * stor3 / 100 << 64 / totalSupply) + (arg1 * stor3 / 100 * arg1 * stor3 / 100 << 64 / totalSupply)
            else:
                if arg2 == msg.sender:
                    require arg1 * stor3 / 100 >= (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100)
                    if totalSupply <= 0:
                        totalSupply = arg1 - (arg1 * stor3 / 100)
                        require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                        uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * stor3 / 100 << 64)
                    else:
                        require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                        totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                        require totalSupply
                        stor14 += arg1 * stor3 / 100 << 64 / totalSupply
                        require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                        uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * arg1 * stor3 / 100 << 64 / totalSupply) + (arg1 * stor3 / 100 * arg1 * stor3 / 100 << 64 / totalSupply)
                else:
                    if uint256(balanceOf[address(arg2)]) < stakingRequirement:
                        require arg1 * stor3 / 100 >= (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100)
                        if totalSupply <= 0:
                            totalSupply = arg1 - (arg1 * stor3 / 100)
                            require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * stor3 / 100 << 64)
                        else:
                            require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                            totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                            require totalSupply
                            stor14 += arg1 * stor3 / 100 << 64 / totalSupply
                            require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * arg1 * stor3 / 100 << 64 / totalSupply) + (arg1 * stor3 / 100 * arg1 * stor3 / 100 << 64 / totalSupply)
                    else:
                        require stor10[address(arg2)] + (arg1 * stor3 / 100 * stor6 / 100) >= stor10[address(arg2)]
                        stor10[address(arg2)] += arg1 * stor3 / 100 * stor6 / 100
                        if totalSupply <= 0:
                            totalSupply = arg1 - (arg1 * stor3 / 100)
                            require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) << 64)
                        else:
                            require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                            totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                            require totalSupply
                            stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) << 64 / totalSupply
                            require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) << 64 / totalSupply)
    else:
        require arg1 * stor3 / 100
        require arg1 * stor3 / 100 * stor7 / arg1 * stor3 / 100 == stor7
        if not arg1 * stor3 / 100:
            require arg1 * stor3 / 100 * stor7 / 100 >= 0
            require arg1 * stor3 / 100 * stor7 / 100 <= arg1 * stor3 / 100
            require arg1 * stor3 / 100 <= arg1
            require arg1 - (arg1 * stor3 / 100) > 0
            require totalSupply >= 0
            require arg1 - (arg1 * stor3 / 100) + totalSupply > totalSupply
            require stor10[stor8] + (arg1 * stor3 / 100 * stor7 / 100) >= stor10[stor8]
            stor10[stor8] += arg1 * stor3 / 100 * stor7 / 100
            if arg2:
                if arg2 != msg.sender:
                    if uint256(balanceOf[address(arg2)]) >= stakingRequirement:
                        require stor10[address(arg2)] >= stor10[address(arg2)]
            if totalSupply <= 0:
                totalSupply = arg1 - (arg1 * stor3 / 100)
                require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64)
            else:
                require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                require totalSupply
                stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply
                require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply)
        else:
            require arg1 * stor3 / 100
            require arg1 * stor3 / 100 * stor6 / arg1 * stor3 / 100 == stor6
            require (arg1 * stor3 / 100 * stor6 / 100) + (arg1 * stor3 / 100 * stor7 / 100) >= arg1 * stor3 / 100 * stor6 / 100
            require (arg1 * stor3 / 100 * stor6 / 100) + (arg1 * stor3 / 100 * stor7 / 100) <= arg1 * stor3 / 100
            require arg1 * stor3 / 100 <= arg1
            require arg1 - (arg1 * stor3 / 100) > 0
            require totalSupply >= 0
            require arg1 - (arg1 * stor3 / 100) + totalSupply > totalSupply
            require stor10[stor8] + (arg1 * stor3 / 100 * stor7 / 100) >= stor10[stor8]
            stor10[stor8] += arg1 * stor3 / 100 * stor7 / 100
            if not arg2:
                require 0 >= -arg1 * stor3 / 100 * stor6 / 100
                if totalSupply <= 0:
                    totalSupply = arg1 - (arg1 * stor3 / 100)
                    require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                    uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64)
                else:
                    require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                    totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                    require totalSupply
                    stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply
                    require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                    uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply)
            else:
                if arg2 == msg.sender:
                    require 0 >= -arg1 * stor3 / 100 * stor6 / 100
                    if totalSupply <= 0:
                        totalSupply = arg1 - (arg1 * stor3 / 100)
                        require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                        uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64)
                    else:
                        require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                        totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                        require totalSupply
                        stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply
                        require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                        uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                        stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply)
                else:
                    if uint256(balanceOf[address(arg2)]) < stakingRequirement:
                        require 0 >= -arg1 * stor3 / 100 * stor6 / 100
                        if totalSupply <= 0:
                            totalSupply = arg1 - (arg1 * stor3 / 100)
                            require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64)
                        else:
                            require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                            totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                            require totalSupply
                            stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply
                            require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply)
                    else:
                        require stor10[address(arg2)] + (arg1 * stor3 / 100 * stor6 / 100) >= stor10[address(arg2)]
                        stor10[address(arg2)] += arg1 * stor3 / 100 * stor6 / 100
                        if totalSupply <= 0:
                            totalSupply = arg1 - (arg1 * stor3 / 100)
                            require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - ((arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64)
                        else:
                            require totalSupply + arg1 - (arg1 * stor3 / 100) >= totalSupply
                            totalSupply = totalSupply + arg1 - (arg1 * stor3 / 100)
                            require totalSupply
                            stor14 += (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply
                            require uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100) >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + arg1 - (arg1 * stor3 / 100)
                            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (arg1 * stor14) - (arg1 * stor3 / 100 * stor14) - (arg1 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply) + (arg1 * stor3 / 100 * (arg1 * stor3 / 100) - (arg1 * stor3 / 100 * stor6 / 100) - (arg1 * stor3 / 100 * stor7 / 100) << 64 / totalSupply)
    emit Transfer((arg1 - (arg1 * stor3 / 100)), 0, msg.sender);
    emit onTokenPurchase(arg1, arg1 - (arg1 * stor3 / 100), block.timestamp, msg.sender, arg2);
    return (arg1 - (arg1 * stor3 / 100))
}

function reinvest() {
    require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] > 0
    stor11[address(msg.sender)] += Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)])
    stor10[address(msg.sender)] = 0
    require block.timestamp >= stor0
    if not invested[address(msg.sender)]:
        totalHolder++
    invested[address(msg.sender)] = invested[address(msg.sender)] + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
    if not (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]:
        require 0 <= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
        require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] > 0
        require totalSupply >= 0
        require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] + totalSupply > totalSupply
        require stor10[stor8] >= stor10[stor8]
        if totalSupply <= 0:
            totalSupply = (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
            require uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor14) + (stor10[address(msg.sender)] * stor14)
        else:
            require totalSupply + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] >= totalSupply
            totalSupply = totalSupply + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
            require totalSupply
            stor14 += 0 / totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
            stor11[address(msg.sender)] = stor11[address(msg.sender)] + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor14) + (stor10[address(msg.sender)] * stor14) - (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * 0 / totalSupply) - (stor10[address(msg.sender)] * 0 / totalSupply)
        emit Transfer(((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]), 0, msg.sender);
        emit onTokenPurchase((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)], (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)], block.timestamp, msg.sender, 0);
        emit onReinvestment((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)], (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)], msg.sender);
    else:
        require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
        require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] == stor3
        if not (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100:
            if not (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100:
                require 0 <= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 <= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) > 0
                require totalSupply >= 0
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) + totalSupply > totalSupply
                require stor10[stor8] >= stor10[stor8]
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 >= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100
            else:
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor6 / (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 == stor6
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor6 / 100 >= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor6 / 100
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor6 / 100 <= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 <= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) > 0
                require totalSupply >= 0
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) + totalSupply > totalSupply
                require stor10[stor8] >= stor10[stor8]
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 >= ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor6 / 100)
            if totalSupply <= 0:
                totalSupply = (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100)
                require uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) >= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100)
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor14) + (stor10[address(msg.sender)] * stor14) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor14) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 << 64)
            else:
                require totalSupply + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) >= totalSupply
                totalSupply = totalSupply + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100)
                require totalSupply
                stor14 += (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 << 64 / totalSupply
                require uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) >= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100)
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor14) + (stor10[address(msg.sender)] * stor14) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor14) - (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 << 64 / totalSupply) - (stor10[address(msg.sender)] * (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 << 64 / totalSupply) + ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 << 64 / totalSupply)
        else:
            require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100
            require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 == stor7
            if not (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100:
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100 >= 0
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100 <= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 <= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) > 0
                require totalSupply >= 0
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) + totalSupply > totalSupply
                require stor10[stor8] + ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100) >= stor10[stor8]
                stor10[stor8] += (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100
            else:
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor6 / (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 == stor6
                require ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor6 / 100) + ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100) >= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor6 / 100
                require ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor6 / 100) + ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100) <= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 <= (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)]
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) > 0
                require totalSupply >= 0
                require (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) + totalSupply > totalSupply
                require stor10[stor8] + ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100) >= stor10[stor8]
                stor10[stor8] += (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100
                require 0 >= -(Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor6 / 100
            if totalSupply <= 0:
                totalSupply = (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100)
                require uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) >= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100)
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor14) + (stor10[address(msg.sender)] * stor14) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor14) - (((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100) << 64)
            else:
                require totalSupply + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) >= totalSupply
                totalSupply = totalSupply + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100)
                require totalSupply
                stor14 += ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100) << 64 / totalSupply
                require uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) >= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100)
                stor11[address(msg.sender)] = stor11[address(msg.sender)] + (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor14) + (stor10[address(msg.sender)] * stor14) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor14) - (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100) << 64 / totalSupply) - (stor10[address(msg.sender)] * ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100) << 64 / totalSupply) + ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100) - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100 * stor7 / 100) << 64 / totalSupply)
        emit Transfer(((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100)), 0, msg.sender);
        emit onTokenPurchase((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)], (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100), block.timestamp, msg.sender, 0);
        emit onReinvestment((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)], (Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64) + stor10[address(msg.sender)] - ((Mask(192, 64, (stor14 * uint256(balanceOf[address(msg.sender)])) - stor11[address(msg.sender)]) >> 64 * stor3) + (stor10[address(msg.sender)] * stor3) / 100), msg.sender);
}



}
