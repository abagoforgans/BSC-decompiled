contract main {




// =====================  Runtime code  =====================


#
#  - node(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
array of uint256 stor1;
address lPTokenAddress;
address sub_03c8ed3bAddress;
array of address sub_5eeacb5f;
uint256 devCount;
array of struct sub_ed2f02c3;
uint256 sub_de90dcac;
uint256 sub_f39c040e;
uint256 sub_582353aa;
uint256 sub_01ab93a9;
uint256 sub_9d5ca2c6;
array of struct stor12;
mapping of struct userInfoMap;

function LPToken() payable {
    return lPTokenAddress
}

function sub_01ab93a9(?) payable {
    return sub_01ab93a9
}

function sub_03c8ed3b(?) payable {
    return sub_03c8ed3bAddress
}

function sub_582353aa(?) payable {
    return sub_582353aa
}

function sub_5eeacb5f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_5eeacb5f.length
    return address(sub_5eeacb5f[arg1])
}

function userInfoMap(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfoMap[arg1][arg2].field_0, userInfoMap[arg1][arg2].field_256
}

function owner() payable {
    return owner
}

function sub_9d5ca2c6(?) payable {
    return sub_9d5ca2c6
}

function nodeLength() payable {
    return stor12.length
}

function devCount() payable {
    return devCount
}

function sub_de90dcac(?) payable {
    return sub_de90dcac
}

function sub_ed2f02c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_ed2f02c3.length
    return sub_ed2f02c3[arg1].field_0
}

function sub_f39c040e(?) payable {
    return sub_f39c040e
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_01ab93a9 = arg1
}

function sub_1980b22e(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5eeacb5f.length = 0
    idx = 0
    while sub_5eeacb5f.length > idx:
        uint256(sub_5eeacb5f[idx]) = 0
        idx = idx + 1
        continue 
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 < arg1:
        revert with 'NH{q', 17
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_dc890da9(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ed2f02c3.length++
    sub_ed2f02c3[sub_ed2f02c3.length].field_0 = 40
    sub_ed2f02c3.length++
    sub_ed2f02c3[sub_ed2f02c3.length].field_0 = 10
    sub_ed2f02c3.length++
    sub_ed2f02c3[sub_ed2f02c3.length].field_0 = 10
    sub_ed2f02c3.length++
    sub_ed2f02c3[sub_ed2f02c3.length].field_0 = 40
    sub_01ab93a9 = arg1
    sub_03c8ed3bAddress = address(arg2)
    lPTokenAddress = address(arg3)
    address(stor1.length) = address(arg4)
}

function sub_31b13c34(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_ed2f02c3.length:
        mem[128] = uint256(sub_ed2f02c3.field_0)
        idx = 128
        s = 0
        while (32 * sub_ed2f02c3.length) + 96 > idx:
            mem[idx + 32] = sub_ed2f02c3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_ed2f02c3.length, data=mem[128 len 32 * sub_ed2f02c3.length])
    mem[(32 * sub_ed2f02c3.length) + 128] = 32
    mem[(32 * sub_ed2f02c3.length) + 160] = sub_ed2f02c3.length
    mem[(32 * sub_ed2f02c3.length) + 192 len 32 * sub_ed2f02c3.length] = mem[128 len 32 * sub_ed2f02c3.length]
    return memory
      from (32 * sub_ed2f02c3.length) + 128
       len (96 * sub_ed2f02c3.length) + 64
}

function sub_cdfca7f2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_5eeacb5f.length++
        mem[0] = 4
        address(sub_5eeacb5f[sub_5eeacb5f.length]) = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_8de138bc(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    sub_ed2f02c3.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_ed2f02c3.length > idx:
            sub_ed2f02c3[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_ed2f02c3[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_ed2f02c3.length > idx:
            sub_ed2f02c3[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_6193dc9c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ed2f02c3.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_ed2f02c3.length > idx:
            sub_ed2f02c3[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_ed2f02c3[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_ed2f02c3.length > idx:
            sub_ed2f02c3[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(lPTokenAddress)
    staticcall lPTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(lPTokenAddress)
    if ext_call.return_data[0] > userInfoMap[arg1][address(msg.sender)].field_0:
        call lPTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, userInfoMap[arg1][address(msg.sender)].field_0
    else:
        staticcall lPTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(lPTokenAddress)
        call lPTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencyWithdraw(userInfoMap[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    userInfoMap[arg1][address(msg.sender)].field_0 = 0
    userInfoMap[arg1][address(msg.sender)].field_256 = 0
}

function updatePool() payable {
    if block.timestamp > sub_01ab93a9:
        if not sub_f39c040e:
            sub_01ab93a9 = block.timestamp
        else:
            if sub_01ab93a9 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < sub_01ab93a9:
                revert with 'NH{q', 17
            if not block.timestamp - sub_01ab93a9:
                if sub_f39c040e <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not sub_f39c040e:
                    revert with 'NH{q', 18
                if sub_9d5ca2c6 > -(0 / sub_f39c040e) - 1:
                    revert with 'NH{q', 17
                if sub_9d5ca2c6 + (0 / sub_f39c040e) < sub_9d5ca2c6:
                    revert with 0, 'SafeMath: addition overflow'
                sub_9d5ca2c6 += 0 / sub_f39c040e
                sub_01ab93a9 = block.timestamp
                if sub_582353aa > -1:
                    revert with 'NH{q', 17
                if sub_582353aa < sub_582353aa:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if block.timestamp - sub_01ab93a9 and sub_de90dcac > -1 / block.timestamp - sub_01ab93a9:
                    revert with 'NH{q', 17
                if not block.timestamp - sub_01ab93a9:
                    revert with 'NH{q', 18
                if (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) / block.timestamp - sub_01ab93a9 != sub_de90dcac:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac):
                    if sub_f39c040e <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not sub_f39c040e:
                        revert with 'NH{q', 18
                    if sub_9d5ca2c6 > -(0 / sub_f39c040e) - 1:
                        revert with 'NH{q', 17
                    if sub_9d5ca2c6 + (0 / sub_f39c040e) < sub_9d5ca2c6:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d5ca2c6 += 0 / sub_f39c040e
                else:
                    if (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) and 10^12 > -1 / (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac):
                        revert with 'NH{q', 17
                    if not (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac):
                        revert with 'NH{q', 18
                    if (10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if sub_f39c040e <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not sub_f39c040e:
                        revert with 'NH{q', 18
                    if sub_9d5ca2c6 > -((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e) - 1:
                        revert with 'NH{q', 17
                    if sub_9d5ca2c6 + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e) < sub_9d5ca2c6:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d5ca2c6 += (10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e
                sub_01ab93a9 = block.timestamp
                if sub_582353aa > (-1 * block.timestamp * sub_de90dcac) + (sub_01ab93a9 * sub_de90dcac) - 1:
                    revert with 'NH{q', 17
                if sub_582353aa + (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) < sub_582353aa:
                    revert with 0, 'SafeMath: addition overflow'
                sub_582353aa = sub_582353aa + (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac)
}

function sub_7a17737d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > sub_01ab93a9:
        if not sub_f39c040e:
            sub_01ab93a9 = block.timestamp
        else:
            if sub_01ab93a9 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < sub_01ab93a9:
                revert with 'NH{q', 17
            if not block.timestamp - sub_01ab93a9:
                if sub_f39c040e <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not sub_f39c040e:
                    revert with 'NH{q', 18
                if sub_9d5ca2c6 > -(0 / sub_f39c040e) - 1:
                    revert with 'NH{q', 17
                if sub_9d5ca2c6 + (0 / sub_f39c040e) < sub_9d5ca2c6:
                    revert with 0, 'SafeMath: addition overflow'
                sub_9d5ca2c6 += 0 / sub_f39c040e
                sub_01ab93a9 = block.timestamp
                if sub_582353aa > -1:
                    revert with 'NH{q', 17
                if sub_582353aa < sub_582353aa:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if block.timestamp - sub_01ab93a9 and sub_de90dcac > -1 / block.timestamp - sub_01ab93a9:
                    revert with 'NH{q', 17
                if not block.timestamp - sub_01ab93a9:
                    revert with 'NH{q', 18
                if (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) / block.timestamp - sub_01ab93a9 != sub_de90dcac:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac):
                    if sub_f39c040e <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not sub_f39c040e:
                        revert with 'NH{q', 18
                    if sub_9d5ca2c6 > -(0 / sub_f39c040e) - 1:
                        revert with 'NH{q', 17
                    if sub_9d5ca2c6 + (0 / sub_f39c040e) < sub_9d5ca2c6:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d5ca2c6 += 0 / sub_f39c040e
                else:
                    if (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) and 10^12 > -1 / (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac):
                        revert with 'NH{q', 17
                    if not (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac):
                        revert with 'NH{q', 18
                    if (10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if sub_f39c040e <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not sub_f39c040e:
                        revert with 'NH{q', 18
                    if sub_9d5ca2c6 > -((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e) - 1:
                        revert with 'NH{q', 17
                    if sub_9d5ca2c6 + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e) < sub_9d5ca2c6:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d5ca2c6 += (10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e
                sub_01ab93a9 = block.timestamp
                if sub_582353aa > (-1 * block.timestamp * sub_de90dcac) + (sub_01ab93a9 * sub_de90dcac) - 1:
                    revert with 'NH{q', 17
                if sub_582353aa + (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) < sub_582353aa:
                    revert with 0, 'SafeMath: addition overflow'
                sub_582353aa = sub_582353aa + (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac)
    sub_de90dcac = arg1
}

function sub_6ddcf1df(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    delegate address(arg1) with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not return_data.size:
        mem[ceil32(arg2.length) + 160] = 'fc_99 '
        mem[ceil32(arg2.length) + 166 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if delegate.return_code:
        mem[ceil32(arg2.length) + arg2.length + 166] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + arg2.length + 170] = 32
        mem[ceil32(arg2.length) + arg2.length + 202] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + arg2.length + 234 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
            mem[ceil32(arg2.length) + arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 234] = 0
        if ceil32(arg2.length) <= arg2.length:
            revert with memory
              from ceil32(arg2.length) + arg2.length + 166
               len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 68
        revert with 0, 
                    32,
                    mem[ceil32(arg2.length) + arg2.length + 202 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 32]
    mem[ceil32(arg2.length) + 128] = return_data.size
    mem[ceil32(arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 161] = 'fc_99 '
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 167 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg2.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]
    if delegate.return_code:
    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 167] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 171] = 32
    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 203] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 129]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 235 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 129])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 161 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 129])]
    if ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 129]) <= mem[ceil32(arg2.length) + ceil32(return_data.size) + 129]:
        revert with 0, 
                    32,
                    mem[ceil32(arg2.length) + ceil32(return_data.size) + 129],
                    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 235 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 129])]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + mem[ceil32(arg2.length) + ceil32(return_data.size) + 129] + 235] = 0
    revert with 0, 
                32,
                mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 203 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 129]) + 32]
}

function sub_c5d910b5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if not userInfoMap[arg1][address(arg2)].field_0:
        return 0
    if block.timestamp <= sub_01ab93a9:
        if not userInfoMap[arg1][address(arg2)].field_0:
            if userInfoMap[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            if not -userInfoMap[arg1][address(arg2)].field_256:
                return 0
            if -userInfoMap[arg1][address(arg2)].field_256 and 10 > -1 / -userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            if not -userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 18
            if -10 * userInfoMap[arg1][address(arg2)].field_256 / -userInfoMap[arg1][address(arg2)].field_256 != 10:
                revert with 0, 'SafeMath: multiplication overflow'
            return (-10 * userInfoMap[arg1][address(arg2)].field_256 / 14)
        if userInfoMap[arg1][address(arg2)].field_0 and sub_9d5ca2c6 > -1 / userInfoMap[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfoMap[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / userInfoMap[arg1][address(arg2)].field_0 != sub_9d5ca2c6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfoMap[arg1][address(arg2)].field_256 > userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12 < userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if not (userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            return 0
        if (userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - userInfoMap[arg1][address(arg2)].field_256 and 10 > -1 / (userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if not (userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 18
        if (10 * userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - (10 * userInfoMap[arg1][address(arg2)].field_256) / (userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - userInfoMap[arg1][address(arg2)].field_256 != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((10 * userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - (10 * userInfoMap[arg1][address(arg2)].field_256) / 14)
    if not sub_f39c040e:
        if not userInfoMap[arg1][address(arg2)].field_0:
            if userInfoMap[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            if not -userInfoMap[arg1][address(arg2)].field_256:
                return 0
            if -userInfoMap[arg1][address(arg2)].field_256 and 10 > -1 / -userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            if not -userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 18
            if -10 * userInfoMap[arg1][address(arg2)].field_256 / -userInfoMap[arg1][address(arg2)].field_256 != 10:
                revert with 0, 'SafeMath: multiplication overflow'
            return (-10 * userInfoMap[arg1][address(arg2)].field_256 / 14)
        if userInfoMap[arg1][address(arg2)].field_0 and sub_9d5ca2c6 > -1 / userInfoMap[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfoMap[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / userInfoMap[arg1][address(arg2)].field_0 != sub_9d5ca2c6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfoMap[arg1][address(arg2)].field_256 > userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12 < userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if not (userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            return 0
        if (userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - userInfoMap[arg1][address(arg2)].field_256 and 10 > -1 / (userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if not (userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 18
        if (10 * userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - (10 * userInfoMap[arg1][address(arg2)].field_256) / (userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - userInfoMap[arg1][address(arg2)].field_256 != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((10 * userInfoMap[arg1][address(arg2)].field_0 * sub_9d5ca2c6 / 10^12) - (10 * userInfoMap[arg1][address(arg2)].field_256) / 14)
    if sub_01ab93a9 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < sub_01ab93a9:
        revert with 'NH{q', 17
    if not block.timestamp - sub_01ab93a9:
        if sub_f39c040e <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not sub_f39c040e:
            revert with 'NH{q', 18
        if sub_9d5ca2c6 > -(0 / sub_f39c040e) - 1:
            revert with 'NH{q', 17
        if sub_9d5ca2c6 + (0 / sub_f39c040e) < sub_9d5ca2c6:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfoMap[arg1][address(arg2)].field_0:
            if userInfoMap[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            if not -userInfoMap[arg1][address(arg2)].field_256:
                return 0
            if -userInfoMap[arg1][address(arg2)].field_256 and 10 > -1 / -userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            if not -userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 18
            if -10 * userInfoMap[arg1][address(arg2)].field_256 / -userInfoMap[arg1][address(arg2)].field_256 != 10:
                revert with 0, 'SafeMath: multiplication overflow'
            return (-10 * userInfoMap[arg1][address(arg2)].field_256 / 14)
        if userInfoMap[arg1][address(arg2)].field_0 and sub_9d5ca2c6 + (0 / sub_f39c040e) > -1 / userInfoMap[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfoMap[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / userInfoMap[arg1][address(arg2)].field_0 != sub_9d5ca2c6 + (0 / sub_f39c040e):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfoMap[arg1][address(arg2)].field_256 > (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12 < userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if not ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            return 0
        if ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256 and 10 > -1 / ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if not ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 18
        if (10 * (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - (10 * userInfoMap[arg1][address(arg2)].field_256) / ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256 != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((10 * (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - (10 * userInfoMap[arg1][address(arg2)].field_256) / 14)
    if block.timestamp - sub_01ab93a9 and sub_de90dcac > -1 / block.timestamp - sub_01ab93a9:
        revert with 'NH{q', 17
    if not block.timestamp - sub_01ab93a9:
        revert with 'NH{q', 18
    if (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) / block.timestamp - sub_01ab93a9 != sub_de90dcac:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac):
        if sub_f39c040e <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not sub_f39c040e:
            revert with 'NH{q', 18
        if sub_9d5ca2c6 > -(0 / sub_f39c040e) - 1:
            revert with 'NH{q', 17
        if sub_9d5ca2c6 + (0 / sub_f39c040e) < sub_9d5ca2c6:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfoMap[arg1][address(arg2)].field_0:
            if userInfoMap[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            if not -userInfoMap[arg1][address(arg2)].field_256:
                return 0
            if -userInfoMap[arg1][address(arg2)].field_256 and 10 > -1 / -userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            if not -userInfoMap[arg1][address(arg2)].field_256:
                revert with 'NH{q', 18
            if -10 * userInfoMap[arg1][address(arg2)].field_256 / -userInfoMap[arg1][address(arg2)].field_256 != 10:
                revert with 0, 'SafeMath: multiplication overflow'
            return (-10 * userInfoMap[arg1][address(arg2)].field_256 / 14)
        if userInfoMap[arg1][address(arg2)].field_0 and sub_9d5ca2c6 + (0 / sub_f39c040e) > -1 / userInfoMap[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfoMap[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / userInfoMap[arg1][address(arg2)].field_0 != sub_9d5ca2c6 + (0 / sub_f39c040e):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfoMap[arg1][address(arg2)].field_256 > (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12 < userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if not ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            return 0
        if ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256 and 10 > -1 / ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if not ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 18
        if (10 * (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - (10 * userInfoMap[arg1][address(arg2)].field_256) / ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256 != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((10 * (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + (0 / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - (10 * userInfoMap[arg1][address(arg2)].field_256) / 14)
    if (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) and 10^12 > -1 / (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac):
        revert with 'NH{q', 17
    if not (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac):
        revert with 'NH{q', 18
    if (10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / (block.timestamp * sub_de90dcac) - (sub_01ab93a9 * sub_de90dcac) != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if sub_f39c040e <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not sub_f39c040e:
        revert with 'NH{q', 18
    if sub_9d5ca2c6 > -((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e) - 1:
        revert with 'NH{q', 17
    if sub_9d5ca2c6 + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e) < sub_9d5ca2c6:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfoMap[arg1][address(arg2)].field_0:
        if userInfoMap[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if not -userInfoMap[arg1][address(arg2)].field_256:
            return 0
        if -userInfoMap[arg1][address(arg2)].field_256 and 10 > -1 / -userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if not -userInfoMap[arg1][address(arg2)].field_256:
            revert with 'NH{q', 18
        if -10 * userInfoMap[arg1][address(arg2)].field_256 / -userInfoMap[arg1][address(arg2)].field_256 != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        return (-10 * userInfoMap[arg1][address(arg2)].field_256 / 14)
    if userInfoMap[arg1][address(arg2)].field_0 and sub_9d5ca2c6 + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e) > -1 / userInfoMap[arg1][address(arg2)].field_0:
        revert with 'NH{q', 17
    if not userInfoMap[arg1][address(arg2)].field_0:
        revert with 'NH{q', 18
    if (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / userInfoMap[arg1][address(arg2)].field_0 != sub_9d5ca2c6 + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfoMap[arg1][address(arg2)].field_256 > (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12 < userInfoMap[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    if not ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
        return 0
    if ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256 and 10 > -1 / ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    if not ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256:
        revert with 'NH{q', 18
    if (10 * (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - (10 * userInfoMap[arg1][address(arg2)].field_256) / ((sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - userInfoMap[arg1][address(arg2)].field_256 != 10:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((10 * (sub_9d5ca2c6 * userInfoMap[arg1][address(arg2)].field_0) + ((10^12 * block.timestamp * sub_de90dcac) - (10^12 * sub_01ab93a9 * sub_de90dcac) / sub_f39c040e * userInfoMap[arg1][address(arg2)].field_0) / 10^12) - (10 * userInfoMap[arg1][address(arg2)].field_256) / 14)
}

function sub_fe7e60d3(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _218 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_218] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_218 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_218 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _218
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    _219 = mem[64]
    if mem[64] + (32 * ('cd', 36).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 36).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_219] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = _219 + 32
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _434 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_434] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_434 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_434 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _434
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    _435 = mem[64]
    if mem[64] + (32 * ('cd', 68).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 68).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_435] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = _435 + 32
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _648 = mem[96]
    idx = 0
    while idx < _648:
        _860 = mem[64]
        mem[64] = mem[64] + 160
        mem[_860] = stor12.length
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_860 + 32] = mem[(32 * idx) + 128]
        if idx >= mem[_219]:
            revert with 'NH{q', 50
        mem[_860 + 64] = mem[(32 * idx) + _219 + 32]
        if idx >= mem[_435]:
            revert with 'NH{q', 50
        mem[_860 + 96] = mem[(32 * idx) + _435 + 44 len 20]
        mem[_860 + 128] = 0
        stor12.length++
        mem[0] = 12
        stor12[stor12.length].field_0 = stor12.length
        _869 = mem[_860 + 32]
        _870 = mem[mem[_860 + 32]]
        if bool(stor12[stor12.length].field_256):
            if bool(stor12[stor12.length].field_256) == uint255(stor12[stor12.length].field_257) < 32:
                revert with 'NH{q', 34
            mem[0] = (5 * stor12.length) + sha3(12) + 1
            if not _870:
                stor12[stor12.length].field_256 = 0
                s = sha3((5 * stor12.length) + sha3(12) + 1)
                while sha3((5 * stor12.length) + sha3(12) + 1) + (uint255(stor12[stor12.length].field_257) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                _1075 = mem[_860 + 64]
                _1076 = mem[mem[_860 + 64]]
                if bool(stor12[stor12.length].field_512):
                    if bool(stor12[stor12.length].field_512) == uint255(stor12[stor12.length].field_513) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (5 * stor12.length) + sha3(12) + 2
                    if not _1076:
                        stor12[stor12.length].field_512 = 0
                        s = sha3((5 * stor12.length) + sha3(12) + 2)
                        while sha3((5 * stor12.length) + sha3(12) + 2) + (uint255(stor12[stor12.length].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor12[stor12.length].field_512 = (2 * _1076) + 1
                        t = sha3((5 * stor12.length) + sha3(12) + 2)
                        s = _1075 + 32
                        while _1075 + _1076 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((5 * stor12.length) + sha3(12) + 2) + (Mask(251, 0, _1076 + 31) >> 5)
                        while sha3((5 * stor12.length) + sha3(12) + 2) + (uint255(stor12[stor12.length].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor12[stor12.length].field_512) == stor12[stor12.length].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (5 * stor12.length) + sha3(12) + 2
                    if not _1076:
                        stor12[stor12.length].field_512 = 0
                        s = sha3((5 * stor12.length) + sha3(12) + 2)
                        while sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor12[stor12.length].field_512 = (2 * _1076) + 1
                        t = sha3((5 * stor12.length) + sha3(12) + 2)
                        s = _1075 + 32
                        while _1075 + _1076 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((5 * stor12.length) + sha3(12) + 2) + (Mask(251, 0, _1076 + 31) >> 5)
                        while sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            else:
                stor12[stor12.length].field_256 = (2 * _870) + 1
                t = sha3((5 * stor12.length) + sha3(12) + 1)
                s = _869 + 32
                while _869 + _870 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((5 * stor12.length) + sha3(12) + 1) + (Mask(251, 0, _870 + 31) >> 5)
                while sha3((5 * stor12.length) + sha3(12) + 1) + (uint255(stor12[stor12.length].field_257) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                _1287 = mem[_860 + 64]
                _1288 = mem[mem[_860 + 64]]
                if bool(stor12[stor12.length].field_512):
                    if bool(stor12[stor12.length].field_512) == uint255(stor12[stor12.length].field_513) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (5 * stor12.length) + sha3(12) + 2
                    if not _1288:
                        stor12[stor12.length].field_512 = 0
                        s = sha3((5 * stor12.length) + sha3(12) + 2)
                        while sha3((5 * stor12.length) + sha3(12) + 2) + (uint255(stor12[stor12.length].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor12[stor12.length].field_512 = (2 * _1288) + 1
                        t = sha3((5 * stor12.length) + sha3(12) + 2)
                        s = _1287 + 32
                        while _1287 + _1288 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((5 * stor12.length) + sha3(12) + 2) + (Mask(251, 0, _1288 + 31) >> 5)
                        while sha3((5 * stor12.length) + sha3(12) + 2) + (uint255(stor12[stor12.length].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor12[stor12.length].field_512) == stor12[stor12.length].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (5 * stor12.length) + sha3(12) + 2
                    if not _1288:
                        stor12[stor12.length].field_512 = 0
                        s = sha3((5 * stor12.length) + sha3(12) + 2)
                        while sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor12[stor12.length].field_512 = (2 * _1288) + 1
                        t = sha3((5 * stor12.length) + sha3(12) + 2)
                        s = _1287 + 32
                        while _1287 + _1288 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((5 * stor12.length) + sha3(12) + 2) + (Mask(251, 0, _1288 + 31) >> 5)
                        while sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
        else:
            if bool(stor12[stor12.length].field_256) == stor12[stor12.length].field_257 % 128 < 32:
                revert with 'NH{q', 34
            mem[0] = (5 * stor12.length) + sha3(12) + 1
            if not _870:
                stor12[stor12.length].field_256 = 0
                s = sha3((5 * stor12.length) + sha3(12) + 1)
                while sha3((5 * stor12.length) + sha3(12) + 1) + (stor12[stor12.length].field_257 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                _1081 = mem[_860 + 64]
                _1082 = mem[mem[_860 + 64]]
                if bool(stor12[stor12.length].field_512):
                    if bool(stor12[stor12.length].field_512) == uint255(stor12[stor12.length].field_513) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (5 * stor12.length) + sha3(12) + 2
                    if not _1082:
                        stor12[stor12.length].field_512 = 0
                        s = sha3((5 * stor12.length) + sha3(12) + 2)
                        while sha3((5 * stor12.length) + sha3(12) + 2) + (uint255(stor12[stor12.length].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor12[stor12.length].field_512 = (2 * _1082) + 1
                        t = sha3((5 * stor12.length) + sha3(12) + 2)
                        s = _1081 + 32
                        while _1081 + _1082 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((5 * stor12.length) + sha3(12) + 2) + (Mask(251, 0, _1082 + 31) >> 5)
                        while sha3((5 * stor12.length) + sha3(12) + 2) + (uint255(stor12[stor12.length].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    address(stor12[stor12.length].field_768) = mem[_860 + 108 len 20]
                    stor12[stor12.length].field_1024 = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if bool(stor12[stor12.length].field_512) == stor12[stor12.length].field_513 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = (5 * stor12.length) + sha3(12) + 2
                if not _1082:
                    stor12[stor12.length].field_512 = 0
                    s = sha3((5 * stor12.length) + sha3(12) + 2)
                    while sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    address(stor12[stor12.length].field_768) = mem[_860 + 108 len 20]
                    stor12[stor12.length].field_1024 = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor12[stor12.length].field_512 = (2 * _1082) + 1
                t = sha3((5 * stor12.length) + sha3(12) + 2)
                s = _1081 + 32
                while _1081 + _1082 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((5 * stor12.length) + sha3(12) + 2) + (Mask(251, 0, _1082 + 31) >> 5)
                while sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                address(stor12[stor12.length].field_768) = mem[_860 + 108 len 20]
                stor12[stor12.length].field_1024 = 0
                if sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) == -1:
                    revert with 'NH{q', 17
                s = sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) + 1
                continue 
            stor12[stor12.length].field_256 = (2 * _870) + 1
            t = sha3((5 * stor12.length) + sha3(12) + 1)
            s = _869 + 32
            while _869 + _870 + 32 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3((5 * stor12.length) + sha3(12) + 1) + (Mask(251, 0, _870 + 31) >> 5)
            while sha3((5 * stor12.length) + sha3(12) + 1) + (stor12[stor12.length].field_257 % 128 + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            _1325 = mem[_860 + 64]
            _1326 = mem[mem[_860 + 64]]
            if bool(stor12[stor12.length].field_512):
                if bool(stor12[stor12.length].field_512) == uint255(stor12[stor12.length].field_513) < 32:
                    revert with 'NH{q', 34
                mem[0] = (5 * stor12.length) + sha3(12) + 2
                if not _1326:
                    stor12[stor12.length].field_512 = 0
                    s = sha3((5 * stor12.length) + sha3(12) + 2)
                    while sha3((5 * stor12.length) + sha3(12) + 2) + (uint255(stor12[stor12.length].field_513) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor12[stor12.length].field_512 = (2 * _1326) + 1
                    t = sha3((5 * stor12.length) + sha3(12) + 2)
                    s = _1325 + 32
                    while _1325 + _1326 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((5 * stor12.length) + sha3(12) + 2) + (Mask(251, 0, _1326 + 31) >> 5)
                    while sha3((5 * stor12.length) + sha3(12) + 2) + (uint255(stor12[stor12.length].field_513) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor12[stor12.length].field_512) == stor12[stor12.length].field_513 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = (5 * stor12.length) + sha3(12) + 2
                if not _1326:
                    stor12[stor12.length].field_512 = 0
                    s = sha3((5 * stor12.length) + sha3(12) + 2)
                    while sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    address(stor12[stor12.length].field_768) = mem[_860 + 108 len 20]
                    stor12[stor12.length].field_1024 = 0
                    if sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) == -1:
                        revert with 'NH{q', 17
                    s = sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) + 1
                    continue 
                stor12[stor12.length].field_512 = (2 * _1326) + 1
                t = sha3((5 * stor12.length) + sha3(12) + 2)
                s = _1325 + 32
                while _1325 + _1326 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((5 * stor12.length) + sha3(12) + 2) + (Mask(251, 0, _1326 + 31) >> 5)
                while sha3((5 * stor12.length) + sha3(12) + 2) + (stor12[stor12.length].field_513 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        address(stor12[stor12.length].field_768) = mem[_860 + 108 len 20]
        stor12[stor12.length].field_1024 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_0d0d583b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * stor12.length) + 128
    mem[96] = stor12.length
    s = 128
    idx = 0
    while idx < stor12.length:
        mem[0] = 12
        _105 = mem[64]
        mem[64] = mem[64] + 160
        mem[_105] = stor12[idx].field_0
        if bool(stor12[idx].field_256):
            if bool(stor12[idx].field_256) == uint255(stor12[idx].field_257) < 32:
                revert with 'NH{q', 34
            _108 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_257)) + 32
            mem[_108] = uint255(stor12[idx].field_257)
            if bool(stor12[idx].field_256):
                if bool(stor12[idx].field_256) == uint255(stor12[idx].field_257) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor12[idx].field_257):
                    mem[_105 + 32] = _108
                    if bool(stor12[idx].field_512):
                        if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                            revert with 'NH{q', 34
                        _117 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                        mem[_117] = uint255(stor12[idx].field_513)
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_117 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_117 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _117 + 32
                                    u = sha3(mem[0])
                                    while _117 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_117 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_117 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _117 + 32
                                    u = sha3(mem[0])
                                    while _117 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _117
                    else:
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        _118 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                        mem[_118] = stor12[idx].field_513 % 128
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_118 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_118 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _118 + 32
                                    u = sha3(mem[0])
                                    while _118 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_118 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_118 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _118 + 32
                                    u = sha3(mem[0])
                                    while _118 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _118
                else:
                    if 31 >= uint255(stor12[idx].field_257):
                        mem[_108 + 32] = 256 * Mask(248, 0, stor12[idx].field_264)
                        mem[_105 + 32] = _108
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            _121 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                            mem[_121] = uint255(stor12[idx].field_513)
                            if bool(stor12[idx].field_512):
                                if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor12[idx].field_513):
                                    if 31 >= uint255(stor12[idx].field_513):
                                        mem[_121 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_121 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _121 + 32
                                        u = sha3(mem[0])
                                        while _121 + uint255(stor12[idx].field_513) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_513 % 128:
                                    if 31 >= stor12[idx].field_513 % 128:
                                        mem[_121 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_121 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _121 + 32
                                        u = sha3(mem[0])
                                        while _121 + stor12[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_105 + 64] = _121
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            _125 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                            mem[_125] = stor12[idx].field_513 % 128
                            if bool(stor12[idx].field_512):
                                if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor12[idx].field_513):
                                    if 31 >= uint255(stor12[idx].field_513):
                                        mem[_125 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_125 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _125 + 32
                                        u = sha3(mem[0])
                                        while _125 + uint255(stor12[idx].field_513) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_513 % 128:
                                    if 31 >= stor12[idx].field_513 % 128:
                                        mem[_125 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_125 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _125 + 32
                                        u = sha3(mem[0])
                                        while _125 + stor12[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_105 + 64] = _125
                    else:
                        mem[0] = (5 * idx) + sha3(12) + 1
                        mem[_108 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 1)].field_0
                        t = _108 + 32
                        u = sha3(mem[0])
                        while _108 + uint255(stor12[idx].field_257) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_105 + 32] = _108
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            _209 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                            mem[_209] = uint255(stor12[idx].field_513)
                            if bool(stor12[idx].field_512):
                                if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                    revert with 'NH{q', 34
                                if not uint255(stor12[idx].field_513):
                                    mem[_105 + 64] = _209
                                    mem[_105 + 96] = address(stor12[idx].field_768)
                                    mem[_105 + 128] = stor12[idx].field_1024
                                    mem[s] = _105
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_209 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    mem[_105 + 64] = _209
                                    mem[_105 + 96] = address(stor12[idx].field_768)
                                    mem[_105 + 128] = stor12[idx].field_1024
                                    mem[s] = _105
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[0] = (5 * idx) + sha3(12) + 2
                                mem[_209 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                t = _209 + 32
                                u = sha3(mem[0])
                                while _209 + uint255(stor12[u].field_513) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_105 + 64] = _209
                                mem[_105 + 96] = address(stor12[u].field_768)
                                mem[_105 + 128] = stor12[u].field_1024
                                mem[t] = _105
                                t = t + 32
                                u = u + 1
                                continue 
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_209 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_209 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _209 + 32
                                    u = sha3(mem[0])
                                    while _209 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_105 + 64] = _209
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            _214 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                            mem[_214] = stor12[idx].field_513 % 128
                            if bool(stor12[idx].field_512):
                                if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor12[idx].field_513):
                                    if 31 >= uint255(stor12[idx].field_513):
                                        mem[_214 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_214 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _214 + 32
                                        u = sha3(mem[0])
                                        while _214 + uint255(stor12[idx].field_513) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_513 % 128:
                                    if 31 >= stor12[idx].field_513 % 128:
                                        mem[_214 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_214 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _214 + 32
                                        u = sha3(mem[0])
                                        while _214 + stor12[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_105 + 64] = _214
            else:
                if bool(stor12[idx].field_256) == stor12[idx].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor12[idx].field_257 % 128:
                    mem[_105 + 32] = _108
                    if bool(stor12[idx].field_512):
                        if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                            revert with 'NH{q', 34
                        _119 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                        mem[_119] = uint255(stor12[idx].field_513)
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_119 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_119 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _119 + 32
                                    u = sha3(mem[0])
                                    while _119 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_119 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_119 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _119 + 32
                                    u = sha3(mem[0])
                                    while _119 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _119
                    else:
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        _122 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                        mem[_122] = stor12[idx].field_513 % 128
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_122 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_122 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _122 + 32
                                    u = sha3(mem[0])
                                    while _122 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_122 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_122 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _122 + 32
                                    u = sha3(mem[0])
                                    while _122 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _122
                else:
                    if 31 >= stor12[idx].field_257 % 128:
                        mem[_108 + 32] = 256 * Mask(248, 0, stor12[idx].field_264)
                        mem[_105 + 32] = _108
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            _126 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                            mem[_126] = uint255(stor12[idx].field_513)
                            if bool(stor12[idx].field_512):
                                if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor12[idx].field_513):
                                    if 31 >= uint255(stor12[idx].field_513):
                                        mem[_126 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_126 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _126 + 32
                                        u = sha3(mem[0])
                                        while _126 + uint255(stor12[idx].field_513) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_513 % 128:
                                    if 31 >= stor12[idx].field_513 % 128:
                                        mem[_126 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_126 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _126 + 32
                                        u = sha3(mem[0])
                                        while _126 + stor12[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_105 + 64] = _126
                            mem[_105 + 96] = address(stor12[idx].field_768)
                            mem[_105 + 128] = stor12[idx].field_1024
                            mem[s] = _105
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        _131 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                        mem[_131] = stor12[idx].field_513 % 128
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_131 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_131 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _131 + 32
                                    u = sha3(mem[0])
                                    while _131 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_105 + 64] = _131
                            mem[_105 + 96] = address(stor12[idx].field_768)
                            mem[_105 + 128] = stor12[idx].field_1024
                            mem[s] = _105
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        if not stor12[idx].field_513 % 128:
                            mem[_105 + 64] = _131
                            mem[_105 + 96] = address(stor12[idx].field_768)
                            mem[_105 + 128] = stor12[idx].field_1024
                            mem[s] = _105
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor12[idx].field_513 % 128:
                            mem[_131 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                            mem[_105 + 64] = _131
                            mem[_105 + 96] = address(stor12[idx].field_768)
                            mem[_105 + 128] = stor12[idx].field_1024
                            mem[s] = _105
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (5 * idx) + sha3(12) + 2
                        mem[_131 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                        t = _131 + 32
                        u = sha3(mem[0])
                        while _131 + stor12[u].field_513 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_105 + 64] = _131
                        mem[_105 + 96] = address(stor12[u].field_768)
                        mem[_105 + 128] = stor12[u].field_1024
                        mem[t] = _105
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (5 * idx) + sha3(12) + 1
                    mem[_108 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 1)].field_0
                    t = _108 + 32
                    u = sha3(mem[0])
                    while _108 + stor12[idx].field_257 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_105 + 32] = _108
                    if bool(stor12[idx].field_512):
                        if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                            revert with 'NH{q', 34
                        _210 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                        mem[_210] = uint255(stor12[idx].field_513)
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_210 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_210 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _210 + 32
                                    u = sha3(mem[0])
                                    while _210 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_210 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_210 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _210 + 32
                                    u = sha3(mem[0])
                                    while _210 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _210
                    else:
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        _215 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                        mem[_215] = stor12[idx].field_513 % 128
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_215 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_215 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _215 + 32
                                    u = sha3(mem[0])
                                    while _215 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_215 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_215 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _215 + 32
                                    u = sha3(mem[0])
                                    while _215 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _215
        else:
            if bool(stor12[idx].field_256) == stor12[idx].field_257 % 128 < 32:
                revert with 'NH{q', 34
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(stor12[idx].field_257 % 128) + 32
            mem[_109] = stor12[idx].field_257 % 128
            if bool(stor12[idx].field_256):
                if bool(stor12[idx].field_256) == uint255(stor12[idx].field_257) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor12[idx].field_257):
                    mem[_105 + 32] = _109
                    if bool(stor12[idx].field_512):
                        if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                            revert with 'NH{q', 34
                        _120 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                        mem[_120] = uint255(stor12[idx].field_513)
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_120 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_120 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _120 + 32
                                    u = sha3(mem[0])
                                    while _120 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_120 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_120 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _120 + 32
                                    u = sha3(mem[0])
                                    while _120 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _120
                    else:
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        _123 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                        mem[_123] = stor12[idx].field_513 % 128
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_123 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_123 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _123 + 32
                                    u = sha3(mem[0])
                                    while _123 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_123 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_123 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _123 + 32
                                    u = sha3(mem[0])
                                    while _123 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _123
                else:
                    if 31 >= uint255(stor12[idx].field_257):
                        mem[_109 + 32] = 256 * Mask(248, 0, stor12[idx].field_264)
                        mem[_105 + 32] = _109
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            _127 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                            mem[_127] = uint255(stor12[idx].field_513)
                            if bool(stor12[idx].field_512):
                                if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor12[idx].field_513):
                                    if 31 >= uint255(stor12[idx].field_513):
                                        mem[_127 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_127 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _127 + 32
                                        u = sha3(mem[0])
                                        while _127 + uint255(stor12[idx].field_513) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_513 % 128:
                                    if 31 >= stor12[idx].field_513 % 128:
                                        mem[_127 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_127 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _127 + 32
                                        u = sha3(mem[0])
                                        while _127 + stor12[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_105 + 64] = _127
                            mem[_105 + 96] = address(stor12[idx].field_768)
                            mem[_105 + 128] = stor12[idx].field_1024
                            mem[s] = _105
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        _132 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                        mem[_132] = stor12[idx].field_513 % 128
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_132 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_132 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _132 + 32
                                    u = sha3(mem[0])
                                    while _132 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_105 + 64] = _132
                            mem[_105 + 96] = address(stor12[idx].field_768)
                            mem[_105 + 128] = stor12[idx].field_1024
                            mem[s] = _105
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        if not stor12[idx].field_513 % 128:
                            mem[_105 + 64] = _132
                            mem[_105 + 96] = address(stor12[idx].field_768)
                            mem[_105 + 128] = stor12[idx].field_1024
                            mem[s] = _105
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor12[idx].field_513 % 128:
                            mem[_132 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                            mem[_105 + 64] = _132
                            mem[_105 + 96] = address(stor12[idx].field_768)
                            mem[_105 + 128] = stor12[idx].field_1024
                            mem[s] = _105
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (5 * idx) + sha3(12) + 2
                        mem[_132 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                        t = _132 + 32
                        u = sha3(mem[0])
                        while _132 + stor12[u].field_513 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_105 + 64] = _132
                        mem[_105 + 96] = address(stor12[u].field_768)
                        mem[_105 + 128] = stor12[u].field_1024
                        mem[t] = _105
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (5 * idx) + sha3(12) + 1
                    mem[_109 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 1)].field_0
                    t = _109 + 32
                    u = sha3(mem[0])
                    while _109 + uint255(stor12[idx].field_257) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_105 + 32] = _109
                    if bool(stor12[idx].field_512):
                        if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                            revert with 'NH{q', 34
                        _211 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                        mem[_211] = uint255(stor12[idx].field_513)
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_211 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_211 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _211 + 32
                                    u = sha3(mem[0])
                                    while _211 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_211 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_211 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _211 + 32
                                    u = sha3(mem[0])
                                    while _211 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _211
                    else:
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        _216 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                        mem[_216] = stor12[idx].field_513 % 128
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_216 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_216 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _216 + 32
                                    u = sha3(mem[0])
                                    while _216 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_216 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_216 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _216 + 32
                                    u = sha3(mem[0])
                                    while _216 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _216
            else:
                if bool(stor12[idx].field_256) == stor12[idx].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor12[idx].field_257 % 128:
                    mem[_105 + 32] = _109
                    if bool(stor12[idx].field_512):
                        if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                            revert with 'NH{q', 34
                        _124 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                        mem[_124] = uint255(stor12[idx].field_513)
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_124 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_124 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _124 + 32
                                    u = sha3(mem[0])
                                    while _124 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_124 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_124 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _124 + 32
                                    u = sha3(mem[0])
                                    while _124 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _124
                    else:
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        _128 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                        mem[_128] = stor12[idx].field_513 % 128
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor12[idx].field_513):
                                if 31 >= uint255(stor12[idx].field_513):
                                    mem[_128 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_128 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _128 + 32
                                    u = sha3(mem[0])
                                    while _128 + uint255(stor12[idx].field_513) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_513 % 128:
                                if 31 >= stor12[idx].field_513 % 128:
                                    mem[_128 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                else:
                                    mem[0] = (5 * idx) + sha3(12) + 2
                                    mem[_128 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                    t = _128 + 32
                                    u = sha3(mem[0])
                                    while _128 + stor12[idx].field_513 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_105 + 64] = _128
                else:
                    if 31 >= stor12[idx].field_257 % 128:
                        mem[_109 + 32] = 256 * Mask(248, 0, stor12[idx].field_264)
                        mem[_105 + 32] = _109
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            _133 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                            mem[_133] = uint255(stor12[idx].field_513)
                            if bool(stor12[idx].field_512):
                                if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor12[idx].field_513):
                                    if 31 >= uint255(stor12[idx].field_513):
                                        mem[_133 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_133 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _133 + 32
                                        u = sha3(mem[0])
                                        while _133 + uint255(stor12[idx].field_513) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[_105 + 64] = _133
                                mem[_105 + 96] = address(stor12[idx].field_768)
                                mem[_105 + 128] = stor12[idx].field_1024
                                mem[s] = _105
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            if not stor12[idx].field_513 % 128:
                                mem[_105 + 64] = _133
                                mem[_105 + 96] = address(stor12[idx].field_768)
                                mem[_105 + 128] = stor12[idx].field_1024
                                mem[s] = _105
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor12[idx].field_513 % 128:
                                mem[_133 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                mem[_105 + 64] = _133
                                mem[_105 + 96] = address(stor12[idx].field_768)
                                mem[_105 + 128] = stor12[idx].field_1024
                                mem[s] = _105
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = (5 * idx) + sha3(12) + 2
                            mem[_133 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                            t = _133 + 32
                            u = sha3(mem[0])
                            while _133 + stor12[u].field_513 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_105 + 64] = _133
                            mem[_105 + 96] = address(stor12[u].field_768)
                            mem[_105 + 128] = stor12[u].field_1024
                            mem[t] = _105
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        _137 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                        mem[_137] = stor12[idx].field_513 % 128
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            if not uint255(stor12[idx].field_513):
                                mem[_105 + 64] = _137
                                mem[_105 + 96] = address(stor12[idx].field_768)
                                mem[_105 + 128] = stor12[idx].field_1024
                                mem[s] = _105
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor12[idx].field_513):
                                mem[_137 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                mem[_105 + 64] = _137
                                mem[_105 + 96] = address(stor12[idx].field_768)
                                mem[_105 + 128] = stor12[idx].field_1024
                                mem[s] = _105
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = (5 * idx) + sha3(12) + 2
                            mem[_137 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                            t = _137 + 32
                            u = sha3(mem[0])
                            while _137 + uint255(stor12[u].field_513) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_105 + 64] = _137
                            mem[_105 + 96] = address(stor12[u].field_768)
                            mem[_105 + 128] = stor12[u].field_1024
                            mem[t] = _105
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor12[idx].field_513 % 128:
                            if 31 >= stor12[idx].field_513 % 128:
                                mem[_137 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                            else:
                                mem[0] = (5 * idx) + sha3(12) + 2
                                mem[_137 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                t = _137 + 32
                                u = sha3(mem[0])
                                while _137 + stor12[idx].field_513 % 128 > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_105 + 64] = _137
                    else:
                        mem[0] = (5 * idx) + sha3(12) + 1
                        mem[_109 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 1)].field_0
                        t = _109 + 32
                        u = sha3(mem[0])
                        while _109 + stor12[idx].field_257 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_105 + 32] = _109
                        if bool(stor12[idx].field_512):
                            if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                revert with 'NH{q', 34
                            _212 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor12[idx].field_513)) + 32
                            mem[_212] = uint255(stor12[idx].field_513)
                            if bool(stor12[idx].field_512):
                                if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor12[idx].field_513):
                                    if 31 >= uint255(stor12[idx].field_513):
                                        mem[_212 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_212 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _212 + 32
                                        u = sha3(mem[0])
                                        while _212 + uint255(stor12[idx].field_513) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_513 % 128:
                                    if 31 >= stor12[idx].field_513 % 128:
                                        mem[_212 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_212 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _212 + 32
                                        u = sha3(mem[0])
                                        while _212 + stor12[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_105 + 64] = _212
                        else:
                            if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            _217 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_513 % 128) + 32
                            mem[_217] = stor12[idx].field_513 % 128
                            if bool(stor12[idx].field_512):
                                if bool(stor12[idx].field_512) == uint255(stor12[idx].field_513) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor12[idx].field_513):
                                    if 31 >= uint255(stor12[idx].field_513):
                                        mem[_217 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_217 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _217 + 32
                                        u = sha3(mem[0])
                                        while _217 + uint255(stor12[idx].field_513) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor12[idx].field_512) == stor12[idx].field_513 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_513 % 128:
                                    if 31 >= stor12[idx].field_513 % 128:
                                        mem[_217 + 32] = 256 * Mask(248, 0, stor12[idx].field_520)
                                    else:
                                        mem[0] = (5 * idx) + sha3(12) + 2
                                        mem[_217 + 32] = stor[sha3((5 * idx) + ('name', 'stor12', 12) + 2)].field_0
                                        t = _217 + 32
                                        u = sha3(mem[0])
                                        while _217 + stor12[idx].field_513 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_105 + 64] = _217
        mem[_105 + 96] = address(stor12[idx].field_768)
        mem[_105 + 128] = stor12[idx].field_1024
        mem[s] = _105
        s = s + 32
        idx = idx + 1
        continue 
    _106 = mem[64]
    mem[mem[64]] = 32
    _107 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _107:
        mem[u] = t + -_106 - 64
        _206 = mem[s]
        mem[t] = mem[mem[s]]
        _213 = mem[_206 + 32]
        mem[t + 32] = 160
        _218 = mem[_213]
        mem[t + 160] = mem[_213]
        v = 0
        while v < _218:
            mem[t + v + 192] = mem[_213 + v + 32]
            v = v + 32
            continue 
        if ceil32(_218) <= _218:
            _251 = mem[_206 + 64]
            mem[t + 64] = ceil32(_218) + 192
            _253 = mem[_251]
            mem[t + ceil32(_218) + 192] = mem[_251]
            v = 0
            while v < _253:
                mem[t + ceil32(_218) + v + 224] = mem[_251 + v + 32]
                v = v + 32
                continue 
            if ceil32(_253) > _253:
                mem[t + ceil32(_218) + _253 + 224] = 0
            mem[t + 96] = mem[_206 + 108 len 20]
            mem[t + 128] = mem[_206 + 128]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_218) + ceil32(_253) + 224
            u = u + 32
            continue 
        mem[t + _218 + 192] = 0
        _252 = mem[_206 + 64]
        mem[t + 64] = ceil32(_218) + 192
        _254 = mem[_252]
        mem[t + ceil32(_218) + 192] = mem[_252]
        v = 0
        while v < _254:
            mem[t + ceil32(_218) + v + 224] = mem[_252 + v + 32]
            v = v + 32
            continue 
        if ceil32(_254) > _254:
            mem[t + ceil32(_218) + _254 + 224] = 0
        mem[t + 96] = mem[_206 + 108 len 20]
        mem[t + 128] = mem[_206 + 128]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_218) + ceil32(_254) + 224
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
