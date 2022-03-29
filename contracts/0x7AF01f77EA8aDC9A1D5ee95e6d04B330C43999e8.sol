contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pay(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = 32
    mem[ceil32(arg1.length) + 192] = arg1.length
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + 128] = arg1.length + 64
    if stor1[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] != msg.value:
        revert with 0, 'ServiceReceiver: incorrect price'
    emit Created(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function setPrice(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    mem[ceil32(arg1.length) + 160] = 32
    mem[ceil32(arg1.length) + 192] = arg1.length
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + 128] = arg1.length + 64
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        mem[ceil32(arg1.length) + 128] = floor32(arg1.length) + 96
    stor1[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] = arg2
}

function getPrice(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = 32
    mem[ceil32(arg1.length) + 192] = arg1.length
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + 128] = arg1.length + 64
        mem[arg1.length + ceil32(arg1.length) + 224] = stor1[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]
        return memory
          from arg1.length + ceil32(arg1.length) + 224
           len 32
    mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = floor32(arg1.length) + 96
    mem[floor32(arg1.length) + ceil32(arg1.length) + 256] = stor1[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]
    return memory
      from floor32(arg1.length) + ceil32(arg1.length) + 256
       len 32
}



}
