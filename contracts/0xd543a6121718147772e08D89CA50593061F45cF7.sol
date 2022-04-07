contract main {




// =====================  Runtime code  =====================


array of address stor0;
uint256 sub_4e751b84;
uint256 sub_e1861013;
uint256 sub_5bcdd5f0;
uint256 sub_9ccc9dcb;
uint256 sub_d434d39f;
uint256 start;
uint256 end;
address stor8;
mapping of address sub_f8546ba7;
mapping of uint256 sub_217bc696;
mapping of uint8 sub_47825acd;
mapping of uint256 sub_0f925096;
uint8 stage;
mapping of uint8 stor14;
uint8 stor15;
mapping of struct sub_e5c85a6a;
array of struct supportedTokens;

function sub_0f925096(?) {
    require calldata.size - 4 >= 32
    return sub_0f925096[arg1]
}

function sub_217bc696(?) {
    require calldata.size - 4 >= 32
    return sub_217bc696[arg1]
}

function sub_47825acd(?) {
    require calldata.size - 4 >= 32
    return sub_47825acd[arg1]
}

function sub_4e751b84(?) {
    return sub_4e751b84
}

function sub_5bcdd5f0(?) {
    return sub_5bcdd5f0
}

function getOwner() {
    return address(stor0.length)
}

function owner() {
    return address(stor0.length)
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function sub_9ccc9dcb(?) {
    return sub_9ccc9dcb
}

function start() {
    return start
}

function stage() {
    require stage <= 1
    return stage
}

function supportedTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < supportedTokens.length
    return supportedTokens[arg1].field_0
}

function sub_d434d39f(?) {
    return sub_d434d39f
}

function isPublic() {
    return bool(stor15)
}

function sub_e1861013(?) {
    return sub_e1861013
}

function sub_e5c85a6a(?) {
    require calldata.size - 4 >= 32
    return sub_e5c85a6a[arg1].field_0, sub_e5c85a6a[arg1].field_256, bool(sub_e5c85a6a[arg1].field_512)
}

function end() {
    return end
}

function sub_f8546ba7(?) {
    require calldata.size - 4 >= 32
    return sub_f8546ba7[arg1]
}

function _fallback() payable {
    revert
}

function setPublic(bool arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.length) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor15 = uint8(arg1)
}

function addWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.length) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor14[address(arg1)] = 1
}

function setStage(uint8 arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.length) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 <= 1
    stage = arg1
}

function renounceOwnership() {
    if address(stor0.length) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(address(stor0.length), 0);
    address(stor0.length) = 0
}

function sub_b58fbfa0(?) {
    require calldata.size - 4 >= 32
    return address(arg1), 
           sub_e5c85a6a[address(arg1)].field_0,
           sub_e5c85a6a[address(arg1)].field_256,
           bool(sub_e5c85a6a[address(arg1)].field_512)
}

function withdrawnBNB() {
    if address(stor0.length) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call address(stor0.length) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_da51ad89(?) {
    require calldata.size - 4 >= 96
    if address(stor0.length) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not sub_e5c85a6a[address(arg1)].field_512:
        supportedTokens.length++
        supportedTokens[supportedTokens.length].field_0 = arg1
    sub_e5c85a6a[address(arg1)].field_0 = arg2
    sub_e5c85a6a[address(arg1)].field_256 = arg3
    sub_e5c85a6a[address(arg1)].field_512 = 1
    emit 0x93655868: address(arg1), arg3, arg2, block.timestamp
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.length) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(stor0.length), arg1);
    address(stor0.length) = arg1
}

function sub_83d899fc(?) {
    if not supportedTokens.length:
        mem[(32 * supportedTokens.length) + 128] = 32
        mem[(32 * supportedTokens.length) + 160] = supportedTokens.length
        mem[(32 * supportedTokens.length) + 192 len floor32(supportedTokens.length)] = mem[128 len floor32(supportedTokens.length)]
        return memory
          from (32 * supportedTokens.length) + 128
           len (96 * supportedTokens.length) + 64
    mem[128] = address(supportedTokens.field_0)
    idx = 128
    s = 0
    while (32 * supportedTokens.length) + 96 > idx:
        mem[idx + 32] = supportedTokens[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * supportedTokens.length) + 192 len floor32(supportedTokens.length)] = mem[128 len floor32(supportedTokens.length)]
    return Array(len=supportedTokens.length, data=mem[128 len floor32(supportedTokens.length)], mem[(32 * supportedTokens.length) + floor32(supportedTokens.length) + 192 len (32 * supportedTokens.length) - floor32(supportedTokens.length)]), 
}

function withdrawnToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(stor0.length) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Token insufficient'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(stor0.length), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token approve failed!'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.length), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer fail'
    emit 0xae9c2628: address(arg1), arg2, address(stor0.length)
}

function sub_56bd5e10(?) {
    require calldata.size - 4 >= 32
    if address(stor0.length) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not sub_e5c85a6a[address(arg1)].field_512:
        revert with 0, 'Status invalid'
    sub_e5c85a6a[address(arg1)].field_0 = 0
    sub_e5c85a6a[address(arg1)].field_256 = 0
    sub_e5c85a6a[address(arg1)].field_512 = 0
    idx = 0
    while idx < supportedTokens.length:
        mem[0] = 17
        if supportedTokens[idx].field_0 != arg1:
            require idx < supportedTokens.length
            stor0.length++
            mem[0] = 0
            address(stor0[stor0.length]) = supportedTokens[idx].field_0
        idx = idx + 1
        continue 
    supportedTokens.length = stor0.length
    if not stor0.length:
        idx = 0
        while supportedTokens.length > idx:
            supportedTokens[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor0.length > idx:
            supportedTokens[s].field_0 = uint256(stor0[idx])
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor0.length
        while supportedTokens.length > idx:
            supportedTokens[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x83295593: address(arg1), block.timestamp
}

function sub_ae579336(?) payable {
    require calldata.size - 4 >= 96
    require stage <= 1
    if stage:
        revert with 0, 'Stage close'
    if block.timestamp < start:
        revert with 0, 'IDO time is not started'
    if block.timestamp > end:
        revert with 0, 'IDO time was end'
    if not stor15:
        if not stor14[msg.sender]:
            revert with 0, 'Public sale still not open'
    if not sub_e5c85a6a[address(arg1)].field_512:
        revert with 0, 'Exchange pair is not exist!'
    if arg1:
        if not sub_e5c85a6a[address(arg1)].field_0:
            if not sub_e5c85a6a[address(arg1)].field_256:
                revert with 0, 'SafeMath: division by zero'
            if 0 / sub_e5c85a6a[address(arg1)].field_256 < 10^18 * sub_4e751b84:
                revert with 0, 'Amount DFY request is too low'
            if (0 / sub_e5c85a6a[address(arg1)].field_256) + sub_0f925096[msg.sender] > 10^18 * sub_e1861013:
                revert with 0, 'Request DFY amount is exceeded!'
            sub_0f925096[msg.sender] += 0 / sub_e5c85a6a[address(arg1)].field_256
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0 / sub_e5c85a6a[address(arg1)].field_256:
                revert with 0, 'DFY insufficient'
            if not arg1:
                call address(stor0.length) with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    revert with 0, 'Token insufficient'
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(stor0.length), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Token transfer fail'
            require ext_code.size(stor8)
            call stor8.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0 / sub_e5c85a6a[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DFY approve failed!'
            require ext_code.size(stor8)
            call stor8.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / sub_e5c85a6a[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DFY transfer fail'
            if not arg3:
                emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
            else:
                if msg.sender == arg3:
                    emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                else:
                    if sub_f8546ba7[msg.sender]:
                        emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                    else:
                        if sub_47825acd[address(arg3)] >= sub_9ccc9dcb:
                            emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                        else:
                            if not 0 / sub_e5c85a6a[address(arg1)].field_256:
                                if sub_217bc696[address(arg3)] <= 10^18 * sub_d434d39f:
                                    emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                else:
                                    if not (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]:
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] = 10^18 * sub_d434d39f
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)], block.timestamp
                            else:
                                if sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 0 / sub_e5c85a6a[address(arg1)].field_256 != sub_5bcdd5f0:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if (sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100) + sub_217bc696[address(arg3)] > 10^18 * sub_d434d39f:
                                    if not (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]:
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] = 10^18 * sub_d434d39f
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)], block.timestamp
                                else:
                                    if not sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100:
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] += sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, 0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100, block.timestamp
        else:
            if arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_0 != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_e5c85a6a[address(arg1)].field_256:
                revert with 0, 'SafeMath: division by zero'
            if arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 < 10^18 * sub_4e751b84:
                revert with 0, 'Amount DFY request is too low'
            if (arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256) + sub_0f925096[msg.sender] > 10^18 * sub_e1861013:
                revert with 0, 'Request DFY amount is exceeded!'
            sub_0f925096[msg.sender] += arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256:
                revert with 0, 'DFY insufficient'
            if not arg1:
                call address(stor0.length) with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    revert with 0, 'Token insufficient'
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(stor0.length), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Token transfer fail'
            require ext_code.size(stor8)
            call stor8.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DFY approve failed!'
            require ext_code.size(stor8)
            call stor8.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DFY transfer fail'
            if not arg3:
                emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
            else:
                if msg.sender == arg3:
                    emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                else:
                    if sub_f8546ba7[msg.sender]:
                        emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                    else:
                        if sub_47825acd[address(arg3)] >= sub_9ccc9dcb:
                            emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                        else:
                            if not arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256:
                                if sub_217bc696[address(arg3)] <= 10^18 * sub_d434d39f:
                                    emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                else:
                                    if not (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]:
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] = 10^18 * sub_d434d39f
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)], block.timestamp
                            else:
                                if sub_5bcdd5f0 * arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 != sub_5bcdd5f0:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if (sub_5bcdd5f0 * arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100) + sub_217bc696[address(arg3)] > 10^18 * sub_d434d39f:
                                    if not (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]:
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] = 10^18 * sub_d434d39f
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)], block.timestamp
                                else:
                                    if not sub_5bcdd5f0 * arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100:
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] += sub_5bcdd5f0 * arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), sub_5bcdd5f0 * arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), sub_5bcdd5f0 * arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, arg2, arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), sub_5bcdd5f0 * arg2 * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100, block.timestamp
    else:
        if not sub_e5c85a6a[address(arg1)].field_0:
            if not sub_e5c85a6a[address(arg1)].field_256:
                revert with 0, 'SafeMath: division by zero'
            if 0 / sub_e5c85a6a[address(arg1)].field_256 < 10^18 * sub_4e751b84:
                revert with 0, 'Amount DFY request is too low'
            if (0 / sub_e5c85a6a[address(arg1)].field_256) + sub_0f925096[msg.sender] > 10^18 * sub_e1861013:
                revert with 0, 'Request DFY amount is exceeded!'
            sub_0f925096[msg.sender] += 0 / sub_e5c85a6a[address(arg1)].field_256
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0 / sub_e5c85a6a[address(arg1)].field_256:
                revert with 0, 'DFY insufficient'
            if not arg1:
                call address(stor0.length) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < msg.value:
                    revert with 0, 'Token insufficient'
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(stor0.length), msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Token transfer fail'
            require ext_code.size(stor8)
            call stor8.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0 / sub_e5c85a6a[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DFY approve failed!'
            require ext_code.size(stor8)
            call stor8.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / sub_e5c85a6a[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DFY transfer fail'
            if not arg3:
                emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
            else:
                if msg.sender == arg3:
                    emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                else:
                    if sub_f8546ba7[msg.sender]:
                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                    else:
                        if sub_47825acd[address(arg3)] >= sub_9ccc9dcb:
                            emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                        else:
                            if not 0 / sub_e5c85a6a[address(arg1)].field_256:
                                if sub_217bc696[address(arg3)] <= 10^18 * sub_d434d39f:
                                    emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                else:
                                    if not (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]:
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] = 10^18 * sub_d434d39f
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)], block.timestamp
                            else:
                                if sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 0 / sub_e5c85a6a[address(arg1)].field_256 != sub_5bcdd5f0:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if (sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100) + sub_217bc696[address(arg3)] > 10^18 * sub_d434d39f:
                                    if not (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]:
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] = 10^18 * sub_d434d39f
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)], block.timestamp
                                else:
                                    if not sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100:
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] += sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, 0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), sub_5bcdd5f0 * 0 / sub_e5c85a6a[address(arg1)].field_256 / 100, block.timestamp
        else:
            if msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_0 != msg.value:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_e5c85a6a[address(arg1)].field_256:
                revert with 0, 'SafeMath: division by zero'
            if msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 < 10^18 * sub_4e751b84:
                revert with 0, 'Amount DFY request is too low'
            if (msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256) + sub_0f925096[msg.sender] > 10^18 * sub_e1861013:
                revert with 0, 'Request DFY amount is exceeded!'
            sub_0f925096[msg.sender] += msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256:
                revert with 0, 'DFY insufficient'
            if not arg1:
                call address(stor0.length) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < msg.value:
                    revert with 0, 'Token insufficient'
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(stor0.length), msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Token transfer fail'
            require ext_code.size(stor8)
            call stor8.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DFY approve failed!'
            require ext_code.size(stor8)
            call stor8.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DFY transfer fail'
            if not arg3:
                emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
            else:
                if msg.sender == arg3:
                    emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                else:
                    if sub_f8546ba7[msg.sender]:
                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                    else:
                        if sub_47825acd[address(arg3)] >= sub_9ccc9dcb:
                            emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                        else:
                            if not msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256:
                                if sub_217bc696[address(arg3)] <= 10^18 * sub_d434d39f:
                                    emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                else:
                                    if not (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]:
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] = 10^18 * sub_d434d39f
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)], block.timestamp
                            else:
                                if sub_5bcdd5f0 * msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 != sub_5bcdd5f0:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if (sub_5bcdd5f0 * msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100) + sub_217bc696[address(arg3)] > 10^18 * sub_d434d39f:
                                    if not (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]:
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] = 10^18 * sub_d434d39f
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), (10^18 * sub_d434d39f) - sub_217bc696[address(arg3)], block.timestamp
                                else:
                                    if not sub_5bcdd5f0 * msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100:
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, 0, 0, block.timestamp
                                    else:
                                        sub_217bc696[address(arg3)] += sub_5bcdd5f0 * msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        sub_47825acd[address(arg3)] = uint8(sub_47825acd[address(arg3)] + 1)
                                        sub_f8546ba7[msg.sender] = arg3
                                        require ext_code.size(stor8)
                                        call stor8.approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg3), sub_5bcdd5f0 * msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY approve ref failed!'
                                        require ext_code.size(stor8)
                                        call stor8.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg3), sub_5bcdd5f0 * msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'DFY transfer referral fail'
                                        emit 0x1549ee63: address(arg1), msg.sender, msg.value, msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256, address(arg3), sub_5bcdd5f0 * msg.value * sub_e5c85a6a[address(arg1)].field_0 / sub_e5c85a6a[address(arg1)].field_256 / 100, block.timestamp
}



}
