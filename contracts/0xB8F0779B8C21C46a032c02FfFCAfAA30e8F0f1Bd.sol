contract main {




// =====================  Runtime code  =====================


const UNIT = 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address controllerAddress; offset 8
address collectorAddress;
uint256 buyFee;
uint256 sellFee;
uint256 price;
uint8 stor10;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function getSellFee() {
    return sellFee
}

function getController() {
    return controllerAddress
}

function decimals() {
    return decimals
}

function getCollector() {
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_UNAUTHORIZED'
    return collectorAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getBuyFee() {
    return buyFee
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getPrice() {
    return price
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_5848b9d9(?) {
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_UNAUTHORIZED'
    stor10 = 1
    emit 0x2458dc0c: block.timestamp, msg.sender
}

function sub_76917c98(?) {
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_UNAUTHORIZED'
    stor10 = 0
    emit 0xe3541636: block.timestamp, msg.sender
}

function setCollector(address arg1) {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_UNAUTHORIZED'
    collectorAddress = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_UNAUTHORIZED'
    controllerAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit 0xfe8c5be1: arg2, msg.sender, arg1
    return 1
}

function setBuyFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_UNAUTHORIZED'
    buyFee = arg1
    emit 0x40bcc9aa: buyFee, arg1, block.timestamp, msg.sender
}

function setSellFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_UNAUTHORIZED'
    sellFee = arg1
    emit 0xc40462e2: sellFee, arg1, block.timestamp, msg.sender
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_UNAUTHORIZED'
    if arg1 <= 0:
        revert with 0, 'ERR_INVALID_PRICE'
    price = arg1
    emit 0x3138171d: price, arg1, block.timestamp, msg.sender
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit 0xfe8c5be1: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'MATH ADD OVERFLOW'
    allowance[msg.sender][address(arg1)] += arg2
    emit 0xfe8c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function buy() payable {
    if not stor10:
        revert with 0, 'ERR_TRADE_HALTED'
    if not msg.value:
        emit 0x411e5134: msg.value, 0, price, block.timestamp, msg.sender
    else:
        if price * msg.value / msg.value != price:
            revert with 0, 'MATH MUL OVERFLOW'
        if not price * msg.value / 10^18:
            if 0 > price * msg.value / 10^18:
                revert with 0, 'MATH SUB OVERFLOW'
            if price * msg.value / 10^18:
                if not msg.sender:
                    revert with 0, 'ERR_MINT_TO_ZERO_ADDRESS'
                if (price * msg.value / 10^18) + totalSupply < totalSupply:
                    revert with 0, 'MATH ADD OVERFLOW'
                totalSupply += price * msg.value / 10^18
                if (price * msg.value / 10^18) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'MATH ADD OVERFLOW'
                balanceOf[address(msg.sender)] += price * msg.value / 10^18
                emit Transfer((price * msg.value / 10^18), 0, msg.sender);
            emit 0x411e5134: msg.value, 0, price, block.timestamp, msg.sender
        else:
            if buyFee * price * msg.value / 10^18 / price * msg.value / 10^18 != buyFee:
                revert with 0, 'MATH MUL OVERFLOW'
            if buyFee * price * msg.value / 10^18 / 10000 > price * msg.value / 10^18:
                revert with 0, 'MATH SUB OVERFLOW'
            if buyFee * price * msg.value / 10^18 / 10000:
                if not collectorAddress:
                    revert with 0, 'ERR_MINT_TO_ZERO_ADDRESS'
                if (buyFee * price * msg.value / 10^18 / 10000) + totalSupply < totalSupply:
                    revert with 0, 'MATH ADD OVERFLOW'
                totalSupply += buyFee * price * msg.value / 10^18 / 10000
                if (buyFee * price * msg.value / 10^18 / 10000) + balanceOf[stor6] < balanceOf[stor6]:
                    revert with 0, 'MATH ADD OVERFLOW'
                balanceOf[stor6] += buyFee * price * msg.value / 10^18 / 10000
                emit Transfer((buyFee * price * msg.value / 10^18 / 10000), 0, collectorAddress);
            if (price * msg.value / 10^18) - (buyFee * price * msg.value / 10^18 / 10000):
                if not msg.sender:
                    revert with 0, 'ERR_MINT_TO_ZERO_ADDRESS'
                if (price * msg.value / 10^18) - (buyFee * price * msg.value / 10^18 / 10000) + totalSupply < totalSupply:
                    revert with 0, 'MATH ADD OVERFLOW'
                totalSupply = (price * msg.value / 10^18) - (buyFee * price * msg.value / 10^18 / 10000) + totalSupply
                if (price * msg.value / 10^18) - (buyFee * price * msg.value / 10^18 / 10000) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'MATH ADD OVERFLOW'
                balanceOf[address(msg.sender)] = (price * msg.value / 10^18) - (buyFee * price * msg.value / 10^18 / 10000) + balanceOf[address(msg.sender)]
                emit Transfer(((price * msg.value / 10^18) - (buyFee * price * msg.value / 10^18 / 10000)), 0, msg.sender);
            emit 0x411e5134: msg.value, buyFee * price * msg.value / 10^18 / 10000, price, block.timestamp, msg.sender
    return 1
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor10:
        revert with 0, 'ERR_TRADE_HALTED'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'ERR_NO_BALANCE'
    if not arg1:
        if 0 > arg1:
            revert with 0, 'MATH SUB OVERFLOW'
        if not arg1:
            if price <= 0:
                revert with 0, 'MATH DIV BY ZERO'
            require price
            if 0 / price > eth.balance(this.address):
                revert with 0, 'ERR_NO_BALANCE'
            if arg1:
                if not msg.sender:
                    revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                if arg1 > totalSupply:
                    revert with 0, 'MATH SUB OVERFLOW'
                totalSupply -= arg1
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 'MATH SUB OVERFLOW'
                balanceOf[address(msg.sender)] -= arg1
                emit Transfer(arg1, msg.sender, 0);
            if 0 / price:
                call msg.sender with:
                   value 0 / price wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0, 'MATH MUL OVERFLOW'
            if price <= 0:
                revert with 0, 'MATH DIV BY ZERO'
            require price
            if 10^18 * arg1 / price > eth.balance(this.address):
                revert with 0, 'ERR_NO_BALANCE'
            if arg1:
                if not msg.sender:
                    revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                if arg1 > totalSupply:
                    revert with 0, 'MATH SUB OVERFLOW'
                totalSupply -= arg1
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 'MATH SUB OVERFLOW'
                balanceOf[address(msg.sender)] -= arg1
                emit Transfer(arg1, msg.sender, 0);
            if 10^18 * arg1 / price:
                call msg.sender with:
                   value 10^18 * arg1 / price wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        emit 0x7f965687: arg1, 0, price, block.timestamp, msg.sender
    else:
        if sellFee * arg1 / arg1 != sellFee:
            revert with 0, 'MATH MUL OVERFLOW'
        if sellFee * arg1 / 10000 > arg1:
            revert with 0, 'MATH SUB OVERFLOW'
        if not arg1 - (sellFee * arg1 / 10000):
            if price <= 0:
                revert with 0, 'MATH DIV BY ZERO'
            require price
            if 0 / price > eth.balance(this.address):
                revert with 0, 'ERR_NO_BALANCE'
            if sellFee * arg1 / 10000:
                if not collectorAddress:
                    revert with 0, 'ERR_MINT_TO_ZERO_ADDRESS'
                if (sellFee * arg1 / 10000) + totalSupply < totalSupply:
                    revert with 0, 'MATH ADD OVERFLOW'
                totalSupply += sellFee * arg1 / 10000
                if (sellFee * arg1 / 10000) + balanceOf[stor6] < balanceOf[stor6]:
                    revert with 0, 'MATH ADD OVERFLOW'
                balanceOf[stor6] += sellFee * arg1 / 10000
                emit Transfer((sellFee * arg1 / 10000), 0, collectorAddress);
            if arg1:
                if not msg.sender:
                    revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                if arg1 > totalSupply:
                    revert with 0, 'MATH SUB OVERFLOW'
                totalSupply -= arg1
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 'MATH SUB OVERFLOW'
                balanceOf[address(msg.sender)] -= arg1
                emit Transfer(arg1, msg.sender, 0);
            if 0 / price:
                call msg.sender with:
                   value 0 / price wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if (10^18 * arg1) - (10^18 * sellFee * arg1 / 10000) / arg1 - (sellFee * arg1 / 10000) != 10^18:
                revert with 0, 'MATH MUL OVERFLOW'
            if price <= 0:
                revert with 0, 'MATH DIV BY ZERO'
            require price
            if (10^18 * arg1) - (10^18 * sellFee * arg1 / 10000) / price > eth.balance(this.address):
                revert with 0, 'ERR_NO_BALANCE'
            if sellFee * arg1 / 10000:
                if not collectorAddress:
                    revert with 0, 'ERR_MINT_TO_ZERO_ADDRESS'
                if (sellFee * arg1 / 10000) + totalSupply < totalSupply:
                    revert with 0, 'MATH ADD OVERFLOW'
                totalSupply += sellFee * arg1 / 10000
                if (sellFee * arg1 / 10000) + balanceOf[stor6] < balanceOf[stor6]:
                    revert with 0, 'MATH ADD OVERFLOW'
                balanceOf[stor6] += sellFee * arg1 / 10000
                emit Transfer((sellFee * arg1 / 10000), 0, collectorAddress);
            if arg1:
                if not msg.sender:
                    revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                if arg1 > totalSupply:
                    revert with 0, 'MATH SUB OVERFLOW'
                totalSupply -= arg1
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 'MATH SUB OVERFLOW'
                balanceOf[address(msg.sender)] -= arg1
                emit Transfer(arg1, msg.sender, 0);
            if (10^18 * arg1) - (10^18 * sellFee * arg1 / 10000) / price:
                call msg.sender with:
                   value (10^18 * arg1) - (10^18 * sellFee * arg1 / 10000) / price wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        emit 0x7f965687: arg1, sellFee * arg1 / 10000, price, block.timestamp, msg.sender
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 != this.address:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'ERR_NO_BALANCE'
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'MATH SUB OVERFLOW'
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'MATH ADD OVERFLOW'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not stor10:
            revert with 0, 'ERR_TRADE_HALTED'
        if arg2 > balanceOf[msg.sender]:
            revert with 0, 'ERR_NO_BALANCE'
        if not arg2:
            if 0 > arg2:
                revert with 0, 'MATH SUB OVERFLOW'
            if not arg2:
                if price <= 0:
                    revert with 0, 'MATH DIV BY ZERO'
                require price
                if 0 / price > eth.balance(this.address):
                    revert with 0, 'ERR_NO_BALANCE'
                if arg2:
                    if not msg.sender:
                        revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                    if arg2 > totalSupply:
                        revert with 0, 'MATH SUB OVERFLOW'
                    totalSupply -= arg2
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'MATH SUB OVERFLOW'
                    balanceOf[address(msg.sender)] -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                if 0 / price:
                    call msg.sender with:
                       value 0 / price wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 'MATH MUL OVERFLOW'
                if price <= 0:
                    revert with 0, 'MATH DIV BY ZERO'
                require price
                if 10^18 * arg2 / price > eth.balance(this.address):
                    revert with 0, 'ERR_NO_BALANCE'
                if arg2:
                    if not msg.sender:
                        revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                    if arg2 > totalSupply:
                        revert with 0, 'MATH SUB OVERFLOW'
                    totalSupply -= arg2
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'MATH SUB OVERFLOW'
                    balanceOf[address(msg.sender)] -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                if 10^18 * arg2 / price:
                    call msg.sender with:
                       value 10^18 * arg2 / price wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit 0x7f965687: arg2, 0, price, block.timestamp, msg.sender
        else:
            if sellFee * arg2 / arg2 != sellFee:
                revert with 0, 'MATH MUL OVERFLOW'
            if sellFee * arg2 / 10000 > arg2:
                revert with 0, 'MATH SUB OVERFLOW'
            if not arg2 - (sellFee * arg2 / 10000):
                if price <= 0:
                    revert with 0, 'MATH DIV BY ZERO'
                require price
                if 0 / price > eth.balance(this.address):
                    revert with 0, 'ERR_NO_BALANCE'
                if sellFee * arg2 / 10000:
                    if not collectorAddress:
                        revert with 0, 'ERR_MINT_TO_ZERO_ADDRESS'
                    if (sellFee * arg2 / 10000) + totalSupply < totalSupply:
                        revert with 0, 'MATH ADD OVERFLOW'
                    totalSupply += sellFee * arg2 / 10000
                    if (sellFee * arg2 / 10000) + balanceOf[stor6] < balanceOf[stor6]:
                        revert with 0, 'MATH ADD OVERFLOW'
                    balanceOf[stor6] += sellFee * arg2 / 10000
                    emit Transfer((sellFee * arg2 / 10000), 0, collectorAddress);
                if arg2:
                    if not msg.sender:
                        revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                    if arg2 > totalSupply:
                        revert with 0, 'MATH SUB OVERFLOW'
                    totalSupply -= arg2
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'MATH SUB OVERFLOW'
                    balanceOf[address(msg.sender)] -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                if 0 / price:
                    call msg.sender with:
                       value 0 / price wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if (10^18 * arg2) - (10^18 * sellFee * arg2 / 10000) / arg2 - (sellFee * arg2 / 10000) != 10^18:
                    revert with 0, 'MATH MUL OVERFLOW'
                if price <= 0:
                    revert with 0, 'MATH DIV BY ZERO'
                require price
                if (10^18 * arg2) - (10^18 * sellFee * arg2 / 10000) / price > eth.balance(this.address):
                    revert with 0, 'ERR_NO_BALANCE'
                if sellFee * arg2 / 10000:
                    if not collectorAddress:
                        revert with 0, 'ERR_MINT_TO_ZERO_ADDRESS'
                    if (sellFee * arg2 / 10000) + totalSupply < totalSupply:
                        revert with 0, 'MATH ADD OVERFLOW'
                    totalSupply += sellFee * arg2 / 10000
                    if (sellFee * arg2 / 10000) + balanceOf[stor6] < balanceOf[stor6]:
                        revert with 0, 'MATH ADD OVERFLOW'
                    balanceOf[stor6] += sellFee * arg2 / 10000
                    emit Transfer((sellFee * arg2 / 10000), 0, collectorAddress);
                if arg2:
                    if not msg.sender:
                        revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                    if arg2 > totalSupply:
                        revert with 0, 'MATH SUB OVERFLOW'
                    totalSupply -= arg2
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'MATH SUB OVERFLOW'
                    balanceOf[address(msg.sender)] -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                if (10^18 * arg2) - (10^18 * sellFee * arg2 / 10000) / price:
                    call msg.sender with:
                       value (10^18 * arg2) - (10^18 * sellFee * arg2 / 10000) / price wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit 0x7f965687: arg2, sellFee * arg2 / 10000, price, block.timestamp, msg.sender
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 != msg.sender:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'ERR_NO_ALLOWANCE'
    if arg2 != this.address:
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'ERR_NO_BALANCE'
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'MATH SUB OVERFLOW'
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'MATH ADD OVERFLOW'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg1 != msg.sender:
            if allowance[address(arg1)][msg.sender] != -1:
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'MATH SUB OVERFLOW'
                allowance[address(arg1)][msg.sender] -= arg3
                emit 0xfe8c5be1: (allowance[address(arg1)][msg.sender] - arg3), msg.sender, arg2
    else:
        if not stor10:
            revert with 0, 'ERR_TRADE_HALTED'
        if arg3 > balanceOf[msg.sender]:
            revert with 0, 'ERR_NO_BALANCE'
        if not arg3:
            if 0 > arg3:
                revert with 0, 'MATH SUB OVERFLOW'
            if not arg3:
                if price <= 0:
                    revert with 0, 'MATH DIV BY ZERO'
                require price
                if 0 / price > eth.balance(this.address):
                    revert with 0, 'ERR_NO_BALANCE'
                if arg3:
                    if not msg.sender:
                        revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                    if arg3 > totalSupply:
                        revert with 0, 'MATH SUB OVERFLOW'
                    totalSupply -= arg3
                    if arg3 > balanceOf[address(msg.sender)]:
                        revert with 0, 'MATH SUB OVERFLOW'
                    balanceOf[address(msg.sender)] -= arg3
                    emit Transfer(arg3, msg.sender, 0);
                if 0 / price:
                    call msg.sender with:
                       value 0 / price wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if 10^18 * arg3 / arg3 != 10^18:
                    revert with 0, 'MATH MUL OVERFLOW'
                if price <= 0:
                    revert with 0, 'MATH DIV BY ZERO'
                require price
                if 10^18 * arg3 / price > eth.balance(this.address):
                    revert with 0, 'ERR_NO_BALANCE'
                if arg3:
                    if not msg.sender:
                        revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                    if arg3 > totalSupply:
                        revert with 0, 'MATH SUB OVERFLOW'
                    totalSupply -= arg3
                    if arg3 > balanceOf[address(msg.sender)]:
                        revert with 0, 'MATH SUB OVERFLOW'
                    balanceOf[address(msg.sender)] -= arg3
                    emit Transfer(arg3, msg.sender, 0);
                if 10^18 * arg3 / price:
                    call msg.sender with:
                       value 10^18 * arg3 / price wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit 0x7f965687: arg3, 0, price, block.timestamp, msg.sender
        else:
            if sellFee * arg3 / arg3 != sellFee:
                revert with 0, 'MATH MUL OVERFLOW'
            if sellFee * arg3 / 10000 > arg3:
                revert with 0, 'MATH SUB OVERFLOW'
            if not arg3 - (sellFee * arg3 / 10000):
                if price <= 0:
                    revert with 0, 'MATH DIV BY ZERO'
                require price
                if 0 / price > eth.balance(this.address):
                    revert with 0, 'ERR_NO_BALANCE'
                if sellFee * arg3 / 10000:
                    if not collectorAddress:
                        revert with 0, 'ERR_MINT_TO_ZERO_ADDRESS'
                    if (sellFee * arg3 / 10000) + totalSupply < totalSupply:
                        revert with 0, 'MATH ADD OVERFLOW'
                    totalSupply += sellFee * arg3 / 10000
                    if (sellFee * arg3 / 10000) + balanceOf[stor6] < balanceOf[stor6]:
                        revert with 0, 'MATH ADD OVERFLOW'
                    balanceOf[stor6] += sellFee * arg3 / 10000
                    emit Transfer((sellFee * arg3 / 10000), 0, collectorAddress);
                if arg3:
                    if not msg.sender:
                        revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                    if arg3 > totalSupply:
                        revert with 0, 'MATH SUB OVERFLOW'
                    totalSupply -= arg3
                    if arg3 > balanceOf[address(msg.sender)]:
                        revert with 0, 'MATH SUB OVERFLOW'
                    balanceOf[address(msg.sender)] -= arg3
                    emit Transfer(arg3, msg.sender, 0);
                if 0 / price:
                    call msg.sender with:
                       value 0 / price wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if (10^18 * arg3) - (10^18 * sellFee * arg3 / 10000) / arg3 - (sellFee * arg3 / 10000) != 10^18:
                    revert with 0, 'MATH MUL OVERFLOW'
                if price <= 0:
                    revert with 0, 'MATH DIV BY ZERO'
                require price
                if (10^18 * arg3) - (10^18 * sellFee * arg3 / 10000) / price > eth.balance(this.address):
                    revert with 0, 'ERR_NO_BALANCE'
                if sellFee * arg3 / 10000:
                    if not collectorAddress:
                        revert with 0, 'ERR_MINT_TO_ZERO_ADDRESS'
                    if (sellFee * arg3 / 10000) + totalSupply < totalSupply:
                        revert with 0, 'MATH ADD OVERFLOW'
                    totalSupply += sellFee * arg3 / 10000
                    if (sellFee * arg3 / 10000) + balanceOf[stor6] < balanceOf[stor6]:
                        revert with 0, 'MATH ADD OVERFLOW'
                    balanceOf[stor6] += sellFee * arg3 / 10000
                    emit Transfer((sellFee * arg3 / 10000), 0, collectorAddress);
                if arg3:
                    if not msg.sender:
                        revert with 0, 'ERR_BURN_FROM_ZERO_ADDRESS'
                    if arg3 > totalSupply:
                        revert with 0, 'MATH SUB OVERFLOW'
                    totalSupply -= arg3
                    if arg3 > balanceOf[address(msg.sender)]:
                        revert with 0, 'MATH SUB OVERFLOW'
                    balanceOf[address(msg.sender)] -= arg3
                    emit Transfer(arg3, msg.sender, 0);
                if (10^18 * arg3) - (10^18 * sellFee * arg3 / 10000) / price:
                    call msg.sender with:
                       value (10^18 * arg3) - (10^18 * sellFee * arg3 / 10000) / price wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit 0x7f965687: arg3, sellFee * arg3 / 10000, price, block.timestamp, msg.sender
    return 1
}



}
