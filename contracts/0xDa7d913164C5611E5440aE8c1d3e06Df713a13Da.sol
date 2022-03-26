contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address BASEAddress;
address ROUTERAddress;
array of struct arrayMembers;
address DEPLOYERAddress;
array of struct stor10;
uint256 stor11;
uint256 secondsPerYear;
uint256 sub_053eda50;
uint256 stor14;
mapping of uint8 stor16;

function sub_053eda50(?) {
    return sub_053eda50
}

function name() {
    return name[0 len name.length]
}

function memberCount() {
    return arrayMembers.length
}

function totalSupply() {
    return totalSupply
}

function getMemberDetails(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(memberDetails[address(arg2)][2][address(arg1)].field_0), 
           memberDetails[address(arg2)][3][address(arg1)].field_0,
           memberDetails[address(arg2)][4][address(arg1)].field_0,
           memberDetails[address(arg2)][5][address(arg1)].field_0
}

function secondsPerYear() {
    return secondsPerYear
}

function decimals() {
    return decimals
}

function ROUTER() {
    return ROUTERAddress
}

function arrayMembers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < arrayMembers.length
    return arrayMembers[arg1].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function DEPLOYER() {
    return DEPLOYERAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function mapAddress_listedAssets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(memberDetails[arg1].field_0)
}

function BASE() {
    return BASEAddress
}

function isListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function assetListedCount() {
    return stor10.length
}

function _fallback() payable {
    revert
}

function listBondAsset(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'Must be DAO'
    if not stor16[address(arg1)]:
        stor16[address(arg1)] = 1
        stor10.length++
        stor10[stor10.length].field_0 = arg1
    emit 0xa2c962e8: msg.sender, arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferTo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not tx.origin:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: transfer from the zero address'
    if arg2 > balanceOf[tx.origin]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[tx.origin] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, tx.origin, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: transfer from the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 38, 0x656942455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[166 len 26] >> 48, 0
    if not msg.sender:
        revert with 0, 'iBEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'iBEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function allListedAssets() {
    if stor10.length:
        mem[128] = address(stor10.field_0)
        if (32 * stor10.length) + 32 > 64:
            mem[160] = address(stor10.field_256)
            idx = 160
            s = 1
            while (32 * stor10.length) + 96 > idx:
                mem[idx + 32] = stor10[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor10.length) + 128] = 32
    mem[(32 * stor10.length) + 160] = stor10.length
    idx = 0
    s = (32 * stor10.length) + 192
    t = 128
    while idx < stor10.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor10.length) + 128
       len (96 * stor10.length) + 64
}

function sub_a11b2169(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if memberDetails[address(arg2)][5][address(arg1)].field_0 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - memberDetails[address(arg2)][5][address(arg1)].field_0 >= secondsPerYear:
        memberDetails[address(arg2)][4][address(arg1)].field_0 = 0
        return memberDetails[address(arg2)][3][address(arg1)].field_0
    if not block.timestamp - memberDetails[address(arg2)][5][address(arg1)].field_0:
        return 0
    if (block.timestamp * memberDetails[address(arg2)][4][address(arg1)].field_0) - (memberDetails[address(arg2)][5][address(arg1)].field_0 * memberDetails[address(arg2)][4][address(arg1)].field_0) / block.timestamp - memberDetails[address(arg2)][5][address(arg1)].field_0 != memberDetails[address(arg2)][4][address(arg1)].field_0:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((block.timestamp * memberDetails[address(arg2)][4][address(arg1)].field_0) - (memberDetails[address(arg2)][5][address(arg1)].field_0 * memberDetails[address(arg2)][4][address(arg1)].field_0))
}

function allMembers() {
    mem[64] = (32 * arrayMembers.length) + 128
    mem[96] = arrayMembers.length
    if not arrayMembers.length:
        mem[(32 * arrayMembers.length) + 128] = 32
        mem[(32 * arrayMembers.length) + 160] = arrayMembers.length
        idx = 0
        s = (32 * arrayMembers.length) + 192
        t = 128
        while idx < arrayMembers.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * arrayMembers.length) + 128
           len (96 * arrayMembers.length) + 64
    mem[128] = address(arrayMembers.field_0)
    idx = 128
    s = 0
    while (32 * arrayMembers.length) + 96 > idx:
        mem[idx + 32] = arrayMembers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * arrayMembers.length) + 128] = 32
    mem[(32 * arrayMembers.length) + 160] = arrayMembers.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < arrayMembers.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * arrayMembers.length) + -mem[64] + 192
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: transfer from the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 
                    32,
                    41,
                    0xfe6942455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[233 len 23] >> 72,
                    0
    if not arg1:
        revert with 0, 'iBEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'iBEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function burn() {
    if totalSupply < 1:
        revert with 0, 'burnt already'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: approve from the zero address'
    if not BASEAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: approve to the zero address'
    allowance[address(this.address)][stor6] = totalSupply
    emit Approval(totalSupply, this.address, BASEAddress);
    require ext_code.size(BASEAddress)
    call BASEAddress.claim(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalSupply > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalSupply = 0
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor11 = ext_call.return_data[0]
    require ext_code.size(BASEAddress)
    call BASEAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args ROUTERAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function claim(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not memberDetails[address(arg1)][3][msg.sender].field_0:
        revert with 0, 'must have bonded lps'
    if not memberDetails[address(arg1)][2][msg.sender].field_0:
        revert with 0, 'must have deposited first'
    if memberDetails[address(arg1)][5][address(msg.sender)].field_0 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - memberDetails[address(arg1)][5][address(msg.sender)].field_0 >= secondsPerYear:
        memberDetails[address(arg1)][4][address(msg.sender)].field_0 = 0
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.DAO() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).UTILS() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPool(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if memberDetails[address(arg1)][3][address(msg.sender)].field_0 > memberDetails[address(arg1)][3][msg.sender].field_0:
            revert with 0, 'attempted to overclaim'
        memberDetails[address(arg1)][5][msg.sender].field_0 = block.timestamp
        if memberDetails[address(arg1)][3][address(msg.sender)].field_0 > memberDetails[address(arg1)][3][msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        memberDetails[address(arg1)][3][msg.sender].field_0 -= memberDetails[address(arg1)][3][address(msg.sender)].field_0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, memberDetails[address(arg1)][3][address(msg.sender)].field_0
    else:
        if not block.timestamp - memberDetails[address(arg1)][5][address(msg.sender)].field_0:
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPool(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 > memberDetails[address(arg1)][3][msg.sender].field_0:
                revert with 0, 'attempted to overclaim'
            memberDetails[address(arg1)][5][msg.sender].field_0 = block.timestamp
            if 0 > memberDetails[address(arg1)][3][msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            if (block.timestamp * memberDetails[address(arg1)][4][address(msg.sender)].field_0) - (memberDetails[address(arg1)][5][address(msg.sender)].field_0 * memberDetails[address(arg1)][4][address(msg.sender)].field_0) / block.timestamp - memberDetails[address(arg1)][5][address(msg.sender)].field_0 != memberDetails[address(arg1)][4][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPool(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if (block.timestamp * memberDetails[address(arg1)][4][address(msg.sender)].field_0) - (memberDetails[address(arg1)][5][address(msg.sender)].field_0 * memberDetails[address(arg1)][4][address(msg.sender)].field_0) > memberDetails[address(arg1)][3][msg.sender].field_0:
                revert with 0, 'attempted to overclaim'
            memberDetails[address(arg1)][5][msg.sender].field_0 = block.timestamp
            if (block.timestamp * memberDetails[address(arg1)][4][address(msg.sender)].field_0) - (memberDetails[address(arg1)][5][address(msg.sender)].field_0 * memberDetails[address(arg1)][4][address(msg.sender)].field_0) > memberDetails[address(arg1)][3][msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            memberDetails[address(arg1)][3][msg.sender].field_0 = memberDetails[address(arg1)][3][msg.sender].field_0 - (block.timestamp * memberDetails[address(arg1)][4][address(msg.sender)].field_0) + (memberDetails[address(arg1)][5][address(msg.sender)].field_0 * memberDetails[address(arg1)][4][address(msg.sender)].field_0)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * memberDetails[address(arg1)][4][address(msg.sender)].field_0) - (memberDetails[address(arg1)][5][address(msg.sender)].field_0 * memberDetails[address(arg1)][4][address(msg.sender)].field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 <= 0:
        revert with 0, 'must get asset'
    if not stor16[address(arg1)]:
        revert with 0, 'must be listed'
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).UTILS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPool(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).UTILS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).calcValueInBase(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if arg2 != msg.value:
            revert with 0, 'InputErr'
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.addLiquidity(uint256 rg1, uint256 rg2, address rg3) with:
           value arg2 wei
             gas gas_remaining wei
            args ext_call.return_data[0], arg2, arg1
    else:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), ROUTERAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ROUTERAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.addLiquidity(uint256 rg1, uint256 rg2, address rg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not stor14:
            revert with 0, 'SafeMath: division by zero', 0
        if not memberDetails[address(arg1)][2][msg.sender].field_0:
            memberDetails[address(arg1)][2][msg.sender].field_0 = 1
            arrayMembers.length++
            arrayMembers[arrayMembers.length].field_0 = msg.sender or Mask(96, 160, arrayMembers[arrayMembers.length].field_0)
            memberDetails[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'memberDetails', 15))) + memberDetails[address(arg1)].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'memberDetails', 15))) + memberDetails[address(arg1)].field_256].field_0)
        if (0 / stor14) + memberDetails[address(arg1)][3][msg.sender].field_0 < memberDetails[address(arg1)][3][msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        memberDetails[address(arg1)][3][msg.sender].field_0 += 0 / stor14
        memberDetails[address(arg1)][5][msg.sender].field_0 = block.timestamp
        if not secondsPerYear:
            revert with 0, 'SafeMath: division by zero', 0
        memberDetails[address(arg1)][4][msg.sender].field_0 = memberDetails[address(arg1)][3][msg.sender].field_0 / secondsPerYear
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / stor14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xe4dd259a: msg.sender, arg2, 0 / stor14
    else:
        if sub_053eda50 * ext_call.return_data[0] / ext_call.return_data[0] != sub_053eda50:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor14:
            revert with 0, 'SafeMath: division by zero', 0
        if not memberDetails[address(arg1)][2][msg.sender].field_0:
            memberDetails[address(arg1)][2][msg.sender].field_0 = 1
            arrayMembers.length++
            arrayMembers[arrayMembers.length].field_0 = msg.sender or Mask(96, 160, arrayMembers[arrayMembers.length].field_0)
            memberDetails[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'memberDetails', 15))) + memberDetails[address(arg1)].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'memberDetails', 15))) + memberDetails[address(arg1)].field_256].field_0)
        if (sub_053eda50 * ext_call.return_data[0] / stor14) + memberDetails[address(arg1)][3][msg.sender].field_0 < memberDetails[address(arg1)][3][msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        memberDetails[address(arg1)][3][msg.sender].field_0 += sub_053eda50 * ext_call.return_data[0] / stor14
        memberDetails[address(arg1)][5][msg.sender].field_0 = block.timestamp
        if not secondsPerYear:
            revert with 0, 'SafeMath: division by zero', 0
        memberDetails[address(arg1)][4][msg.sender].field_0 = memberDetails[address(arg1)][3][msg.sender].field_0 / secondsPerYear
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_053eda50 * ext_call.return_data[0] / stor14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xe4dd259a: msg.sender, arg2, sub_053eda50 * ext_call.return_data[0] / stor14
    return 1
}



}
