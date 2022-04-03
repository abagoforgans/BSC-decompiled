contract main {




// =====================  Runtime code  =====================


address sub_113426a6Address;
address sub_f07c66b1Address;
address sub_173e2043Address;
address sub_986e2694Address;
address oracleAddress;
address owner;
uint256 sub_aed03134;
uint256 sub_c3a9fb64;
uint256 sub_82a15208;
uint256 startDate;
uint256 claimDate;
uint256 tokenPrice;
uint256 totalTokensToSell;
uint256 totalSold;
uint8 saleEnded;
uint8 sub_0fa0162b; offset 8
uint256 stor14; offset 8
mapping of uint256 boughtTokens;

function startDate() payable {
    return startDate
}

function claimDate() payable {
    return claimDate
}

function sub_0fa0162b(?) payable {
    return bool(sub_0fa0162b)
}

function sub_113426a6(?) payable {
    return sub_113426a6Address
}

function sub_173e2043(?) payable {
    return sub_173e2043Address
}

function totalTokensToSell() payable {
    return totalTokensToSell
}

function oracle() payable {
    return oracleAddress
}

function tokenPrice() payable {
    return tokenPrice
}

function sub_82a15208(?) payable {
    return sub_82a15208
}

function boughtTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return boughtTokens[arg1]
}

function owner() payable {
    return owner
}

function totalSold() payable {
    return totalSold
}

function sub_986e2694(?) payable {
    return sub_986e2694Address
}

function saleEnded() payable {
    return bool(saleEnded)
}

function sub_aed03134(?) payable {
    return sub_aed03134
}

function sub_c3a9fb64(?) payable {
    return sub_c3a9fb64
}

function sub_f07c66b1(?) payable {
    return sub_f07c66b1Address
}

function _fallback() payable {
    revert
}

function endSale() payable {
    require msg.sender == owner
    require not saleEnded
    saleEnded = 1
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function unsoldTokens() payable {
    if totalSold > totalTokensToSell:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalTokensToSell - totalSold)
}

function withdrawUnsoldTokens() payable {
    require msg.sender == owner
    require not sub_0fa0162b
    if totalSold > totalTokensToSell:
        revert with 0, 'SafeMath: subtraction overflow'
    require totalTokensToSell - totalSold > 0
    stor14 = 1
    require ext_code.size(sub_113426a6Address)
    call sub_113426a6Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, totalTokensToSell - totalSold
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_697af70a(?) payable {
    require block.timestamp >= claimDate
    require boughtTokens[address(msg.sender)] > 0
    boughtTokens[address(msg.sender)] = 0
    require ext_code.size(sub_113426a6Address)
    call sub_113426a6Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, boughtTokens[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit tokensClaimed(boughtTokens[address(msg.sender)], block.timestamp, msg.sender);
}

function sub_69f056ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(oracleAddress)
    staticcall oracleAddress with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return 0, ext_call.return_data[4 len 28], ext_call.return_data[32]
}

function sub_cad028d2(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0xf66a1b7100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 196 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    require ext_code.size(oracleAddress)
    staticcall oracleAddress with:
            gas gas_remaining wei
           args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if tokenPrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        if tokenPrice:
            return (0 / tokenPrice / 10^9)
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 229 len 31]
            if tokenPrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            if tokenPrice:
                return (ext_call.return_data[0] * arg1 / tokenPrice / 10^9)
    revert
}

function withdrawCollectedTokens() payable {
    require msg.sender == owner
    if sub_aed03134 > 0:
        sub_aed03134 = 0
        require ext_code.size(sub_f07c66b1Address)
        call sub_f07c66b1Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, sub_aed03134
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if sub_c3a9fb64 <= 0:
            require sub_82a15208 > 0
        if sub_aed03134 > 0:
            sub_aed03134 = 0
            require ext_code.size(sub_f07c66b1Address)
            call sub_f07c66b1Address.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, sub_aed03134
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    if sub_c3a9fb64 > 0:
        sub_c3a9fb64 = 0
        require ext_code.size(sub_173e2043Address)
        call sub_173e2043Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, sub_c3a9fb64
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if sub_82a15208 > 0:
        sub_82a15208 = 0
        require ext_code.size(sub_986e2694Address)
        call sub_986e2694Address.0xa9059cbb with:
             gas gas_remaining wei
            args owner, sub_82a15208
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_b9959268(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0xf66a1b7100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 196 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    require ext_code.size(oracleAddress)
    staticcall oracleAddress with:
            gas gas_remaining wei
           args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not arg1:
        if not tokenPrice:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if tokenPrice:
                if 0 / tokenPrice:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 229 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
    else:
        if arg1:
            if 10^9 * arg1 / arg1 != 10^9:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 229 len 31]
            if not tokenPrice:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if tokenPrice:
                    if 10^9 * tokenPrice * arg1 / tokenPrice != 10^9 * arg1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 229 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        return (10^9 * tokenPrice * arg1 / ext_call.return_data[0])
    revert
}

function sub_d0f9f4cc(?) payable {
    require calldata.size - 4 >= 32
    require block.timestamp >= startDate
    require not saleEnded
    if totalSold > totalTokensToSell:
        revert with 0, 'SafeMath: subtraction overflow'
    require totalTokensToSell - totalSold > 0
    require arg1 <= 4 * 10^12
    if totalSold > totalTokensToSell:
        revert with 0, 'SafeMath: subtraction overflow'
    require arg1 <= totalTokensToSell - totalSold
    require ext_code.size(sub_113426a6Address)
    staticcall sub_113426a6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getLatestPrice(string rg1) with:
            gas gas_remaining wei
           args 'JULd'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not arg1:
        if tokenPrice:
            require tokenPrice
            if 0 / tokenPrice:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(sub_173e2043Address)
        staticcall sub_173e2043Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0 / ext_call.return_data[0]
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getLatestPrice(string rg1) with:
                gas gas_remaining wei
               args 'JULd'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if boughtTokens[address(msg.sender)] + arg1 < boughtTokens[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        boughtTokens[address(msg.sender)] += arg1
        if totalSold + arg1 < totalSold:
            revert with 0, 'SafeMath: addition overflow'
        totalSold += arg1
        if sub_c3a9fb64 + (0 / ext_call.return_data[0]) < sub_c3a9fb64:
            revert with 0, 'SafeMath: addition overflow'
        sub_c3a9fb64 += 0 / ext_call.return_data[0]
        require ext_code.size(sub_173e2043Address)
        call sub_173e2043Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xfb648b2f: 0 / ext_call.return_data[0], arg1, ext_call.return_data[0], Array(len=4, data='JULd'), block.timestamp, msg.sender
    else:
        require arg1
        if 10^9 * arg1 / arg1 != 10^9:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not tokenPrice:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(sub_173e2043Address)
            staticcall sub_173e2043Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0 / ext_call.return_data[0]
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getLatestPrice(string rg1) with:
                    gas gas_remaining wei
                   args 'JULd'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if boughtTokens[address(msg.sender)] + arg1 < boughtTokens[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            boughtTokens[address(msg.sender)] += arg1
            if totalSold + arg1 < totalSold:
                revert with 0, 'SafeMath: addition overflow'
            totalSold += arg1
            if sub_c3a9fb64 + (0 / ext_call.return_data[0]) < sub_c3a9fb64:
                revert with 0, 'SafeMath: addition overflow'
            sub_c3a9fb64 += 0 / ext_call.return_data[0]
            require ext_code.size(sub_173e2043Address)
            call sub_173e2043Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xfb648b2f: 0 / ext_call.return_data[0], arg1, ext_call.return_data[0], Array(len=4, data='JULd'), block.timestamp, msg.sender
        else:
            require tokenPrice
            if 10^9 * tokenPrice * arg1 / tokenPrice != 10^9 * arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(sub_173e2043Address)
            staticcall sub_173e2043Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 10^9 * tokenPrice * arg1 / ext_call.return_data[0]
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getLatestPrice(string rg1) with:
                    gas gas_remaining wei
                   args 'JULd'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if boughtTokens[address(msg.sender)] + arg1 < boughtTokens[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            boughtTokens[address(msg.sender)] += arg1
            if totalSold + arg1 < totalSold:
                revert with 0, 'SafeMath: addition overflow'
            totalSold += arg1
            if sub_c3a9fb64 + (10^9 * tokenPrice * arg1 / ext_call.return_data[0]) < sub_c3a9fb64:
                revert with 0, 'SafeMath: addition overflow'
            sub_c3a9fb64 += 10^9 * tokenPrice * arg1 / ext_call.return_data[0]
            require ext_code.size(sub_173e2043Address)
            call sub_173e2043Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^9 * tokenPrice * arg1 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xfb648b2f: 10^9 * tokenPrice * arg1 / ext_call.return_data[0], arg1, ext_call.return_data[0], Array(len=4, data='JULd'), block.timestamp, msg.sender
}

function sub_e02f1e29(?) payable {
    require calldata.size - 4 >= 32
    require block.timestamp >= startDate
    require not saleEnded
    if totalSold > totalTokensToSell:
        revert with 0, 'SafeMath: subtraction overflow'
    require totalTokensToSell - totalSold > 0
    require arg1 <= 4 * 10^12
    if totalSold > totalTokensToSell:
        revert with 0, 'SafeMath: subtraction overflow'
    require arg1 <= totalTokensToSell - totalSold
    require ext_code.size(sub_113426a6Address)
    staticcall sub_113426a6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getLatestPrice(string rg1) with:
            gas gas_remaining wei
           args 'VOXb'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not arg1:
        if tokenPrice:
            require tokenPrice
            if 0 / tokenPrice:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(sub_986e2694Address)
        staticcall sub_986e2694Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0 / ext_call.return_data[0]
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getLatestPrice(string rg1) with:
                gas gas_remaining wei
               args 'VOXb'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if boughtTokens[address(msg.sender)] + arg1 < boughtTokens[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        boughtTokens[address(msg.sender)] += arg1
        if totalSold + arg1 < totalSold:
            revert with 0, 'SafeMath: addition overflow'
        totalSold += arg1
        if sub_82a15208 + (0 / ext_call.return_data[0]) < sub_82a15208:
            revert with 0, 'SafeMath: addition overflow'
        sub_82a15208 += 0 / ext_call.return_data[0]
        require ext_code.size(sub_986e2694Address)
        call sub_986e2694Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xfb648b2f: 0 / ext_call.return_data[0], arg1, ext_call.return_data[0], Array(len=4, data='VOXb'), block.timestamp, msg.sender
    else:
        require arg1
        if 10^9 * arg1 / arg1 != 10^9:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not tokenPrice:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(sub_986e2694Address)
            staticcall sub_986e2694Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0 / ext_call.return_data[0]
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getLatestPrice(string rg1) with:
                    gas gas_remaining wei
                   args 'VOXb'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if boughtTokens[address(msg.sender)] + arg1 < boughtTokens[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            boughtTokens[address(msg.sender)] += arg1
            if totalSold + arg1 < totalSold:
                revert with 0, 'SafeMath: addition overflow'
            totalSold += arg1
            if sub_82a15208 + (0 / ext_call.return_data[0]) < sub_82a15208:
                revert with 0, 'SafeMath: addition overflow'
            sub_82a15208 += 0 / ext_call.return_data[0]
            require ext_code.size(sub_986e2694Address)
            call sub_986e2694Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xfb648b2f: 0 / ext_call.return_data[0], arg1, ext_call.return_data[0], Array(len=4, data='VOXb'), block.timestamp, msg.sender
        else:
            require tokenPrice
            if 10^9 * tokenPrice * arg1 / tokenPrice != 10^9 * arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(sub_986e2694Address)
            staticcall sub_986e2694Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 10^9 * tokenPrice * arg1 / ext_call.return_data[0]
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getLatestPrice(string rg1) with:
                    gas gas_remaining wei
                   args 'VOXb'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if boughtTokens[address(msg.sender)] + arg1 < boughtTokens[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            boughtTokens[address(msg.sender)] += arg1
            if totalSold + arg1 < totalSold:
                revert with 0, 'SafeMath: addition overflow'
            totalSold += arg1
            if sub_82a15208 + (10^9 * tokenPrice * arg1 / ext_call.return_data[0]) < sub_82a15208:
                revert with 0, 'SafeMath: addition overflow'
            sub_82a15208 += 10^9 * tokenPrice * arg1 / ext_call.return_data[0]
            require ext_code.size(sub_986e2694Address)
            call sub_986e2694Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^9 * tokenPrice * arg1 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xfb648b2f: 10^9 * tokenPrice * arg1 / ext_call.return_data[0], arg1, ext_call.return_data[0], Array(len=4, data='VOXb'), block.timestamp, msg.sender
}

function sub_fd929626(?) payable {
    require calldata.size - 4 >= 32
    require block.timestamp >= startDate
    require not saleEnded
    if totalSold > totalTokensToSell:
        revert with 0, 'SafeMath: subtraction overflow'
    require totalTokensToSell - totalSold > 0
    require arg1 <= 4 * 10^12
    if totalSold > totalTokensToSell:
        revert with 0, 'SafeMath: subtraction overflow'
    require arg1 <= totalTokensToSell - totalSold
    require ext_code.size(sub_113426a6Address)
    staticcall sub_113426a6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getLatestPrice(string rg1) with:
            gas gas_remaining wei
           args 'JULb'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not arg1:
        if tokenPrice:
            require tokenPrice
            if 0 / tokenPrice:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(sub_f07c66b1Address)
        staticcall sub_f07c66b1Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0 / ext_call.return_data[0]
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getLatestPrice(string rg1) with:
                gas gas_remaining wei
               args 'JULb'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if boughtTokens[address(msg.sender)] + arg1 < boughtTokens[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        boughtTokens[address(msg.sender)] += arg1
        if totalSold + arg1 < totalSold:
            revert with 0, 'SafeMath: addition overflow'
        totalSold += arg1
        if sub_aed03134 + (0 / ext_call.return_data[0]) < sub_aed03134:
            revert with 0, 'SafeMath: addition overflow'
        sub_aed03134 += 0 / ext_call.return_data[0]
        require ext_code.size(sub_f07c66b1Address)
        call sub_f07c66b1Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xfb648b2f: 0 / ext_call.return_data[0], arg1, ext_call.return_data[0], Array(len=4, data='JULb'), block.timestamp, msg.sender
    else:
        require arg1
        if 10^9 * arg1 / arg1 != 10^9:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not tokenPrice:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(sub_f07c66b1Address)
            staticcall sub_f07c66b1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0 / ext_call.return_data[0]
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getLatestPrice(string rg1) with:
                    gas gas_remaining wei
                   args 'JULb'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if boughtTokens[address(msg.sender)] + arg1 < boughtTokens[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            boughtTokens[address(msg.sender)] += arg1
            if totalSold + arg1 < totalSold:
                revert with 0, 'SafeMath: addition overflow'
            totalSold += arg1
            if sub_aed03134 + (0 / ext_call.return_data[0]) < sub_aed03134:
                revert with 0, 'SafeMath: addition overflow'
            sub_aed03134 += 0 / ext_call.return_data[0]
            require ext_code.size(sub_f07c66b1Address)
            call sub_f07c66b1Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xfb648b2f: 0 / ext_call.return_data[0], arg1, ext_call.return_data[0], Array(len=4, data='JULb'), block.timestamp, msg.sender
        else:
            require tokenPrice
            if 10^9 * tokenPrice * arg1 / tokenPrice != 10^9 * arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(sub_f07c66b1Address)
            staticcall sub_f07c66b1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 10^9 * tokenPrice * arg1 / ext_call.return_data[0]
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getLatestPrice(string rg1) with:
                    gas gas_remaining wei
                   args 'JULb'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if boughtTokens[address(msg.sender)] + arg1 < boughtTokens[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            boughtTokens[address(msg.sender)] += arg1
            if totalSold + arg1 < totalSold:
                revert with 0, 'SafeMath: addition overflow'
            totalSold += arg1
            if sub_aed03134 + (10^9 * tokenPrice * arg1 / ext_call.return_data[0]) < sub_aed03134:
                revert with 0, 'SafeMath: addition overflow'
            sub_aed03134 += 10^9 * tokenPrice * arg1 / ext_call.return_data[0]
            require ext_code.size(sub_f07c66b1Address)
            call sub_f07c66b1Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^9 * tokenPrice * arg1 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xfb648b2f: 10^9 * tokenPrice * arg1 / ext_call.return_data[0], arg1, ext_call.return_data[0], Array(len=4, data='JULb'), block.timestamp, msg.sender
}



}
