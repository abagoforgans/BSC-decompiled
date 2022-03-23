contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint8 globalHalt; offset 160
address signerAddress;
address sub_59c25a25Address;
uint256 icoETHReceived;
uint256 sub_fb4fe8df;
uint256 sub_d4a1dbc1;
uint256 sub_74e16a9c;
mapping of uint256 sub_d251cbce;
uint256 priceRound1;
uint256 priceRound2;
uint256 priceRound3;
uint256 priceRound4;
uint256 sub_2ee42d8a;
uint256 sub_6ba10a99;
uint256 expiryDuration;
mapping of uint256 sub_c83f42f7;
mapping of uint256 sub_7498a1d2;
uint256 stor625B;
uint256 stor6ADD;
uint256 stor853B;
uint256 storB3ED;

function priceRound1() {
    return priceRound1
}

function signer() {
    return signerAddress
}

function sub_2ee42d8a(?) {
    return sub_2ee42d8a
}

function priceRound3() {
    return priceRound3
}

function priceRound2() {
    return priceRound2
}

function globalHalt() {
    return bool(globalHalt)
}

function sub_59c25a25(?) {
    return sub_59c25a25Address
}

function sub_6ba10a99(?) {
    return sub_6ba10a99
}

function sub_7498a1d2(?) {
    return sub_7498a1d2[arg1]
}

function sub_74e16a9c(?) {
    return sub_74e16a9c
}

function icoETHReceived() {
    return icoETHReceived
}

function owner() {
    return owner
}

function expiryDuration() {
    return expiryDuration
}

function priceRound4() {
    return priceRound4
}

function sub_c83f42f7(?) {
    return sub_c83f42f7[arg1]
}

function sub_d251cbce(?) {
    return sub_d251cbce[arg1]
}

function sub_d4a1dbc1(?) {
    return sub_d4a1dbc1
}

function newOwner() {
    return newOwner
}

function sub_fb4fe8df(?) {
    return sub_fb4fe8df
}

function sub_07b895b9(?) {
    require msg.sender == owner
    signerAddress = arg1
}

function changeMaxToken(uint256 arg1) {
    require msg.sender == owner
    sub_2ee42d8a = arg1
}

function onlyOwnerTransferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function changeDuration(uint256 arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid Duration'
    sub_6ba10a99 = arg1
}

function changeGlobalHalt() {
    require msg.sender == signerAddress
    if globalHalt:
        globalHalt = 0
    else:
        globalHalt = 1
    return 'globalHalt status changed'
}

function sub_07c0149c(?) {
    require msg.sender == owner
    sub_74e16a9c = arg1
    return Array(len=41, data='Transition Tolerance updated suc', 'cessfully', Mask(72, -256, 'Transition Tolerance updated suc', 'cessfully') << 256), 
}

function sub_19b717e4(?) {
    require msg.sender == owner
    sub_59c25a25Address = arg1
    return Array(len=42, data='Pick contract address updated su', 'ccessfully', Mask(80, -256, 'Pick contract address updated su', 'ccessfully') << 256), 
}

function sub_2bb02e30(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid Stage'
    if arg1 > 4:
        revert with 0, 'Invalid Stage'
    if not arg2:
        revert with 0, 'Invalid amount'
    sub_7498a1d2[arg1] = arg2
}

function sub_b9c22602(?) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 'ETH withdrawn to owner wallet'
}

function sub_5b9e9ebf(?) {
    if sub_d4a1dbc1 < 340680 * 10^18:
        return 1, priceRound1
    if sub_d4a1dbc1 < 340681 * 10^18:
        return 2, priceRound2
    if sub_d4a1dbc1 < 340682 * 10^18:
        return 3, priceRound3
    if sub_d4a1dbc1 >= 340683 * 10^18:
        return 0
    return 4, priceRound4
}

function sub_5ef9e4f1(?) {
    require msg.sender == owner
    priceRound1 = arg1
    priceRound2 = arg2
    priceRound3 = arg3
    priceRound4 = arg4
    return Array(len=47, data='Prices for all four rounds updat', 'ed successfully', Mask(120, -256, 'Prices for all four rounds updat', 'ed successfully') << 256), 
}

function manualWithdrawTokens(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(sub_59c25a25Address)
    call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 'Tokens withdrawn to owner wallet'
}

function sub_92e78f75(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid Stage'
    if not sub_c83f42f7[arg1]:
        revert with 0, 'No Tokens Available'
    sub_c83f42f7[arg1] = 0
    require ext_code.size(sub_59c25a25Address)
    call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_fa78588c(?) {
    require msg.sender == owner
    if sub_d4a1dbc1 < 340680 * 10^18:
        sub_d4a1dbc1 = 5000 * 10^18
        if sub_fb4fe8df > 5000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_c83f42f7[1] = -sub_fb4fe8df + 5000 * 10^18
    else:
        if sub_d4a1dbc1 < 340681 * 10^18:
            sub_d4a1dbc1 = 10000 * 10^18
            if stor6ADD + 5000 * 10^18 < stor6ADD:
                revert with 0, 'SafeMath: addition overflow'
            if stor6ADD + 5000 * 10^18 > sub_d4a1dbc1:
                revert with 0, 'SafeMath: subtraction overflow'
            stor853B = sub_d4a1dbc1 + -stor6ADD - 5000 * 10^18
        else:
            if sub_d4a1dbc1 < 340682 * 10^18:
                sub_d4a1dbc1 = 15000 * 10^18
                if stor625B + 10000 * 10^18 < stor625B:
                    revert with 0, 'SafeMath: addition overflow'
                if stor625B + 10000 * 10^18 > sub_d4a1dbc1:
                    revert with 0, 'SafeMath: subtraction overflow'
                storB3ED = sub_d4a1dbc1 + -stor625B - 10000 * 10^18
}

function _fallback() payable {
    require ext_code.size(sub_59c25a25Address)
    call sub_59c25a25Address.balanceOf(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        if sub_d4a1dbc1 >= 340680 * 10^18:
            if sub_d4a1dbc1 >= 340681 * 10^18:
                if sub_d4a1dbc1 >= 340682 * 10^18:
                    if sub_d4a1dbc1 >= 340683 * 10^18:
                        if msg.value < sub_7498a1d2[0]:
                            revert with 0, 'Require Minimum Ether'
                        else:
                            revert with 0, 'ICO is stopped'
                    else:
                        if msg.value < sub_7498a1d2[4]:
                            revert with 0, 'Require Minimum Ether'
                        else:
                            if msg.value < priceRound4 / 10:
                                revert with 0, 'minimum ETH should be included'
                            else:
                                if globalHalt:
                                    revert with 0, 'Global halt is on'
                                else:
                                    require priceRound4
                                    if (10^18 * msg.value / priceRound4) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (10^18 * msg.value / priceRound4) + ext_call.return_data[0] > sub_2ee42d8a:
                                            revert with 0, 'Maximum Limit Reached'
                                        else:
                                            sub_fb4fe8df += 10^18 * msg.value / priceRound4
                                            sub_d4a1dbc1 += 10^18 * msg.value / priceRound4
                                            icoETHReceived += msg.value
                                            if 340680 * 10^18 < (10^18 * msg.value / priceRound4) + sub_d4a1dbc1:
                                                revert with 0, 'Hitting maximum limt'
                                            else:
                                                if sub_d4a1dbc1 >= 340680 * 10^18:
                                                    if sub_d4a1dbc1 >= 340681 * 10^18:
                                                        if sub_d4a1dbc1 >= 340682 * 10^18:
                                                            if sub_d4a1dbc1 >= 340683 * 10^18:
                                                                if msg.value > sub_74e16a9c:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                'ICO Round transition tolerance should be small amount'
                                                                else:
                                                                    require ext_code.size(sub_59c25a25Address)
                                                                    call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * msg.value / priceRound4
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        sub_d251cbce[4] += 10^18 * msg.value / priceRound4
                                                                        emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound4);
                                                            else:
                                                                require ext_code.size(sub_59c25a25Address)
                                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * msg.value / priceRound4
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    sub_d251cbce[4] += 10^18 * msg.value / priceRound4
                                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound4);
                                                        else:
                                                            if msg.value > sub_74e16a9c:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'ICO Round transition tolerance should be small amount'
                                                            else:
                                                                require ext_code.size(sub_59c25a25Address)
                                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * msg.value / priceRound4
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    sub_d251cbce[4] += 10^18 * msg.value / priceRound4
                                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound4);
                                                    else:
                                                        if msg.value > sub_74e16a9c:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'ICO Round transition tolerance should be small amount'
                                                        else:
                                                            require ext_code.size(sub_59c25a25Address)
                                                            call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * msg.value / priceRound4
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                sub_d251cbce[4] += 10^18 * msg.value / priceRound4
                                                                emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound4);
                                                else:
                                                    if msg.value > sub_74e16a9c:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    'ICO Round transition tolerance should be small amount'
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound4
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[4] += 10^18 * msg.value / priceRound4
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound4);
                else:
                    if msg.value < sub_7498a1d2[3]:
                        revert with 0, 'Require Minimum Ether'
                    else:
                        if msg.value < priceRound3 / 10:
                            revert with 0, 'minimum ETH should be included'
                        else:
                            if globalHalt:
                                revert with 0, 'Global halt is on'
                            else:
                                require priceRound3
                                if (10^18 * msg.value / priceRound3) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (10^18 * msg.value / priceRound3) + ext_call.return_data[0] > sub_2ee42d8a:
                                        revert with 0, 'Maximum Limit Reached'
                                    else:
                                        sub_fb4fe8df += 10^18 * msg.value / priceRound3
                                        sub_d4a1dbc1 += 10^18 * msg.value / priceRound3
                                        icoETHReceived += msg.value
                                        if 340680 * 10^18 < (10^18 * msg.value / priceRound3) + sub_d4a1dbc1:
                                            revert with 0, 'Hitting maximum limt'
                                        else:
                                            if sub_d4a1dbc1 >= 340680 * 10^18:
                                                if sub_d4a1dbc1 >= 340681 * 10^18:
                                                    if sub_d4a1dbc1 >= 340682 * 10^18:
                                                        if sub_d4a1dbc1 >= 340683 * 10^18:
                                                            if msg.value > sub_74e16a9c:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'ICO Round transition tolerance should be small amount'
                                                            else:
                                                                require ext_code.size(sub_59c25a25Address)
                                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * msg.value / priceRound3
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    sub_d251cbce[3] += 10^18 * msg.value / priceRound3
                                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound3);
                                                        else:
                                                            if msg.value > sub_74e16a9c:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'ICO Round transition tolerance should be small amount'
                                                            else:
                                                                require ext_code.size(sub_59c25a25Address)
                                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * msg.value / priceRound3
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    sub_d251cbce[3] += 10^18 * msg.value / priceRound3
                                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound3);
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[3] += 10^18 * msg.value / priceRound3
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound3);
                                                else:
                                                    if msg.value > sub_74e16a9c:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    'ICO Round transition tolerance should be small amount'
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[3] += 10^18 * msg.value / priceRound3
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound3);
                                            else:
                                                if msg.value > sub_74e16a9c:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                'ICO Round transition tolerance should be small amount'
                                                else:
                                                    require ext_code.size(sub_59c25a25Address)
                                                    call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * msg.value / priceRound3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        sub_d251cbce[3] += 10^18 * msg.value / priceRound3
                                                        emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound3);
            else:
                if msg.value < sub_7498a1d2[2]:
                    revert with 0, 'Require Minimum Ether'
                else:
                    if msg.value < priceRound2 / 10:
                        revert with 0, 'minimum ETH should be included'
                    else:
                        if globalHalt:
                            revert with 0, 'Global halt is on'
                        else:
                            require priceRound2
                            if (10^18 * msg.value / priceRound2) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (10^18 * msg.value / priceRound2) + ext_call.return_data[0] > sub_2ee42d8a:
                                    revert with 0, 'Maximum Limit Reached'
                                else:
                                    sub_fb4fe8df += 10^18 * msg.value / priceRound2
                                    sub_d4a1dbc1 += 10^18 * msg.value / priceRound2
                                    icoETHReceived += msg.value
                                    if 340680 * 10^18 < (10^18 * msg.value / priceRound2) + sub_d4a1dbc1:
                                        revert with 0, 'Hitting maximum limt'
                                    else:
                                        if sub_d4a1dbc1 >= 340680 * 10^18:
                                            if sub_d4a1dbc1 >= 340681 * 10^18:
                                                if sub_d4a1dbc1 >= 340682 * 10^18:
                                                    if sub_d4a1dbc1 >= 340683 * 10^18:
                                                        if msg.value > sub_74e16a9c:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'ICO Round transition tolerance should be small amount'
                                                        else:
                                                            require ext_code.size(sub_59c25a25Address)
                                                            call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * msg.value / priceRound2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                sub_d251cbce[2] += 10^18 * msg.value / priceRound2
                                                                emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound2);
                                                    else:
                                                        if msg.value > sub_74e16a9c:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'ICO Round transition tolerance should be small amount'
                                                        else:
                                                            require ext_code.size(sub_59c25a25Address)
                                                            call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * msg.value / priceRound2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                sub_d251cbce[2] += 10^18 * msg.value / priceRound2
                                                                emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound2);
                                                else:
                                                    if msg.value > sub_74e16a9c:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    'ICO Round transition tolerance should be small amount'
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[2] += 10^18 * msg.value / priceRound2
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound2);
                                            else:
                                                require ext_code.size(sub_59c25a25Address)
                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * msg.value / priceRound2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    sub_d251cbce[2] += 10^18 * msg.value / priceRound2
                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound2);
                                        else:
                                            if msg.value > sub_74e16a9c:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            'ICO Round transition tolerance should be small amount'
                                            else:
                                                require ext_code.size(sub_59c25a25Address)
                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * msg.value / priceRound2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    sub_d251cbce[2] += 10^18 * msg.value / priceRound2
                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound2);
        else:
            if msg.value < sub_7498a1d2[1]:
                revert with 0, 'Require Minimum Ether'
            else:
                if msg.value < priceRound1 / 10:
                    revert with 0, 'minimum ETH should be included'
                else:
                    if globalHalt:
                        revert with 0, 'Global halt is on'
                    else:
                        require priceRound1
                        if (10^18 * msg.value / priceRound1) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (10^18 * msg.value / priceRound1) + ext_call.return_data[0] > sub_2ee42d8a:
                                revert with 0, 'Maximum Limit Reached'
                            else:
                                sub_fb4fe8df += 10^18 * msg.value / priceRound1
                                sub_d4a1dbc1 += 10^18 * msg.value / priceRound1
                                icoETHReceived += msg.value
                                if 340680 * 10^18 < (10^18 * msg.value / priceRound1) + sub_d4a1dbc1:
                                    revert with 0, 'Hitting maximum limt'
                                else:
                                    if sub_d4a1dbc1 >= 340680 * 10^18:
                                        if sub_d4a1dbc1 >= 340681 * 10^18:
                                            if sub_d4a1dbc1 >= 340682 * 10^18:
                                                if sub_d4a1dbc1 >= 340683 * 10^18:
                                                    if msg.value > sub_74e16a9c:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    'ICO Round transition tolerance should be small amount'
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[1] += 10^18 * msg.value / priceRound1
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound1);
                                                else:
                                                    if msg.value > sub_74e16a9c:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    'ICO Round transition tolerance should be small amount'
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[1] += 10^18 * msg.value / priceRound1
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound1);
                                            else:
                                                if msg.value > sub_74e16a9c:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                'ICO Round transition tolerance should be small amount'
                                                else:
                                                    require ext_code.size(sub_59c25a25Address)
                                                    call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * msg.value / priceRound1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        sub_d251cbce[1] += 10^18 * msg.value / priceRound1
                                                        emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound1);
                                        else:
                                            if msg.value > sub_74e16a9c:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            'ICO Round transition tolerance should be small amount'
                                            else:
                                                require ext_code.size(sub_59c25a25Address)
                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * msg.value / priceRound1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    sub_d251cbce[1] += 10^18 * msg.value / priceRound1
                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound1);
                                    else:
                                        require ext_code.size(sub_59c25a25Address)
                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 10^18 * msg.value / priceRound1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            sub_d251cbce[1] += 10^18 * msg.value / priceRound1
                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound1);
}

function sub_116eec63(?) payable {
    require ext_code.size(sub_59c25a25Address)
    call sub_59c25a25Address.balanceOf(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        if sub_d4a1dbc1 >= 340680 * 10^18:
            if sub_d4a1dbc1 >= 340681 * 10^18:
                if sub_d4a1dbc1 >= 340682 * 10^18:
                    if sub_d4a1dbc1 >= 340683 * 10^18:
                        if msg.value < sub_7498a1d2[0]:
                            revert with 0, 'Require Minimum Ether'
                        else:
                            revert with 0, 'ICO is stopped'
                    else:
                        if msg.value < sub_7498a1d2[4]:
                            revert with 0, 'Require Minimum Ether'
                        else:
                            if msg.value < priceRound4 / 10:
                                revert with 0, 'minimum ETH should be included'
                            else:
                                if globalHalt:
                                    revert with 0, 'Global halt is on'
                                else:
                                    require priceRound4
                                    if (10^18 * msg.value / priceRound4) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (10^18 * msg.value / priceRound4) + ext_call.return_data[0] > sub_2ee42d8a:
                                            revert with 0, 'Maximum Limit Reached'
                                        else:
                                            sub_fb4fe8df += 10^18 * msg.value / priceRound4
                                            sub_d4a1dbc1 += 10^18 * msg.value / priceRound4
                                            icoETHReceived += msg.value
                                            if 340680 * 10^18 < (10^18 * msg.value / priceRound4) + sub_d4a1dbc1:
                                                revert with 0, 'Hitting maximum limt'
                                            else:
                                                if sub_d4a1dbc1 >= 340680 * 10^18:
                                                    if sub_d4a1dbc1 >= 340681 * 10^18:
                                                        if sub_d4a1dbc1 >= 340682 * 10^18:
                                                            if sub_d4a1dbc1 >= 340683 * 10^18:
                                                                if msg.value > sub_74e16a9c:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                'ICO Round transition tolerance should be small amount'
                                                                else:
                                                                    require ext_code.size(sub_59c25a25Address)
                                                                    call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * msg.value / priceRound4
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        sub_d251cbce[4] += 10^18 * msg.value / priceRound4
                                                                        emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound4);
                                                                        return (10^18 * msg.value / priceRound4)
                                                            else:
                                                                require ext_code.size(sub_59c25a25Address)
                                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * msg.value / priceRound4
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    sub_d251cbce[4] += 10^18 * msg.value / priceRound4
                                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound4);
                                                                    return (10^18 * msg.value / priceRound4)
                                                        else:
                                                            if msg.value > sub_74e16a9c:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'ICO Round transition tolerance should be small amount'
                                                            else:
                                                                require ext_code.size(sub_59c25a25Address)
                                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * msg.value / priceRound4
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    sub_d251cbce[4] += 10^18 * msg.value / priceRound4
                                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound4);
                                                                    return (10^18 * msg.value / priceRound4)
                                                    else:
                                                        if msg.value > sub_74e16a9c:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'ICO Round transition tolerance should be small amount'
                                                        else:
                                                            require ext_code.size(sub_59c25a25Address)
                                                            call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * msg.value / priceRound4
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                sub_d251cbce[4] += 10^18 * msg.value / priceRound4
                                                                emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound4);
                                                                return (10^18 * msg.value / priceRound4)
                                                else:
                                                    if msg.value > sub_74e16a9c:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    'ICO Round transition tolerance should be small amount'
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound4
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[4] += 10^18 * msg.value / priceRound4
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound4);
                                                            return (10^18 * msg.value / priceRound4)
                else:
                    if msg.value < sub_7498a1d2[3]:
                        revert with 0, 'Require Minimum Ether'
                    else:
                        if msg.value < priceRound3 / 10:
                            revert with 0, 'minimum ETH should be included'
                        else:
                            if globalHalt:
                                revert with 0, 'Global halt is on'
                            else:
                                require priceRound3
                                if (10^18 * msg.value / priceRound3) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (10^18 * msg.value / priceRound3) + ext_call.return_data[0] > sub_2ee42d8a:
                                        revert with 0, 'Maximum Limit Reached'
                                    else:
                                        sub_fb4fe8df += 10^18 * msg.value / priceRound3
                                        sub_d4a1dbc1 += 10^18 * msg.value / priceRound3
                                        icoETHReceived += msg.value
                                        if 340680 * 10^18 < (10^18 * msg.value / priceRound3) + sub_d4a1dbc1:
                                            revert with 0, 'Hitting maximum limt'
                                        else:
                                            if sub_d4a1dbc1 >= 340680 * 10^18:
                                                if sub_d4a1dbc1 >= 340681 * 10^18:
                                                    if sub_d4a1dbc1 >= 340682 * 10^18:
                                                        if sub_d4a1dbc1 >= 340683 * 10^18:
                                                            if msg.value > sub_74e16a9c:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'ICO Round transition tolerance should be small amount'
                                                            else:
                                                                require ext_code.size(sub_59c25a25Address)
                                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * msg.value / priceRound3
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    sub_d251cbce[3] += 10^18 * msg.value / priceRound3
                                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound3);
                                                                    return (10^18 * msg.value / priceRound3)
                                                        else:
                                                            if msg.value > sub_74e16a9c:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'ICO Round transition tolerance should be small amount'
                                                            else:
                                                                require ext_code.size(sub_59c25a25Address)
                                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * msg.value / priceRound3
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    sub_d251cbce[3] += 10^18 * msg.value / priceRound3
                                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound3);
                                                                    return (10^18 * msg.value / priceRound3)
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[3] += 10^18 * msg.value / priceRound3
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound3);
                                                            return (10^18 * msg.value / priceRound3)
                                                else:
                                                    if msg.value > sub_74e16a9c:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    'ICO Round transition tolerance should be small amount'
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[3] += 10^18 * msg.value / priceRound3
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound3);
                                                            return (10^18 * msg.value / priceRound3)
                                            else:
                                                if msg.value > sub_74e16a9c:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                'ICO Round transition tolerance should be small amount'
                                                else:
                                                    require ext_code.size(sub_59c25a25Address)
                                                    call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * msg.value / priceRound3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        sub_d251cbce[3] += 10^18 * msg.value / priceRound3
                                                        emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound3);
                                                        return (10^18 * msg.value / priceRound3)
            else:
                if msg.value < sub_7498a1d2[2]:
                    revert with 0, 'Require Minimum Ether'
                else:
                    if msg.value < priceRound2 / 10:
                        revert with 0, 'minimum ETH should be included'
                    else:
                        if globalHalt:
                            revert with 0, 'Global halt is on'
                        else:
                            require priceRound2
                            if (10^18 * msg.value / priceRound2) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (10^18 * msg.value / priceRound2) + ext_call.return_data[0] > sub_2ee42d8a:
                                    revert with 0, 'Maximum Limit Reached'
                                else:
                                    sub_fb4fe8df += 10^18 * msg.value / priceRound2
                                    sub_d4a1dbc1 += 10^18 * msg.value / priceRound2
                                    icoETHReceived += msg.value
                                    if 340680 * 10^18 < (10^18 * msg.value / priceRound2) + sub_d4a1dbc1:
                                        revert with 0, 'Hitting maximum limt'
                                    else:
                                        if sub_d4a1dbc1 >= 340680 * 10^18:
                                            if sub_d4a1dbc1 >= 340681 * 10^18:
                                                if sub_d4a1dbc1 >= 340682 * 10^18:
                                                    if sub_d4a1dbc1 >= 340683 * 10^18:
                                                        if msg.value > sub_74e16a9c:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'ICO Round transition tolerance should be small amount'
                                                        else:
                                                            require ext_code.size(sub_59c25a25Address)
                                                            call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * msg.value / priceRound2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                sub_d251cbce[2] += 10^18 * msg.value / priceRound2
                                                                emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound2);
                                                                return (10^18 * msg.value / priceRound2)
                                                    else:
                                                        if msg.value > sub_74e16a9c:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'ICO Round transition tolerance should be small amount'
                                                        else:
                                                            require ext_code.size(sub_59c25a25Address)
                                                            call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * msg.value / priceRound2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                sub_d251cbce[2] += 10^18 * msg.value / priceRound2
                                                                emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound2);
                                                                return (10^18 * msg.value / priceRound2)
                                                else:
                                                    if msg.value > sub_74e16a9c:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    'ICO Round transition tolerance should be small amount'
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[2] += 10^18 * msg.value / priceRound2
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound2);
                                                            return (10^18 * msg.value / priceRound2)
                                            else:
                                                require ext_code.size(sub_59c25a25Address)
                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * msg.value / priceRound2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    sub_d251cbce[2] += 10^18 * msg.value / priceRound2
                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound2);
                                                    return (10^18 * msg.value / priceRound2)
                                        else:
                                            if msg.value > sub_74e16a9c:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            'ICO Round transition tolerance should be small amount'
                                            else:
                                                require ext_code.size(sub_59c25a25Address)
                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * msg.value / priceRound2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    sub_d251cbce[2] += 10^18 * msg.value / priceRound2
                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound2);
                                                    return (10^18 * msg.value / priceRound2)
        else:
            if msg.value < sub_7498a1d2[1]:
                revert with 0, 'Require Minimum Ether'
            else:
                if msg.value < priceRound1 / 10:
                    revert with 0, 'minimum ETH should be included'
                else:
                    if globalHalt:
                        revert with 0, 'Global halt is on'
                    else:
                        require priceRound1
                        if (10^18 * msg.value / priceRound1) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (10^18 * msg.value / priceRound1) + ext_call.return_data[0] > sub_2ee42d8a:
                                revert with 0, 'Maximum Limit Reached'
                            else:
                                sub_fb4fe8df += 10^18 * msg.value / priceRound1
                                sub_d4a1dbc1 += 10^18 * msg.value / priceRound1
                                icoETHReceived += msg.value
                                if 340680 * 10^18 < (10^18 * msg.value / priceRound1) + sub_d4a1dbc1:
                                    revert with 0, 'Hitting maximum limt'
                                else:
                                    if sub_d4a1dbc1 >= 340680 * 10^18:
                                        if sub_d4a1dbc1 >= 340681 * 10^18:
                                            if sub_d4a1dbc1 >= 340682 * 10^18:
                                                if sub_d4a1dbc1 >= 340683 * 10^18:
                                                    if msg.value > sub_74e16a9c:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    'ICO Round transition tolerance should be small amount'
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[1] += 10^18 * msg.value / priceRound1
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound1);
                                                            return (10^18 * msg.value / priceRound1)
                                                else:
                                                    if msg.value > sub_74e16a9c:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    'ICO Round transition tolerance should be small amount'
                                                    else:
                                                        require ext_code.size(sub_59c25a25Address)
                                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * msg.value / priceRound1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            sub_d251cbce[1] += 10^18 * msg.value / priceRound1
                                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound1);
                                                            return (10^18 * msg.value / priceRound1)
                                            else:
                                                if msg.value > sub_74e16a9c:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                'ICO Round transition tolerance should be small amount'
                                                else:
                                                    require ext_code.size(sub_59c25a25Address)
                                                    call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * msg.value / priceRound1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        sub_d251cbce[1] += 10^18 * msg.value / priceRound1
                                                        emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound1);
                                                        return (10^18 * msg.value / priceRound1)
                                        else:
                                            if msg.value > sub_74e16a9c:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            'ICO Round transition tolerance should be small amount'
                                            else:
                                                require ext_code.size(sub_59c25a25Address)
                                                call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * msg.value / priceRound1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    sub_d251cbce[1] += 10^18 * msg.value / priceRound1
                                                    emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound1);
                                                    return (10^18 * msg.value / priceRound1)
                                    else:
                                        require ext_code.size(sub_59c25a25Address)
                                        call sub_59c25a25Address.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 10^18 * msg.value / priceRound1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            sub_d251cbce[1] += 10^18 * msg.value / priceRound1
                                            emit buyTokenEv(msg.sender, msg.value, 10^18 * msg.value / priceRound1);
                                            return (10^18 * msg.value / priceRound1)
}



}
