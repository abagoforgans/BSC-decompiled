contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 sub_4c8057b3;
mapping of uint256 tokensClaimed;
mapping of uint256 sub_ea2d24d3;
address presaleTokenAddress;
uint256 tokenDecimals;
uint8 stor10;
uint8 stor10; offset 8
uint8 stor10; offset 16
uint256 stor10; offset 16
uint256 stor10; offset 8
uint256 sub_8662488c;
uint256 totalBNBReceived;
uint256 totalTokensSold;
uint256 sub_6f265b24;
uint256 presaleHardcap;
uint256 maxContribution;
uint256 minContribution;
uint256 sub_c99bed63;
uint256 sub_9cabad03;

function presaleToken() {
    return presaleTokenAddress
}

function sub_2866ed21(?) {
    return bool(uint8(stor10.field_8))
}

function totalBNBReceived() {
    return totalBNBReceived
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function tokenDecimals() {
    return tokenDecimals
}

function sub_4c8057b3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4c8057b3[arg1]
}

function isSaleActive() {
    return bool(uint8(stor10.field_0))
}

function tokensClaimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokensClaimed[arg1]
}

function totalTokensSold() {
    return totalTokensSold
}

function sub_6f265b24(?) {
    return sub_6f265b24
}

function sub_8662488c(?) {
    return sub_8662488c
}

function maxContribution() {
    return maxContribution
}

function sub_9cabad03(?) {
    return sub_9cabad03
}

function minContribution() {
    return minContribution
}

function sub_c99bed63(?) {
    return sub_c99bed63
}

function presaleHardcap() {
    return presaleHardcap
}

function sub_d71e2f86(?) {
    return bool(uint8(stor10.field_16))
}

function sub_e8d6cd83(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function sub_ea2d24d3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ea2d24d3[arg1]
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor1)
}

function sub_4bfa095c(?) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_9cabad03 = arg1
}

function setTokensPerBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_6f265b24 = arg1
}

function setTokenDecimals(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    tokenDecimals = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, '!OWNER'
    stor2[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, '!OWNER'
    stor2[address(arg1)] = 0
}

function setClaimEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(248, 0, stor10.field_8) = Mask(248, 0, arg1)
}

function sub_2bf0c3b9(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(240, 0, stor10.field_16) = Mask(240, 0, bool(arg1))
}

function sub_7332a7e5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    presaleTokenAddress = address(arg1)
    tokenDecimals = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, '!OWNER'
    stor1 = arg1
    stor2[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSaleActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1:
        sub_8662488c = block.timestamp
    uint8(stor10.field_0) = uint8(arg1)
}

function sub_62790622(?) {
    require ext_code.size(presaleTokenAddress)
    staticcall presaleTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawFunds() {
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function addWhitelisted(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdrawUnsoldTokens() {
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(presaleTokenAddress)
    staticcall presaleTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(presaleTokenAddress)
    call presaleTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_78b4797a(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    idx = 0
    while idx < cd[36]:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function claimTokens() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not stor3[msg.sender]:
        revert with 0, 'This address is not whitelisted'
    if uint8(stor10.field_0):
        revert with 0, 'Presale is still active'
    if bool(uint8(stor10.field_8)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Claiming tokens is not yet enabled'
    if sub_ea2d24d3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have already claimed your tokens'
    if tokensClaimed[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have already claimed your tokens'
    if sub_4c8057b3[msg.sender] and sub_6f265b24 > -1 / sub_4c8057b3[msg.sender]:
        revert with 'NH{q', 17
    if not tokenDecimals:
        revert with 'NH{q', 18
    if sub_4c8057b3[msg.sender] * sub_6f265b24 / tokenDecimals <= 0:
        revert with 0, 'You haven't purchased any tokens'
    if sub_6f265b24 and maxContribution > -1 / sub_6f265b24:
        revert with 'NH{q', 17
    if sub_4c8057b3[msg.sender] * sub_6f265b24 / tokenDecimals > sub_6f265b24 * maxContribution:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can't claim more than maxContribution worth of tokens'
    require ext_code.size(presaleTokenAddress)
    staticcall presaleTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_4c8057b3[msg.sender] * sub_6f265b24 / tokenDecimals:
        revert with 0, 'There are not enough tokens to transfer'
    require ext_code.size(presaleTokenAddress)
    call presaleTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_4c8057b3[msg.sender] * sub_6f265b24 / tokenDecimals
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if tokensClaimed[msg.sender] > !(sub_4c8057b3[msg.sender] * sub_6f265b24 / tokenDecimals):
        revert with 'NH{q', 17
    tokensClaimed[msg.sender] += sub_4c8057b3[msg.sender] * sub_6f265b24 / tokenDecimals
    sub_ea2d24d3[msg.sender] = block.number
    if totalTokensSold > !(sub_4c8057b3[msg.sender] * sub_6f265b24 / tokenDecimals):
        revert with 'NH{q', 17
    totalTokensSold += sub_4c8057b3[msg.sender] * sub_6f265b24 / tokenDecimals
    emit TokensClaimed(msg.sender, sub_4c8057b3[msg.sender] * sub_6f265b24 / tokenDecimals);
    stor0 = 1
}

function buy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not stor3[msg.sender]:
        revert with 0, 'This address is not whitelisted'
    if block.timestamp > 456574 * 3600:
        uint8(stor10.field_0) = 1
        sub_8662488c = block.timestamp
    if not uint8(stor10.field_0):
        revert with 0, 'Presale is not active yet'
    if totalBNBReceived > presaleHardcap:
        if eth.balance(this.address) > presaleHardcap:
            revert with 0, 'Presale hardcap has been reached'
    if sub_4c8057b3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address has already bought tokens'
    if not uint8(stor10.field_16):
        if stor4[address(arg1)]:
            require stor4[address(arg1)]
            require not uint8(stor10.field_16)
            require stor4[address(arg1)]
            if msg.value < minContribution:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
            if msg.value > maxContribution:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
            sub_4c8057b3[address(arg1)] = msg.value
            if totalBNBReceived > !msg.value:
                revert with 'NH{q', 17
            totalBNBReceived += msg.value
            if totalBNBReceived > presaleHardcap:
                if totalBNBReceived < presaleHardcap:
                    revert with 'NH{q', 17
                call msg.sender with:
                   value totalBNBReceived - presaleHardcap wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Unable to send leftover value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 'Unable to send leftover value, recipient may have reverted'
                ('bool', 'ext_call.success')
                if totalBNBReceived < presaleHardcap:
                    revert with 'NH{q', 17
                if msg.value < totalBNBReceived - presaleHardcap:
                    revert with 'NH{q', 17
                sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                totalBNBReceived = presaleHardcap
        else:
            if sub_c99bed63 >= sub_9cabad03:
                require stor4[address(arg1)]
                require not uint8(stor10.field_16)
                require stor4[address(arg1)]
                if msg.value < minContribution:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                if msg.value > maxContribution:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                sub_4c8057b3[address(arg1)] = msg.value
                if totalBNBReceived > !msg.value:
                    revert with 'NH{q', 17
                totalBNBReceived += msg.value
                if totalBNBReceived > presaleHardcap:
                    if totalBNBReceived < presaleHardcap:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value totalBNBReceived - presaleHardcap wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Unable to send leftover value, recipient may have reverted'
                    else:
                        if not ext_call.success:
                            revert with 0, 'Unable to send leftover value, recipient may have reverted'
                    ('bool', 'ext_call.success')
                    if totalBNBReceived < presaleHardcap:
                        revert with 'NH{q', 17
                    if msg.value < totalBNBReceived - presaleHardcap:
                        revert with 'NH{q', 17
                    sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                    totalBNBReceived = presaleHardcap
            else:
                if not uint8(stor10.field_16):
                    require not stor4[address(arg1)]
                    if msg.value < minContribution:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                    if msg.value > maxContribution:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                    sub_4c8057b3[address(arg1)] = msg.value
                    if totalBNBReceived > !msg.value:
                        revert with 'NH{q', 17
                    totalBNBReceived += msg.value
                    if sub_c99bed63 > !msg.value:
                        revert with 'NH{q', 17
                    sub_c99bed63 += msg.value
                else:
                    require stor4[address(arg1)]
                    require not uint8(stor10.field_16)
                    require stor4[address(arg1)]
                    if msg.value < minContribution:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                    if msg.value > maxContribution:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                    sub_4c8057b3[address(arg1)] = msg.value
                    if totalBNBReceived > !msg.value:
                        revert with 'NH{q', 17
                    totalBNBReceived += msg.value
                    if totalBNBReceived > presaleHardcap:
                        if totalBNBReceived < presaleHardcap:
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value totalBNBReceived - presaleHardcap wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Unable to send leftover value, recipient may have reverted'
                        else:
                            if not ext_call.success:
                                revert with 0, 'Unable to send leftover value, recipient may have reverted'
                        ('bool', 'ext_call.success')
                        if totalBNBReceived < presaleHardcap:
                            revert with 'NH{q', 17
                        if msg.value < totalBNBReceived - presaleHardcap:
                            revert with 'NH{q', 17
                        sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                        totalBNBReceived = presaleHardcap
    else:
        if msg.value < minContribution:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
        if msg.value > maxContribution:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
        sub_4c8057b3[address(arg1)] = msg.value
        if totalBNBReceived > !msg.value:
            revert with 'NH{q', 17
        totalBNBReceived += msg.value
        if totalBNBReceived <= presaleHardcap:
            emit TokensBought(address(arg1), sub_4c8057b3[address(arg1)]);
            if stor4[address(arg1)]:
                require stor4[address(arg1)]
                require not uint8(stor10.field_16)
                require stor4[address(arg1)]
                if msg.value < minContribution:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                if msg.value > maxContribution:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                sub_4c8057b3[address(arg1)] = msg.value
                if totalBNBReceived > !msg.value:
                    revert with 'NH{q', 17
                totalBNBReceived += msg.value
                if totalBNBReceived > presaleHardcap:
                    if totalBNBReceived < presaleHardcap:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value totalBNBReceived - presaleHardcap wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Unable to send leftover value, recipient may have reverted'
                    else:
                        if not ext_call.success:
                            revert with 0, 'Unable to send leftover value, recipient may have reverted'
                    ('bool', 'ext_call.success')
                    if totalBNBReceived < presaleHardcap:
                        revert with 'NH{q', 17
                    if msg.value < totalBNBReceived - presaleHardcap:
                        revert with 'NH{q', 17
                    sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                    totalBNBReceived = presaleHardcap
            else:
                if sub_c99bed63 >= sub_9cabad03:
                    require stor4[address(arg1)]
                    require not uint8(stor10.field_16)
                    require stor4[address(arg1)]
                    if msg.value < minContribution:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                    if msg.value > maxContribution:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                    sub_4c8057b3[address(arg1)] = msg.value
                    if totalBNBReceived > !msg.value:
                        revert with 'NH{q', 17
                    totalBNBReceived += msg.value
                    if totalBNBReceived > presaleHardcap:
                        if totalBNBReceived < presaleHardcap:
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value totalBNBReceived - presaleHardcap wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Unable to send leftover value, recipient may have reverted'
                        else:
                            if not ext_call.success:
                                revert with 0, 'Unable to send leftover value, recipient may have reverted'
                        ('bool', 'ext_call.success')
                        if totalBNBReceived < presaleHardcap:
                            revert with 'NH{q', 17
                        if msg.value < totalBNBReceived - presaleHardcap:
                            revert with 'NH{q', 17
                        sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                        totalBNBReceived = presaleHardcap
                else:
                    if not uint8(stor10.field_16):
                        require not stor4[address(arg1)]
                        if msg.value < minContribution:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                        if msg.value > maxContribution:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                        sub_4c8057b3[address(arg1)] = msg.value
                        if totalBNBReceived > !msg.value:
                            revert with 'NH{q', 17
                        totalBNBReceived += msg.value
                        if sub_c99bed63 > !msg.value:
                            revert with 'NH{q', 17
                        sub_c99bed63 += msg.value
                    else:
                        require stor4[address(arg1)]
                        require not uint8(stor10.field_16)
                        require stor4[address(arg1)]
                        if msg.value < minContribution:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                        if msg.value > maxContribution:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                        sub_4c8057b3[address(arg1)] = msg.value
                        if totalBNBReceived > !msg.value:
                            revert with 'NH{q', 17
                        totalBNBReceived += msg.value
                        if totalBNBReceived > presaleHardcap:
                            if totalBNBReceived < presaleHardcap:
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value totalBNBReceived - presaleHardcap wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'Unable to send leftover value, recipient may have reverted'
                            else:
                                if not ext_call.success:
                                    revert with 0, 'Unable to send leftover value, recipient may have reverted'
                            ('bool', 'ext_call.success')
                            if totalBNBReceived < presaleHardcap:
                                revert with 'NH{q', 17
                            if msg.value < totalBNBReceived - presaleHardcap:
                                revert with 'NH{q', 17
                            sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                            totalBNBReceived = presaleHardcap
        else:
            if totalBNBReceived < presaleHardcap:
                revert with 'NH{q', 17
            call msg.sender with:
               value totalBNBReceived - presaleHardcap wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Unable to send leftover value, recipient may have reverted'
                if totalBNBReceived < presaleHardcap:
                    revert with 'NH{q', 17
                if msg.value < totalBNBReceived - presaleHardcap:
                    revert with 'NH{q', 17
                sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                totalBNBReceived = presaleHardcap
                emit TokensBought(address(arg1), sub_4c8057b3[address(arg1)]);
                if stor4[address(arg1)]:
                    require stor4[address(arg1)]
                    require not uint8(stor10.field_16)
                    require stor4[address(arg1)]
                    if msg.value < minContribution:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                    if msg.value > maxContribution:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                    sub_4c8057b3[address(arg1)] = msg.value
                    if totalBNBReceived > !msg.value:
                        revert with 'NH{q', 17
                    totalBNBReceived += msg.value
                    if totalBNBReceived > presaleHardcap:
                        if totalBNBReceived < presaleHardcap:
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value totalBNBReceived - presaleHardcap wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Unable to send leftover value, recipient may have reverted'
                        else:
                            if not ext_call.success:
                                revert with 0, 'Unable to send leftover value, recipient may have reverted'
                        ('bool', 'ext_call.success')
                        if totalBNBReceived < presaleHardcap:
                            revert with 'NH{q', 17
                        if msg.value < totalBNBReceived - presaleHardcap:
                            revert with 'NH{q', 17
                        sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                        totalBNBReceived = presaleHardcap
                else:
                    if sub_c99bed63 >= sub_9cabad03:
                        require stor4[address(arg1)]
                        require not uint8(stor10.field_16)
                        require stor4[address(arg1)]
                        if msg.value < minContribution:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                        if msg.value > maxContribution:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                        sub_4c8057b3[address(arg1)] = msg.value
                        if totalBNBReceived > !msg.value:
                            revert with 'NH{q', 17
                        totalBNBReceived += msg.value
                        if totalBNBReceived > presaleHardcap:
                            if totalBNBReceived < presaleHardcap:
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value totalBNBReceived - presaleHardcap wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'Unable to send leftover value, recipient may have reverted'
                            else:
                                if not ext_call.success:
                                    revert with 0, 'Unable to send leftover value, recipient may have reverted'
                            ('bool', 'ext_call.success')
                            if totalBNBReceived < presaleHardcap:
                                revert with 'NH{q', 17
                            if msg.value < totalBNBReceived - presaleHardcap:
                                revert with 'NH{q', 17
                            sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                            totalBNBReceived = presaleHardcap
                    else:
                        if not uint8(stor10.field_16):
                            require not stor4[address(arg1)]
                            if msg.value < minContribution:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                            if msg.value > maxContribution:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                            sub_4c8057b3[address(arg1)] = msg.value
                            if totalBNBReceived > !msg.value:
                                revert with 'NH{q', 17
                            totalBNBReceived += msg.value
                            if sub_c99bed63 > !msg.value:
                                revert with 'NH{q', 17
                            sub_c99bed63 += msg.value
                        else:
                            require stor4[address(arg1)]
                            require not uint8(stor10.field_16)
                            require stor4[address(arg1)]
                            if msg.value < minContribution:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is lesser than min contribution'
                            if msg.value > maxContribution:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent BNB is greater than max contribution'
                            sub_4c8057b3[address(arg1)] = msg.value
                            if totalBNBReceived > !msg.value:
                                revert with 'NH{q', 17
                            totalBNBReceived += msg.value
                            if totalBNBReceived > presaleHardcap:
                                if totalBNBReceived < presaleHardcap:
                                    revert with 'NH{q', 17
                                call msg.sender with:
                                   value totalBNBReceived - presaleHardcap wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'Unable to send leftover value, recipient may have reverted'
                                else:
                                    if not ext_call.success:
                                        revert with 0, 'Unable to send leftover value, recipient may have reverted'
                                ('bool', 'ext_call.success')
                                if totalBNBReceived < presaleHardcap:
                                    revert with 'NH{q', 17
                                if msg.value < totalBNBReceived - presaleHardcap:
                                    revert with 'NH{q', 17
                                sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                                totalBNBReceived = presaleHardcap
            else:
                if not ext_call.success:
                    revert with 0, 'Unable to send leftover value, recipient may have reverted'
                if totalBNBReceived < presaleHardcap:
                    revert with 'NH{q', 17
                if msg.value < totalBNBReceived - presaleHardcap:
                    revert with 'NH{q', 17
                sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                totalBNBReceived = presaleHardcap
                emit TokensBought(address(arg1), sub_4c8057b3[address(arg1)]);
                if stor4[address(arg1)]:
                    require stor4[address(arg1)]
                    require not uint8(stor10.field_16)
                    require stor4[address(arg1)]
                    if msg.value < minContribution:
                        revert with 0, 'Sent BNB is lesser than min contribution'
                    if msg.value > maxContribution:
                        revert with 0, 'Sent BNB is greater than max contribution'
                    sub_4c8057b3[address(arg1)] = msg.value
                    if totalBNBReceived > !msg.value:
                        revert with 'NH{q', 17
                    totalBNBReceived += msg.value
                    if totalBNBReceived > presaleHardcap:
                        if totalBNBReceived < presaleHardcap:
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value totalBNBReceived - presaleHardcap wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Unable to send leftover value, recipient may have reverted'
                        if totalBNBReceived < presaleHardcap:
                            revert with 'NH{q', 17
                        if msg.value < totalBNBReceived - presaleHardcap:
                            revert with 'NH{q', 17
                        sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                        totalBNBReceived = presaleHardcap
                else:
                    if sub_c99bed63 >= sub_9cabad03:
                        require stor4[address(arg1)]
                        require not uint8(stor10.field_16)
                        require stor4[address(arg1)]
                        if msg.value < minContribution:
                            revert with 0, 'Sent BNB is lesser than min contribution'
                        if msg.value > maxContribution:
                            revert with 0, 'Sent BNB is greater than max contribution'
                        sub_4c8057b3[address(arg1)] = msg.value
                        if totalBNBReceived > !msg.value:
                            revert with 'NH{q', 17
                        totalBNBReceived += msg.value
                        if totalBNBReceived > presaleHardcap:
                            if totalBNBReceived < presaleHardcap:
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value totalBNBReceived - presaleHardcap wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Unable to send leftover value, recipient may have reverted'
                            if totalBNBReceived < presaleHardcap:
                                revert with 'NH{q', 17
                            if msg.value < totalBNBReceived - presaleHardcap:
                                revert with 'NH{q', 17
                            sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                            totalBNBReceived = presaleHardcap
                    else:
                        if not uint8(stor10.field_16):
                            require not stor4[address(arg1)]
                            if msg.value < minContribution:
                                revert with 0, 'Sent BNB is lesser than min contribution'
                            if msg.value > maxContribution:
                                revert with 0, 'Sent BNB is greater than max contribution'
                            sub_4c8057b3[address(arg1)] = msg.value
                            if totalBNBReceived > !msg.value:
                                revert with 'NH{q', 17
                            totalBNBReceived += msg.value
                            if sub_c99bed63 > !msg.value:
                                revert with 'NH{q', 17
                            sub_c99bed63 += msg.value
                        else:
                            require stor4[address(arg1)]
                            require not uint8(stor10.field_16)
                            require stor4[address(arg1)]
                            if msg.value < minContribution:
                                revert with 0, 'Sent BNB is lesser than min contribution'
                            if msg.value > maxContribution:
                                revert with 0, 'Sent BNB is greater than max contribution'
                            sub_4c8057b3[address(arg1)] = msg.value
                            if totalBNBReceived > !msg.value:
                                revert with 'NH{q', 17
                            totalBNBReceived += msg.value
                            if totalBNBReceived > presaleHardcap:
                                if totalBNBReceived < presaleHardcap:
                                    revert with 'NH{q', 17
                                call msg.sender with:
                                   value totalBNBReceived - presaleHardcap wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Unable to send leftover value, recipient may have reverted'
                                if totalBNBReceived < presaleHardcap:
                                    revert with 'NH{q', 17
                                if msg.value < totalBNBReceived - presaleHardcap:
                                    revert with 'NH{q', 17
                                sub_4c8057b3[address(arg1)] = msg.value - totalBNBReceived + presaleHardcap
                                totalBNBReceived = presaleHardcap
    emit TokensBought(address(arg1), sub_4c8057b3[address(arg1)]);
    stor0 = 1
}



}
