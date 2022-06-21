contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 sub_79aee341;
address sub_11138a6dAddress;
address sub_9539cb6eAddress;
address treasuryAddress;
address sub_032a426bAddress;
address stor106;
uint256 sub_59cc9fe1;
uint256 sub_650d17ba;
uint256 sub_a9f5185e;
uint256 sub_98bfec9f;
uint256 sub_1961dccd;
uint256 sub_e2d0e0d9;
mapping of uint256 sub_42bd01fd;
mapping of uint256 sub_c4e2b982;

function sub_032a426b(?) payable {
    return sub_032a426bAddress
}

function sub_11138a6d(?) payable {
    return sub_11138a6dAddress
}

function sub_1961dccd(?) payable {
    return sub_1961dccd
}

function sub_42bd01fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_42bd01fd[arg1]
}

function sub_59cc9fe1(?) payable {
    return sub_59cc9fe1
}

function treasury() payable {
    return treasuryAddress
}

function sub_650d17ba(?) payable {
    return sub_650d17ba
}

function sub_79aee341(?) payable {
    return sub_79aee341
}

function owner() payable {
    return owner
}

function sub_9539cb6e(?) payable {
    return sub_9539cb6eAddress
}

function sub_98bfec9f(?) payable {
    return sub_98bfec9f
}

function sub_a9f5185e(?) payable {
    return sub_a9f5185e
}

function sub_c4e2b982(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c4e2b982[arg1]
}

function sub_e2d0e0d9(?) payable {
    return sub_e2d0e0d9
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_d808b35c(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a9f5185e = arg3
    sub_650d17ba = arg2
    sub_59cc9fe1 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_009781d9(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = address(arg1)
    sub_9539cb6eAddress = address(arg3)
    sub_11138a6dAddress = address(arg4)
    stor106 = address(arg2)
    sub_032a426bAddress = address(arg5)
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
}

function sub_31759607(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if tx.origin != msg.sender:
        revert with 0, 'Only non-contract call'
    if arg1 > 10:
        revert with 0, 'Maximum ticket is 10.'
    if sub_e2d0e0d9 > !arg1:
        revert with 0, 17
    if sub_e2d0e0d9 + arg1 >= sub_59cc9fe1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'exceed limit ticket of Noel event.'
    if sub_650d17ba > !sub_a9f5185e:
        revert with 0, 17
    if sub_1961dccd > !sub_98bfec9f:
        revert with 0, 17
    if sub_1961dccd + sub_98bfec9f >= sub_650d17ba + sub_a9f5185e:
        revert with 0, 'The event has finished.'
    mem[96] = 0x2be4ee2e00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = msg.sender
    require ext_code.size(sub_032a426bAddress)
    call sub_032a426bAddress.0x2be4ee2e with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = 0
    while idx < arg1:
        if sub_e2d0e0d9 > -2:
            revert with 0, 17
        sub_e2d0e0d9++
        mem[mem[64] + 4] = 10000
        require ext_code.size(stor106)
        staticcall stor106.getPocoRandom(uint256 arg1) with:
                gas gas_remaining wei
               args 10000
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_23] >= 10:
            if mem[_23] > 9950:
                if sub_98bfec9f < sub_a9f5185e:
                    if sub_98bfec9f > -2:
                        revert with 0, 17
                    sub_98bfec9f++
                    mem[0] = msg.sender
                    mem[32] = 114
                    if sub_c4e2b982[msg.sender] > -2:
                        revert with 0, 17
                    sub_c4e2b982[msg.sender]++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if sub_1961dccd >= sub_650d17ba:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if sub_1961dccd > -2:
            revert with 0, 17
        sub_1961dccd++
        mem[0] = msg.sender
        mem[32] = 113
        if sub_42bd01fd[msg.sender] > -2:
            revert with 0, 17
        sub_42bd01fd[msg.sender]++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    emit 0x9fe39bef: 0, s, arg1, msg.sender
}

function sub_ad25b575(?) payable {
    require calldata.size - 4 >= 32
    if 1 == arg1:
        if 1 > !(block.timestamp % 10):
            revert with 0, 17
        if not sub_42bd01fd[msg.sender]:
            revert with 0, 'No left noel wining ticket'
        require ext_code.size(sub_9539cb6eAddress)
        if 1 == (block.timestamp % 10) + 1:
            call sub_9539cb6eAddress.0x98204e01 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 110804, 11116401134801, 1, 3
        else:
            if 2 == (block.timestamp % 10) + 1:
                call sub_9539cb6eAddress.0x98204e01 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 111005, 11126301144701, 1, 3
            else:
                if 3 == (block.timestamp % 10) + 1:
                    call sub_9539cb6eAddress.0x98204e01 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 110704, 11116801134209, 2, 3
                else:
                    if 4 == (block.timestamp % 10) + 1:
                        call sub_9539cb6eAddress.0x98204e01 with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), 111005, 11116501144210, 2, 3
                    else:
                        if 5 == (block.timestamp % 10) + 1:
                            call sub_9539cb6eAddress.0x98204e01 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), 110804, 11116601134209, 3, 3
                        else:
                            if 6 == (block.timestamp % 10) + 1:
                                call sub_9539cb6eAddress.0x98204e01 with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), 111005, 11116701144210, 3, 3
                            else:
                                if 7 == (block.timestamp % 10) + 1:
                                    call sub_9539cb6eAddress.0x98204e01 with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), 110904, 11115901134301, 4, 3
                                else:
                                    if 8 == (block.timestamp % 10) + 1:
                                        call sub_9539cb6eAddress.0x98204e01 with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), 111005, 11126001144401, 4, 3
                                    else:
                                        if 9 == (block.timestamp % 10) + 1:
                                            call sub_9539cb6eAddress.0x98204e01 with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), 110804, 11116201134501, 5, 3
                                        else:
                                            if (block.timestamp % 10) + 1 != 10:
                                                call sub_9539cb6eAddress.0x98204e01 with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), 0, 0, 0, 3
                                            else:
                                                call sub_9539cb6eAddress.0x98204e01 with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), 111005, 11126101144601, 5, 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_42bd01fd[msg.sender] < 1:
            revert with 0, 17
        sub_42bd01fd[msg.sender]--
        require ext_code.size(sub_9539cb6eAddress)
        staticcall sub_9539cb6eAddress.0xecc286d0 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 17
        emit 0x505df4fa: 1, msg.sender, ext_call.return_data[0] - 1
    else:
        if 2 == arg1:
            if not sub_c4e2b982[msg.sender]:
                revert with 0, 'No left noel wining ticket'
            require ext_code.size(stor106)
            staticcall stor106.getPocoRandom(uint256 arg1) with:
                    gas gas_remaining wei
                   args 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor106)
            if 5 == ext_call.return_data[0]:
                staticcall stor106.getPocoRandom(uint256 arg1) with:
                        gas gas_remaining wei
                       args 7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 3 > !ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(sub_11138a6dAddress)
                call sub_11138a6dAddress.0x8420c816 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0], 12, ext_call.return_data[0] + 3
            else:
                if 4 == ext_call.return_data[0]:
                    staticcall stor106.getPocoRandom(uint256 arg1) with:
                            gas gas_remaining wei
                           args 9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 11 > !ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(sub_11138a6dAddress)
                    call sub_11138a6dAddress.0x8420c816 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], 12, ext_call.return_data[0] + 11
                else:
                    if 3 == ext_call.return_data[0]:
                        staticcall stor106.getPocoRandom(uint256 arg1) with:
                                gas gas_remaining wei
                               args 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 4 > !ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(sub_11138a6dAddress)
                        call sub_11138a6dAddress.0x8420c816 with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], 12, ext_call.return_data[0] + 4
                    else:
                        if ext_call.return_data[0] != 2:
                            staticcall stor106.getPocoRandom(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 11 > !ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(sub_11138a6dAddress)
                            call sub_11138a6dAddress.0x8420c816 with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0], 12, ext_call.return_data[0] + 11
                        else:
                            staticcall stor106.getPocoRandom(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args 41
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 79 > !ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(sub_11138a6dAddress)
                            call sub_11138a6dAddress.0x8420c816 with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0], 12, ext_call.return_data[0] + 79
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_c4e2b982[msg.sender] < 1:
                revert with 0, 17
            sub_c4e2b982[msg.sender]--
            require ext_code.size(sub_11138a6dAddress)
            staticcall sub_11138a6dAddress.0xecc286d0 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 1:
                revert with 0, 17
            emit 0x505df4fa: 1, msg.sender, ext_call.return_data[0] - 1
}



}
