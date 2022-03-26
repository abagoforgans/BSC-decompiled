contract main {




// =====================  Runtime code  =====================


const getTokenInterfacesVersion = 2, 0, 0


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 mintingFinished; offset 160
address owner;
mapping of uint8 stor7;
address bridgeContractAddress;
uint256 burnRate;
uint256 burnedSupply;

function mintingFinished() {
    return bool(mintingFinished)
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

function getBurnRate() {
    return burnRate
}

function burnedSupply() {
    return burnedSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _whitelistedAddresses(address arg1) {
    return bool(stor7[arg1])
}

function bridgeContract() {
    return bridgeContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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

function sub_46b26646(?) {
    require msg.sender == owner
    stor7[address(arg1)] = 1
}

function sub_6d57487c(?) {
    require msg.sender == owner
    stor7[address(arg1)] = 0
}

function setBurnRate(uint256 arg1) {
    require msg.sender == owner
    burnRate = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBridgeContract(address arg1) {
    require msg.sender == owner
    require arg1
    require ext_code.size(arg1) > 0
    bridgeContractAddress = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not mintingFinished
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, uint256 arg3) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg3 <= arg2 + balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1] - arg3
    require arg3 <= arg2
    emit Transfer((arg2 - arg3), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
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
        call arg1.transfer(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    if stor7[msg.sender]:
        require arg1
        require arg2 <= balanceOf[msg.sender]
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        require 0 <= arg2 + balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        require 0 <= arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor7[address(arg1)]:
            require arg1
            require arg2 <= balanceOf[msg.sender]
            require arg2 <= balanceOf[msg.sender]
            balanceOf[msg.sender] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            require 0 <= arg2 + balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            require 0 <= arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if bridgeContractAddress == arg1:
                require arg1
                require arg2 <= balanceOf[msg.sender]
                require arg2 <= balanceOf[msg.sender]
                balanceOf[msg.sender] -= arg2
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                require 0 <= arg2 + balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                require 0 <= arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not arg2:
                    require burnedSupply >= burnedSupply
                    require arg1
                    require arg2 <= balanceOf[msg.sender]
                    require arg2 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= arg2
                    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                    require 0 <= arg2 + balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    require 0 <= arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    require burnRate * arg2 / arg2 == burnRate
                    require (burnRate * arg2 / 100) + burnedSupply >= burnedSupply
                    burnedSupply += burnRate * arg2 / 100
                    require arg1
                    require arg2 <= balanceOf[msg.sender]
                    require arg2 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= arg2
                    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                    require burnRate * arg2 / 100 <= arg2 + balanceOf[arg1]
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1] - (burnRate * arg2 / 100)
                    require burnRate * arg2 / 100 <= arg2
                    emit Transfer((arg2 - (burnRate * arg2 / 100)), msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        mem[292 len 0] = None
        mem[292 len 160] = unknown_0xa4c0ed36(?????), msg.sender, arg2, 96, 0, mem[292 len 28]
        mem[420] = mem[448 len 4]
        call arg1.mem[292 len 4] with:
             gas gas_remaining wei
            args mem[296 len 156]
        if not ext_call.success:
            require bridgeContractAddress != arg1
            emit ContractFallbackCallFailed(msg.sender, address(arg1), arg2);
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require arg1 != this.address
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require 0 <= arg2 + balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require 0 <= arg2
    emit Transfer(arg2, msg.sender, arg1);
    mem[128] = 64
    mem[160] = arg3.length
    mem[192 len arg3.length] = arg3[all]
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        mem[128 len arg3.length] = arg3[all]
        mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + ceil32(arg3.length) + 292 len floor32(arg3.length + 163)] = unknown_0xa4c0ed36(?????), msg.sender, arg2, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(arg3.length + 163) + -ceil32(arg3.length) - 132]
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
            mem[floor32(arg3.length) + ceil32(arg3.length) + 324 len floor32(floor32(arg3.length) + 195)] = unknown_0xa4c0ed36(?????), msg.sender, arg2, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(floor32(arg3.length) + 195) + -ceil32(arg3.length) - 132]
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
