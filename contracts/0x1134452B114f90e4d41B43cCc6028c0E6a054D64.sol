contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const internalDecimals = 1000000 * 10^18

const DOMAIN_TYPEHASH = sha3(0x6e454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const DELEGATION_TYPEHASH = sha3(0x6444656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279)

const BASE = 10^18


array of struct name;
array of uint256 symbol;
uint8 decimals;
address stor3;
address govAddress; offset 8
uint256 stor3; offset 8
address pendingGovAddress;
address rebaserAddress;
address migratorAddress;
address incentivizerAddress;
uint256 totalSupply;
uint256 sub_1b267f4b;
mapping of uint256 balanceOfUnderlying;
mapping of uint256 allowance;
uint256 initSupply;
uint256 DOMAIN_SEPARATOR;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;
address implementationAddress;

function name() payable {
    return name[0 len name.length].field_0
}

function rebaser() payable {
    return rebaserAddress
}

function gov() payable {
    return govAddress
}

function totalSupply() payable {
    return totalSupply
}

function sub_1b267f4b(?) payable {
    return sub_1b267f4b
}

function pendingGov() payable {
    return pendingGovAddress
}

function decimals() payable {
    return decimals
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function balanceOfUnderlying(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOfUnderlying[address(arg1)]
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function implementation() payable {
    return implementationAddress
}

function incentivizer() payable {
    return incentivizerAddress
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function migrator() payable {
    return migratorAddress
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function initSupply() payable {
    return initSupply
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function maxScalingFactor() payable {
    require initSupply
    return (-1 / initSupply)
}

function _setRebaser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == govAddress
    rebaserAddress = arg1
    emit NewRebaser(rebaserAddress, arg1);
}

function _setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == govAddress
    migratorAddress = arg1
    emit NewMigrator(address(arg1), arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit 0x658c5be1: arg2, msg.sender, arg1
    return 1
}

function _setPendingGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == govAddress
    pendingGovAddress = arg1
    emit NewPendingGov(pendingGovAddress, arg1);
}

function _setIncentivizer(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == govAddress
    incentivizerAddress = arg1
    emit NewIncentivizer(incentivizerAddress, arg1);
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function _acceptGov() payable {
    if pendingGovAddress != msg.sender:
        revert with 0, '!pending'
    Mask(248, 0, stor3.field_8) = pendingGovAddress
    pendingGovAddress = 0
    emit NewGov(address rg1, address rg2):
                address(stor3.field_0),
                0,
                pendingGovAddress,
}

function _resignImplementation() payable {
    if govAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x736f6e6c792074686520676f76206d61792063616c6c205f72657369676e496d706c656d656e746174696f,
                    mem[207 len 21]
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[msg.sender][address(arg1)] += arg2
    emit 0x658c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function sub_e0a7e82d(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if sub_1b267f4b * arg1 / arg1 != sub_1b267f4b:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sub_1b267f4b * arg1 / 1000000 * 10^18)
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if arg2 > allowance[msg.sender][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[msg.sender][address(arg1)] -= arg2
    emit 0x658c5be1: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function _becomeImplementation(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if govAddress != msg.sender:
        revert with 0, 
                    32,
                    43,
                    0x646f6e6c792074686520676f76206d61792063616c6c205f6265636f6d65496d706c656d656e746174696f,
                    mem[ceil32(arg1.length) + 239 len 21]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not balanceOfUnderlying[address(arg1)]:
        return 0
    if sub_1b267f4b * balanceOfUnderlying[address(arg1)] / balanceOfUnderlying[address(arg1)] != sub_1b267f4b:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sub_1b267f4b * balanceOfUnderlying[address(arg1)] / 1000000 * 10^18)
}

function initialize(string arg1, string arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if sub_1b267f4b:
        revert with 0, 'already initialized'
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
}

function sub_9aae2ce0(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if not sub_1b267f4b:
            revert with 0, 'SafeMath: division by zero'
        return (0 / sub_1b267f4b)
    if 1000000 * 10^18 * arg1 / arg1 != 1000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not sub_1b267f4b:
        revert with 0, 'SafeMath: division by zero'
    return (1000000 * 10^18 * arg1 / sub_1b267f4b)
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if block.timestamp > arg4:
        revert with 0, 'BEAVER/permit-expired'
    nonces[address(arg1)]++
    if not arg1:
        revert with 0, 'BEAVER/invalid-address-0'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'BEAVER/invalid-permit'
    allowance[address(arg1)][address(arg2)] = arg3
    emit 0x658c5be1: arg3, arg1, arg2
}

function rescueTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == govAddress
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654245415645523a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[205 len 23]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 15)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function initialize(string arg1, string arg2, uint8 arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if sub_1b267f4b:
        revert with 0, 'already initialized'
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
    sub_1b267f4b = 10^18
    if not arg5:
        if not sub_1b267f4b:
            revert with 0, 'SafeMath: division by zero'
        initSupply = 0 / sub_1b267f4b
        totalSupply = arg5
        balanceOfUnderlying[address(arg4)] = 0 / sub_1b267f4b
    else:
        if 1000000 * 10^18 * arg5 / arg5 != 1000000 * 10^18:
            revert with 0, 
                        32,
                        33,
                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 261 len 31]
        if not sub_1b267f4b:
            var51001 = 32
            revert with 0, 'SafeMath: division by zero'
        initSupply = 1000000 * 10^18 * arg5 / sub_1b267f4b
        totalSupply = arg5
        balanceOfUnderlying[address(arg4)] = 1000000 * 10^18 * arg5 / sub_1b267f4b
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len 67] = 0x6e454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = uint256(name.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 224
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + 224 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    DOMAIN_SEPARATOR = sha3(sha3(0x6e454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len name.length]), chainid, this.address)
}

function rebase(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == rebaserAddress
    if arg2:
        if not arg3:
            if arg2 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_1b267f4b:
                sub_1b267f4b = 0
            else:
                if (10^18 * sub_1b267f4b) - (arg2 * sub_1b267f4b) / sub_1b267f4b != -arg2 + 10^18:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                sub_1b267f4b = (10^18 * sub_1b267f4b) - (arg2 * sub_1b267f4b) / 10^18
            if not initSupply:
                totalSupply = 0
            else:
                if sub_1b267f4b * initSupply / initSupply != sub_1b267f4b:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                totalSupply = sub_1b267f4b * initSupply / 1000000 * 10^18
        else:
            if arg2 + 10^18 < 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b267f4b:
                require initSupply
                if 0 >= -1 / initSupply:
                    require initSupply
                    sub_1b267f4b = -1 / initSupply
                    if sub_1b267f4b * initSupply / initSupply != sub_1b267f4b:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    totalSupply = sub_1b267f4b * initSupply / 1000000 * 10^18
                else:
                    sub_1b267f4b = 0
                    if not initSupply:
                        totalSupply = 0
                    else:
                        if sub_1b267f4b * initSupply / initSupply != sub_1b267f4b:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        totalSupply = sub_1b267f4b * initSupply / 1000000 * 10^18
            else:
                if (10^18 * sub_1b267f4b) + (arg2 * sub_1b267f4b) / sub_1b267f4b != arg2 + 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require initSupply
                if (10^18 * sub_1b267f4b) + (arg2 * sub_1b267f4b) / 10^18 >= -1 / initSupply:
                    require initSupply
                    sub_1b267f4b = -1 / initSupply
                    if sub_1b267f4b * initSupply / initSupply != sub_1b267f4b:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    totalSupply = sub_1b267f4b * initSupply / 1000000 * 10^18
                else:
                    sub_1b267f4b = (10^18 * sub_1b267f4b) + (arg2 * sub_1b267f4b) / 10^18
                    if not initSupply:
                        totalSupply = 0
                    else:
                        if sub_1b267f4b * initSupply / initSupply != sub_1b267f4b:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        totalSupply = sub_1b267f4b * initSupply / 1000000 * 10^18
    emit Rebase(arg1, sub_1b267f4b, sub_1b267f4b);
    return totalSupply
}

function mintUnderlying(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if rebaserAddress != msg.sender:
        if govAddress != msg.sender:
            if incentivizerAddress != msg.sender:
                if migratorAddress != msg.sender:
                    revert with 0, 'not minter'
    if arg2 + initSupply < initSupply:
        revert with 0, 'SafeMath: addition overflow'
    initSupply += arg2
    if not arg2:
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        require initSupply
        if sub_1b267f4b > -1 / initSupply:
            revert with 0, 'max scaling factor too low'
        if arg2 + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOfUnderlying[address(arg1)] += arg2
        if delegates[address(arg1)] != 0:
            if arg2 > 0:
                if delegates[address(arg1)]:
                    if numCheckpoints[stor14[address(arg1)]]:
                        if arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
        emit Mint(address(arg1), 0);
        emit 0x77ddf252: 0, 0, arg1
    else:
        if sub_1b267f4b * arg2 / arg2 != sub_1b267f4b:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (sub_1b267f4b * arg2 / 1000000 * 10^18) + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += sub_1b267f4b * arg2 / 1000000 * 10^18
        require initSupply
        if sub_1b267f4b > -1 / initSupply:
            revert with 0, 'max scaling factor too low'
        if arg2 + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOfUnderlying[address(arg1)] += arg2
        if delegates[address(arg1)] != 0:
            if arg2 > 0:
                if delegates[address(arg1)]:
                    if numCheckpoints[stor14[address(arg1)]]:
                        if arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
        emit Mint(address(arg1), sub_1b267f4b * arg2 / 1000000 * 10^18);
        emit 0x77ddf252: (sub_1b267f4b * arg2 / 1000000 * 10^18), 0, arg1
    return 1
}

function transferUnderlying(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != this.address
    if arg2 > balanceOfUnderlying[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfUnderlying[msg.sender] -= arg2
    if arg2 + balanceOfUnderlying[arg1] < balanceOfUnderlying[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOfUnderlying[address(arg1)] = arg2 + balanceOfUnderlying[arg1]
    if not arg2:
        emit 0x77ddf252: 0, msg.sender, arg1
    else:
        if sub_1b267f4b * arg2 / arg2 != sub_1b267f4b:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        emit 0x77ddf252: (sub_1b267f4b * arg2 / 1000000 * 10^18), msg.sender, arg1
    if delegates[msg.sender] != delegates[arg1]:
        if arg2 > 0:
            if not delegates[msg.sender]:
                if delegates[arg1]:
                    if numCheckpoints[stor14[arg1]]:
                        if arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 < checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[310 len 10])
                        if numCheckpoints[stor14[arg1]] <= 0:
                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                            numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                        else:
                            if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, delegates[arg1]);
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[310 len 10])
                        if numCheckpoints[stor14[arg1]] <= 0:
                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                            numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                        else:
                            if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
            else:
                if numCheckpoints[stor14[msg.sender]]:
                    if arg2 > checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[374 len 10])
                    if numCheckpoints[stor14[msg.sender]] <= 0:
                        checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]]].field_0 = uint32(block.number)
                        checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]]].field_256 = checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor14[msg.sender]] = uint32(numCheckpoints[stor14[msg.sender]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256, checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256 - arg2, delegates[msg.sender]);
                        if delegates[arg1]:
                            if numCheckpoints[stor14[arg1]]:
                                if arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 < checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                if numCheckpoints[stor14[arg1]] <= 0:
                                    checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                else:
                                    if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, delegates[arg1]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                if numCheckpoints[stor14[arg1]] <= 0:
                                    checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                    numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                else:
                                    if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                    else:
                        if checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256, checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256 - arg2, delegates[msg.sender]);
                            if delegates[arg1]:
                                if numCheckpoints[stor14[arg1]]:
                                    if arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 < checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[470 len 10])
                                    if numCheckpoints[stor14[arg1]] <= 0:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    else:
                                        if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[470 len 10])
                                    if numCheckpoints[stor14[arg1]] <= 0:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    else:
                                        if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                            numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]]].field_0 = uint32(block.number)
                            checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]]].field_256 = checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor14[msg.sender]] = uint32(numCheckpoints[stor14[msg.sender]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256, checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256 - arg2, delegates[msg.sender]);
                            if delegates[arg1]:
                                if numCheckpoints[stor14[arg1]]:
                                    if arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 < checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                    if numCheckpoints[stor14[arg1]] <= 0:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    else:
                                        if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                    if numCheckpoints[stor14[arg1]] <= 0:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    else:
                                        if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                            numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[374 len 10])
                    if numCheckpoints[stor14[msg.sender]] <= 0:
                        checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]]].field_0 = uint32(block.number)
                        checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]]].field_256 = -arg2
                        numCheckpoints[stor14[msg.sender]] = uint32(numCheckpoints[stor14[msg.sender]] + 1)
                        emit DelegateVotesChanged(0, -arg2, delegates[msg.sender]);
                        if delegates[arg1]:
                            if numCheckpoints[stor14[arg1]]:
                                if arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 < checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                if numCheckpoints[stor14[arg1]] <= 0:
                                    checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                else:
                                    if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, delegates[arg1]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                if numCheckpoints[stor14[arg1]] <= 0:
                                    checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                    numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                else:
                                    if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                    else:
                        if checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]] - 1 << 224].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[msg.sender]);
                            if delegates[arg1]:
                                if numCheckpoints[stor14[arg1]]:
                                    if arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 < checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[470 len 10])
                                    if numCheckpoints[stor14[arg1]] <= 0:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    else:
                                        if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[470 len 10])
                                    if numCheckpoints[stor14[arg1]] <= 0:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    else:
                                        if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                            numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]]].field_0 = uint32(block.number)
                            checkpoints[stor14[msg.sender]][stor16[stor14[msg.sender]]].field_256 = -arg2
                            numCheckpoints[stor14[msg.sender]] = uint32(numCheckpoints[stor14[msg.sender]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[msg.sender]);
                            if delegates[arg1]:
                                if numCheckpoints[stor14[arg1]]:
                                    if arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 < checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                    if numCheckpoints[stor14[arg1]] <= 0:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    else:
                                        if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                    if numCheckpoints[stor14[arg1]] <= 0:
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                        numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    else:
                                        if checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg1]][stor16[stor14[arg1]]].field_256 = arg2
                                            numCheckpoints[stor14[arg1]] = uint32(numCheckpoints[stor14[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
    return 1
}

function assignSelfDelegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == govAddress
    if delegates[address(arg1)]:
        revert with 0, '!address(0)'
    delegates[address(arg1)] = arg1
    emit DelegateChanged(arg1, delegates[address(arg1)], arg1);
    if delegates[address(arg1)] != arg1:
        if balanceOfUnderlying[address(arg1)] > 0:
            if not delegates[address(arg1)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(arg1)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOfUnderlying[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(arg1)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOfUnderlying[address(arg1)], arg1);
            else:
                if numCheckpoints[stor14[address(arg1)]]:
                    if balanceOfUnderlying[address(arg1)] > checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - balanceOfUnderlying[address(arg1)]
                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - balanceOfUnderlying[address(arg1)], delegates[address(arg1)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(arg1)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOfUnderlying[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(arg1)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOfUnderlying[address(arg1)], arg1);
                    else:
                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 -= balanceOfUnderlying[address(arg1)]
                            emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - balanceOfUnderlying[address(arg1)], delegates[address(arg1)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(arg1)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(arg1)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(arg1)], arg1);
                        else:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - balanceOfUnderlying[address(arg1)]
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - balanceOfUnderlying[address(arg1)], delegates[address(arg1)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(arg1)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(arg1)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(arg1)], arg1);
                else:
                    if balanceOfUnderlying[address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = -balanceOfUnderlying[address(arg1)]
                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOfUnderlying[address(arg1)], delegates[address(arg1)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(arg1)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOfUnderlying[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(arg1)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOfUnderlying[address(arg1)], arg1);
                    else:
                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = -balanceOfUnderlying[address(arg1)]
                            emit DelegateVotesChanged(0, -balanceOfUnderlying[address(arg1)], delegates[address(arg1)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(arg1)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(arg1)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(arg1)], arg1);
                        else:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = -balanceOfUnderlying[address(arg1)]
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOfUnderlying[address(arg1)], delegates[address(arg1)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(arg1)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(arg1)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(arg1)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(arg1)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(arg1)], arg1);
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOfUnderlying[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOfUnderlying[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOfUnderlying[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor14[address(msg.sender)]]:
                    if balanceOfUnderlying[address(msg.sender)] > checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                    if numCheckpoints[stor14[address(msg.sender)]] <= 0:
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOfUnderlying[address(msg.sender)]
                        numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOfUnderlying[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOfUnderlying[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOfUnderlying[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 -= balanceOfUnderlying[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOfUnderlying[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOfUnderlying[address(msg.sender)]
                            numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOfUnderlying[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(msg.sender)], arg1);
                else:
                    if balanceOfUnderlying[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                    if numCheckpoints[stor14[address(msg.sender)]] <= 0:
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = -balanceOfUnderlying[address(msg.sender)]
                        numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOfUnderlying[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOfUnderlying[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOfUnderlying[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 = -balanceOfUnderlying[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOfUnderlying[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = -balanceOfUnderlying[address(msg.sender)]
                            numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOfUnderlying[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(sha3(0x6444656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    40,
                    0xef4245415645523a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    address(arg6),
                    mem[514 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    36,
                    0x6e4245415645523a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(192, 0, arg6),
                    mem[514 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    40,
                    0x254245415645523a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    address(arg6),
                    mem[514 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOfUnderlying[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOfUnderlying[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOfUnderlying[address(signer)], arg1);
            else:
                if numCheckpoints[stor14[address(signer)]]:
                    if balanceOfUnderlying[address(signer)] > checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[536 len 10])
                    if numCheckpoints[stor14[address(signer)]] <= 0:
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOfUnderlying[address(signer)]
                        numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256, checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOfUnderlying[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[696 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOfUnderlying[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[696 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOfUnderlying[address(signer)], arg1);
                    else:
                        if checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 -= balanceOfUnderlying[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256, checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOfUnderlying[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[632 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[632 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(signer)], arg1);
                        else:
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOfUnderlying[address(signer)]
                            numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256, checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOfUnderlying[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[696 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[696 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(signer)], arg1);
                else:
                    if balanceOfUnderlying[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[536 len 10])
                    if numCheckpoints[stor14[address(signer)]] <= 0:
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = -balanceOfUnderlying[address(signer)]
                        numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOfUnderlying[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[696 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOfUnderlying[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[696 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOfUnderlying[address(signer)], arg1);
                    else:
                        if checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 = -balanceOfUnderlying[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOfUnderlying[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[632 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[632 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(signer)], arg1);
                        else:
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = -balanceOfUnderlying[address(signer)]
                            numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOfUnderlying[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[696 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOfUnderlying[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOfUnderlying[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOfUnderlying[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[696 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOfUnderlying[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOfUnderlying[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOfUnderlying[address(signer)], arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg2 != this.address
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][msg.sender] -= arg3
    if not arg3:
        if not sub_1b267f4b:
            revert with 0, 'SafeMath: division by zero'
        if 0 / sub_1b267f4b > balanceOfUnderlying[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOfUnderlying[address(arg1)] -= 0 / sub_1b267f4b
        if (0 / sub_1b267f4b) + balanceOfUnderlying[arg2] < balanceOfUnderlying[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOfUnderlying[address(arg2)] = (0 / sub_1b267f4b) + balanceOfUnderlying[arg2]
        emit 0x77ddf252: arg3, arg1, arg2
        if delegates[address(arg1)] != delegates[arg2]:
            if 0 / sub_1b267f4b > 0:
                if not delegates[address(arg1)]:
                    if delegates[arg2]:
                        if numCheckpoints[stor14[arg2]]:
                            if (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                            Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[374 len 10])
                            if numCheckpoints[stor14[arg2]] <= 0:
                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                            else:
                                if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 0 / sub_1b267f4b
                                else:
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                    numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                        else:
                            if 0 / sub_1b267f4b < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                            Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[374 len 10])
                            if numCheckpoints[stor14[arg2]] <= 0:
                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                            else:
                                if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 0 / sub_1b267f4b
                                else:
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                    numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                            emit DelegateVotesChanged(0, 0 / sub_1b267f4b, delegates[arg2]);
                else:
                    if numCheckpoints[stor14[address(arg1)]]:
                        if 0 / sub_1b267f4b > checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[438 len 10])
                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - (0 / sub_1b267f4b)
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - (0 / sub_1b267f4b), delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor14[arg2]]:
                                    if (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                    if numCheckpoints[stor14[arg2]] <= 0:
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    else:
                                        if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 0 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if 0 / sub_1b267f4b < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                    if numCheckpoints[stor14[arg2]] <= 0:
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                        numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    else:
                                        if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 0 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    emit DelegateVotesChanged(0, 0 / sub_1b267f4b, delegates[arg2]);
                        else:
                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 -= 0 / sub_1b267f4b
                                emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - (0 / sub_1b267f4b), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor14[arg2]]:
                                        if (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 0 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                    else:
                                        if 0 / sub_1b267f4b < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 0 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(0, 0 / sub_1b267f4b, delegates[arg2]);
                            else:
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - (0 / sub_1b267f4b)
                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - (0 / sub_1b267f4b), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor14[arg2]]:
                                        if (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 0 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                    else:
                                        if 0 / sub_1b267f4b < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 0 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(0, 0 / sub_1b267f4b, delegates[arg2]);
                    else:
                        if 0 / sub_1b267f4b > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[438 len 10])
                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = -0 / sub_1b267f4b
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -0 / sub_1b267f4b, delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor14[arg2]]:
                                    if (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                    if numCheckpoints[stor14[arg2]] <= 0:
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    else:
                                        if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 0 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if 0 / sub_1b267f4b < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                    if numCheckpoints[stor14[arg2]] <= 0:
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                        numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    else:
                                        if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 0 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    emit DelegateVotesChanged(0, 0 / sub_1b267f4b, delegates[arg2]);
                        else:
                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = -0 / sub_1b267f4b
                                emit DelegateVotesChanged(0, -0 / sub_1b267f4b, delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor14[arg2]]:
                                        if (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 0 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                    else:
                                        if 0 / sub_1b267f4b < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 0 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(0, 0 / sub_1b267f4b, delegates[arg2]);
                            else:
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = -0 / sub_1b267f4b
                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, -0 / sub_1b267f4b, delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor14[arg2]]:
                                        if (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 0 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (0 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                    else:
                                        if 0 / sub_1b267f4b < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 0 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 0 / sub_1b267f4b
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(0, 0 / sub_1b267f4b, delegates[arg2]);
    else:
        if 1000000 * 10^18 * arg3 / arg3 != 1000000 * 10^18:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not sub_1b267f4b:
            revert with 0, 'SafeMath: division by zero'
        if 1000000 * 10^18 * arg3 / sub_1b267f4b > balanceOfUnderlying[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOfUnderlying[address(arg1)] -= 1000000 * 10^18 * arg3 / sub_1b267f4b
        if (1000000 * 10^18 * arg3 / sub_1b267f4b) + balanceOfUnderlying[arg2] < balanceOfUnderlying[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOfUnderlying[address(arg2)] = (1000000 * 10^18 * arg3 / sub_1b267f4b) + balanceOfUnderlying[arg2]
        emit 0x77ddf252: arg3, arg1, arg2
        if delegates[address(arg1)] != delegates[arg2]:
            if 1000000 * 10^18 * arg3 / sub_1b267f4b > 0:
                if not delegates[address(arg1)]:
                    if delegates[arg2]:
                        if numCheckpoints[stor14[arg2]]:
                            if (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                            Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[374 len 10])
                            if numCheckpoints[stor14[arg2]] <= 0:
                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                            else:
                                if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 1000000 * 10^18 * arg3 / sub_1b267f4b
                                else:
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                    numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                        else:
                            if 1000000 * 10^18 * arg3 / sub_1b267f4b < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                            Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[374 len 10])
                            if numCheckpoints[stor14[arg2]] <= 0:
                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                            else:
                                if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                else:
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                    numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                            emit DelegateVotesChanged(0, 1000000 * 10^18 * arg3 / sub_1b267f4b, delegates[arg2]);
                else:
                    if numCheckpoints[stor14[address(arg1)]]:
                        if 1000000 * 10^18 * arg3 / sub_1b267f4b > checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[438 len 10])
                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - (1000000 * 10^18 * arg3 / sub_1b267f4b)
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - (1000000 * 10^18 * arg3 / sub_1b267f4b), delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor14[arg2]]:
                                    if (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                    if numCheckpoints[stor14[arg2]] <= 0:
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    else:
                                        if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 1000000 * 10^18 * arg3 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if 1000000 * 10^18 * arg3 / sub_1b267f4b < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                    if numCheckpoints[stor14[arg2]] <= 0:
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                        numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    else:
                                        if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    emit DelegateVotesChanged(0, 1000000 * 10^18 * arg3 / sub_1b267f4b, delegates[arg2]);
                        else:
                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 -= 1000000 * 10^18 * arg3 / sub_1b267f4b
                                emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - (1000000 * 10^18 * arg3 / sub_1b267f4b), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor14[arg2]]:
                                        if (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                    else:
                                        if 1000000 * 10^18 * arg3 / sub_1b267f4b < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(0, 1000000 * 10^18 * arg3 / sub_1b267f4b, delegates[arg2]);
                            else:
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - (1000000 * 10^18 * arg3 / sub_1b267f4b)
                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 - (1000000 * 10^18 * arg3 / sub_1b267f4b), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor14[arg2]]:
                                        if (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                    else:
                                        if 1000000 * 10^18 * arg3 / sub_1b267f4b < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(0, 1000000 * 10^18 * arg3 / sub_1b267f4b, delegates[arg2]);
                    else:
                        if 1000000 * 10^18 * arg3 / sub_1b267f4b > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[438 len 10])
                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = -1000000 * 10^18 * arg3 / sub_1b267f4b
                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -1000000 * 10^18 * arg3 / sub_1b267f4b, delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor14[arg2]]:
                                    if (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                    if numCheckpoints[stor14[arg2]] <= 0:
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    else:
                                        if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 1000000 * 10^18 * arg3 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if 1000000 * 10^18 * arg3 / sub_1b267f4b < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                    if numCheckpoints[stor14[arg2]] <= 0:
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                        numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    else:
                                        if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                    emit DelegateVotesChanged(0, 1000000 * 10^18 * arg3 / sub_1b267f4b, delegates[arg2]);
                        else:
                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = -1000000 * 10^18 * arg3 / sub_1b267f4b
                                emit DelegateVotesChanged(0, -1000000 * 10^18 * arg3 / sub_1b267f4b, delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor14[arg2]]:
                                        if (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                    else:
                                        if 1000000 * 10^18 * arg3 / sub_1b267f4b < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[534 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(0, 1000000 * 10^18 * arg3 / sub_1b267f4b, delegates[arg2]);
                            else:
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = -1000000 * 10^18 * arg3 / sub_1b267f4b
                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, -1000000 * 10^18 * arg3 / sub_1b267f4b, delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor14[arg2]]:
                                        if (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 < checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 += 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, (1000000 * 10^18 * arg3 / sub_1b267f4b) + checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                    else:
                                        if 1000000 * 10^18 * arg3 / sub_1b267f4b < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[598 len 10])
                                        if numCheckpoints[stor14[arg2]] <= 0:
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        else:
                                            if checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]] - 1 << 224].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[arg2]][stor16[stor14[arg2]]].field_256 = 1000000 * 10^18 * arg3 / sub_1b267f4b
                                                numCheckpoints[stor14[arg2]] = uint32(numCheckpoints[stor14[arg2]] + 1)
                                        emit DelegateVotesChanged(0, 1000000 * 10^18 * arg3 / sub_1b267f4b, delegates[arg2]);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == rebaserAddress:
        if msg.sender == migratorAddress:
            if arg2 + initSupply < initSupply:
                revert with 0, 'SafeMath: addition overflow'
            initSupply += arg2
            if not arg2:
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                require initSupply
                if sub_1b267f4b > -1 / initSupply:
                    revert with 0, 'max scaling factor too low'
                if arg2 + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOfUnderlying[address(arg1)] += arg2
                if delegates[address(arg1)] != 0:
                    if arg2 > 0:
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor14[address(arg1)]]:
                                if arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                if numCheckpoints[stor14[address(arg1)]] <= 0:
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                    numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                if numCheckpoints[stor14[address(arg1)]] <= 0:
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                    numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                emit Mint(address(arg1), 0);
                emit 0x77ddf252: 0, 0, arg1
            else:
                if sub_1b267f4b * arg2 / arg2 != sub_1b267f4b:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (sub_1b267f4b * arg2 / 1000000 * 10^18) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += sub_1b267f4b * arg2 / 1000000 * 10^18
                require initSupply
                if sub_1b267f4b > -1 / initSupply:
                    revert with 0, 'max scaling factor too low'
                if arg2 + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOfUnderlying[address(arg1)] += arg2
                if delegates[address(arg1)] != 0:
                    if arg2 > 0:
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor14[address(arg1)]]:
                                if arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                if numCheckpoints[stor14[address(arg1)]] <= 0:
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                    numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                if numCheckpoints[stor14[address(arg1)]] <= 0:
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                    numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                emit Mint(address(arg1), sub_1b267f4b * arg2 / 1000000 * 10^18);
                emit 0x77ddf252: (sub_1b267f4b * arg2 / 1000000 * 10^18), 0, arg1
        else:
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg2
            if not arg2:
                if not sub_1b267f4b:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / sub_1b267f4b) + initSupply < initSupply:
                    revert with 0, 'SafeMath: addition overflow'
                initSupply += 0 / sub_1b267f4b
                require initSupply
                if sub_1b267f4b > -1 / initSupply:
                    revert with 0, 'max scaling factor too low'
                if (0 / sub_1b267f4b) + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOfUnderlying[address(arg1)] += 0 / sub_1b267f4b
                if delegates[address(arg1)] != 0:
                    if 0 / sub_1b267f4b > 0:
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor14[address(arg1)]]:
                                if (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                if numCheckpoints[stor14[address(arg1)]] <= 0:
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                    numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += 0 / sub_1b267f4b
                                    else:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                            else:
                                if 0 / sub_1b267f4b < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                if numCheckpoints[stor14[address(arg1)]] <= 0:
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 0 / sub_1b267f4b
                                    numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = 0 / sub_1b267f4b
                                    else:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 0 / sub_1b267f4b
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, 0 / sub_1b267f4b, delegates[address(arg1)]);
            else:
                if 1000000 * 10^18 * arg2 / arg2 != 1000000 * 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_1b267f4b:
                    revert with 0, 'SafeMath: division by zero'
                if (1000000 * 10^18 * arg2 / sub_1b267f4b) + initSupply < initSupply:
                    revert with 0, 'SafeMath: addition overflow'
                initSupply += 1000000 * 10^18 * arg2 / sub_1b267f4b
                require initSupply
                if sub_1b267f4b > -1 / initSupply:
                    revert with 0, 'max scaling factor too low'
                if (1000000 * 10^18 * arg2 / sub_1b267f4b) + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOfUnderlying[address(arg1)] += 1000000 * 10^18 * arg2 / sub_1b267f4b
                if delegates[address(arg1)] != 0:
                    if 1000000 * 10^18 * arg2 / sub_1b267f4b > 0:
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor14[address(arg1)]]:
                                if (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                if numCheckpoints[stor14[address(arg1)]] <= 0:
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                    numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += 1000000 * 10^18 * arg2 / sub_1b267f4b
                                    else:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                            else:
                                if 1000000 * 10^18 * arg2 / sub_1b267f4b < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                if numCheckpoints[stor14[address(arg1)]] <= 0:
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 1000000 * 10^18 * arg2 / sub_1b267f4b
                                    numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = 1000000 * 10^18 * arg2 / sub_1b267f4b
                                    else:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 1000000 * 10^18 * arg2 / sub_1b267f4b
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, 1000000 * 10^18 * arg2 / sub_1b267f4b, delegates[address(arg1)]);
            emit Mint(address(arg1), arg2);
            emit 0x77ddf252: arg2, 0, arg1
    else:
        if msg.sender == govAddress:
            if msg.sender == migratorAddress:
                if arg2 + initSupply < initSupply:
                    revert with 0, 'SafeMath: addition overflow'
                initSupply += arg2
                if not arg2:
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    require initSupply
                    if sub_1b267f4b > -1 / initSupply:
                        revert with 0, 'max scaling factor too low'
                    if arg2 + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOfUnderlying[address(arg1)] += arg2
                    if delegates[address(arg1)] != 0:
                        if arg2 > 0:
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor14[address(arg1)]]:
                                    if arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    emit Mint(address(arg1), 0);
                    emit 0x77ddf252: 0, 0, arg1
                else:
                    if sub_1b267f4b * arg2 / arg2 != sub_1b267f4b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (sub_1b267f4b * arg2 / 1000000 * 10^18) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += sub_1b267f4b * arg2 / 1000000 * 10^18
                    require initSupply
                    if sub_1b267f4b > -1 / initSupply:
                        revert with 0, 'max scaling factor too low'
                    if arg2 + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOfUnderlying[address(arg1)] += arg2
                    if delegates[address(arg1)] != 0:
                        if arg2 > 0:
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor14[address(arg1)]]:
                                    if arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    emit Mint(address(arg1), sub_1b267f4b * arg2 / 1000000 * 10^18);
                    emit 0x77ddf252: (sub_1b267f4b * arg2 / 1000000 * 10^18), 0, arg1
            else:
                if arg2 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg2
                if not arg2:
                    if not sub_1b267f4b:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / sub_1b267f4b) + initSupply < initSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    initSupply += 0 / sub_1b267f4b
                    require initSupply
                    if sub_1b267f4b > -1 / initSupply:
                        revert with 0, 'max scaling factor too low'
                    if (0 / sub_1b267f4b) + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOfUnderlying[address(arg1)] += 0 / sub_1b267f4b
                    if delegates[address(arg1)] != 0:
                        if 0 / sub_1b267f4b > 0:
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor14[address(arg1)]]:
                                    if (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += 0 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                else:
                                    if 0 / sub_1b267f4b < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 0 / sub_1b267f4b
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = 0 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 0 / sub_1b267f4b
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, 0 / sub_1b267f4b, delegates[address(arg1)]);
                else:
                    if 1000000 * 10^18 * arg2 / arg2 != 1000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not sub_1b267f4b:
                        revert with 0, 'SafeMath: division by zero'
                    if (1000000 * 10^18 * arg2 / sub_1b267f4b) + initSupply < initSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    initSupply += 1000000 * 10^18 * arg2 / sub_1b267f4b
                    require initSupply
                    if sub_1b267f4b > -1 / initSupply:
                        revert with 0, 'max scaling factor too low'
                    if (1000000 * 10^18 * arg2 / sub_1b267f4b) + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOfUnderlying[address(arg1)] += 1000000 * 10^18 * arg2 / sub_1b267f4b
                    if delegates[address(arg1)] != 0:
                        if 1000000 * 10^18 * arg2 / sub_1b267f4b > 0:
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor14[address(arg1)]]:
                                    if (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += 1000000 * 10^18 * arg2 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                else:
                                    if 1000000 * 10^18 * arg2 / sub_1b267f4b < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 1000000 * 10^18 * arg2 / sub_1b267f4b
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = 1000000 * 10^18 * arg2 / sub_1b267f4b
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 1000000 * 10^18 * arg2 / sub_1b267f4b
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, 1000000 * 10^18 * arg2 / sub_1b267f4b, delegates[address(arg1)]);
                emit Mint(address(arg1), arg2);
                emit 0x77ddf252: arg2, 0, arg1
        else:
            if incentivizerAddress != msg.sender:
                if migratorAddress != msg.sender:
                    revert with 0, 'not minter'
                if arg2 + initSupply < initSupply:
                    revert with 0, 'SafeMath: addition overflow'
                initSupply += arg2
                if not arg2:
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    require initSupply
                    if sub_1b267f4b > -1 / initSupply:
                        revert with 0, 'max scaling factor too low'
                    if arg2 + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOfUnderlying[address(arg1)] += arg2
                    if delegates[address(arg1)] != 0:
                        if arg2 > 0:
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor14[address(arg1)]]:
                                    if arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    emit Mint(address(arg1), 0);
                    emit 0x77ddf252: 0, 0, arg1
                else:
                    if sub_1b267f4b * arg2 / arg2 != sub_1b267f4b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (sub_1b267f4b * arg2 / 1000000 * 10^18) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += sub_1b267f4b * arg2 / 1000000 * 10^18
                    require initSupply
                    if sub_1b267f4b > -1 / initSupply:
                        revert with 0, 'max scaling factor too low'
                    if arg2 + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOfUnderlying[address(arg1)] += arg2
                    if delegates[address(arg1)] != 0:
                        if arg2 > 0:
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor14[address(arg1)]]:
                                    if arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                    if numCheckpoints[stor14[address(arg1)]] <= 0:
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    emit Mint(address(arg1), sub_1b267f4b * arg2 / 1000000 * 10^18);
                    emit 0x77ddf252: (sub_1b267f4b * arg2 / 1000000 * 10^18), 0, arg1
            else:
                if msg.sender == migratorAddress:
                    if arg2 + initSupply < initSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    initSupply += arg2
                    if not arg2:
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        require initSupply
                        if sub_1b267f4b > -1 / initSupply:
                            revert with 0, 'max scaling factor too low'
                        if arg2 + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfUnderlying[address(arg1)] += arg2
                        if delegates[address(arg1)] != 0:
                            if arg2 > 0:
                                if delegates[address(arg1)]:
                                    if numCheckpoints[stor14[address(arg1)]]:
                                        if arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        else:
                                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        else:
                                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                        emit Mint(address(arg1), 0);
                        emit 0x77ddf252: 0, 0, arg1
                    else:
                        if sub_1b267f4b * arg2 / arg2 != sub_1b267f4b:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (sub_1b267f4b * arg2 / 1000000 * 10^18) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += sub_1b267f4b * arg2 / 1000000 * 10^18
                        require initSupply
                        if sub_1b267f4b > -1 / initSupply:
                            revert with 0, 'max scaling factor too low'
                        if arg2 + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfUnderlying[address(arg1)] += arg2
                        if delegates[address(arg1)] != 0:
                            if arg2 > 0:
                                if delegates[address(arg1)]:
                                    if numCheckpoints[stor14[address(arg1)]]:
                                        if arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        else:
                                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        else:
                                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = arg2
                                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                        emit Mint(address(arg1), sub_1b267f4b * arg2 / 1000000 * 10^18);
                        emit 0x77ddf252: (sub_1b267f4b * arg2 / 1000000 * 10^18), 0, arg1
                else:
                    if arg2 + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg2
                    if not arg2:
                        if not sub_1b267f4b:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_1b267f4b) + initSupply < initSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        initSupply += 0 / sub_1b267f4b
                        require initSupply
                        if sub_1b267f4b > -1 / initSupply:
                            revert with 0, 'max scaling factor too low'
                        if (0 / sub_1b267f4b) + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfUnderlying[address(arg1)] += 0 / sub_1b267f4b
                        if delegates[address(arg1)] != 0:
                            if 0 / sub_1b267f4b > 0:
                                if delegates[address(arg1)]:
                                    if numCheckpoints[stor14[address(arg1)]]:
                                        if (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        else:
                                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += 0 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, (0 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                    else:
                                        if 0 / sub_1b267f4b < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 0 / sub_1b267f4b
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        else:
                                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = 0 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 0 / sub_1b267f4b
                                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(0, 0 / sub_1b267f4b, delegates[address(arg1)]);
                    else:
                        if 1000000 * 10^18 * arg2 / arg2 != 1000000 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not sub_1b267f4b:
                            revert with 0, 'SafeMath: division by zero'
                        if (1000000 * 10^18 * arg2 / sub_1b267f4b) + initSupply < initSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        initSupply += 1000000 * 10^18 * arg2 / sub_1b267f4b
                        require initSupply
                        if sub_1b267f4b > -1 / initSupply:
                            revert with 0, 'max scaling factor too low'
                        if (1000000 * 10^18 * arg2 / sub_1b267f4b) + balanceOfUnderlying[address(arg1)] < balanceOfUnderlying[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOfUnderlying[address(arg1)] += 1000000 * 10^18 * arg2 / sub_1b267f4b
                        if delegates[address(arg1)] != 0:
                            if 1000000 * 10^18 * arg2 / sub_1b267f4b > 0:
                                if delegates[address(arg1)]:
                                    if numCheckpoints[stor14[address(arg1)]]:
                                        if (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        else:
                                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 += 1000000 * 10^18 * arg2 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256
                                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, (1000000 * 10^18 * arg2 / sub_1b267f4b) + checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                    else:
                                        if 1000000 * 10^18 * arg2 / sub_1b267f4b < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0xfe4245415645523a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                                        if numCheckpoints[stor14[address(arg1)]] <= 0:
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 1000000 * 10^18 * arg2 / sub_1b267f4b
                                            numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        else:
                                            if checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]] - 1 << 224].field_256 = 1000000 * 10^18 * arg2 / sub_1b267f4b
                                            else:
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_0 = uint32(block.number)
                                                checkpoints[stor14[address(arg1)]][stor16[stor14[address(arg1)]]].field_256 = 1000000 * 10^18 * arg2 / sub_1b267f4b
                                                numCheckpoints[stor14[address(arg1)]] = uint32(numCheckpoints[stor14[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(0, 1000000 * 10^18 * arg2 / sub_1b267f4b, delegates[address(arg1)]);
                    emit Mint(address(arg1), arg2);
                    emit 0x77ddf252: arg2, 0, arg1
    return 1
}



}
