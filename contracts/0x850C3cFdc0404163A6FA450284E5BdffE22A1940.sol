contract main {




// =====================  Runtime code  =====================


const MIN_REGISTRATION_DURATION = (672 * 24 * 3600)


address owner;
address stor1;
address stor2;
uint256 minCommitmentAge;
uint256 maxCommitmentAge;
mapping of uint256 commitments;

function commitments(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return commitments[arg1]
}

function minCommitmentAge() {
    return minCommitmentAge
}

function owner() {
    return owner
}

function maxCommitmentAge() {
    return maxCommitmentAge
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

function setPriceOracle(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor2 = arg1
    emit NewPriceOracle(stor2);
}

function commit(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require commitments[arg1] + maxCommitmentAge < block.timestamp
    commitments[arg1] = block.timestamp
}

function setCommitmentAges(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    minCommitmentAge = arg1
    maxCommitmentAge = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function valid(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + 128] = arg1.length >= 3
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function makeCommitment(string arg1, address arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 192] = address(arg2)
    mem[ceil32(arg1.length) + 212] = arg3
    mem[ceil32(arg1.length) + 128] = 84
    mem[ceil32(arg1.length) + 244] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 244
       len 32
}

function rentPrice(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.nameExpires(uint256 arg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, ext_call.return_data[4 len 28]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == Mask(32, 224, sha3('supportsInterface(bytes4)')):
        return True
    if Mask(32, 224, arg1) == Mask(32, 224, sha3('rentPrice(string,uint256)') xor sha3('available(string)') xor sha3(0x296d616b65436f6d6d69746d656e7428737472696e672c616464726573732c62797465733332) xor sha3('commit(bytes32)') xor sha3(0x29726567697374657228737472696e672c616464726573732c75696e743235362c62797465733332) xor sha3('renew(string,uint256)')):
        return True
    return (Mask(32, 224, arg1) == Mask(32, 224, sha3(0x29726567697374657257697468436f6e66696728737472696e672c616464726573732c75696e743235362c627974657333322c616464726573732c61646472657373) xor sha3(0xfe6d616b65436f6d6d69746d656e7457697468436f6e66696728737472696e672c616464726573732c627974657333322c616464726573732c61646472657373)))
}

function available(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        s = s + 1
        continue 
    if arg1.length < 3:
        mem[ceil32(arg1.length) + 128] = arg1.length >= 3
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    require ext_code.size(stor1)
    staticcall stor1.available(uint256 arg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, Mask(224, 0, bool(ext_call.return_data[0]))
}

function makeCommitmentWithConfig(string arg1, address arg2, bytes32 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not arg4:
        if not arg5:
            mem[ceil32(arg1.length) + 160] = sha3(arg1[all])
            mem[ceil32(arg1.length) + 192] = address(arg2)
            mem[ceil32(arg1.length) + 212] = arg3
            mem[ceil32(arg1.length) + 128] = 84
            mem[ceil32(arg1.length) + 244] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            return memory
              from ceil32(arg1.length) + 244
               len 32
        require arg4
    mem[ceil32(arg1.length) + 160] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 192] = address(arg2)
    mem[ceil32(arg1.length) + 212] = address(arg4)
    mem[ceil32(arg1.length) + 232] = address(arg5)
    mem[ceil32(arg1.length) + 252] = arg3
    mem[ceil32(arg1.length) + 128] = 124
    mem[ceil32(arg1.length) + 284] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 284
       len 32
}

function renew(string arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.nameExpires(uint256 arg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.renew(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(arg1[all]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value > ext_call.return_data[0]:
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 256 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 256] = 0
    emit NameRenewed(string arg1, bytes32 arg2, uint256 arg3, uint256 arg4):
                     0,
                     96,
                     ext_call.return_data[0],
                     ext_call.return_data[0],
                     arg1.length,
                     arg1[all],
                     mem[ceil32(arg1.length) + arg1.length + 256 len ceil32(arg1.length) - arg1.length],
                     sha3(arg1[all]),
}

function register(string arg1, address arg2, uint256 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 192] = address(arg2)
    mem[ceil32(arg1.length) + 212] = arg4
    mem[ceil32(arg1.length) + 128] = 84
    require commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] + minCommitmentAge <= block.timestamp
    require commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] + maxCommitmentAge > block.timestamp
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        s = s + 1
        continue 
    require arg1.length >= 3
    require ext_code.size(stor1)
    staticcall stor1.available(uint256 arg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] = 0
    require ext_code.size(stor1)
    staticcall stor1.nameExpires(uint256 arg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.price(string arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 >= 672 * 24 * 3600
    require msg.value >= ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.register(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args sha3(arg1[all]), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit NameRegistered(Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], ext_call.return_data[0], sha3(arg1[all]), arg2);
    if msg.value > ext_call.return_data[0]:
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function registerWithConfig(string arg1, address arg2, uint256 arg3, bytes32 arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if arg5:
        mem[ceil32(arg1.length) + 160] = sha3(arg1[all])
        mem[ceil32(arg1.length) + 192] = address(arg2)
        mem[ceil32(arg1.length) + 212] = address(arg5)
        mem[ceil32(arg1.length) + 232] = address(arg6)
        mem[ceil32(arg1.length) + 252] = arg4
        mem[ceil32(arg1.length) + 128] = 124
    else:
        if not arg6:
            mem[ceil32(arg1.length) + 160] = sha3(arg1[all])
            mem[ceil32(arg1.length) + 192] = address(arg2)
            mem[ceil32(arg1.length) + 212] = arg4
            mem[ceil32(arg1.length) + 128] = 84
        else:
            require arg5
            mem[ceil32(arg1.length) + 160] = sha3(arg1[all])
            mem[ceil32(arg1.length) + 192] = address(arg2)
            mem[ceil32(arg1.length) + 212] = address(arg5)
            mem[ceil32(arg1.length) + 232] = address(arg6)
            mem[ceil32(arg1.length) + 252] = arg4
            mem[ceil32(arg1.length) + 128] = 124
    require commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] + minCommitmentAge <= block.timestamp
    require commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] + maxCommitmentAge > block.timestamp
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        s = s + 1
        continue 
    require arg1.length >= 3
    require ext_code.size(stor1)
    staticcall stor1.available(uint256 arg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] = 0
    require ext_code.size(stor1)
    staticcall stor1.nameExpires(uint256 arg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.price(string arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 >= 672 * 24 * 3600
    require msg.value >= ext_call.return_data[0]
    if not arg5:
        require not arg6
        require ext_code.size(stor1)
        call stor1.register(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sha3(arg1[all]), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(stor1)
        call stor1.register(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sha3(arg1[all]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.baseNode() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.ens() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).setResolver(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(ext_call.return_data[0], sha3(arg1[all])), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            require ext_code.size(arg5)
            call arg5.setAddr(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args sha3(ext_call.return_data[0], sha3(arg1[all])), arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.reclaim(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(arg1[all]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg2), sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit NameRegistered(Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], ext_call.return_data[0], sha3(arg1[all]), arg2);
    if msg.value > ext_call.return_data[0]:
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
