contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor6;
uint8 emitting;
uint256 emissionCurve;
uint256 _100m;
uint256 totalCap;
uint256 secondsPerEra;
uint256 currentEra;
uint256 nextEraTime;
address incentiveAddress;
address DAOAddress;
address burnAddress;
address DEPLOYERAddress;
array of struct assetArray;
mapping of uint8 stor19;
mapping of uint256 mapAsset_claimRate;
mapping of uint256 mapAsset_claimed;
mapping of uint256 mapAsset_allocation;

function name() {
    return name[0 len name.length]
}

function emitting() {
    return bool(emitting)
}

function nextEraTime() {
    return nextEraTime
}

function totalCap() {
    return totalCap
}

function totalSupply() {
    return totalSupply
}

function incentiveAddress() {
    return incentiveAddress
}

function decimals() {
    return decimals
}

function _100m() {
    return _100m
}

function secondsPerEra() {
    return secondsPerEra
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function burnAddress() {
    return burnAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function mapAsset_allocation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return mapAsset_allocation[arg1]
}

function currentEra() {
    return currentEra
}

function DAO() {
    return DAOAddress
}

function emissionCurve() {
    return emissionCurve
}

function mapAsset_claimRate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return mapAsset_claimRate[arg1]
}

function mapAsset_claimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return mapAsset_claimed[arg1]
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

function assetArray(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < assetArray.length
    return assetArray[arg1].field_0
}

function assetCount() {
    return assetArray.length
}

function isListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function _fallback() payable {
    revert
}

function stopEmissions() {
    if DAOAddress != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    emitting = 0
    return 1
}

function startEmissions() {
    if DAOAddress != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    emitting = 1
    return 1
}

function purgeDeployer() {
    if DAOAddress != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    DEPLOYERAddress = 0
    return 1
}

function purgeDAO() {
    if DAOAddress != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    DAOAddress = 0
    emit 0x567cac11: 0, msg.sender
    return 1
}

function changeEraDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if DAOAddress != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    secondsPerEra = arg1
    emit 0xc0473c2c: arg1, msg.sender
    return 1
}

function changeEmissionCurve(uint256 arg1) {
    require calldata.size - 4 >= 32
    if DAOAddress != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    emissionCurve = arg1
    emit 0xe61d4716: arg1, msg.sender
    return 1
}

function getAssetDetails(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[address(arg1)]), 
           mapAsset_claimRate[address(arg1)],
           mapAsset_claimed[address(arg1)],
           mapAsset_allocation[address(arg1)]
}

function changeIncentiveAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if DAOAddress != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    incentiveAddress = arg1
    emit 0x5b536d33: arg1, msg.sender
    return 1
}

function changeDAO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if DAOAddress != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    if not arg1:
        revert with 0, 'Must not be zero address'
    DAOAddress = arg1
    emit 0x567cac11: arg1, msg.sender
    return 1
}

function delistAsset(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if DAOAddress != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    stor19[address(arg1)] = 0
    mapAsset_claimRate[address(arg1)] = 0
    mapAsset_allocation[address(arg1)] = 0
    emit 0xf487c232: msg.sender, arg1
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

function listAsset(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if DAOAddress != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    if not stor19[address(arg1)]:
        stor19[address(arg1)] = 1
        assetArray.length++
        assetArray[assetArray.length].field_0 = arg1
    mapAsset_claimRate[address(arg1)] = arg2
    mapAsset_allocation[address(arg1)] = arg3
    emit 0x1adc5ea4: arg2, arg3, msg.sender, arg1
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: burn from the zero address'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 35, 0x656942455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[163 len 29] >> 24, 0
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
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

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 37, 0x656942455032303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[165 len 27] >> 40, 0
    if not arg1:
        revert with 0, 'iBEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'iBEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 'iBEP20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 35, 0x656942455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[259 len 29] >> 24, 0
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function getAdjustedClaimRate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply <= _100m:
        return mapAsset_claimRate[address(arg1)]
    if _100m > totalCap:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if _100m > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply > totalCap:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not mapAsset_claimRate[address(arg1)]:
        if not totalCap - _100m:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalCap - _100m)
    if (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / mapAsset_claimRate[address(arg1)] != totalCap - totalSupply:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalCap - _100m:
        revert with 0, 'SafeMath: division by zero', 0
    return ((totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m)
}

function getDailyEmission() {
    if totalSupply > _100m:
        if totalSupply > totalCap:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not emissionCurve:
            revert with 0, 'SafeMath: division by zero', 0
        return (totalCap - totalSupply / emissionCurve)
    if not totalCap:
        if not _100m:
            revert with 0, 'SafeMath: division by zero', 0
        if totalSupply > 0 / _100m:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not emissionCurve:
            revert with 0, 'SafeMath: division by zero', 0
        return ((0 / _100m) - totalSupply / emissionCurve)
    if totalSupply * totalCap / totalCap != totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not _100m:
        revert with 0, 'SafeMath: division by zero', 0
    if totalSupply > totalSupply * totalCap / _100m:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not emissionCurve:
        revert with 0, 'SafeMath: division by zero', 0
    return ((totalSupply * totalCap / _100m) - totalSupply / emissionCurve)
}

function allAssets() {
    mem[64] = (32 * assetArray.length) + 128
    mem[96] = assetArray.length
    if not assetArray.length:
        mem[(32 * assetArray.length) + 128] = 32
        mem[(32 * assetArray.length) + 160] = assetArray.length
        idx = 0
        s = (32 * assetArray.length) + 192
        t = 128
        while idx < assetArray.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * assetArray.length) + 128
           len (96 * assetArray.length) + 64
    mem[128] = address(assetArray.field_0)
    idx = 128
    s = 0
    while (32 * assetArray.length) + 96 > idx:
        mem[idx + 32] = assetArray[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * assetArray.length) + 128] = 32
    mem[(32 * assetArray.length) + 160] = assetArray.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < assetArray.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * assetArray.length) + -mem[64] + 192
}

function transferTo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not tx.origin:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: transfer from the zero address'
    if arg2 > balanceOf[tx.origin]:
        revert with 0, 32, 39, 0x656942455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[167 len 25] >> 56, 0
    balanceOf[tx.origin] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, tx.origin, arg1);
    if block.timestamp >= nextEraTime:
        if emitting:
            currentEra++
            nextEraTime = block.timestamp + secondsPerEra
            if totalSupply > _100m:
                if totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not emissionCurve:
                    revert with 0, 'SafeMath: division by zero', 0
                if not incentiveAddress:
                    revert with 0, 'iBEP20: mint to the zero address'
                if (totalCap - totalSupply / emissionCurve) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalCap - totalSupply / emissionCurve
                if totalCap < (totalCap - totalSupply / emissionCurve) + totalSupply:
                    revert with 0, 'Must not mint more than the cap'
                if (totalCap - totalSupply / emissionCurve) + balanceOf[stor14] < balanceOf[stor14]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor14] += totalCap - totalSupply / emissionCurve
                emit Transfer((totalCap - totalSupply / emissionCurve), 0, incentiveAddress);
                emit NewEra(currentEra, nextEraTime, totalCap - totalSupply / emissionCurve);
            else:
                if not totalCap:
                    if not _100m:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalSupply > 0 / _100m:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not emissionCurve:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not incentiveAddress:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if ((0 / _100m) - totalSupply / emissionCurve) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += (0 / _100m) - totalSupply / emissionCurve
                    if totalCap < ((0 / _100m) - totalSupply / emissionCurve) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if ((0 / _100m) - totalSupply / emissionCurve) + balanceOf[stor14] < balanceOf[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor14] += (0 / _100m) - totalSupply / emissionCurve
                    emit Transfer(((0 / _100m) - totalSupply / emissionCurve), 0, incentiveAddress);
                    emit NewEra(currentEra, nextEraTime, (0 / _100m) - totalSupply / emissionCurve);
                else:
                    if totalSupply * totalCap / totalCap != totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not _100m:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalSupply > totalSupply * totalCap / _100m:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not emissionCurve:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not incentiveAddress:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if ((totalSupply * totalCap / _100m) - totalSupply / emissionCurve) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += (totalSupply * totalCap / _100m) - totalSupply / emissionCurve
                    if totalCap < ((totalSupply * totalCap / _100m) - totalSupply / emissionCurve) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if ((totalSupply * totalCap / _100m) - totalSupply / emissionCurve) + balanceOf[stor14] < balanceOf[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor14] += (totalSupply * totalCap / _100m) - totalSupply / emissionCurve
                    emit Transfer(((totalSupply * totalCap / _100m) - totalSupply / emissionCurve), 0, incentiveAddress);
                    emit NewEra(currentEra, nextEraTime, (totalSupply * totalCap / _100m) - totalSupply / emissionCurve);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: transfer from the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 39, 0x656942455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[167 len 25] >> 56, 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if block.timestamp >= nextEraTime:
        if emitting:
            currentEra++
            nextEraTime = block.timestamp + secondsPerEra
            if totalSupply > _100m:
                if totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not emissionCurve:
                    revert with 0, 'SafeMath: division by zero', 0
                if not incentiveAddress:
                    revert with 0, 'iBEP20: mint to the zero address'
                if (totalCap - totalSupply / emissionCurve) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalCap - totalSupply / emissionCurve
                if totalCap < (totalCap - totalSupply / emissionCurve) + totalSupply:
                    revert with 0, 'Must not mint more than the cap'
                if (totalCap - totalSupply / emissionCurve) + balanceOf[stor14] < balanceOf[stor14]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor14] += totalCap - totalSupply / emissionCurve
                emit Transfer((totalCap - totalSupply / emissionCurve), 0, incentiveAddress);
                emit NewEra(currentEra, nextEraTime, totalCap - totalSupply / emissionCurve);
            else:
                if not totalCap:
                    if not _100m:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalSupply > 0 / _100m:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not emissionCurve:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not incentiveAddress:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if ((0 / _100m) - totalSupply / emissionCurve) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += (0 / _100m) - totalSupply / emissionCurve
                    if totalCap < ((0 / _100m) - totalSupply / emissionCurve) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if ((0 / _100m) - totalSupply / emissionCurve) + balanceOf[stor14] < balanceOf[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor14] += (0 / _100m) - totalSupply / emissionCurve
                    emit Transfer(((0 / _100m) - totalSupply / emissionCurve), 0, incentiveAddress);
                    emit NewEra(currentEra, nextEraTime, (0 / _100m) - totalSupply / emissionCurve);
                else:
                    if totalSupply * totalCap / totalCap != totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not _100m:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalSupply > totalSupply * totalCap / _100m:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not emissionCurve:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not incentiveAddress:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if ((totalSupply * totalCap / _100m) - totalSupply / emissionCurve) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += (totalSupply * totalCap / _100m) - totalSupply / emissionCurve
                    if totalCap < ((totalSupply * totalCap / _100m) - totalSupply / emissionCurve) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if ((totalSupply * totalCap / _100m) - totalSupply / emissionCurve) + balanceOf[stor14] < balanceOf[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor14] += (totalSupply * totalCap / _100m) - totalSupply / emissionCurve
                    emit Transfer(((totalSupply * totalCap / _100m) - totalSupply / emissionCurve), 0, incentiveAddress);
                    emit NewEra(currentEra, nextEraTime, (totalSupply * totalCap / _100m) - totalSupply / emissionCurve);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: transfer from the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 39, 0x656942455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[167 len 25] >> 56, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if block.timestamp < nextEraTime:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 
                        32,
                        41,
                        0xfe6942455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[265 len 23] >> 72,
                        0
    else:
        if not emitting:
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 
                            32,
                            41,
                            0xfe6942455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[265 len 23] >> 72,
                            0
        else:
            currentEra++
            nextEraTime = block.timestamp + secondsPerEra
            if totalSupply > _100m:
                if totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not emissionCurve:
                    revert with 0, 'SafeMath: division by zero', 0
                if not incentiveAddress:
                    revert with 0, 'iBEP20: mint to the zero address'
                if (totalCap - totalSupply / emissionCurve) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalCap - totalSupply / emissionCurve
                if totalCap < (totalCap - totalSupply / emissionCurve) + totalSupply:
                    revert with 0, 'Must not mint more than the cap'
                if (totalCap - totalSupply / emissionCurve) + balanceOf[stor14] < balanceOf[stor14]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor14] += totalCap - totalSupply / emissionCurve
                emit Transfer((totalCap - totalSupply / emissionCurve), 0, incentiveAddress);
                emit NewEra(currentEra, nextEraTime, totalCap - totalSupply / emissionCurve);
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 
                                32,
                                41,
                                0xfe6942455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(184, 0, totalCap - totalSupply / emissionCurve) >> 72,
                                0
            else:
                if not totalCap:
                    if not _100m:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalSupply > 0 / _100m:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not emissionCurve:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not incentiveAddress:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if ((0 / _100m) - totalSupply / emissionCurve) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += (0 / _100m) - totalSupply / emissionCurve
                    if totalCap < ((0 / _100m) - totalSupply / emissionCurve) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if ((0 / _100m) - totalSupply / emissionCurve) + balanceOf[stor14] < balanceOf[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor14] += (0 / _100m) - totalSupply / emissionCurve
                    emit Transfer(((0 / _100m) - totalSupply / emissionCurve), 0, incentiveAddress);
                    emit NewEra(currentEra, nextEraTime, (0 / _100m) - totalSupply / emissionCurve);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe6942455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(184, 0, (0 / _100m) - totalSupply / emissionCurve) >> 72,
                                    0
                else:
                    if totalSupply * totalCap / totalCap != totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not _100m:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalSupply > totalSupply * totalCap / _100m:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not emissionCurve:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not incentiveAddress:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if ((totalSupply * totalCap / _100m) - totalSupply / emissionCurve) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += (totalSupply * totalCap / _100m) - totalSupply / emissionCurve
                    if totalCap < ((totalSupply * totalCap / _100m) - totalSupply / emissionCurve) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if ((totalSupply * totalCap / _100m) - totalSupply / emissionCurve) + balanceOf[stor14] < balanceOf[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor14] += (totalSupply * totalCap / _100m) - totalSupply / emissionCurve
                    emit Transfer(((totalSupply * totalCap / _100m) - totalSupply / emissionCurve), 0, incentiveAddress);
                    emit NewEra(currentEra, nextEraTime, (totalSupply * totalCap / _100m) - totalSupply / emissionCurve);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe6942455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(184, 0, (totalSupply * totalCap / _100m) - totalSupply / emissionCurve) >> 72,
                                    0
    ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 5)))))
    if not arg1:
        revert with 0, 'iBEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'iBEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function assetsInRange(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= assetArray.length:
        require arg2 <= test266151307()
        if not arg2:
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var25002 >= arg2 + arg1:
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                s = (32 * arg2) + 192
                t = 128
                while idx < arg2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            require var27001 < assetArray.length
            require var29003 < arg2
            mem[(32 * var31001) + 128] = address(var31003)
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var39002 >= arg2 + arg1:
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                s = (32 * arg2) + 192
                t = 128
                while idx < arg2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            require var41001 < assetArray.length
            require var43003 < arg2
            mem[(32 * var45001) + 128] = address(var45003)
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var53002 < arg2 + arg1:
                require var55001 < assetArray.length
                # nil
            else:
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                s = (32 * arg2) + 192
                t = 128
                while idx < arg2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
        else:
            mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var26002 >= arg2 + arg1:
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                s = (32 * arg2) + 192
                t = 128
                while idx < arg2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            require var28001 < assetArray.length
            require var30003 < arg2
            mem[(32 * var32001) + 128] = address(var32003)
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var40002 >= arg2 + arg1:
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                s = (32 * arg2) + 192
                t = 128
                while idx < arg2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            require var42001 < assetArray.length
            require var44003 < arg2
            mem[(32 * var46001) + 128] = address(var46003)
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var54002 < arg2 + arg1:
                require var56001 < assetArray.length
                # nil
            else:
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                s = (32 * arg2) + 192
                t = 128
                while idx < arg2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
    else:
        require assetArray.length <= test266151307()
        if not assetArray.length:
            if assetArray.length + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var28002 >= assetArray.length + arg1:
                mem[(32 * assetArray.length) + 128] = 32
                mem[(32 * assetArray.length) + 160] = assetArray.length
                idx = 0
                s = (32 * assetArray.length) + 192
                t = 128
                while idx < assetArray.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * assetArray.length) + 128
                   len (96 * assetArray.length) + 64
            require var30001 < assetArray.length
            require var32003 < assetArray.length
            mem[(32 * var34001) + 128] = address(var34003)
            if assetArray.length + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var42002 >= assetArray.length + arg1:
                mem[(32 * assetArray.length) + 128] = 32
                mem[(32 * assetArray.length) + 160] = assetArray.length
                idx = 0
                s = (32 * assetArray.length) + 192
                t = 128
                while idx < assetArray.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * assetArray.length) + 128
                   len (96 * assetArray.length) + 64
            require var44001 < assetArray.length
            require var46003 < assetArray.length
            mem[(32 * var48001) + 128] = address(var48003)
            if assetArray.length + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var56002 < assetArray.length + arg1:
                require var58001 < assetArray.length
                # nil
            else:
                mem[(32 * assetArray.length) + 128] = 32
                mem[(32 * assetArray.length) + 160] = assetArray.length
                idx = 0
                s = (32 * assetArray.length) + 192
                t = 128
                while idx < assetArray.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * assetArray.length) + 128
                   len (96 * assetArray.length) + 64
        else:
            mem[128 len 32 * assetArray.length] = call.data[calldata.size len 32 * assetArray.length]
            if assetArray.length + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var29002 >= assetArray.length + arg1:
                mem[(32 * assetArray.length) + 128] = 32
                mem[(32 * assetArray.length) + 160] = assetArray.length
                idx = 0
                s = (32 * assetArray.length) + 192
                t = 128
                while idx < assetArray.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * assetArray.length) + 128
                   len (96 * assetArray.length) + 64
            require var31001 < assetArray.length
            require var33003 < assetArray.length
            mem[(32 * var35001) + 128] = address(var35003)
            if assetArray.length + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var43002 >= assetArray.length + arg1:
                mem[(32 * assetArray.length) + 128] = 32
                mem[(32 * assetArray.length) + 160] = assetArray.length
                idx = 0
                s = (32 * assetArray.length) + 192
                t = 128
                while idx < assetArray.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * assetArray.length) + 128
                   len (96 * assetArray.length) + 64
            require var45001 < assetArray.length
            require var47003 < assetArray.length
            mem[(32 * var49001) + 128] = address(var49003)
            if assetArray.length + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if var57002 < assetArray.length + arg1:
                require var59001 < assetArray.length
                # nil
            else:
                mem[(32 * assetArray.length) + 128] = 32
                mem[(32 * assetArray.length) + 160] = assetArray.length
                idx = 0
                s = (32 * assetArray.length) + 192
                t = 128
                while idx < assetArray.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * assetArray.length) + 128
                   len (96 * assetArray.length) + 64
}

function claim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + mapAsset_claimed[address(arg1)] < mapAsset_claimed[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + mapAsset_claimed[address(arg1)] <= mapAsset_allocation[address(arg1)]:
        if arg1:
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, burnAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if arg2 != msg.value:
                revert with 0, 'Must get BNB'
            call burnAddress with:
               value arg2 wei
                 gas gas_remaining wei
            if arg2 > arg2:
                revert with 0, 'SafeMath: subtraction overflow', 0
            call msg.sender with:
                 gas gas_remaining wei
        if arg2 + mapAsset_claimed[address(arg1)] < mapAsset_claimed[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        mapAsset_claimed[address(arg1)] += arg2
        if totalSupply <= _100m:
            if not mapAsset_claimRate[address(arg1)]:
                if not stor6:
                    revert with 0, 'SafeMath: division by zero', 0
                if not msg.sender:
                    revert with 0, 'iBEP20: mint to the zero address'
                if (0 / stor6) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / stor6
                if totalCap < (0 / stor6) + totalSupply:
                    revert with 0, 'Must not mint more than the cap'
                if (0 / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / stor6
                emit Transfer((0 / stor6), 0, msg.sender);
            else:
                if arg2 * mapAsset_claimRate[address(arg1)] / mapAsset_claimRate[address(arg1)] != arg2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor6:
                    revert with 0, 'SafeMath: division by zero', 0
                if not msg.sender:
                    revert with 0, 'iBEP20: mint to the zero address'
                if (arg2 * mapAsset_claimRate[address(arg1)] / stor6) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg2 * mapAsset_claimRate[address(arg1)] / stor6
                if totalCap < (arg2 * mapAsset_claimRate[address(arg1)] / stor6) + totalSupply:
                    revert with 0, 'Must not mint more than the cap'
                if (arg2 * mapAsset_claimRate[address(arg1)] / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg2 * mapAsset_claimRate[address(arg1)] / stor6
                emit Transfer((arg2 * mapAsset_claimRate[address(arg1)] / stor6), 0, msg.sender);
        else:
            if _100m > totalCap:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if _100m > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not mapAsset_claimRate[address(arg1)]:
                if not totalCap - _100m:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / totalCap - _100m:
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not msg.sender:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if (0 / stor6) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / stor6
                    if totalCap < (0 / stor6) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if (0 / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / stor6
                    emit Transfer((0 / stor6), 0, msg.sender);
                else:
                    if arg2 * 0 / totalCap - _100m / 0 / totalCap - _100m != arg2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not msg.sender:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if (arg2 * 0 / totalCap - _100m / stor6) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg2 * 0 / totalCap - _100m / stor6
                    if totalCap < (arg2 * 0 / totalCap - _100m / stor6) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if (arg2 * 0 / totalCap - _100m / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg2 * 0 / totalCap - _100m / stor6
                    emit Transfer((arg2 * 0 / totalCap - _100m / stor6), 0, msg.sender);
            else:
                if (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / mapAsset_claimRate[address(arg1)] != totalCap - totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalCap - _100m:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m:
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not msg.sender:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if (0 / stor6) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / stor6
                    if totalCap < (0 / stor6) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if (0 / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / stor6
                    emit Transfer((0 / stor6), 0, msg.sender);
                else:
                    if arg2 * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m / (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m != arg2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not msg.sender:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if (arg2 * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m / stor6) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg2 * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m / stor6
                    if totalCap < (arg2 * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m / stor6) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if (arg2 * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg2 * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m / stor6
                    emit Transfer((arg2 * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m / stor6), 0, msg.sender);
    else:
        if mapAsset_claimed[address(arg1)] > mapAsset_allocation[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1:
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, burnAddress, mapAsset_allocation[address(arg1)] - mapAsset_claimed[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if arg2 != msg.value:
                revert with 0, 'Must get BNB'
            call burnAddress with:
               value mapAsset_allocation[address(arg1)] - mapAsset_claimed[address(arg1)] wei
                 gas gas_remaining wei
            if mapAsset_allocation[address(arg1)] - mapAsset_claimed[address(arg1)] > arg2:
                revert with 0, 'SafeMath: subtraction overflow', 0
            call msg.sender with:
               value arg2 - mapAsset_allocation[address(arg1)] + mapAsset_claimed[address(arg1)] wei
                 gas gas_remaining wei
        if arg2 + mapAsset_claimed[address(arg1)] < mapAsset_claimed[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        mapAsset_claimed[address(arg1)] += arg2
        if totalSupply <= _100m:
            if not mapAsset_claimRate[address(arg1)]:
                if not stor6:
                    revert with 0, 'SafeMath: division by zero', 0
                if not msg.sender:
                    revert with 0, 'iBEP20: mint to the zero address'
                if (0 / stor6) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / stor6
                if totalCap < (0 / stor6) + totalSupply:
                    revert with 0, 'Must not mint more than the cap'
                if (0 / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / stor6
                emit Transfer((0 / stor6), 0, msg.sender);
            else:
                if (mapAsset_allocation[address(arg1)] * mapAsset_claimRate[address(arg1)]) - (mapAsset_claimed[address(arg1)] * mapAsset_claimRate[address(arg1)]) / mapAsset_claimRate[address(arg1)] != mapAsset_allocation[address(arg1)] - mapAsset_claimed[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor6:
                    revert with 0, 'SafeMath: division by zero', 0
                if not msg.sender:
                    revert with 0, 'iBEP20: mint to the zero address'
                if ((mapAsset_allocation[address(arg1)] * mapAsset_claimRate[address(arg1)]) - (mapAsset_claimed[address(arg1)] * mapAsset_claimRate[address(arg1)]) / stor6) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += (mapAsset_allocation[address(arg1)] * mapAsset_claimRate[address(arg1)]) - (mapAsset_claimed[address(arg1)] * mapAsset_claimRate[address(arg1)]) / stor6
                if totalCap < ((mapAsset_allocation[address(arg1)] * mapAsset_claimRate[address(arg1)]) - (mapAsset_claimed[address(arg1)] * mapAsset_claimRate[address(arg1)]) / stor6) + totalSupply:
                    revert with 0, 'Must not mint more than the cap'
                if ((mapAsset_allocation[address(arg1)] * mapAsset_claimRate[address(arg1)]) - (mapAsset_claimed[address(arg1)] * mapAsset_claimRate[address(arg1)]) / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += (mapAsset_allocation[address(arg1)] * mapAsset_claimRate[address(arg1)]) - (mapAsset_claimed[address(arg1)] * mapAsset_claimRate[address(arg1)]) / stor6
                emit Transfer(((mapAsset_allocation[address(arg1)] * mapAsset_claimRate[address(arg1)]) - (mapAsset_claimed[address(arg1)] * mapAsset_claimRate[address(arg1)]) / stor6), 0, msg.sender);
        else:
            if _100m > totalCap:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if _100m > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not mapAsset_claimRate[address(arg1)]:
                if not totalCap - _100m:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / totalCap - _100m:
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not msg.sender:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if (0 / stor6) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / stor6
                    if totalCap < (0 / stor6) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if (0 / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / stor6
                    emit Transfer((0 / stor6), 0, msg.sender);
                else:
                    if (mapAsset_allocation[address(arg1)] * 0 / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * 0 / totalCap - _100m) / 0 / totalCap - _100m != mapAsset_allocation[address(arg1)] - mapAsset_claimed[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not msg.sender:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if ((mapAsset_allocation[address(arg1)] * 0 / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * 0 / totalCap - _100m) / stor6) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += (mapAsset_allocation[address(arg1)] * 0 / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * 0 / totalCap - _100m) / stor6
                    if totalCap < ((mapAsset_allocation[address(arg1)] * 0 / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * 0 / totalCap - _100m) / stor6) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if ((mapAsset_allocation[address(arg1)] * 0 / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * 0 / totalCap - _100m) / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += (mapAsset_allocation[address(arg1)] * 0 / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * 0 / totalCap - _100m) / stor6
                    emit Transfer(((mapAsset_allocation[address(arg1)] * 0 / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * 0 / totalCap - _100m) / stor6), 0, msg.sender);
            else:
                if (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / mapAsset_claimRate[address(arg1)] != totalCap - totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalCap - _100m:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m:
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not msg.sender:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if (0 / stor6) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / stor6
                    if totalCap < (0 / stor6) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if (0 / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / stor6
                    emit Transfer((0 / stor6), 0, msg.sender);
                else:
                    if (mapAsset_allocation[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) / (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m != mapAsset_allocation[address(arg1)] - mapAsset_claimed[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not msg.sender:
                        revert with 0, 'iBEP20: mint to the zero address'
                    if ((mapAsset_allocation[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) / stor6) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += (mapAsset_allocation[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) / stor6
                    if totalCap < ((mapAsset_allocation[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) / stor6) + totalSupply:
                        revert with 0, 'Must not mint more than the cap'
                    if ((mapAsset_allocation[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) / stor6) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += (mapAsset_allocation[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) / stor6
                    emit Transfer(((mapAsset_allocation[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) - (mapAsset_claimed[address(arg1)] * (totalCap * mapAsset_claimRate[address(arg1)]) - (totalSupply * mapAsset_claimRate[address(arg1)]) / totalCap - _100m) / stor6), 0, msg.sender);
}



}
