contract main {




// =====================  Runtime code  =====================


const DECIMALS = 18

const WAD = 10^18

const DENOMINATOR = 10000


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor6;
uint8 stor7;
mapping of uint8 stor8;
uint256 cap;
array of uint256 symbol;
uint256 decimals;
array of uint256 name;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function cap() {
    return cap
}

function isCapper(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function isPauser(address arg1) {
    require arg1
    return bool(stor6[address(arg1)])
}

function paused() {
    return bool(stor7)
}

function isDepot(address arg1) {
    return bool(stor2[address(arg1)])
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

function isMinter(address arg1) {
    require arg1
    return bool(stor8[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCap(uint256 arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    if arg1 > cap:
        cap = arg1
}

function unpause() {
    require msg.sender
    require stor6[address(msg.sender)]
    require stor7
    stor7 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor6[address(msg.sender)]
    require not stor7
    stor7 = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceCapper() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit CapperRemoved(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function addDepot(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    if not arg1:
        revert with 0, 'depot cannot be null'
    stor2[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) {
    require not stor7
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeDepot(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    if not stor2[address(arg1)]:
        revert with 0, 'not a depot address'
    stor2[address(arg1)] = 0
}

function addPauser(address arg1) {
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addCapper(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit CapperAdded(arg1);
}

function addMinter(address arg1) {
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not stor7
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not stor7
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function deregisterVendor(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'null contract address'
    require ext_code.size(arg1)
    call arg1.destroy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xe3082b36 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x5ea99e48: ext_call.return_data[12 len 20], 0, 0
}

function isRegistered(address arg1) {
    require ext_code.size(this.address)
    call this.address.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(this.address)
    call this.address.0xdd62ed3e with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 10^18)
}

function mint(address arg1, uint256 arg2) {
    require msg.sender
    require stor8[address(msg.sender)]
    if not stor2[address(arg1)]:
        revert with 0, 'not a depot address'
    require arg2 + totalSupply >= totalSupply
    if arg2 + totalSupply > cap:
        revert with 0, 'mint value limit exceeded'
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function registerVendor(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'null contract address'
    require ext_code.size(this.address)
    call this.address.0xc3c5a547 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'payment contract is already registered'
    require ext_code.size(arg1)
    call arg1.getVendor() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'vendor not set in payment contract'
    require ext_code.size(arg1)
    call arg1.0xe3082b36 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RSTI account not set in payment contract'
    require ext_code.size(arg1)
    call arg1.0x7c867009 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require not stor7
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    emit 0x1c385e57: address(arg1), arg2
}

function transfer(address arg1, uint256 arg2) {
    emit 0x5ea99e48: msg.sender, address(arg1), arg2
    if not arg1:
        revert with 0, 'destination address is null'
    require ext_code.size(this.address)
    call this.address.0xc3c5a547 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not arg1:
            revert with 0, 'vendor address is zero'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'not enough tokens'
        require arg2 <= balanceOf[address(msg.sender)]
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require ext_code.size(arg1)
        call arg1.0x770af77c with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'destination address is an unregistered payment contract'
        require ext_code.size(arg1)
        call arg1.getVendor() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'vendor address is zero'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'not enough tokens'
        require arg2 <= balanceOf[address(msg.sender)]
        require address(ext_call.return_data[0])
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 + balanceOf[address(ext_call.return_data[0])] >= balanceOf[address(ext_call.return_data[0])]
        balanceOf[address(ext_call.return_data[0])] += arg2
        emit Transfer(arg2, msg.sender, address(ext_call.return_data[0]));
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    emit 0x5ea99e48: address(arg1), address(arg2), arg3
    if not arg2:
        revert with 0, 'destination address is null'
    require ext_code.size(this.address)
    call this.address.0xc3c5a547 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require not stor7
        require arg3 <= allowance[address(arg1)][msg.sender]
        require arg3 <= allowance[address(arg1)][msg.sender]
        allowance[address(arg1)][msg.sender] -= arg3
        require arg3 <= balanceOf[address(arg1)]
        require arg2
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
    else:
        require ext_code.size(arg2)
        call arg2.0x770af77c with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'destination address is an unregistered payment contract'
        require ext_code.size(arg2)
        call arg2.getVendor() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not stor7
        require arg3 <= allowance[address(arg1)][msg.sender]
        require arg3 <= allowance[address(arg1)][msg.sender]
        allowance[address(arg1)][msg.sender] -= arg3
        require arg3 <= balanceOf[address(arg1)]
        require address(ext_call.return_data[0])
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 + balanceOf[address(ext_call.return_data[0])] >= balanceOf[address(ext_call.return_data[0])]
        balanceOf[address(ext_call.return_data[0])] += arg3
        emit Transfer(arg3, arg1, address(ext_call.return_data[0]));
    return 1
}



}
