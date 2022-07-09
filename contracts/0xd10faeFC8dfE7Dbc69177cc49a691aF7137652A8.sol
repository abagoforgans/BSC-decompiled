contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 EGGS_TO_HATCH_1MINERS;
uint256 stor1;
uint256 stor2;
uint8 stor3;
address ceoAddress; offset 8
address ceoAddress2;
mapping of uint256 myMiners;
mapping of uint256 claimedEggs;
mapping of uint256 lastHatch;
mapping of address referrals;
uint256 marketEggs;

function ceoAddress() {
    return ceoAddress
}

function getMyMiners() {
    return myMiners[msg.sender]
}

function initialized() {
    return bool(stor3)
}

function marketEggs() {
    return marketEggs
}

function lastHatch(address arg1) {
    return lastHatch[arg1]
}

function claimedEggs(address arg1) {
    return claimedEggs[arg1]
}

function hatcheryMiners(address arg1) {
    return myMiners[arg1]
}

function EGGS_TO_HATCH_1MINERS() {
    return EGGS_TO_HATCH_1MINERS
}

function referrals(address arg1) {
    return referrals[arg1]
}

function ceoAddress2() {
    return ceoAddress2
}

function _fallback() payable {
    revert
}

function seedMarket() payable {
    require not marketEggs
    stor3 = 1
    marketEggs = 24 * 10^6 * 24 * 3600
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require 5 * arg1 / arg1 == 5
    return (5 * arg1 / 100)
}

function sub_a9e898de(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    call ceoAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getEggsSinceLastHatch(address arg1) {
    require lastHatch[address(arg1)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(arg1)]:
        if not EGGS_TO_HATCH_1MINERS:
            return 0
        if myMiners[address(arg1)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(arg1)]:
            return (myMiners[address(arg1)] * EGGS_TO_HATCH_1MINERS)
    else:
        if not block.timestamp - lastHatch[address(arg1)]:
            return 0
        if (block.timestamp * myMiners[address(arg1)]) - (lastHatch[address(arg1)] * myMiners[address(arg1)]) / block.timestamp - lastHatch[address(arg1)] == myMiners[address(arg1)]:
            return ((block.timestamp * myMiners[address(arg1)]) - (lastHatch[address(arg1)] * myMiners[address(arg1)]))
    revert
}

function getMyEggs() {
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            if claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                return claimedEggs[msg.sender]
        else:
            if myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]:
                if (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                    return ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender])
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                return claimedEggs[msg.sender]
        else:
            if (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]:
                if (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                    return ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender])
    revert
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor1:
        if not stor2:
            if arg1:
                if (0 / arg1) + stor2 >= stor2:
                    if (0 / arg1) + stor2:
                        return (0 / (0 / arg1) + stor2)
        else:
            if arg1 * stor2 / stor2 == arg1:
                if arg1 * stor2 >= 0:
                    if arg1:
                        if (arg1 * stor2 / arg1) + stor2 >= stor2:
                            if (arg1 * stor2 / arg1) + stor2:
                                return (0 / (arg1 * stor2 / arg1) + stor2)
    else:
        if arg3 * stor1 / stor1 == arg3:
            if not stor1:
                if not stor2:
                    if arg1:
                        if (0 / arg1) + stor2 >= stor2:
                            if (0 / arg1) + stor2:
                                return (arg3 * stor1 / (0 / arg1) + stor2)
                else:
                    if arg1 * stor2 / stor2 == arg1:
                        if arg1 * stor2 >= 0:
                            if arg1:
                                if (arg1 * stor2 / arg1) + stor2 >= stor2:
                                    if (arg1 * stor2 / arg1) + stor2:
                                        return (arg3 * stor1 / (arg1 * stor2 / arg1) + stor2)
            else:
                if arg2 * stor1 / stor1 == arg2:
                    if not stor2:
                        if arg2 * stor1 >= arg2 * stor1:
                            if arg1:
                                if (arg2 * stor1 / arg1) + stor2 >= stor2:
                                    if (arg2 * stor1 / arg1) + stor2:
                                        return (arg3 * stor1 / (arg2 * stor1 / arg1) + stor2)
                    else:
                        if arg1 * stor2 / stor2 == arg1:
                            if (arg1 * stor2) + (arg2 * stor1) >= arg2 * stor1:
                                if arg1:
                                    if ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2 >= stor2:
                                        if ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2:
                                            return (arg3 * stor1 / ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2)
    revert
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    if not stor1:
        if not stor2:
            if arg1:
                if (0 / arg1) + stor2 >= stor2:
                    if (0 / arg1) + stor2:
                        return (0 / (0 / arg1) + stor2)
        else:
            if arg1 * stor2 / stor2 == arg1:
                if arg1 * stor2 >= 0:
                    if arg1:
                        if (arg1 * stor2 / arg1) + stor2 >= stor2:
                            if (arg1 * stor2 / arg1) + stor2:
                                return (0 / (arg1 * stor2 / arg1) + stor2)
    else:
        if marketEggs * stor1 / stor1 == marketEggs:
            if not stor1:
                if not stor2:
                    if arg1:
                        if (0 / arg1) + stor2 >= stor2:
                            if (0 / arg1) + stor2:
                                return (marketEggs * stor1 / (0 / arg1) + stor2)
                else:
                    if arg1 * stor2 / stor2 == arg1:
                        if arg1 * stor2 >= 0:
                            if arg1:
                                if (arg1 * stor2 / arg1) + stor2 >= stor2:
                                    if (arg1 * stor2 / arg1) + stor2:
                                        return (marketEggs * stor1 / (arg1 * stor2 / arg1) + stor2)
            else:
                if arg2 * stor1 / stor1 == arg2:
                    if not stor2:
                        if arg2 * stor1 >= arg2 * stor1:
                            if arg1:
                                if (arg2 * stor1 / arg1) + stor2 >= stor2:
                                    if (arg2 * stor1 / arg1) + stor2:
                                        return (marketEggs * stor1 / (arg2 * stor1 / arg1) + stor2)
                    else:
                        if arg1 * stor2 / stor2 == arg1:
                            if (arg1 * stor2) + (arg2 * stor1) >= arg2 * stor1:
                                if arg1:
                                    if ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2 >= stor2:
                                        if ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2:
                                            return (marketEggs * stor1 / ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2)
    revert
}

function calculateEggSell(uint256 arg1) {
    if not stor1:
        if not stor2:
            if arg1:
                if (0 / arg1) + stor2 >= stor2:
                    if (0 / arg1) + stor2:
                        return (0 / (0 / arg1) + stor2)
        else:
            if arg1 * stor2 / stor2 == arg1:
                if arg1 * stor2 >= 0:
                    if arg1:
                        if (arg1 * stor2 / arg1) + stor2 >= stor2:
                            if (arg1 * stor2 / arg1) + stor2:
                                return (0 / (arg1 * stor2 / arg1) + stor2)
    else:
        if eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address):
            if not stor1:
                if not stor2:
                    if arg1:
                        if (0 / arg1) + stor2 >= stor2:
                            if (0 / arg1) + stor2:
                                return (eth.balance(this.address) * stor1 / (0 / arg1) + stor2)
                else:
                    if arg1 * stor2 / stor2 == arg1:
                        if arg1 * stor2 >= 0:
                            if arg1:
                                if (arg1 * stor2 / arg1) + stor2 >= stor2:
                                    if (arg1 * stor2 / arg1) + stor2:
                                        return (eth.balance(this.address) * stor1 / (arg1 * stor2 / arg1) + stor2)
            else:
                if marketEggs * stor1 / stor1 == marketEggs:
                    if not stor2:
                        if marketEggs * stor1 >= marketEggs * stor1:
                            if arg1:
                                if (marketEggs * stor1 / arg1) + stor2 >= stor2:
                                    if (marketEggs * stor1 / arg1) + stor2:
                                        return (eth.balance(this.address) * stor1 / (marketEggs * stor1 / arg1) + stor2)
                    else:
                        if arg1 * stor2 / stor2 == arg1:
                            if (arg1 * stor2) + (marketEggs * stor1) >= marketEggs * stor1:
                                if arg1:
                                    if ((arg1 * stor2) + (marketEggs * stor1) / arg1) + stor2 >= stor2:
                                        if ((arg1 * stor2) + (marketEggs * stor1) / arg1) + stor2:
                                            return (eth.balance(this.address) * stor1 / ((arg1 * stor2) + (marketEggs * stor1) / arg1) + stor2)
    revert
}

function calculateEggBuySimple(uint256 arg1) {
    if not stor1:
        if not stor2:
            if arg1:
                if (0 / arg1) + stor2 >= stor2:
                    if (0 / arg1) + stor2:
                        return (0 / (0 / arg1) + stor2)
        else:
            if arg1 * stor2 / stor2 == arg1:
                if arg1 * stor2 >= 0:
                    if arg1:
                        if (arg1 * stor2 / arg1) + stor2 >= stor2:
                            if (arg1 * stor2 / arg1) + stor2:
                                return (0 / (arg1 * stor2 / arg1) + stor2)
    else:
        if marketEggs * stor1 / stor1 == marketEggs:
            if not stor1:
                if not stor2:
                    if arg1:
                        if (0 / arg1) + stor2 >= stor2:
                            if (0 / arg1) + stor2:
                                return (marketEggs * stor1 / (0 / arg1) + stor2)
                else:
                    if arg1 * stor2 / stor2 == arg1:
                        if arg1 * stor2 >= 0:
                            if arg1:
                                if (arg1 * stor2 / arg1) + stor2 >= stor2:
                                    if (arg1 * stor2 / arg1) + stor2:
                                        return (marketEggs * stor1 / (arg1 * stor2 / arg1) + stor2)
            else:
                if eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address):
                    if not stor2:
                        if eth.balance(this.address) * stor1 >= eth.balance(this.address) * stor1:
                            if arg1:
                                if (eth.balance(this.address) * stor1 / arg1) + stor2 >= stor2:
                                    if (eth.balance(this.address) * stor1 / arg1) + stor2:
                                        return (marketEggs * stor1 / (eth.balance(this.address) * stor1 / arg1) + stor2)
                    else:
                        if arg1 * stor2 / stor2 == arg1:
                            if (arg1 * stor2) + (eth.balance(this.address) * stor1) >= eth.balance(this.address) * stor1:
                                if arg1:
                                    if ((arg1 * stor2) + (eth.balance(this.address) * stor1) / arg1) + stor2 >= stor2:
                                        if ((arg1 * stor2) + (eth.balance(this.address) * stor1) / arg1) + stor2:
                                            return (marketEggs * stor1 / ((arg1 * stor2) + (eth.balance(this.address) * stor1) / arg1) + stor2)
    revert
}

function hatchEggs(address arg1) {
    require stor3
    if arg1 != msg.sender:
        if not referrals[msg.sender]:
            if referrals[msg.sender] != msg.sender:
                referrals[msg.sender] = arg1
    else:
        if not referrals[msg.sender]:
            if referrals[msg.sender] != msg.sender:
                referrals[msg.sender] = 0
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require (claimedEggs[msg.sender] / 10) + claimedEggs[stor8[msg.sender]] >= claimedEggs[stor8[msg.sender]]
            claimedEggs[stor8[msg.sender]] += claimedEggs[msg.sender] / 10
            require (claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += claimedEggs[msg.sender] / 5
        else:
            require myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]
            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 10) + claimedEggs[stor8[msg.sender]] >= claimedEggs[stor8[msg.sender]]
            claimedEggs[stor8[msg.sender]] += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 10
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 5
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require (claimedEggs[msg.sender] / 10) + claimedEggs[stor8[msg.sender]] >= claimedEggs[stor8[msg.sender]]
            claimedEggs[stor8[msg.sender]] += claimedEggs[msg.sender] / 10
            require (claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += claimedEggs[msg.sender] / 5
        else:
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 10) + claimedEggs[stor8[msg.sender]] >= claimedEggs[stor8[msg.sender]]
            claimedEggs[stor8[msg.sender]] += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 10
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5
}

function buyEggs(address arg1) payable {
    require stor3
    require msg.value <= eth.balance(this.address)
    if not stor1:
        if not stor2:
            require msg.value
            require (0 / msg.value) + stor2 >= stor2
            require (0 / msg.value) + stor2
            if not 0 / (0 / msg.value) + stor2:
                require 0 <= 0 / (0 / msg.value) + stor2
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                         gas 2300 wei
                else:
                    require 5 * msg.value / msg.value == 5
                    call ceoAddress with:
                       value 5 * msg.value / 100 / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                       value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                         gas 2300 * is_zero(value) wei
                require (0 / (0 / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] += 0 / (0 / msg.value) + stor2
            else:
                require 5 * 0 / (0 / msg.value) + stor2 / 0 / (0 / msg.value) + stor2 == 5
                require 5 * 0 / (0 / msg.value) + stor2 / 100 <= 0 / (0 / msg.value) + stor2
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                         gas 2300 wei
                else:
                    require 5 * msg.value / msg.value == 5
                    call ceoAddress with:
                       value 5 * msg.value / 100 / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                       value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                         gas 2300 * is_zero(value) wei
                require (0 / (0 / msg.value) + stor2) - (5 * 0 / (0 / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] = (0 / (0 / msg.value) + stor2) - (5 * 0 / (0 / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
        else:
            require msg.value * stor2 / stor2 == msg.value
            require msg.value * stor2 >= 0
            require msg.value
            require (msg.value * stor2 / msg.value) + stor2 >= stor2
            require (msg.value * stor2 / msg.value) + stor2
            if not 0 / (msg.value * stor2 / msg.value) + stor2:
                require 0 <= 0 / (msg.value * stor2 / msg.value) + stor2
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                         gas 2300 wei
                else:
                    require 5 * msg.value / msg.value == 5
                    call ceoAddress with:
                       value 5 * msg.value / 100 / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                       value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                         gas 2300 * is_zero(value) wei
                require (0 / (msg.value * stor2 / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] += 0 / (msg.value * stor2 / msg.value) + stor2
            else:
                require 5 * 0 / (msg.value * stor2 / msg.value) + stor2 / 0 / (msg.value * stor2 / msg.value) + stor2 == 5
                require 5 * 0 / (msg.value * stor2 / msg.value) + stor2 / 100 <= 0 / (msg.value * stor2 / msg.value) + stor2
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                         gas 2300 wei
                else:
                    require 5 * msg.value / msg.value == 5
                    call ceoAddress with:
                       value 5 * msg.value / 100 / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                       value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                         gas 2300 * is_zero(value) wei
                require (0 / (msg.value * stor2 / msg.value) + stor2) - (5 * 0 / (msg.value * stor2 / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] = (0 / (msg.value * stor2 / msg.value) + stor2) - (5 * 0 / (msg.value * stor2 / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
    else:
        require marketEggs * stor1 / stor1 == marketEggs
        if not stor1:
            if not stor2:
                require msg.value
                require (0 / msg.value) + stor2 >= stor2
                require (0 / msg.value) + stor2
                if not marketEggs * stor1 / (0 / msg.value) + stor2:
                    require 0 <= marketEggs * stor1 / (0 / msg.value) + stor2
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require 5 * msg.value / msg.value == 5
                        call ceoAddress with:
                           value 5 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require (marketEggs * stor1 / (0 / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor1 / (0 / msg.value) + stor2
                else:
                    require 5 * marketEggs * stor1 / (0 / msg.value) + stor2 / marketEggs * stor1 / (0 / msg.value) + stor2 == 5
                    require 5 * marketEggs * stor1 / (0 / msg.value) + stor2 / 100 <= marketEggs * stor1 / (0 / msg.value) + stor2
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require 5 * msg.value / msg.value == 5
                        call ceoAddress with:
                           value 5 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require (marketEggs * stor1 / (0 / msg.value) + stor2) - (5 * marketEggs * stor1 / (0 / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor1 / (0 / msg.value) + stor2) - (5 * marketEggs * stor1 / (0 / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
            else:
                require msg.value * stor2 / stor2 == msg.value
                require msg.value * stor2 >= 0
                require msg.value
                require (msg.value * stor2 / msg.value) + stor2 >= stor2
                require (msg.value * stor2 / msg.value) + stor2
                if not marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2:
                    require 0 <= marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require 5 * msg.value / msg.value == 5
                        call ceoAddress with:
                           value 5 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require (marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2
                else:
                    require 5 * marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2 / marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2 == 5
                    require 5 * marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2 / 100 <= marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require 5 * msg.value / msg.value == 5
                        call ceoAddress with:
                           value 5 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require (marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2) - (5 * marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2) - (5 * marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
        else:
            require (eth.balance(this.address) * stor1) - (msg.value * stor1) / stor1 == eth.balance(this.address) - msg.value
            if not stor2:
                require msg.value
                require ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 >= stor2
                require ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                if not marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2:
                    require 0 <= marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require 5 * msg.value / msg.value == 5
                        call ceoAddress with:
                           value 5 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require (marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                else:
                    require 5 * marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 == 5
                    require 5 * marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100 <= marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require 5 * msg.value / msg.value == 5
                        call ceoAddress with:
                           value 5 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require (marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) - (5 * marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) - (5 * marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
            else:
                require msg.value * stor2 / stor2 == msg.value
                require msg.value * stor2 >= 0
                require msg.value
                require ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 >= stor2
                require ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                if not marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2:
                    require 0 <= marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require 5 * msg.value / msg.value == 5
                        call ceoAddress with:
                           value 5 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require (marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                else:
                    require 5 * marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 == 5
                    require 5 * marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100 <= marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require 5 * msg.value / msg.value == 5
                        call ceoAddress with:
                           value 5 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require (marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) - (5 * marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) - (5 * marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
    require stor3
    if arg1 != msg.sender:
        if not referrals[msg.sender]:
            if referrals[msg.sender] != msg.sender:
                referrals[msg.sender] = arg1
    else:
        if not referrals[msg.sender]:
            if referrals[msg.sender] != msg.sender:
                referrals[msg.sender] = 0
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require (claimedEggs[msg.sender] / 10) + claimedEggs[stor8[msg.sender]] >= claimedEggs[stor8[msg.sender]]
            claimedEggs[stor8[msg.sender]] += claimedEggs[msg.sender] / 10
            require (claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += claimedEggs[msg.sender] / 5
        else:
            require myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]
            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 10) + claimedEggs[stor8[msg.sender]] >= claimedEggs[stor8[msg.sender]]
            claimedEggs[stor8[msg.sender]] += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 10
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 5
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require (claimedEggs[msg.sender] / 10) + claimedEggs[stor8[msg.sender]] >= claimedEggs[stor8[msg.sender]]
            claimedEggs[stor8[msg.sender]] += claimedEggs[msg.sender] / 10
            require (claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += claimedEggs[msg.sender] / 5
        else:
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 10) + claimedEggs[stor8[msg.sender]] >= claimedEggs[stor8[msg.sender]]
            claimedEggs[stor8[msg.sender]] += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 10
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5
}

function sellEggs() {
    require stor3
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            if not stor1:
                if not stor2:
                    require claimedEggs[msg.sender]
                    require (0 / claimedEggs[msg.sender]) + stor2 >= stor2
                    require (0 / claimedEggs[msg.sender]) + stor2
                    if not 0 / (0 / claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / (0 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (0 / claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 0 / (0 / claimedEggs[msg.sender]) + stor2 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call ceoAddress with:
                           value 5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100) - (5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (0 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (0 / claimedEggs[msg.sender]) + stor2) - (5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                    require claimedEggs[msg.sender] * stor2 >= 0
                    require claimedEggs[msg.sender]
                    require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 >= stor2
                    require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                    if not 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call ceoAddress with:
                           value 5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) - (5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2) - (5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require claimedEggs[msg.sender]
                        require (0 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (0 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                        require claimedEggs[msg.sender] * stor2 >= 0
                        require claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor1 / stor1 == marketEggs
                    if not stor2:
                        require marketEggs * stor1 >= marketEggs * stor1
                        require claimedEggs[msg.sender]
                        require (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) >= marketEggs * stor1
                        require claimedEggs[msg.sender]
                        require ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]
            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            if not stor1:
                if not stor2:
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                    require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                    require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                    if not 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        call ceoAddress with:
                           value 5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) >= 0
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                    require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                    require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                    if not 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        call ceoAddress with:
                           value 5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) >= 0
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor1 / stor1 == marketEggs
                    if not stor2:
                        require marketEggs * stor1 >= marketEggs * stor1
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) >= marketEggs * stor1
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            if not stor1:
                if not stor2:
                    require claimedEggs[msg.sender]
                    require (0 / claimedEggs[msg.sender]) + stor2 >= stor2
                    require (0 / claimedEggs[msg.sender]) + stor2
                    if not 0 / (0 / claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / (0 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (0 / claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 0 / (0 / claimedEggs[msg.sender]) + stor2 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call ceoAddress with:
                           value 5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100) - (5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (0 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (0 / claimedEggs[msg.sender]) + stor2) - (5 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                    require claimedEggs[msg.sender] * stor2 >= 0
                    require claimedEggs[msg.sender]
                    require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 >= stor2
                    require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                    if not 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call ceoAddress with:
                           value 5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) - (5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2) - (5 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require claimedEggs[msg.sender]
                        require (0 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (0 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                        require claimedEggs[msg.sender] * stor2 >= 0
                        require claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor1 / stor1 == marketEggs
                    if not stor2:
                        require marketEggs * stor1 >= marketEggs * stor1
                        require claimedEggs[msg.sender]
                        require (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) >= marketEggs * stor1
                        require claimedEggs[msg.sender]
                        require ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            if not stor1:
                if not stor2:
                    require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                    require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                    require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                    if not 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        call ceoAddress with:
                           value 5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                    require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) >= 0
                    require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                    require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                    require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                    if not 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        call ceoAddress with:
                           value 5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) >= 0
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor1 / stor1 == marketEggs
                    if not stor2:
                        require marketEggs * stor1 >= marketEggs * stor1
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) >= marketEggs * stor1
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call ceoAddress with:
                               value 5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) - (5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (5 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
