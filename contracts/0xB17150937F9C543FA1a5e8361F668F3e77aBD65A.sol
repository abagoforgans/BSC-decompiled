contract main {




// =====================  Runtime code  =====================


const name = 'ZARTOKEN'

const decimals = 18

const symbol = 'ZAR'


uint256 totalSupply;
uint256 totalStaked;
mapping of struct stakedOf;
uint256 stor3;
address stor4;

function totalSupply() payable {
    return totalSupply
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stakedOf[address(arg1)].field_0)
}

function totalStaked() payable {
    return totalStaked
}

function stakedOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakedOf[address(arg1)].field_512
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return stakedOf[address(arg1)][3][address(arg2)].field_0
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return (stakedOf[address(arg1)].field_256 - stakedOf[address(arg1)].field_512)
}

function dividendsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return (Mask(192, 64, (stor3 * stakedOf[address(arg1)].field_512) - stakedOf[address(arg1)].field_1024) >> 64)
}

function whitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor4
    stakedOf[address(arg1)].field_0 = uint8(arg2)
    emit Whitelist(arg2, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    stakedOf[address(msg.sender)][3][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function allInfoFor(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupply, 
           totalStaked,
           stakedOf[address(arg1)].field_256 - stakedOf[address(arg1)].field_512,
           stakedOf[address(arg1)].field_512,
           Mask(192, 64, (stor3 * stakedOf[address(arg1)].field_512) - stakedOf[address(arg1)].field_1024) >> 64
}

function distribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require totalStaked > 0
    require stakedOf[address(msg.sender)].field_256 - stakedOf[address(msg.sender)].field_512 >= arg1
    stakedOf[address(msg.sender)].field_256 -= arg1
    require totalStaked
    stor3 += arg1 << 64 / totalStaked
    emit Transfer(arg1, msg.sender, this.address);
}

function stakeDrop(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stakedOf[address(msg.sender)].field_256 - stakedOf[address(msg.sender)].field_512 >= arg1
    stakedOf[address(msg.sender)].field_256 -= arg1
    require totalStaked > 0
    require totalStaked
    stor3 += arg1 << 64 / totalStaked
    emit Transfer(arg1, msg.sender, this.address);
    emit Fee(arg1);
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stakedOf[address(msg.sender)].field_256 - stakedOf[address(msg.sender)].field_512 >= arg1
    require stakedOf[address(msg.sender)].field_512 + arg1 >= 10 * 10^18
    totalStaked += arg1
    stakedOf[address(msg.sender)].field_512 += arg1
    stakedOf[address(msg.sender)].field_1024 += arg1 * stor3
    emit Transfer(arg1, msg.sender, this.address);
    emit Stake(arg1, msg.sender);
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stakedOf[address(msg.sender)].field_512 >= arg1
    require totalStaked
    stor3 += 9 * arg1 / 100 << 64 / totalStaked
    totalStaked -= arg1
    stakedOf[address(msg.sender)].field_256 -= 9 * arg1 / 100
    stakedOf[address(msg.sender)].field_512 -= arg1
    stakedOf[address(msg.sender)].field_1024 += -1 * arg1 * stor3
    emit Transfer((arg1 - (9 * arg1 / 100)), this.address, msg.sender);
    emit Unstake(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require stakedOf[address(msg.sender)].field_256 - stakedOf[address(msg.sender)].field_512 >= arg2
    stakedOf[address(msg.sender)].field_256 -= arg2
    if totalStaked <= 0:
        stakedOf[address(arg1)].field_256 += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        stakedOf[address(arg1)].field_256 = stakedOf[address(arg1)].field_256 + arg2 - (arg2 / 100)
        emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
        require totalStaked
        stor3 += arg2 / 100 << 64 / totalStaked
        emit Transfer((arg2 / 100), msg.sender, this.address);
        emit Fee((arg2 / 100));
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require stakedOf[address(arg1)][3][address(msg.sender)].field_0 >= arg3
    stakedOf[address(arg1)][3][address(msg.sender)].field_0 -= arg3
    require stakedOf[address(arg1)].field_256 - stakedOf[address(arg1)].field_512 >= arg3
    stakedOf[address(arg1)].field_256 -= arg3
    if totalStaked <= 0:
        stakedOf[address(arg2)].field_256 += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        stakedOf[address(arg2)].field_256 = stakedOf[address(arg2)].field_256 + arg3 - (arg3 / 100)
        emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
        require totalStaked
        stor3 += arg3 / 100 << 64 / totalStaked
        emit Transfer((arg3 / 100), arg1, this.address);
        emit Fee((arg3 / 100));
    return 1
}

function collect() payable {
    require Mask(192, 64, (stor3 * stakedOf[address(msg.sender)].field_512) - stakedOf[address(msg.sender)].field_1024) >> 64 >= 0
    stakedOf[address(msg.sender)].field_1024 += Mask(192, 64, (stor3 * stakedOf[address(msg.sender)].field_512) - stakedOf[address(msg.sender)].field_1024)
    stakedOf[address(msg.sender)].field_256 += Mask(192, 64, (stor3 * stakedOf[address(msg.sender)].field_512) - stakedOf[address(msg.sender)].field_1024) >> 64
    emit Transfer((Mask(192, 64, (stor3 * stakedOf[address(msg.sender)].field_512) - stakedOf[address(msg.sender)].field_1024) >> 64), this.address, msg.sender);
    emit Collect((Mask(192, 64, (stor3 * stakedOf[address(msg.sender)].field_512) - stakedOf[address(msg.sender)].field_1024) >> 64), msg.sender);
    return (Mask(192, 64, (stor3 * stakedOf[address(msg.sender)].field_512) - stakedOf[address(msg.sender)].field_1024) >> 64)
}

function bulkTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require stakedOf[address(msg.sender)].field_256 - stakedOf[address(msg.sender)].field_512 >= cd[((32 * idx) + arg2 + 36)]
        stakedOf[address(msg.sender)].field_256 -= cd[((32 * idx) + arg2 + 36)]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        if totalStaked <= 0:
            stakedOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 += cd[((32 * idx) + arg2 + 36)]
            mem[96] = cd[((32 * idx) + arg2 + 36)]
            emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        else:
            stakedOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 = stakedOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 + cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] / 100)
            emit Transfer((cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] / 100)), msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
            require totalStaked
            stor3 += cd[((32 * idx) + arg2 + 36)] / 100 << 64 / totalStaked
            emit Transfer((cd[((32 * idx) + arg2 + 36)] / 100), msg.sender, this.address);
            mem[96] = cd[((32 * idx) + arg2 + 36)] / 100
            emit Fee((cd[((32 * idx) + arg2 + 36)] / 100));
        idx = idx + 1
        continue 
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require stakedOf[address(msg.sender)].field_256 - stakedOf[address(msg.sender)].field_512 >= arg2
    stakedOf[address(msg.sender)].field_256 -= arg2
    if totalStaked <= 0:
        stakedOf[address(arg1)].field_256 += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if uint32(ext_code.size(arg1)) > 0:
            mem[228 len arg3.length] = arg3[all]
            mem[arg3.length + 228] = 0
            require ext_code.size(arg1)
            call arg1.tokenCallback(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), arg2, 96, arg3.length, arg3[all], mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    else:
        stakedOf[address(arg1)].field_256 = stakedOf[address(arg1)].field_256 + arg2 - (arg2 / 100)
        emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
        require totalStaked
        stor3 += arg2 / 100 << 64 / totalStaked
        emit Transfer((arg2 / 100), msg.sender, this.address);
        emit Fee((arg2 / 100));
        if uint32(ext_code.size(arg1)) > 0:
            mem[228 len arg3.length] = arg3[all]
            mem[arg3.length + 228] = 0
            require ext_code.size(arg1)
            call arg1.tokenCallback(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), arg2 - (arg2 / 100), 96, arg3.length, arg3[all], mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    return 1
}



}
