contract main {




// =====================  Runtime code  =====================


const version = '1'

const getTokenInterfacesVersion = 2, 5, 0

const sub_c6a1dedf(?) = 0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor6; offset 160
address owner;
address bridgeContractAddress;
uint256 DOMAIN_SEPARATOR;
mapping of uint256 nonces;
mapping of uint256 expirations;

function mintingFinished() {
    return bool(stor6)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function DOMAIN_SEPARATOR() {
    return DOMAIN_SEPARATOR
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function nonces(address arg1) {
    return nonces[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function bridgeContract() {
    return bridgeContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function expirations(address arg1, address arg2) {
    return expirations[arg1][arg2]
}

function finishMinting() {
    revert
}

function renounceOwnership() {
    revert
}

function _fallback() payable {
    revert
}

function isBridge(address arg1) {
    return (arg1 == bridgeContractAddress)
}

function setBridgeContract(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1) > 0
    bridgeContractAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit code.data[7570 len 32]: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit code.data[7538 len 32]: arg1, msg.sender, 0
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor6
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit code.data[7538 len 32]: arg2, 0, arg1
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit code.data[7570 len 32]: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit code.data[7570 len 32]: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit code.data[7570 len 32]: arg2, msg.sender, arg1
    if arg2 == -1:
        expirations[address(msg.sender)][address(arg1)] = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit code.data[7538 len 32]: arg2, msg.sender, arg1
    if arg1 == bridgeContractAddress:
        mem[292 len 0] = None
        mem[292 len 160] = onTokenTransfer(address arg1, uint256 arg2, bytes arg3), msg.sender, arg2, 96, 0, mem[292 len 28]
        mem[420] = mem[448 len 4]
        call arg1.mem[292 len 4] with:
             gas gas_remaining wei
            args mem[296 len 156]
        require ext_call.success
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit code.data[7570 len 32]: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    if arg2 + allowance[msg.sender][address(arg1)] == -1:
        expirations[address(msg.sender)][address(arg1)] = 0
    return 1
}

function claimTokens(address arg1, address arg2) {
    require msg.sender == owner
    require arg2
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            create contract with ('balance', 'address') wei
                            code: code.data[7505 len 33], arg2
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require ext_call.return_data[0]
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require arg4 >= block.timestamp
    nonces[address(arg1)]++
    if arg5 != 27:
        if arg5 != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    require address(signer) == arg1
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit code.data[7570 len 32]: arg3, arg1, arg2
    if arg3 == -1:
        expirations[address(arg1)][address(arg2)] = 0
}

function move(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit code.data[7538 len 32]: arg3, arg1, arg2
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] == -1:
            if expirations[address(arg1)][msg.sender]:
                require block.timestamp <= expirations[address(arg1)][msg.sender]
        else:
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg3
            emit code.data[7570 len 32]: (allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender
    if arg2 == bridgeContractAddress:
        mem[292 len 0] = None
        mem[292 len 160] = onTokenTransfer(address arg1, uint256 arg2, bytes arg3), address(arg1) << 64, 0, arg3, 96, 0, mem[292 len 28]
        mem[420] = mem[448 len 4]
        call arg2.mem[292 len 4] with:
             gas gas_remaining wei
            args mem[296 len 156]
        require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit code.data[7538 len 32]: arg3, arg1, arg2
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] == -1:
            if expirations[address(arg1)][msg.sender]:
                require block.timestamp <= expirations[address(arg1)][msg.sender]
        else:
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg3
            emit code.data[7570 len 32]: (allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender
    if arg2 == bridgeContractAddress:
        mem[292 len 0] = None
        mem[292 len 160] = onTokenTransfer(address arg1, uint256 arg2, bytes arg3), address(arg1) << 64, 0, arg3, 96, 0, mem[292 len 28]
        mem[420] = mem[448 len 4]
        call arg2.mem[292 len 4] with:
             gas gas_remaining wei
            args mem[296 len 156]
        require ext_call.success
    return 1
}

function pull(address arg1, uint256 arg2) {
    require arg1
    require msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = arg2 + balanceOf[msg.sender]
    emit code.data[7538 len 32]: arg2, arg1, msg.sender
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] == -1:
            if expirations[address(arg1)][msg.sender]:
                require block.timestamp <= expirations[address(arg1)][msg.sender]
        else:
            require arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg2
            emit code.data[7570 len 32]: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
    if msg.sender == bridgeContractAddress:
        mem[292 len 0] = None
        mem[292 len 160] = onTokenTransfer(address arg1, uint256 arg2, bytes arg3), address(arg1) << 64, 0, arg2, 96, 0, mem[292 len 28]
        mem[420] = mem[448 len 4]
        call msg.sender.mem[292 len 4] with:
             gas gas_remaining wei
            args mem[296 len 156]
        require ext_call.success
}

function push(address arg1, uint256 arg2) {
    require msg.sender
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit code.data[7538 len 32]: arg2, msg.sender, arg1
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] == -1:
            if expirations[address(msg.sender)][msg.sender]:
                require block.timestamp <= expirations[address(msg.sender)][msg.sender]
        else:
            require arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][msg.sender] = allowance[address(msg.sender)][address(msg.sender)] - arg2
            emit code.data[7570 len 32]: (allowance[address(msg.sender)][address(msg.sender)] - arg2), msg.sender, msg.sender
    if arg1 == bridgeContractAddress:
        mem[292 len 0] = None
        mem[292 len 160] = onTokenTransfer(address arg1, uint256 arg2, bytes arg3), msg.sender, arg2, 96, 0, mem[292 len 28]
        mem[420] = mem[448 len 4]
        call arg1.mem[292 len 4] with:
             gas gas_remaining wei
            args mem[296 len 156]
        require ext_call.success
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    if arg4:
        require block.timestamp <= arg4
    if arg6 != 27:
        if arg6 != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg8 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb, address(arg1), address(arg2), arg3, arg4, arg5)), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    require address(signer) == arg1
    nonces[address(arg1)]++
    require arg3 == nonces[address(arg1)]
    if arg5:
        expirations[address(arg1)][address(arg2)] = arg4
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not arg2:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(arg2)] = -1
        emit code.data[7570 len 32]: -1, arg1, arg2
    else:
        expirations[address(arg1)][address(arg2)] = 0
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not arg2:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(arg2)] = 0
        emit code.data[7570 len 32]: 0, arg1, arg2
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require arg1 != this.address
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit code.data[7538 len 32]: arg2, msg.sender, arg1
    mem[128] = 64
    mem[160] = arg3.length
    mem[192 len arg3.length] = arg3[all]
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        mem[128 len arg3.length] = arg3[all]
        mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + ceil32(arg3.length) + 292 len floor32(arg3.length + 163)] = onTokenTransfer(address arg1, uint256 arg2, bytes arg3), msg.sender, arg2, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(arg3.length + 163) + -ceil32(arg3.length) - 132]
            if not arg3.length + 132 % 32:
                call arg1.mem[arg3.length + ceil32(arg3.length) + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + 296 len arg3.length + 128]
            else:
                mem[floor32(arg3.length + 132) + arg3.length + ceil32(arg3.length) + 292] = mem[floor32(arg3.length + 132) + arg3.length + ceil32(arg3.length) + -(arg3.length + 132 % 32) + 324 len arg3.length + 132 % 32]
                call arg1.mem[arg3.length + ceil32(arg3.length) + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + 296 len floor32(arg3.length + 132) + 28]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            mem[floor32(arg3.length) + ceil32(arg3.length) + 324 len floor32(floor32(arg3.length) + 195)] = onTokenTransfer(address arg1, uint256 arg2, bytes arg3), msg.sender, arg2, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(floor32(arg3.length) + 195) + -ceil32(arg3.length) - 132]
            if not floor32(arg3.length) + 164 % 32:
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + 328 len (2 * floor32(arg3.length)) + 160]
            else:
                mem[floor32(floor32(arg3.length) + 164) + floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(floor32(arg3.length) + 164) + floor32(arg3.length) + ceil32(arg3.length) + -(floor32(arg3.length) + 164 % 32) + 356 len floor32(arg3.length) + 164 % 32]
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + 328 len floor32(floor32(arg3.length) + 164) + 28]
        require ext_call.success
    return 1
}



}
