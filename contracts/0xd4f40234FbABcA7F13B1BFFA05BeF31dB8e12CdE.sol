contract main {




// =====================  Runtime code  =====================


#
#  - sub_f1e33110(?)
#
uint256 stor0;
mapping of uint8 stor1;
mapping of address stor2;
mapping of uint256 sub_c8de689f;

function sub_c8de689f(?) {
    require calldata.size - 4 >= 64
    require arg1 < 2
    require arg2 == Mask(8, 248, arg2)
    return sub_c8de689f[arg1][arg2]
}

function _fallback() payable {
    revert
}

function addVerifiedUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only verified user can call this function'
    if stor1[address(arg1)]:
        revert with 0, 'User exist'
    stor1[address(arg1)] = 1
    stor2[stor0] = arg1
    if stor0 == -1:
        revert with 0, 17
    stor0++
    return 1
}

function getCash(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only verified user can call this function'
    if not eth.balance(this.address):
        revert with 0, 'No cash'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getVerifiedUsers() {
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only verified user can call this function'
    if stor0 > test266151307():
        revert with 0, 65
    mem[96] = stor0
    mem[64] = (32 * stor0) + 128
    if stor0:
        mem[128 len 32 * stor0] = call.data[calldata.size len 32 * stor0]
    idx = 0
    while idx < stor0:
        mem[0] = idx
        mem[32] = 2
        if idx >= stor0:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor2[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor0) + 128] = 32
    mem[(32 * stor0) + 160] = stor0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0) + -mem[64] + 192
}



}
