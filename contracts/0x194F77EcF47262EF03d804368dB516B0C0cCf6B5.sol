contract main {




// =====================  Runtime code  =====================


address accessWhitelistAddress;
mapping of uint256 creditsOfOwner;
uint256 pricePerTx;
address splitterAddress;

function creditsOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    return creditsOfOwner[address(arg1)]
}

function splitter() {
    return splitterAddress
}

function pricePerTx() {
    return pricePerTx
}

function accessWhitelist() {
    return accessWhitelistAddress
}

function credits(address arg1) {
    require calldata.size - 4 >= 32
    return creditsOfOwner[arg1]
}

function _fallback() payable {
  stop
}

function sub_1e8d0026(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0xbb5f747b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelist admin'
    splitterAddress = arg1
}

function updateAccessWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0xbb5f747b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelist admin'
    accessWhitelistAddress = arg1
}

function setPricePerTx(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0x3af32abf with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelisted'
    pricePerTx = arg1
    emit PricePerTxChanged(pricePerTx, arg1, msg.sender);
    return 1
}

function reduceCredit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0x3af32abf with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelisted'
    if arg2 > creditsOfOwner[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    creditsOfOwner[address(arg1)] -= arg2
    emit CreditsRemoved(arg2, msg.sender, arg1);
    return 1
}

function addCredit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0x3af32abf with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelisted'
    if arg2 + creditsOfOwner[address(arg1)] < creditsOfOwner[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    creditsOfOwner[address(arg1)] += arg2
    emit CreditsAdded(arg2, msg.sender, arg1);
    return 1
}

function moveEther(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0xbb5f747b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelist admin'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EtherMoved(eth.balance(this.address), msg.sender, arg1);
    return 1
}

function moveTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0xbb5f747b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelist admin'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokensMoved(ext_call.return_data[0], msg.sender, arg2);
    return 1
}

function transfer(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x724164647265737320617272617920616e642076616c756573206172726179206d7573742062652073616d65206c656e6774,
                    mem[214 len 14]
    if not creditsOfOwner[msg.sender]:
        if msg.value < pricePerTx:
            revert with 0, 'Must have credit or min value'
    idx = 0
    s = 0
    while idx < arg2.length:
        if not address(cd[((32 * idx) + arg2 + 36)]):
            revert with 0, 'Address invalid'
        require idx < arg3.length
        if cd[((32 * idx) + arg3 + 36)] <= 0:
            revert with 0, 'Value invalid'
        require idx < arg2.length
        require idx < arg3.length
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + arg2 + 36)])
        mem[164] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg3.length
        if cd[((32 * idx) + arg3 + 36)] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = cd[((32 * idx) + arg3 + 36)] + s
        continue 
    if msg.value:
        call splitterAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0xfe4661696c656420746f207472616e7366657220746f2074686520636f6d6d697373696f6e2073706c69747465,
                            mem[209 len 19]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0xfe4661696c656420746f207472616e7366657220746f2074686520636f6d6d697373696f6e2073706c69747465,
                            mem[ceil32(return_data.size) + 210 len 19]
        ('bool', 'ext_call.success')
    else:
        if creditsOfOwner[msg.sender]:
            if 1 > creditsOfOwner[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            creditsOfOwner[msg.sender]--
        else:
            call splitterAddress with:
               value msg.value wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0xfe4661696c656420746f207472616e7366657220746f2074686520636f6d6d697373696f6e2073706c69747465,
                                mem[209 len 19]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0xfe4661696c656420746f207472616e7366657220746f2074686520636f6d6d697373696f6e2073706c69747465,
                                mem[ceil32(return_data.size) + 210 len 19]
            ('bool', 'ext_call.success')
    emit Transfer(arg2.length, cd[((32 * arg2.length) + arg3 + 36)] * arg2.length, arg1, msg.sender);
    return 1
}



}
