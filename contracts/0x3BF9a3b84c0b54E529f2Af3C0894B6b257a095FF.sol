contract main {




// =====================  Runtime code  =====================


#
#  - sub_186c8af1(?)
#  - sub_82cb68c3(?)
#  - sub_ae44042b(?)
#
address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function isOwner() {
    if msg.sender == owner:
        return True
    return (msg.sender == stor1)
}

function renounceOwnership() {
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addSecondOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    stor1 = arg1
}

function withdrawBnb(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e2da3653(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_bbd83fff(?) {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if msg.sender == owner:
        mem[96] = ('cd', 68).length
        mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] = ('cd', 132).length
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = ('cd', 68).length
        mem[64] = (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + 224
        if not ('cd', 68).length:
            require 0 < ('cd', 68).length
            mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = cd[4]
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[(32 * ('cd', 68).length) + 128]
                require idx < mem[96]
                _5270 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _5283 = mem[(32 * idx + 1) + 128]
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    _5333 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_5333] == mem[_5333 + 18 len 14]
                    require mem[_5333 + 32] == mem[_5333 + 50 len 14]
                    require mem[_5333 + 64] == mem[_5333 + 92 len 4]
                    require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                    if address(_5270) == address(_5270):
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                            require mem[_5333 + 18 len 14]
                            if 1000 * mem[_5333 + 18 len 14] / mem[_5333 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if 1000 * mem[_5333 + 18 len 14] < 1000 * mem[_5333 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require 1000 * mem[_5333 + 18 len 14]
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5333 + 18 len 14]
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                if not mem[_5333 + 18 len 14]:
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                else:
                                    if 1000 * mem[_5333 + 18 len 14] / mem[_5333 + 18 len 14] != 1000:
                                        revert with 0, 'SafeMath#mul: OVERFLOW'
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 18 len 14]) < 1000 * mem[_5333 + 18 len 14]:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 18 len 14])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 18 len 14])
                            else:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5333 + 50 len 14]:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if not mem[_5333 + 18 len 14]:
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                else:
                                    if 1000 * mem[_5333 + 18 len 14] / mem[_5333 + 18 len 14] != 1000:
                                        revert with 0, 'SafeMath#mul: OVERFLOW'
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 18 len 14]) < 1000 * mem[_5333 + 18 len 14]:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 18 len 14])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 18 len 14])
                    else:
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                            require mem[_5333 + 50 len 14]
                            if 1000 * mem[_5333 + 50 len 14] / mem[_5333 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if 1000 * mem[_5333 + 50 len 14] < 1000 * mem[_5333 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require 1000 * mem[_5333 + 50 len 14]
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5333 + 50 len 14]
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                if not mem[_5333 + 50 len 14]:
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                else:
                                    if 1000 * mem[_5333 + 50 len 14] / mem[_5333 + 50 len 14] != 1000:
                                        revert with 0, 'SafeMath#mul: OVERFLOW'
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 50 len 14]) < 1000 * mem[_5333 + 50 len 14]:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 50 len 14])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 50 len 14])
                            else:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5333 + 18 len 14]:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if not mem[_5333 + 50 len 14]:
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                else:
                                    if 1000 * mem[_5333 + 50 len 14] / mem[_5333 + 50 len 14] != 1000:
                                        revert with 0, 'SafeMath#mul: OVERFLOW'
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 50 len 14]) < 1000 * mem[_5333 + 50 len 14]:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 50 len 14])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5333 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5333 + 50 len 14])
                else:
                    _5334 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_5334] == mem[_5334 + 18 len 14]
                    require mem[_5334 + 32] == mem[_5334 + 50 len 14]
                    require mem[_5334 + 64] == mem[_5334 + 92 len 4]
                    require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                    if address(_5270) == address(_5283):
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                            require mem[_5334 + 18 len 14]
                            if 1000 * mem[_5334 + 18 len 14] / mem[_5334 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if 1000 * mem[_5334 + 18 len 14] < 1000 * mem[_5334 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require 1000 * mem[_5334 + 18 len 14]
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5334 + 18 len 14]
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                if not mem[_5334 + 18 len 14]:
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                else:
                                    if 1000 * mem[_5334 + 18 len 14] / mem[_5334 + 18 len 14] != 1000:
                                        revert with 0, 'SafeMath#mul: OVERFLOW'
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 18 len 14]) < 1000 * mem[_5334 + 18 len 14]:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 18 len 14])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 18 len 14])
                            else:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5334 + 50 len 14]:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if not mem[_5334 + 18 len 14]:
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                else:
                                    if 1000 * mem[_5334 + 18 len 14] / mem[_5334 + 18 len 14] != 1000:
                                        revert with 0, 'SafeMath#mul: OVERFLOW'
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 18 len 14]) < 1000 * mem[_5334 + 18 len 14]:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 18 len 14])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 18 len 14])
                    else:
                        if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                            require mem[_5334 + 50 len 14]
                            if 1000 * mem[_5334 + 50 len 14] / mem[_5334 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if 1000 * mem[_5334 + 50 len 14] < 1000 * mem[_5334 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require 1000 * mem[_5334 + 50 len 14]
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5334 + 50 len 14]
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                if not mem[_5334 + 50 len 14]:
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                else:
                                    if 1000 * mem[_5334 + 50 len 14] / mem[_5334 + 50 len 14] != 1000:
                                        revert with 0, 'SafeMath#mul: OVERFLOW'
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 50 len 14]) < 1000 * mem[_5334 + 50 len 14]:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 50 len 14])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 50 len 14])
                            else:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5334 + 18 len 14]:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if not mem[_5334 + 50 len 14]:
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                else:
                                    if 1000 * mem[_5334 + 50 len 14] / mem[_5334 + 50 len 14] != 1000:
                                        revert with 0, 'SafeMath#mul: OVERFLOW'
                                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 50 len 14]) < 1000 * mem[_5334 + 50 len 14]:
                                        revert with 0, 'SafeMath#add: OVERFLOW'
                                    require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 50 len 14])
                                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5334 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5334 + 50 len 14])
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < cd[36]:
                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
            require 0 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            require mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                revert with 0, 'Sorry bruh'
            require 0 < ('cd', 68).length
            require ('cd', 68)[0] == address(('cd', 68)[0])
            require 0 < ('cd', 100).length
            require ('cd', 100)[0] == address(('cd', 100)[0])
            require 0 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            _5373 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
            _5377 = mem[64]
            mem[mem[64] + 36] = address(('cd', 100)[0])
            mem[mem[64] + 68] = _5373
            _5461 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_5461 + 32 len 4] = unknown_0xa9059cbb(?????)
            _5473 = mem[_5461]
            mem[_5377 + 100 len ceil32(mem[_5461])] = mem[_5461 + 32 len ceil32(mem[_5461])]
            if ceil32(_5473) <= _5473:
                call address(('cd', 68)[0]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _5473 + _5377 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    if not mem[96]:
                        _10541 = mem[64]
                        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                        mem[_10541] = ('cd', 68).length
                        mem[_10541 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[_10541 + (32 * ('cd', 68).length) + 32] = 0
                        _10542 = mem[64]
                        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                        mem[_10542] = ('cd', 100).length
                        mem[_10542 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[_10542 + (32 * ('cd', 100).length) + 32] = 0
                        _10543 = mem[64]
                        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                        mem[_10543] = ('cd', 164).length
                        mem[_10543 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                        mem[_10543 + (32 * ('cd', 164).length) + 32] = 0
                        idx = 0
                        while idx < ('cd', 68).length - 1:
                            require idx < mem[_10541]
                            require idx + 1 < mem[_10541]
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            if mem[(32 * idx) + _10541 + 44 len 20] < mem[(32 * idx + 1) + _10541 + 44 len 20]:
                                _15373 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                                if mem[(32 * idx) + _10541 + 44 len 20] == mem[(32 * idx) + _10541 + 44 len 20]:
                                    if idx >= mem[_10541] - 2:
                                        require idx < mem[_10543]
                                        require idx < mem[_10542]
                                        if not mem[(32 * idx) + _10543 + 32]:
                                            _16624 = mem[(32 * idx) + _10542 + 32]
                                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 36] = _15373
                                            mem[mem[64] + 68] = this.address
                                            require ext_code.size(address(_16624))
                                            call address(_16624).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _15373, this.address
                                        else:
                                            _16626 = mem[(32 * idx) + _10542 + 32]
                                            _16627 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_16627 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_16627 + 36] = 0
                                            mem[_16627 + 68] = _15373
                                            mem[_16627 + 100] = this.address
                                            mem[_16627 + 132] = 128
                                            mem[_16627 + 164] = mem[_16627]
                                            s = 0
                                            while s < mem[_16627]:
                                                mem[s + _16627 + 196] = mem[s + _16627 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(mem[_16627]) > mem[_16627]:
                                                mem[mem[_16627] + _16627 + 196] = 0
                                            require ext_code.size(address(_16626))
                                            call address(_16626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, _15373, address(this.address), 128, mem[_16627], mem[_16627 + 196 len ceil32(mem[_16627])]
                                    else:
                                        require idx + 1 < mem[_10542]
                                        _15693 = mem[(32 * idx + 1) + _10542 + 32]
                                        require idx < mem[_10543]
                                        require idx < mem[_10542]
                                        if not mem[(32 * idx) + _10543 + 32]:
                                            _17421 = mem[(32 * idx) + _10542 + 32]
                                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 36] = _15373
                                            mem[mem[64] + 68] = address(_15693)
                                            require ext_code.size(address(_17421))
                                            call address(_17421).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _15373, address(_15693)
                                        else:
                                            _17423 = mem[(32 * idx) + _10542 + 32]
                                            _17424 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_17424 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_17424 + 36] = 0
                                            mem[_17424 + 68] = _15373
                                            mem[_17424 + 100] = address(_15693)
                                            mem[_17424 + 132] = 128
                                            mem[_17424 + 164] = mem[_17424]
                                            s = 0
                                            while s < mem[_17424]:
                                                mem[s + _17424 + 196] = mem[s + _17424 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(mem[_17424]) > mem[_17424]:
                                                mem[mem[_17424] + _17424 + 196] = 0
                                            require ext_code.size(address(_17423))
                                            call address(_17423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, _15373, address(_15693), 128, mem[_17424], mem[_17424 + 196 len ceil32(mem[_17424])]
                                else:
                                    if idx >= mem[_10541] - 2:
                                        require idx < mem[_10543]
                                        require idx < mem[_10542]
                                        if not mem[(32 * idx) + _10543 + 32]:
                                            _16630 = mem[(32 * idx) + _10542 + 32]
                                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _15373
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = this.address
                                            require ext_code.size(address(_16630))
                                            call address(_16630).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _15373, 0, this.address
                                        else:
                                            _16632 = mem[(32 * idx) + _10542 + 32]
                                            _16633 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_16633 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_16633 + 36] = _15373
                                            mem[_16633 + 68] = 0
                                            mem[_16633 + 100] = this.address
                                            mem[_16633 + 132] = 128
                                            mem[_16633 + 164] = mem[_16633]
                                            s = 0
                                            while s < mem[_16633]:
                                                mem[s + _16633 + 196] = mem[s + _16633 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(mem[_16633]) > mem[_16633]:
                                                mem[mem[_16633] + _16633 + 196] = 0
                                            require ext_code.size(address(_16632))
                                            call address(_16632).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args _15373, 0, address(this.address), 128, mem[_16633], mem[_16633 + 196 len ceil32(mem[_16633])]
                                    else:
                                        require idx + 1 < mem[_10542]
                                        _15695 = mem[(32 * idx + 1) + _10542 + 32]
                                        require idx < mem[_10543]
                                        require idx < mem[_10542]
                                        if not mem[(32 * idx) + _10543 + 32]:
                                            _17426 = mem[(32 * idx) + _10542 + 32]
                                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _15373
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = address(_15695)
                                            require ext_code.size(address(_17426))
                                            call address(_17426).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _15373, 0, address(_15695)
                                        else:
                                            _17428 = mem[(32 * idx) + _10542 + 32]
                                            _17429 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_17429 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_17429 + 36] = _15373
                                            mem[_17429 + 68] = 0
                                            mem[_17429 + 100] = address(_15695)
                                            mem[_17429 + 132] = 128
                                            mem[_17429 + 164] = mem[_17429]
                                            s = 0
                                            while s < mem[_17429]:
                                                mem[s + _17429 + 196] = mem[s + _17429 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(mem[_17429]) > mem[_17429]:
                                                mem[mem[_17429] + _17429 + 196] = 0
                                            require ext_code.size(address(_17428))
                                            call address(_17428).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args _15373, 0, address(_15695), 128, mem[_17429], mem[_17429 + 196 len ceil32(mem[_17429])]
                            else:
                                _15374 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                                if mem[(32 * idx) + _10541 + 44 len 20] == mem[(32 * idx + 1) + _10541 + 44 len 20]:
                                    if idx >= mem[_10541] - 2:
                                        require idx < mem[_10543]
                                        require idx < mem[_10542]
                                        if not mem[(32 * idx) + _10543 + 32]:
                                            _16636 = mem[(32 * idx) + _10542 + 32]
                                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 36] = _15374
                                            mem[mem[64] + 68] = this.address
                                            require ext_code.size(address(_16636))
                                            call address(_16636).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _15374, this.address
                                        else:
                                            _16638 = mem[(32 * idx) + _10542 + 32]
                                            _16639 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_16639 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_16639 + 36] = 0
                                            mem[_16639 + 68] = _15374
                                            mem[_16639 + 100] = this.address
                                            mem[_16639 + 132] = 128
                                            mem[_16639 + 164] = mem[_16639]
                                            s = 0
                                            while s < mem[_16639]:
                                                mem[s + _16639 + 196] = mem[s + _16639 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(mem[_16639]) > mem[_16639]:
                                                mem[mem[_16639] + _16639 + 196] = 0
                                            require ext_code.size(address(_16638))
                                            call address(_16638).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, _15374, address(this.address), 128, mem[_16639], mem[_16639 + 196 len ceil32(mem[_16639])]
                                    else:
                                        require idx + 1 < mem[_10542]
                                        _15697 = mem[(32 * idx + 1) + _10542 + 32]
                                        require idx < mem[_10543]
                                        require idx < mem[_10542]
                                        if not mem[(32 * idx) + _10543 + 32]:
                                            _17431 = mem[(32 * idx) + _10542 + 32]
                                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 36] = _15374
                                            mem[mem[64] + 68] = address(_15697)
                                            require ext_code.size(address(_17431))
                                            call address(_17431).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args 0, _15374, address(_15697)
                                        else:
                                            _17433 = mem[(32 * idx) + _10542 + 32]
                                            _17434 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_17434 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_17434 + 36] = 0
                                            mem[_17434 + 68] = _15374
                                            mem[_17434 + 100] = address(_15697)
                                            mem[_17434 + 132] = 128
                                            mem[_17434 + 164] = mem[_17434]
                                            s = 0
                                            while s < mem[_17434]:
                                                mem[s + _17434 + 196] = mem[s + _17434 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(mem[_17434]) > mem[_17434]:
                                                mem[mem[_17434] + _17434 + 196] = 0
                                            require ext_code.size(address(_17433))
                                            call address(_17433).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, _15374, address(_15697), 128, mem[_17434], mem[_17434 + 196 len ceil32(mem[_17434])]
                                else:
                                    if idx >= mem[_10541] - 2:
                                        require idx < mem[_10543]
                                        require idx < mem[_10542]
                                        if not mem[(32 * idx) + _10543 + 32]:
                                            _16642 = mem[(32 * idx) + _10542 + 32]
                                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _15374
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = this.address
                                            require ext_code.size(address(_16642))
                                            call address(_16642).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _15374, 0, this.address
                                        else:
                                            _16644 = mem[(32 * idx) + _10542 + 32]
                                            _16645 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_16645 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_16645 + 36] = _15374
                                            mem[_16645 + 68] = 0
                                            mem[_16645 + 100] = this.address
                                            mem[_16645 + 132] = 128
                                            mem[_16645 + 164] = mem[_16645]
                                            s = 0
                                            while s < mem[_16645]:
                                                mem[s + _16645 + 196] = mem[s + _16645 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(mem[_16645]) > mem[_16645]:
                                                mem[mem[_16645] + _16645 + 196] = 0
                                            require ext_code.size(address(_16644))
                                            call address(_16644).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args _15374, 0, address(this.address), 128, mem[_16645], mem[_16645 + 196 len ceil32(mem[_16645])]
                                    else:
                                        require idx + 1 < mem[_10542]
                                        _15699 = mem[(32 * idx + 1) + _10542 + 32]
                                        require idx < mem[_10543]
                                        require idx < mem[_10542]
                                        if not mem[(32 * idx) + _10543 + 32]:
                                            _17436 = mem[(32 * idx) + _10542 + 32]
                                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _15374
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = address(_15699)
                                            require ext_code.size(address(_17436))
                                            call address(_17436).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                                 gas gas_remaining wei
                                                args _15374, 0, address(_15699)
                                        else:
                                            _17438 = mem[(32 * idx) + _10542 + 32]
                                            _17439 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_17439 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_17439 + 36] = _15374
                                            mem[_17439 + 68] = 0
                                            mem[_17439 + 100] = address(_15699)
                                            mem[_17439 + 132] = 128
                                            mem[_17439 + 164] = mem[_17439]
                                            s = 0
                                            while s < mem[_17439]:
                                                mem[s + _17439 + 196] = mem[s + _17439 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(mem[_17439]) > mem[_17439]:
                                                mem[mem[_17439] + _17439 + 196] = 0
                                            require ext_code.size(address(_17438))
                                            call address(_17438).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args _15374, 0, address(_15699), 128, mem[_17439], mem[_17439 + 196 len ceil32(mem[_17439])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 32
                        _15277 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + 64 len 32 * _15277] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15277]
                        return 32, mem[mem[64] + 32 len (32 * _15277) + 32]
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    _10783 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                    mem[_10783] = ('cd', 68).length
                    mem[_10783 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[_10783 + (32 * ('cd', 68).length) + 32] = 0
                    _10784 = mem[64]
                    mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                    mem[_10784] = ('cd', 100).length
                    mem[_10784 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                    mem[_10784 + (32 * ('cd', 100).length) + 32] = 0
                    _10785 = mem[64]
                    mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                    mem[_10785] = ('cd', 164).length
                    mem[_10785 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_10785 + (32 * ('cd', 164).length) + 32] = 0
                    idx = 0
                    while idx < ('cd', 68).length - 1:
                        require idx < mem[_10783]
                        require idx + 1 < mem[_10783]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        if mem[(32 * idx) + _10783 + 44 len 20] < mem[(32 * idx + 1) + _10783 + 44 len 20]:
                            _15375 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _10783 + 44 len 20] == mem[(32 * idx) + _10783 + 44 len 20]:
                                if idx >= mem[_10783] - 2:
                                    require idx < mem[_10785]
                                    require idx < mem[_10784]
                                    if not mem[(32 * idx) + _10785 + 32]:
                                        _16649 = mem[(32 * idx) + _10784 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15375
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16649))
                                        call address(_16649).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15375, this.address
                                    else:
                                        _16651 = mem[(32 * idx) + _10784 + 32]
                                        _16652 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16652 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16652 + 36] = 0
                                        mem[_16652 + 68] = _15375
                                        mem[_16652 + 100] = this.address
                                        mem[_16652 + 132] = 128
                                        mem[_16652 + 164] = mem[_16652]
                                        s = 0
                                        while s < mem[_16652]:
                                            mem[s + _16652 + 196] = mem[s + _16652 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16652]) > mem[_16652]:
                                            mem[mem[_16652] + _16652 + 196] = 0
                                        require ext_code.size(address(_16651))
                                        call address(_16651).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15375, address(this.address), 128, mem[_16652], mem[_16652 + 196 len ceil32(mem[_16652])]
                                else:
                                    require idx + 1 < mem[_10784]
                                    _15701 = mem[(32 * idx + 1) + _10784 + 32]
                                    require idx < mem[_10785]
                                    require idx < mem[_10784]
                                    if not mem[(32 * idx) + _10785 + 32]:
                                        _17441 = mem[(32 * idx) + _10784 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15375
                                        mem[mem[64] + 68] = address(_15701)
                                        require ext_code.size(address(_17441))
                                        call address(_17441).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15375, address(_15701)
                                    else:
                                        _17443 = mem[(32 * idx) + _10784 + 32]
                                        _17444 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17444 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17444 + 36] = 0
                                        mem[_17444 + 68] = _15375
                                        mem[_17444 + 100] = address(_15701)
                                        mem[_17444 + 132] = 128
                                        mem[_17444 + 164] = mem[_17444]
                                        s = 0
                                        while s < mem[_17444]:
                                            mem[s + _17444 + 196] = mem[s + _17444 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17444]) > mem[_17444]:
                                            mem[mem[_17444] + _17444 + 196] = 0
                                        require ext_code.size(address(_17443))
                                        call address(_17443).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15375, address(_15701), 128, mem[_17444], mem[_17444 + 196 len ceil32(mem[_17444])]
                            else:
                                if idx >= mem[_10783] - 2:
                                    require idx < mem[_10785]
                                    require idx < mem[_10784]
                                    if not mem[(32 * idx) + _10785 + 32]:
                                        _16655 = mem[(32 * idx) + _10784 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15375
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16655))
                                        call address(_16655).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15375, 0, this.address
                                    else:
                                        _16657 = mem[(32 * idx) + _10784 + 32]
                                        _16658 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16658 + 36] = _15375
                                        mem[_16658 + 68] = 0
                                        mem[_16658 + 100] = this.address
                                        mem[_16658 + 132] = 128
                                        mem[_16658 + 164] = mem[_16658]
                                        s = 0
                                        while s < mem[_16658]:
                                            mem[s + _16658 + 196] = mem[s + _16658 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16658]) > mem[_16658]:
                                            mem[mem[_16658] + _16658 + 196] = 0
                                        require ext_code.size(address(_16657))
                                        call address(_16657).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15375, 0, address(this.address), 128, mem[_16658], mem[_16658 + 196 len ceil32(mem[_16658])]
                                else:
                                    require idx + 1 < mem[_10784]
                                    _15703 = mem[(32 * idx + 1) + _10784 + 32]
                                    require idx < mem[_10785]
                                    require idx < mem[_10784]
                                    if not mem[(32 * idx) + _10785 + 32]:
                                        _17446 = mem[(32 * idx) + _10784 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15375
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_15703)
                                        require ext_code.size(address(_17446))
                                        call address(_17446).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15375, 0, address(_15703)
                                    else:
                                        _17448 = mem[(32 * idx) + _10784 + 32]
                                        _17449 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17449 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17449 + 36] = _15375
                                        mem[_17449 + 68] = 0
                                        mem[_17449 + 100] = address(_15703)
                                        mem[_17449 + 132] = 128
                                        mem[_17449 + 164] = mem[_17449]
                                        s = 0
                                        while s < mem[_17449]:
                                            mem[s + _17449 + 196] = mem[s + _17449 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17449]) > mem[_17449]:
                                            mem[mem[_17449] + _17449 + 196] = 0
                                        require ext_code.size(address(_17448))
                                        call address(_17448).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15375, 0, address(_15703), 128, mem[_17449], mem[_17449 + 196 len ceil32(mem[_17449])]
                        else:
                            _15376 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _10783 + 44 len 20] == mem[(32 * idx + 1) + _10783 + 44 len 20]:
                                if idx >= mem[_10783] - 2:
                                    require idx < mem[_10785]
                                    require idx < mem[_10784]
                                    if not mem[(32 * idx) + _10785 + 32]:
                                        _16661 = mem[(32 * idx) + _10784 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15376
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16661))
                                        call address(_16661).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15376, this.address
                                    else:
                                        _16663 = mem[(32 * idx) + _10784 + 32]
                                        _16664 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16664 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16664 + 36] = 0
                                        mem[_16664 + 68] = _15376
                                        mem[_16664 + 100] = this.address
                                        mem[_16664 + 132] = 128
                                        mem[_16664 + 164] = mem[_16664]
                                        s = 0
                                        while s < mem[_16664]:
                                            mem[s + _16664 + 196] = mem[s + _16664 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16664]) > mem[_16664]:
                                            mem[mem[_16664] + _16664 + 196] = 0
                                        require ext_code.size(address(_16663))
                                        call address(_16663).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15376, address(this.address), 128, mem[_16664], mem[_16664 + 196 len ceil32(mem[_16664])]
                                else:
                                    require idx + 1 < mem[_10784]
                                    _15705 = mem[(32 * idx + 1) + _10784 + 32]
                                    require idx < mem[_10785]
                                    require idx < mem[_10784]
                                    if not mem[(32 * idx) + _10785 + 32]:
                                        _17451 = mem[(32 * idx) + _10784 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15376
                                        mem[mem[64] + 68] = address(_15705)
                                        require ext_code.size(address(_17451))
                                        call address(_17451).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15376, address(_15705)
                                    else:
                                        _17453 = mem[(32 * idx) + _10784 + 32]
                                        _17454 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17454 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17454 + 36] = 0
                                        mem[_17454 + 68] = _15376
                                        mem[_17454 + 100] = address(_15705)
                                        mem[_17454 + 132] = 128
                                        mem[_17454 + 164] = mem[_17454]
                                        s = 0
                                        while s < mem[_17454]:
                                            mem[s + _17454 + 196] = mem[s + _17454 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17454]) > mem[_17454]:
                                            mem[mem[_17454] + _17454 + 196] = 0
                                        require ext_code.size(address(_17453))
                                        call address(_17453).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15376, address(_15705), 128, mem[_17454], mem[_17454 + 196 len ceil32(mem[_17454])]
                            else:
                                if idx >= mem[_10783] - 2:
                                    require idx < mem[_10785]
                                    require idx < mem[_10784]
                                    if not mem[(32 * idx) + _10785 + 32]:
                                        _16667 = mem[(32 * idx) + _10784 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15376
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16667))
                                        call address(_16667).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15376, 0, this.address
                                    else:
                                        _16669 = mem[(32 * idx) + _10784 + 32]
                                        _16670 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16670 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16670 + 36] = _15376
                                        mem[_16670 + 68] = 0
                                        mem[_16670 + 100] = this.address
                                        mem[_16670 + 132] = 128
                                        mem[_16670 + 164] = mem[_16670]
                                        s = 0
                                        while s < mem[_16670]:
                                            mem[s + _16670 + 196] = mem[s + _16670 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16670]) > mem[_16670]:
                                            mem[mem[_16670] + _16670 + 196] = 0
                                        require ext_code.size(address(_16669))
                                        call address(_16669).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15376, 0, address(this.address), 128, mem[_16670], mem[_16670 + 196 len ceil32(mem[_16670])]
                                else:
                                    require idx + 1 < mem[_10784]
                                    _15707 = mem[(32 * idx + 1) + _10784 + 32]
                                    require idx < mem[_10785]
                                    require idx < mem[_10784]
                                    if not mem[(32 * idx) + _10785 + 32]:
                                        _17456 = mem[(32 * idx) + _10784 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15376
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_15707)
                                        require ext_code.size(address(_17456))
                                        call address(_17456).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15376, 0, address(_15707)
                                    else:
                                        _17458 = mem[(32 * idx) + _10784 + 32]
                                        _17459 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17459 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17459 + 36] = _15376
                                        mem[_17459 + 68] = 0
                                        mem[_17459 + 100] = address(_15707)
                                        mem[_17459 + 132] = 128
                                        mem[_17459 + 164] = mem[_17459]
                                        s = 0
                                        while s < mem[_17459]:
                                            mem[s + _17459 + 196] = mem[s + _17459 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17459]) > mem[_17459]:
                                            mem[mem[_17459] + _17459 + 196] = 0
                                        require ext_code.size(address(_17458))
                                        call address(_17458).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15376, 0, address(_15707), 128, mem[_17459], mem[_17459 + 196 len ceil32(mem[_17459])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 32
                    _15278 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 64 len 32 * _15278] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15278]
                    return 32, mem[mem[64] + 32 len (32 * _15278) + 32]
                _10485 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_10485] = return_data.size
                mem[_10485 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if not return_data.size:
                    _10544 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                    mem[_10544] = ('cd', 68).length
                    mem[_10544 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[_10544 + (32 * ('cd', 68).length) + 32] = 0
                    _10545 = mem[64]
                    mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                    mem[_10545] = ('cd', 100).length
                    mem[_10545 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                    mem[_10545 + (32 * ('cd', 100).length) + 32] = 0
                    _10546 = mem[64]
                    mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                    mem[_10546] = ('cd', 164).length
                    mem[_10546 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_10546 + (32 * ('cd', 164).length) + 32] = 0
                    idx = 0
                    while idx < ('cd', 68).length - 1:
                        require idx < mem[_10544]
                        require idx + 1 < mem[_10544]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        if mem[(32 * idx) + _10544 + 44 len 20] < mem[(32 * idx + 1) + _10544 + 44 len 20]:
                            _15377 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _10544 + 44 len 20] == mem[(32 * idx) + _10544 + 44 len 20]:
                                if idx >= mem[_10544] - 2:
                                    require idx < mem[_10546]
                                    require idx < mem[_10545]
                                    if not mem[(32 * idx) + _10546 + 32]:
                                        _16674 = mem[(32 * idx) + _10545 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15377
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16674))
                                        call address(_16674).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15377, this.address
                                    else:
                                        _16676 = mem[(32 * idx) + _10545 + 32]
                                        _16677 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16677 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16677 + 36] = 0
                                        mem[_16677 + 68] = _15377
                                        mem[_16677 + 100] = this.address
                                        mem[_16677 + 132] = 128
                                        mem[_16677 + 164] = mem[_16677]
                                        s = 0
                                        while s < mem[_16677]:
                                            mem[s + _16677 + 196] = mem[s + _16677 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16677]) > mem[_16677]:
                                            mem[mem[_16677] + _16677 + 196] = 0
                                        require ext_code.size(address(_16676))
                                        call address(_16676).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15377, address(this.address), 128, mem[_16677], mem[_16677 + 196 len ceil32(mem[_16677])]
                                else:
                                    require idx + 1 < mem[_10545]
                                    _15709 = mem[(32 * idx + 1) + _10545 + 32]
                                    require idx < mem[_10546]
                                    require idx < mem[_10545]
                                    if not mem[(32 * idx) + _10546 + 32]:
                                        _17461 = mem[(32 * idx) + _10545 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15377
                                        mem[mem[64] + 68] = address(_15709)
                                        require ext_code.size(address(_17461))
                                        call address(_17461).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15377, address(_15709)
                                    else:
                                        _17463 = mem[(32 * idx) + _10545 + 32]
                                        _17464 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17464 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17464 + 36] = 0
                                        mem[_17464 + 68] = _15377
                                        mem[_17464 + 100] = address(_15709)
                                        mem[_17464 + 132] = 128
                                        mem[_17464 + 164] = mem[_17464]
                                        s = 0
                                        while s < mem[_17464]:
                                            mem[s + _17464 + 196] = mem[s + _17464 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17464]) > mem[_17464]:
                                            mem[mem[_17464] + _17464 + 196] = 0
                                        require ext_code.size(address(_17463))
                                        call address(_17463).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15377, address(_15709), 128, mem[_17464], mem[_17464 + 196 len ceil32(mem[_17464])]
                            else:
                                if idx >= mem[_10544] - 2:
                                    require idx < mem[_10546]
                                    require idx < mem[_10545]
                                    if not mem[(32 * idx) + _10546 + 32]:
                                        _16680 = mem[(32 * idx) + _10545 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15377
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16680))
                                        call address(_16680).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15377, 0, this.address
                                    else:
                                        _16682 = mem[(32 * idx) + _10545 + 32]
                                        _16683 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16683 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16683 + 36] = _15377
                                        mem[_16683 + 68] = 0
                                        mem[_16683 + 100] = this.address
                                        mem[_16683 + 132] = 128
                                        mem[_16683 + 164] = mem[_16683]
                                        s = 0
                                        while s < mem[_16683]:
                                            mem[s + _16683 + 196] = mem[s + _16683 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16683]) > mem[_16683]:
                                            mem[mem[_16683] + _16683 + 196] = 0
                                        require ext_code.size(address(_16682))
                                        call address(_16682).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15377, 0, address(this.address), 128, mem[_16683], mem[_16683 + 196 len ceil32(mem[_16683])]
                                else:
                                    require idx + 1 < mem[_10545]
                                    _15711 = mem[(32 * idx + 1) + _10545 + 32]
                                    require idx < mem[_10546]
                                    require idx < mem[_10545]
                                    if not mem[(32 * idx) + _10546 + 32]:
                                        _17466 = mem[(32 * idx) + _10545 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15377
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_15711)
                                        require ext_code.size(address(_17466))
                                        call address(_17466).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15377, 0, address(_15711)
                                    else:
                                        _17468 = mem[(32 * idx) + _10545 + 32]
                                        _17469 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17469 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17469 + 36] = _15377
                                        mem[_17469 + 68] = 0
                                        mem[_17469 + 100] = address(_15711)
                                        mem[_17469 + 132] = 128
                                        mem[_17469 + 164] = mem[_17469]
                                        s = 0
                                        while s < mem[_17469]:
                                            mem[s + _17469 + 196] = mem[s + _17469 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17469]) > mem[_17469]:
                                            mem[mem[_17469] + _17469 + 196] = 0
                                        require ext_code.size(address(_17468))
                                        call address(_17468).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15377, 0, address(_15711), 128, mem[_17469], mem[_17469 + 196 len ceil32(mem[_17469])]
                        else:
                            _15378 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _10544 + 44 len 20] == mem[(32 * idx + 1) + _10544 + 44 len 20]:
                                if idx >= mem[_10544] - 2:
                                    require idx < mem[_10546]
                                    require idx < mem[_10545]
                                    if not mem[(32 * idx) + _10546 + 32]:
                                        _16686 = mem[(32 * idx) + _10545 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15378
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16686))
                                        call address(_16686).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15378, this.address
                                    else:
                                        _16688 = mem[(32 * idx) + _10545 + 32]
                                        _16689 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16689 + 36] = 0
                                        mem[_16689 + 68] = _15378
                                        mem[_16689 + 100] = this.address
                                        mem[_16689 + 132] = 128
                                        mem[_16689 + 164] = mem[_16689]
                                        s = 0
                                        while s < mem[_16689]:
                                            mem[s + _16689 + 196] = mem[s + _16689 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16689]) > mem[_16689]:
                                            mem[mem[_16689] + _16689 + 196] = 0
                                        require ext_code.size(address(_16688))
                                        call address(_16688).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15378, address(this.address), 128, mem[_16689], mem[_16689 + 196 len ceil32(mem[_16689])]
                                else:
                                    require idx + 1 < mem[_10545]
                                    _15713 = mem[(32 * idx + 1) + _10545 + 32]
                                    require idx < mem[_10546]
                                    require idx < mem[_10545]
                                    if not mem[(32 * idx) + _10546 + 32]:
                                        _17471 = mem[(32 * idx) + _10545 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15378
                                        mem[mem[64] + 68] = address(_15713)
                                        require ext_code.size(address(_17471))
                                        call address(_17471).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15378, address(_15713)
                                    else:
                                        _17473 = mem[(32 * idx) + _10545 + 32]
                                        _17474 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17474 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17474 + 36] = 0
                                        mem[_17474 + 68] = _15378
                                        mem[_17474 + 100] = address(_15713)
                                        mem[_17474 + 132] = 128
                                        mem[_17474 + 164] = mem[_17474]
                                        s = 0
                                        while s < mem[_17474]:
                                            mem[s + _17474 + 196] = mem[s + _17474 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17474]) > mem[_17474]:
                                            mem[mem[_17474] + _17474 + 196] = 0
                                        require ext_code.size(address(_17473))
                                        call address(_17473).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15378, address(_15713), 128, mem[_17474], mem[_17474 + 196 len ceil32(mem[_17474])]
                            else:
                                if idx >= mem[_10544] - 2:
                                    require idx < mem[_10546]
                                    require idx < mem[_10545]
                                    if not mem[(32 * idx) + _10546 + 32]:
                                        _16692 = mem[(32 * idx) + _10545 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15378
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16692))
                                        call address(_16692).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15378, 0, this.address
                                    else:
                                        _16694 = mem[(32 * idx) + _10545 + 32]
                                        _16695 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16695 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16695 + 36] = _15378
                                        mem[_16695 + 68] = 0
                                        mem[_16695 + 100] = this.address
                                        mem[_16695 + 132] = 128
                                        mem[_16695 + 164] = mem[_16695]
                                        s = 0
                                        while s < mem[_16695]:
                                            mem[s + _16695 + 196] = mem[s + _16695 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16695]) > mem[_16695]:
                                            mem[mem[_16695] + _16695 + 196] = 0
                                        require ext_code.size(address(_16694))
                                        call address(_16694).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15378, 0, address(this.address), 128, mem[_16695], mem[_16695 + 196 len ceil32(mem[_16695])]
                                else:
                                    require idx + 1 < mem[_10545]
                                    _15715 = mem[(32 * idx + 1) + _10545 + 32]
                                    require idx < mem[_10546]
                                    require idx < mem[_10545]
                                    if not mem[(32 * idx) + _10546 + 32]:
                                        _17476 = mem[(32 * idx) + _10545 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15378
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_15715)
                                        require ext_code.size(address(_17476))
                                        call address(_17476).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15378, 0, address(_15715)
                                    else:
                                        _17478 = mem[(32 * idx) + _10545 + 32]
                                        _17479 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17479 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17479 + 36] = _15378
                                        mem[_17479 + 68] = 0
                                        mem[_17479 + 100] = address(_15715)
                                        mem[_17479 + 132] = 128
                                        mem[_17479 + 164] = mem[_17479]
                                        s = 0
                                        while s < mem[_17479]:
                                            mem[s + _17479 + 196] = mem[s + _17479 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17479]) > mem[_17479]:
                                            mem[mem[_17479] + _17479 + 196] = 0
                                        require ext_code.size(address(_17478))
                                        call address(_17478).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15378, 0, address(_15715), 128, mem[_17479], mem[_17479 + 196 len ceil32(mem[_17479])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 32
                    _15279 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 64 len 32 * _15279] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15279]
                    return 32, mem[mem[64] + 32 len (32 * _15279) + 32]
                require return_data.size >= 32
                require mem[_10485 + 32] == bool(mem[_10485 + 32])
                if not mem[_10485 + 32]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                _10788 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_10788] = ('cd', 68).length
                mem[_10788 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_10788 + (32 * ('cd', 68).length) + 32] = 0
                _10789 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_10789] = ('cd', 100).length
                mem[_10789 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_10789 + (32 * ('cd', 100).length) + 32] = 0
                _10790 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_10790] = ('cd', 164).length
                mem[_10790 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_10790 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_10788]
                    require idx + 1 < mem[_10788]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _10788 + 44 len 20] < mem[(32 * idx + 1) + _10788 + 44 len 20]:
                        _15379 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10788 + 44 len 20] == mem[(32 * idx) + _10788 + 44 len 20]:
                            if idx >= mem[_10788] - 2:
                                require idx < mem[_10790]
                                require idx < mem[_10789]
                                if not mem[(32 * idx) + _10790 + 32]:
                                    _16699 = mem[(32 * idx) + _10789 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15379
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16699))
                                    call address(_16699).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15379, this.address
                                else:
                                    _16701 = mem[(32 * idx) + _10789 + 32]
                                    _16702 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16702 + 36] = 0
                                    mem[_16702 + 68] = _15379
                                    mem[_16702 + 100] = this.address
                                    mem[_16702 + 132] = 128
                                    mem[_16702 + 164] = mem[_16702]
                                    s = 0
                                    while s < mem[_16702]:
                                        mem[s + _16702 + 196] = mem[s + _16702 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16702]) > mem[_16702]:
                                        mem[mem[_16702] + _16702 + 196] = 0
                                    require ext_code.size(address(_16701))
                                    call address(_16701).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15379, address(this.address), 128, mem[_16702], mem[_16702 + 196 len ceil32(mem[_16702])]
                            else:
                                require idx + 1 < mem[_10789]
                                _15717 = mem[(32 * idx + 1) + _10789 + 32]
                                require idx < mem[_10790]
                                require idx < mem[_10789]
                                if not mem[(32 * idx) + _10790 + 32]:
                                    _17481 = mem[(32 * idx) + _10789 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15379
                                    mem[mem[64] + 68] = address(_15717)
                                    require ext_code.size(address(_17481))
                                    call address(_17481).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15379, address(_15717)
                                else:
                                    _17483 = mem[(32 * idx) + _10789 + 32]
                                    _17484 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17484 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17484 + 36] = 0
                                    mem[_17484 + 68] = _15379
                                    mem[_17484 + 100] = address(_15717)
                                    mem[_17484 + 132] = 128
                                    mem[_17484 + 164] = mem[_17484]
                                    s = 0
                                    while s < mem[_17484]:
                                        mem[s + _17484 + 196] = mem[s + _17484 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17484]) > mem[_17484]:
                                        mem[mem[_17484] + _17484 + 196] = 0
                                    require ext_code.size(address(_17483))
                                    call address(_17483).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15379, address(_15717), 128, mem[_17484], mem[_17484 + 196 len ceil32(mem[_17484])]
                        else:
                            if idx >= mem[_10788] - 2:
                                require idx < mem[_10790]
                                require idx < mem[_10789]
                                if not mem[(32 * idx) + _10790 + 32]:
                                    _16705 = mem[(32 * idx) + _10789 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15379
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16705))
                                    call address(_16705).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15379, 0, this.address
                                else:
                                    _16707 = mem[(32 * idx) + _10789 + 32]
                                    _16708 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16708 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16708 + 36] = _15379
                                    mem[_16708 + 68] = 0
                                    mem[_16708 + 100] = this.address
                                    mem[_16708 + 132] = 128
                                    mem[_16708 + 164] = mem[_16708]
                                    s = 0
                                    while s < mem[_16708]:
                                        mem[s + _16708 + 196] = mem[s + _16708 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16708]) > mem[_16708]:
                                        mem[mem[_16708] + _16708 + 196] = 0
                                    require ext_code.size(address(_16707))
                                    call address(_16707).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15379, 0, address(this.address), 128, mem[_16708], mem[_16708 + 196 len ceil32(mem[_16708])]
                            else:
                                require idx + 1 < mem[_10789]
                                _15719 = mem[(32 * idx + 1) + _10789 + 32]
                                require idx < mem[_10790]
                                require idx < mem[_10789]
                                if not mem[(32 * idx) + _10790 + 32]:
                                    _17486 = mem[(32 * idx) + _10789 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15379
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15719)
                                    require ext_code.size(address(_17486))
                                    call address(_17486).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15379, 0, address(_15719)
                                else:
                                    _17488 = mem[(32 * idx) + _10789 + 32]
                                    _17489 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17489 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17489 + 36] = _15379
                                    mem[_17489 + 68] = 0
                                    mem[_17489 + 100] = address(_15719)
                                    mem[_17489 + 132] = 128
                                    mem[_17489 + 164] = mem[_17489]
                                    s = 0
                                    while s < mem[_17489]:
                                        mem[s + _17489 + 196] = mem[s + _17489 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17489]) > mem[_17489]:
                                        mem[mem[_17489] + _17489 + 196] = 0
                                    require ext_code.size(address(_17488))
                                    call address(_17488).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15379, 0, address(_15719), 128, mem[_17489], mem[_17489 + 196 len ceil32(mem[_17489])]
                    else:
                        _15380 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10788 + 44 len 20] == mem[(32 * idx + 1) + _10788 + 44 len 20]:
                            if idx >= mem[_10788] - 2:
                                require idx < mem[_10790]
                                require idx < mem[_10789]
                                if not mem[(32 * idx) + _10790 + 32]:
                                    _16711 = mem[(32 * idx) + _10789 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15380
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16711))
                                    call address(_16711).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15380, this.address
                                else:
                                    _16713 = mem[(32 * idx) + _10789 + 32]
                                    _16714 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16714 + 36] = 0
                                    mem[_16714 + 68] = _15380
                                    mem[_16714 + 100] = this.address
                                    mem[_16714 + 132] = 128
                                    mem[_16714 + 164] = mem[_16714]
                                    s = 0
                                    while s < mem[_16714]:
                                        mem[s + _16714 + 196] = mem[s + _16714 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16714]) > mem[_16714]:
                                        mem[mem[_16714] + _16714 + 196] = 0
                                    require ext_code.size(address(_16713))
                                    call address(_16713).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15380, address(this.address), 128, mem[_16714], mem[_16714 + 196 len ceil32(mem[_16714])]
                            else:
                                require idx + 1 < mem[_10789]
                                _15721 = mem[(32 * idx + 1) + _10789 + 32]
                                require idx < mem[_10790]
                                require idx < mem[_10789]
                                if not mem[(32 * idx) + _10790 + 32]:
                                    _17491 = mem[(32 * idx) + _10789 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15380
                                    mem[mem[64] + 68] = address(_15721)
                                    require ext_code.size(address(_17491))
                                    call address(_17491).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15380, address(_15721)
                                else:
                                    _17493 = mem[(32 * idx) + _10789 + 32]
                                    _17494 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17494 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17494 + 36] = 0
                                    mem[_17494 + 68] = _15380
                                    mem[_17494 + 100] = address(_15721)
                                    mem[_17494 + 132] = 128
                                    mem[_17494 + 164] = mem[_17494]
                                    s = 0
                                    while s < mem[_17494]:
                                        mem[s + _17494 + 196] = mem[s + _17494 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17494]) > mem[_17494]:
                                        mem[mem[_17494] + _17494 + 196] = 0
                                    require ext_code.size(address(_17493))
                                    call address(_17493).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15380, address(_15721), 128, mem[_17494], mem[_17494 + 196 len ceil32(mem[_17494])]
                        else:
                            if idx >= mem[_10788] - 2:
                                require idx < mem[_10790]
                                require idx < mem[_10789]
                                if not mem[(32 * idx) + _10790 + 32]:
                                    _16717 = mem[(32 * idx) + _10789 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15380
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16717))
                                    call address(_16717).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15380, 0, this.address
                                else:
                                    _16719 = mem[(32 * idx) + _10789 + 32]
                                    _16720 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16720 + 36] = _15380
                                    mem[_16720 + 68] = 0
                                    mem[_16720 + 100] = this.address
                                    mem[_16720 + 132] = 128
                                    mem[_16720 + 164] = mem[_16720]
                                    s = 0
                                    while s < mem[_16720]:
                                        mem[s + _16720 + 196] = mem[s + _16720 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16720]) > mem[_16720]:
                                        mem[mem[_16720] + _16720 + 196] = 0
                                    require ext_code.size(address(_16719))
                                    call address(_16719).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15380, 0, address(this.address), 128, mem[_16720], mem[_16720 + 196 len ceil32(mem[_16720])]
                            else:
                                require idx + 1 < mem[_10789]
                                _15723 = mem[(32 * idx + 1) + _10789 + 32]
                                require idx < mem[_10790]
                                require idx < mem[_10789]
                                if not mem[(32 * idx) + _10790 + 32]:
                                    _17496 = mem[(32 * idx) + _10789 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15380
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15723)
                                    require ext_code.size(address(_17496))
                                    call address(_17496).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15380, 0, address(_15723)
                                else:
                                    _17498 = mem[(32 * idx) + _10789 + 32]
                                    _17499 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17499 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17499 + 36] = _15380
                                    mem[_17499 + 68] = 0
                                    mem[_17499 + 100] = address(_15723)
                                    mem[_17499 + 132] = 128
                                    mem[_17499 + 164] = mem[_17499]
                                    s = 0
                                    while s < mem[_17499]:
                                        mem[s + _17499 + 196] = mem[s + _17499 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17499]) > mem[_17499]:
                                        mem[mem[_17499] + _17499 + 196] = 0
                                    require ext_code.size(address(_17498))
                                    call address(_17498).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15380, 0, address(_15723), 128, mem[_17499], mem[_17499 + 196 len ceil32(mem[_17499])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _15280 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _15280] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15280]
                return 32, mem[mem[64] + 32 len (32 * _15280) + 32]
            mem[_5473 + _5377 + 100] = 0
            call address(('cd', 68)[0]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _5473 + _5377 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if not mem[96]:
                    _10547 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                    mem[_10547] = ('cd', 68).length
                    mem[_10547 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[_10547 + (32 * ('cd', 68).length) + 32] = 0
                    _10548 = mem[64]
                    mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                    mem[_10548] = ('cd', 100).length
                    mem[_10548 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                    mem[_10548 + (32 * ('cd', 100).length) + 32] = 0
                    _10549 = mem[64]
                    mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                    mem[_10549] = ('cd', 164).length
                    mem[_10549 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_10549 + (32 * ('cd', 164).length) + 32] = 0
                    idx = 0
                    while idx < ('cd', 68).length - 1:
                        require idx < mem[_10547]
                        require idx + 1 < mem[_10547]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        if mem[(32 * idx) + _10547 + 44 len 20] < mem[(32 * idx + 1) + _10547 + 44 len 20]:
                            _15381 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _10547 + 44 len 20] == mem[(32 * idx) + _10547 + 44 len 20]:
                                if idx >= mem[_10547] - 2:
                                    require idx < mem[_10549]
                                    require idx < mem[_10548]
                                    if not mem[(32 * idx) + _10549 + 32]:
                                        _16724 = mem[(32 * idx) + _10548 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15381
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16724))
                                        call address(_16724).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15381, this.address
                                    else:
                                        _16726 = mem[(32 * idx) + _10548 + 32]
                                        _16727 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16727 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16727 + 36] = 0
                                        mem[_16727 + 68] = _15381
                                        mem[_16727 + 100] = this.address
                                        mem[_16727 + 132] = 128
                                        mem[_16727 + 164] = mem[_16727]
                                        s = 0
                                        while s < mem[_16727]:
                                            mem[s + _16727 + 196] = mem[s + _16727 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16727]) > mem[_16727]:
                                            mem[mem[_16727] + _16727 + 196] = 0
                                        require ext_code.size(address(_16726))
                                        call address(_16726).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15381, address(this.address), 128, mem[_16727], mem[_16727 + 196 len ceil32(mem[_16727])]
                                else:
                                    require idx + 1 < mem[_10548]
                                    _15725 = mem[(32 * idx + 1) + _10548 + 32]
                                    require idx < mem[_10549]
                                    require idx < mem[_10548]
                                    if not mem[(32 * idx) + _10549 + 32]:
                                        _17501 = mem[(32 * idx) + _10548 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15381
                                        mem[mem[64] + 68] = address(_15725)
                                        require ext_code.size(address(_17501))
                                        call address(_17501).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15381, address(_15725)
                                    else:
                                        _17503 = mem[(32 * idx) + _10548 + 32]
                                        _17504 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17504 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17504 + 36] = 0
                                        mem[_17504 + 68] = _15381
                                        mem[_17504 + 100] = address(_15725)
                                        mem[_17504 + 132] = 128
                                        mem[_17504 + 164] = mem[_17504]
                                        s = 0
                                        while s < mem[_17504]:
                                            mem[s + _17504 + 196] = mem[s + _17504 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17504]) > mem[_17504]:
                                            mem[mem[_17504] + _17504 + 196] = 0
                                        require ext_code.size(address(_17503))
                                        call address(_17503).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15381, address(_15725), 128, mem[_17504], mem[_17504 + 196 len ceil32(mem[_17504])]
                            else:
                                if idx >= mem[_10547] - 2:
                                    require idx < mem[_10549]
                                    require idx < mem[_10548]
                                    if not mem[(32 * idx) + _10549 + 32]:
                                        _16730 = mem[(32 * idx) + _10548 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15381
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16730))
                                        call address(_16730).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15381, 0, this.address
                                    else:
                                        _16732 = mem[(32 * idx) + _10548 + 32]
                                        _16733 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16733 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16733 + 36] = _15381
                                        mem[_16733 + 68] = 0
                                        mem[_16733 + 100] = this.address
                                        mem[_16733 + 132] = 128
                                        mem[_16733 + 164] = mem[_16733]
                                        s = 0
                                        while s < mem[_16733]:
                                            mem[s + _16733 + 196] = mem[s + _16733 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16733]) > mem[_16733]:
                                            mem[mem[_16733] + _16733 + 196] = 0
                                        require ext_code.size(address(_16732))
                                        call address(_16732).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15381, 0, address(this.address), 128, mem[_16733], mem[_16733 + 196 len ceil32(mem[_16733])]
                                else:
                                    require idx + 1 < mem[_10548]
                                    _15727 = mem[(32 * idx + 1) + _10548 + 32]
                                    require idx < mem[_10549]
                                    require idx < mem[_10548]
                                    if not mem[(32 * idx) + _10549 + 32]:
                                        _17506 = mem[(32 * idx) + _10548 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15381
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_15727)
                                        require ext_code.size(address(_17506))
                                        call address(_17506).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15381, 0, address(_15727)
                                    else:
                                        _17508 = mem[(32 * idx) + _10548 + 32]
                                        _17509 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17509 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17509 + 36] = _15381
                                        mem[_17509 + 68] = 0
                                        mem[_17509 + 100] = address(_15727)
                                        mem[_17509 + 132] = 128
                                        mem[_17509 + 164] = mem[_17509]
                                        s = 0
                                        while s < mem[_17509]:
                                            mem[s + _17509 + 196] = mem[s + _17509 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17509]) > mem[_17509]:
                                            mem[mem[_17509] + _17509 + 196] = 0
                                        require ext_code.size(address(_17508))
                                        call address(_17508).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15381, 0, address(_15727), 128, mem[_17509], mem[_17509 + 196 len ceil32(mem[_17509])]
                        else:
                            _15382 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _10547 + 44 len 20] == mem[(32 * idx + 1) + _10547 + 44 len 20]:
                                if idx >= mem[_10547] - 2:
                                    require idx < mem[_10549]
                                    require idx < mem[_10548]
                                    if not mem[(32 * idx) + _10549 + 32]:
                                        _16736 = mem[(32 * idx) + _10548 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15382
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16736))
                                        call address(_16736).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15382, this.address
                                    else:
                                        _16738 = mem[(32 * idx) + _10548 + 32]
                                        _16739 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16739 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16739 + 36] = 0
                                        mem[_16739 + 68] = _15382
                                        mem[_16739 + 100] = this.address
                                        mem[_16739 + 132] = 128
                                        mem[_16739 + 164] = mem[_16739]
                                        s = 0
                                        while s < mem[_16739]:
                                            mem[s + _16739 + 196] = mem[s + _16739 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16739]) > mem[_16739]:
                                            mem[mem[_16739] + _16739 + 196] = 0
                                        require ext_code.size(address(_16738))
                                        call address(_16738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15382, address(this.address), 128, mem[_16739], mem[_16739 + 196 len ceil32(mem[_16739])]
                                else:
                                    require idx + 1 < mem[_10548]
                                    _15729 = mem[(32 * idx + 1) + _10548 + 32]
                                    require idx < mem[_10549]
                                    require idx < mem[_10548]
                                    if not mem[(32 * idx) + _10549 + 32]:
                                        _17511 = mem[(32 * idx) + _10548 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15382
                                        mem[mem[64] + 68] = address(_15729)
                                        require ext_code.size(address(_17511))
                                        call address(_17511).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15382, address(_15729)
                                    else:
                                        _17513 = mem[(32 * idx) + _10548 + 32]
                                        _17514 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17514 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17514 + 36] = 0
                                        mem[_17514 + 68] = _15382
                                        mem[_17514 + 100] = address(_15729)
                                        mem[_17514 + 132] = 128
                                        mem[_17514 + 164] = mem[_17514]
                                        s = 0
                                        while s < mem[_17514]:
                                            mem[s + _17514 + 196] = mem[s + _17514 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17514]) > mem[_17514]:
                                            mem[mem[_17514] + _17514 + 196] = 0
                                        require ext_code.size(address(_17513))
                                        call address(_17513).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15382, address(_15729), 128, mem[_17514], mem[_17514 + 196 len ceil32(mem[_17514])]
                            else:
                                if idx >= mem[_10547] - 2:
                                    require idx < mem[_10549]
                                    require idx < mem[_10548]
                                    if not mem[(32 * idx) + _10549 + 32]:
                                        _16742 = mem[(32 * idx) + _10548 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15382
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16742))
                                        call address(_16742).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15382, 0, this.address
                                    else:
                                        _16744 = mem[(32 * idx) + _10548 + 32]
                                        _16745 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16745 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16745 + 36] = _15382
                                        mem[_16745 + 68] = 0
                                        mem[_16745 + 100] = this.address
                                        mem[_16745 + 132] = 128
                                        mem[_16745 + 164] = mem[_16745]
                                        s = 0
                                        while s < mem[_16745]:
                                            mem[s + _16745 + 196] = mem[s + _16745 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16745]) > mem[_16745]:
                                            mem[mem[_16745] + _16745 + 196] = 0
                                        require ext_code.size(address(_16744))
                                        call address(_16744).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15382, 0, address(this.address), 128, mem[_16745], mem[_16745 + 196 len ceil32(mem[_16745])]
                                else:
                                    require idx + 1 < mem[_10548]
                                    _15731 = mem[(32 * idx + 1) + _10548 + 32]
                                    require idx < mem[_10549]
                                    require idx < mem[_10548]
                                    if not mem[(32 * idx) + _10549 + 32]:
                                        _17516 = mem[(32 * idx) + _10548 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15382
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_15731)
                                        require ext_code.size(address(_17516))
                                        call address(_17516).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15382, 0, address(_15731)
                                    else:
                                        _17518 = mem[(32 * idx) + _10548 + 32]
                                        _17519 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17519 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17519 + 36] = _15382
                                        mem[_17519 + 68] = 0
                                        mem[_17519 + 100] = address(_15731)
                                        mem[_17519 + 132] = 128
                                        mem[_17519 + 164] = mem[_17519]
                                        s = 0
                                        while s < mem[_17519]:
                                            mem[s + _17519 + 196] = mem[s + _17519 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17519]) > mem[_17519]:
                                            mem[mem[_17519] + _17519 + 196] = 0
                                        require ext_code.size(address(_17518))
                                        call address(_17518).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15382, 0, address(_15731), 128, mem[_17519], mem[_17519 + 196 len ceil32(mem[_17519])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 32
                    _15281 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 64 len 32 * _15281] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15281]
                    return 32, mem[mem[64] + 32 len (32 * _15281) + 32]
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                _10793 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_10793] = ('cd', 68).length
                mem[_10793 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_10793 + (32 * ('cd', 68).length) + 32] = 0
                _10794 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_10794] = ('cd', 100).length
                mem[_10794 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_10794 + (32 * ('cd', 100).length) + 32] = 0
                _10795 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_10795] = ('cd', 164).length
                mem[_10795 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_10795 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_10793]
                    require idx + 1 < mem[_10793]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _10793 + 44 len 20] < mem[(32 * idx + 1) + _10793 + 44 len 20]:
                        _15383 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10793 + 44 len 20] == mem[(32 * idx) + _10793 + 44 len 20]:
                            if idx >= mem[_10793] - 2:
                                require idx < mem[_10795]
                                require idx < mem[_10794]
                                if not mem[(32 * idx) + _10795 + 32]:
                                    _16749 = mem[(32 * idx) + _10794 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15383
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16749))
                                    call address(_16749).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15383, this.address
                                else:
                                    _16751 = mem[(32 * idx) + _10794 + 32]
                                    _16752 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16752 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16752 + 36] = 0
                                    mem[_16752 + 68] = _15383
                                    mem[_16752 + 100] = this.address
                                    mem[_16752 + 132] = 128
                                    mem[_16752 + 164] = mem[_16752]
                                    s = 0
                                    while s < mem[_16752]:
                                        mem[s + _16752 + 196] = mem[s + _16752 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16752]) > mem[_16752]:
                                        mem[mem[_16752] + _16752 + 196] = 0
                                    require ext_code.size(address(_16751))
                                    call address(_16751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15383, address(this.address), 128, mem[_16752], mem[_16752 + 196 len ceil32(mem[_16752])]
                            else:
                                require idx + 1 < mem[_10794]
                                _15733 = mem[(32 * idx + 1) + _10794 + 32]
                                require idx < mem[_10795]
                                require idx < mem[_10794]
                                if not mem[(32 * idx) + _10795 + 32]:
                                    _17521 = mem[(32 * idx) + _10794 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15383
                                    mem[mem[64] + 68] = address(_15733)
                                    require ext_code.size(address(_17521))
                                    call address(_17521).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15383, address(_15733)
                                else:
                                    _17523 = mem[(32 * idx) + _10794 + 32]
                                    _17524 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17524 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17524 + 36] = 0
                                    mem[_17524 + 68] = _15383
                                    mem[_17524 + 100] = address(_15733)
                                    mem[_17524 + 132] = 128
                                    mem[_17524 + 164] = mem[_17524]
                                    s = 0
                                    while s < mem[_17524]:
                                        mem[s + _17524 + 196] = mem[s + _17524 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17524]) > mem[_17524]:
                                        mem[mem[_17524] + _17524 + 196] = 0
                                    require ext_code.size(address(_17523))
                                    call address(_17523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15383, address(_15733), 128, mem[_17524], mem[_17524 + 196 len ceil32(mem[_17524])]
                        else:
                            if idx >= mem[_10793] - 2:
                                require idx < mem[_10795]
                                require idx < mem[_10794]
                                if not mem[(32 * idx) + _10795 + 32]:
                                    _16755 = mem[(32 * idx) + _10794 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15383
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16755))
                                    call address(_16755).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15383, 0, this.address
                                else:
                                    _16757 = mem[(32 * idx) + _10794 + 32]
                                    _16758 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16758 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16758 + 36] = _15383
                                    mem[_16758 + 68] = 0
                                    mem[_16758 + 100] = this.address
                                    mem[_16758 + 132] = 128
                                    mem[_16758 + 164] = mem[_16758]
                                    s = 0
                                    while s < mem[_16758]:
                                        mem[s + _16758 + 196] = mem[s + _16758 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16758]) > mem[_16758]:
                                        mem[mem[_16758] + _16758 + 196] = 0
                                    require ext_code.size(address(_16757))
                                    call address(_16757).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15383, 0, address(this.address), 128, mem[_16758], mem[_16758 + 196 len ceil32(mem[_16758])]
                            else:
                                require idx + 1 < mem[_10794]
                                _15735 = mem[(32 * idx + 1) + _10794 + 32]
                                require idx < mem[_10795]
                                require idx < mem[_10794]
                                if not mem[(32 * idx) + _10795 + 32]:
                                    _17526 = mem[(32 * idx) + _10794 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15383
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15735)
                                    require ext_code.size(address(_17526))
                                    call address(_17526).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15383, 0, address(_15735)
                                else:
                                    _17528 = mem[(32 * idx) + _10794 + 32]
                                    _17529 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17529 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17529 + 36] = _15383
                                    mem[_17529 + 68] = 0
                                    mem[_17529 + 100] = address(_15735)
                                    mem[_17529 + 132] = 128
                                    mem[_17529 + 164] = mem[_17529]
                                    s = 0
                                    while s < mem[_17529]:
                                        mem[s + _17529 + 196] = mem[s + _17529 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17529]) > mem[_17529]:
                                        mem[mem[_17529] + _17529 + 196] = 0
                                    require ext_code.size(address(_17528))
                                    call address(_17528).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15383, 0, address(_15735), 128, mem[_17529], mem[_17529 + 196 len ceil32(mem[_17529])]
                    else:
                        _15384 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10793 + 44 len 20] == mem[(32 * idx + 1) + _10793 + 44 len 20]:
                            if idx >= mem[_10793] - 2:
                                require idx < mem[_10795]
                                require idx < mem[_10794]
                                if not mem[(32 * idx) + _10795 + 32]:
                                    _16761 = mem[(32 * idx) + _10794 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15384
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16761))
                                    call address(_16761).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15384, this.address
                                else:
                                    _16763 = mem[(32 * idx) + _10794 + 32]
                                    _16764 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16764 + 36] = 0
                                    mem[_16764 + 68] = _15384
                                    mem[_16764 + 100] = this.address
                                    mem[_16764 + 132] = 128
                                    mem[_16764 + 164] = mem[_16764]
                                    s = 0
                                    while s < mem[_16764]:
                                        mem[s + _16764 + 196] = mem[s + _16764 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16764]) > mem[_16764]:
                                        mem[mem[_16764] + _16764 + 196] = 0
                                    require ext_code.size(address(_16763))
                                    call address(_16763).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15384, address(this.address), 128, mem[_16764], mem[_16764 + 196 len ceil32(mem[_16764])]
                            else:
                                require idx + 1 < mem[_10794]
                                _15737 = mem[(32 * idx + 1) + _10794 + 32]
                                require idx < mem[_10795]
                                require idx < mem[_10794]
                                if not mem[(32 * idx) + _10795 + 32]:
                                    _17531 = mem[(32 * idx) + _10794 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15384
                                    mem[mem[64] + 68] = address(_15737)
                                    require ext_code.size(address(_17531))
                                    call address(_17531).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15384, address(_15737)
                                else:
                                    _17533 = mem[(32 * idx) + _10794 + 32]
                                    _17534 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17534 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17534 + 36] = 0
                                    mem[_17534 + 68] = _15384
                                    mem[_17534 + 100] = address(_15737)
                                    mem[_17534 + 132] = 128
                                    mem[_17534 + 164] = mem[_17534]
                                    s = 0
                                    while s < mem[_17534]:
                                        mem[s + _17534 + 196] = mem[s + _17534 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17534]) > mem[_17534]:
                                        mem[mem[_17534] + _17534 + 196] = 0
                                    require ext_code.size(address(_17533))
                                    call address(_17533).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15384, address(_15737), 128, mem[_17534], mem[_17534 + 196 len ceil32(mem[_17534])]
                        else:
                            if idx >= mem[_10793] - 2:
                                require idx < mem[_10795]
                                require idx < mem[_10794]
                                if not mem[(32 * idx) + _10795 + 32]:
                                    _16767 = mem[(32 * idx) + _10794 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15384
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16767))
                                    call address(_16767).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15384, 0, this.address
                                else:
                                    _16769 = mem[(32 * idx) + _10794 + 32]
                                    _16770 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16770 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16770 + 36] = _15384
                                    mem[_16770 + 68] = 0
                                    mem[_16770 + 100] = this.address
                                    mem[_16770 + 132] = 128
                                    mem[_16770 + 164] = mem[_16770]
                                    s = 0
                                    while s < mem[_16770]:
                                        mem[s + _16770 + 196] = mem[s + _16770 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16770]) > mem[_16770]:
                                        mem[mem[_16770] + _16770 + 196] = 0
                                    require ext_code.size(address(_16769))
                                    call address(_16769).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15384, 0, address(this.address), 128, mem[_16770], mem[_16770 + 196 len ceil32(mem[_16770])]
                            else:
                                require idx + 1 < mem[_10794]
                                _15739 = mem[(32 * idx + 1) + _10794 + 32]
                                require idx < mem[_10795]
                                require idx < mem[_10794]
                                if not mem[(32 * idx) + _10795 + 32]:
                                    _17536 = mem[(32 * idx) + _10794 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15384
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15739)
                                    require ext_code.size(address(_17536))
                                    call address(_17536).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15384, 0, address(_15739)
                                else:
                                    _17538 = mem[(32 * idx) + _10794 + 32]
                                    _17539 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17539 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17539 + 36] = _15384
                                    mem[_17539 + 68] = 0
                                    mem[_17539 + 100] = address(_15739)
                                    mem[_17539 + 132] = 128
                                    mem[_17539 + 164] = mem[_17539]
                                    s = 0
                                    while s < mem[_17539]:
                                        mem[s + _17539 + 196] = mem[s + _17539 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17539]) > mem[_17539]:
                                        mem[mem[_17539] + _17539 + 196] = 0
                                    require ext_code.size(address(_17538))
                                    call address(_17538).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15384, 0, address(_15739), 128, mem[_17539], mem[_17539 + 196 len ceil32(mem[_17539])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _15282 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _15282] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15282]
                return 32, mem[mem[64] + 32 len (32 * _15282) + 32]
            _10486 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_10486] = return_data.size
            mem[_10486 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if not return_data.size:
                _10550 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_10550] = ('cd', 68).length
                mem[_10550 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_10550 + (32 * ('cd', 68).length) + 32] = 0
                _10551 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_10551] = ('cd', 100).length
                mem[_10551 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_10551 + (32 * ('cd', 100).length) + 32] = 0
                _10552 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_10552] = ('cd', 164).length
                mem[_10552 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_10552 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_10550]
                    require idx + 1 < mem[_10550]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _10550 + 44 len 20] < mem[(32 * idx + 1) + _10550 + 44 len 20]:
                        _15385 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10550 + 44 len 20] == mem[(32 * idx) + _10550 + 44 len 20]:
                            if idx >= mem[_10550] - 2:
                                require idx < mem[_10552]
                                require idx < mem[_10551]
                                if not mem[(32 * idx) + _10552 + 32]:
                                    _16774 = mem[(32 * idx) + _10551 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15385
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16774))
                                    call address(_16774).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15385, this.address
                                else:
                                    _16776 = mem[(32 * idx) + _10551 + 32]
                                    _16777 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16777 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16777 + 36] = 0
                                    mem[_16777 + 68] = _15385
                                    mem[_16777 + 100] = this.address
                                    mem[_16777 + 132] = 128
                                    mem[_16777 + 164] = mem[_16777]
                                    s = 0
                                    while s < mem[_16777]:
                                        mem[s + _16777 + 196] = mem[s + _16777 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16777]) > mem[_16777]:
                                        mem[mem[_16777] + _16777 + 196] = 0
                                    require ext_code.size(address(_16776))
                                    call address(_16776).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15385, address(this.address), 128, mem[_16777], mem[_16777 + 196 len ceil32(mem[_16777])]
                            else:
                                require idx + 1 < mem[_10551]
                                _15741 = mem[(32 * idx + 1) + _10551 + 32]
                                require idx < mem[_10552]
                                require idx < mem[_10551]
                                if not mem[(32 * idx) + _10552 + 32]:
                                    _17541 = mem[(32 * idx) + _10551 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15385
                                    mem[mem[64] + 68] = address(_15741)
                                    require ext_code.size(address(_17541))
                                    call address(_17541).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15385, address(_15741)
                                else:
                                    _17543 = mem[(32 * idx) + _10551 + 32]
                                    _17544 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17544 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17544 + 36] = 0
                                    mem[_17544 + 68] = _15385
                                    mem[_17544 + 100] = address(_15741)
                                    mem[_17544 + 132] = 128
                                    mem[_17544 + 164] = mem[_17544]
                                    s = 0
                                    while s < mem[_17544]:
                                        mem[s + _17544 + 196] = mem[s + _17544 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17544]) > mem[_17544]:
                                        mem[mem[_17544] + _17544 + 196] = 0
                                    require ext_code.size(address(_17543))
                                    call address(_17543).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15385, address(_15741), 128, mem[_17544], mem[_17544 + 196 len ceil32(mem[_17544])]
                        else:
                            if idx >= mem[_10550] - 2:
                                require idx < mem[_10552]
                                require idx < mem[_10551]
                                if not mem[(32 * idx) + _10552 + 32]:
                                    _16780 = mem[(32 * idx) + _10551 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15385
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16780))
                                    call address(_16780).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15385, 0, this.address
                                else:
                                    _16782 = mem[(32 * idx) + _10551 + 32]
                                    _16783 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16783 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16783 + 36] = _15385
                                    mem[_16783 + 68] = 0
                                    mem[_16783 + 100] = this.address
                                    mem[_16783 + 132] = 128
                                    mem[_16783 + 164] = mem[_16783]
                                    s = 0
                                    while s < mem[_16783]:
                                        mem[s + _16783 + 196] = mem[s + _16783 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16783]) > mem[_16783]:
                                        mem[mem[_16783] + _16783 + 196] = 0
                                    require ext_code.size(address(_16782))
                                    call address(_16782).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15385, 0, address(this.address), 128, mem[_16783], mem[_16783 + 196 len ceil32(mem[_16783])]
                            else:
                                require idx + 1 < mem[_10551]
                                _15743 = mem[(32 * idx + 1) + _10551 + 32]
                                require idx < mem[_10552]
                                require idx < mem[_10551]
                                if not mem[(32 * idx) + _10552 + 32]:
                                    _17546 = mem[(32 * idx) + _10551 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15385
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15743)
                                    require ext_code.size(address(_17546))
                                    call address(_17546).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15385, 0, address(_15743)
                                else:
                                    _17548 = mem[(32 * idx) + _10551 + 32]
                                    _17549 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17549 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17549 + 36] = _15385
                                    mem[_17549 + 68] = 0
                                    mem[_17549 + 100] = address(_15743)
                                    mem[_17549 + 132] = 128
                                    mem[_17549 + 164] = mem[_17549]
                                    s = 0
                                    while s < mem[_17549]:
                                        mem[s + _17549 + 196] = mem[s + _17549 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17549]) > mem[_17549]:
                                        mem[mem[_17549] + _17549 + 196] = 0
                                    require ext_code.size(address(_17548))
                                    call address(_17548).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15385, 0, address(_15743), 128, mem[_17549], mem[_17549 + 196 len ceil32(mem[_17549])]
                    else:
                        _15386 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10550 + 44 len 20] == mem[(32 * idx + 1) + _10550 + 44 len 20]:
                            if idx >= mem[_10550] - 2:
                                require idx < mem[_10552]
                                require idx < mem[_10551]
                                if not mem[(32 * idx) + _10552 + 32]:
                                    _16786 = mem[(32 * idx) + _10551 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15386
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16786))
                                    call address(_16786).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15386, this.address
                                else:
                                    _16788 = mem[(32 * idx) + _10551 + 32]
                                    _16789 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16789 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16789 + 36] = 0
                                    mem[_16789 + 68] = _15386
                                    mem[_16789 + 100] = this.address
                                    mem[_16789 + 132] = 128
                                    mem[_16789 + 164] = mem[_16789]
                                    s = 0
                                    while s < mem[_16789]:
                                        mem[s + _16789 + 196] = mem[s + _16789 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16789]) > mem[_16789]:
                                        mem[mem[_16789] + _16789 + 196] = 0
                                    require ext_code.size(address(_16788))
                                    call address(_16788).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15386, address(this.address), 128, mem[_16789], mem[_16789 + 196 len ceil32(mem[_16789])]
                            else:
                                require idx + 1 < mem[_10551]
                                _15745 = mem[(32 * idx + 1) + _10551 + 32]
                                require idx < mem[_10552]
                                require idx < mem[_10551]
                                if not mem[(32 * idx) + _10552 + 32]:
                                    _17551 = mem[(32 * idx) + _10551 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15386
                                    mem[mem[64] + 68] = address(_15745)
                                    require ext_code.size(address(_17551))
                                    call address(_17551).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15386, address(_15745)
                                else:
                                    _17553 = mem[(32 * idx) + _10551 + 32]
                                    _17554 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17554 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17554 + 36] = 0
                                    mem[_17554 + 68] = _15386
                                    mem[_17554 + 100] = address(_15745)
                                    mem[_17554 + 132] = 128
                                    mem[_17554 + 164] = mem[_17554]
                                    s = 0
                                    while s < mem[_17554]:
                                        mem[s + _17554 + 196] = mem[s + _17554 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17554]) > mem[_17554]:
                                        mem[mem[_17554] + _17554 + 196] = 0
                                    require ext_code.size(address(_17553))
                                    call address(_17553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15386, address(_15745), 128, mem[_17554], mem[_17554 + 196 len ceil32(mem[_17554])]
                        else:
                            if idx >= mem[_10550] - 2:
                                require idx < mem[_10552]
                                require idx < mem[_10551]
                                if not mem[(32 * idx) + _10552 + 32]:
                                    _16792 = mem[(32 * idx) + _10551 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15386
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16792))
                                    call address(_16792).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15386, 0, this.address
                                else:
                                    _16794 = mem[(32 * idx) + _10551 + 32]
                                    _16795 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16795 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16795 + 36] = _15386
                                    mem[_16795 + 68] = 0
                                    mem[_16795 + 100] = this.address
                                    mem[_16795 + 132] = 128
                                    mem[_16795 + 164] = mem[_16795]
                                    s = 0
                                    while s < mem[_16795]:
                                        mem[s + _16795 + 196] = mem[s + _16795 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16795]) > mem[_16795]:
                                        mem[mem[_16795] + _16795 + 196] = 0
                                    require ext_code.size(address(_16794))
                                    call address(_16794).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15386, 0, address(this.address), 128, mem[_16795], mem[_16795 + 196 len ceil32(mem[_16795])]
                            else:
                                require idx + 1 < mem[_10551]
                                _15747 = mem[(32 * idx + 1) + _10551 + 32]
                                require idx < mem[_10552]
                                require idx < mem[_10551]
                                if not mem[(32 * idx) + _10552 + 32]:
                                    _17556 = mem[(32 * idx) + _10551 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15386
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15747)
                                    require ext_code.size(address(_17556))
                                    call address(_17556).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15386, 0, address(_15747)
                                else:
                                    _17558 = mem[(32 * idx) + _10551 + 32]
                                    _17559 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17559 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17559 + 36] = _15386
                                    mem[_17559 + 68] = 0
                                    mem[_17559 + 100] = address(_15747)
                                    mem[_17559 + 132] = 128
                                    mem[_17559 + 164] = mem[_17559]
                                    s = 0
                                    while s < mem[_17559]:
                                        mem[s + _17559 + 196] = mem[s + _17559 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17559]) > mem[_17559]:
                                        mem[mem[_17559] + _17559 + 196] = 0
                                    require ext_code.size(address(_17558))
                                    call address(_17558).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15386, 0, address(_15747), 128, mem[_17559], mem[_17559 + 196 len ceil32(mem[_17559])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _15283 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _15283] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15283]
                return 32, mem[mem[64] + 32 len (32 * _15283) + 32]
            require return_data.size >= 32
            require mem[_10486 + 32] == bool(mem[_10486 + 32])
            if not mem[_10486 + 32]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            _10798 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_10798] = ('cd', 68).length
            mem[_10798 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_10798 + (32 * ('cd', 68).length) + 32] = 0
            _10799 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_10799] = ('cd', 100).length
            mem[_10799 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_10799 + (32 * ('cd', 100).length) + 32] = 0
            _10800 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_10800] = ('cd', 164).length
            mem[_10800 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_10800 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_10798]
                require idx + 1 < mem[_10798]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _10798 + 44 len 20] < mem[(32 * idx + 1) + _10798 + 44 len 20]:
                    _15387 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10798 + 44 len 20] == mem[(32 * idx) + _10798 + 44 len 20]:
                        if idx >= mem[_10798] - 2:
                            require idx < mem[_10800]
                            require idx < mem[_10799]
                            if not mem[(32 * idx) + _10800 + 32]:
                                _16799 = mem[(32 * idx) + _10799 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15387
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16799))
                                call address(_16799).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15387, this.address
                            else:
                                _16801 = mem[(32 * idx) + _10799 + 32]
                                _16802 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16802 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16802 + 36] = 0
                                mem[_16802 + 68] = _15387
                                mem[_16802 + 100] = this.address
                                mem[_16802 + 132] = 128
                                mem[_16802 + 164] = mem[_16802]
                                s = 0
                                while s < mem[_16802]:
                                    mem[s + _16802 + 196] = mem[s + _16802 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16802]) > mem[_16802]:
                                    mem[mem[_16802] + _16802 + 196] = 0
                                require ext_code.size(address(_16801))
                                call address(_16801).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15387, address(this.address), 128, mem[_16802], mem[_16802 + 196 len ceil32(mem[_16802])]
                        else:
                            require idx + 1 < mem[_10799]
                            _15749 = mem[(32 * idx + 1) + _10799 + 32]
                            require idx < mem[_10800]
                            require idx < mem[_10799]
                            if not mem[(32 * idx) + _10800 + 32]:
                                _17561 = mem[(32 * idx) + _10799 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15387
                                mem[mem[64] + 68] = address(_15749)
                                require ext_code.size(address(_17561))
                                call address(_17561).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15387, address(_15749)
                            else:
                                _17563 = mem[(32 * idx) + _10799 + 32]
                                _17564 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17564 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17564 + 36] = 0
                                mem[_17564 + 68] = _15387
                                mem[_17564 + 100] = address(_15749)
                                mem[_17564 + 132] = 128
                                mem[_17564 + 164] = mem[_17564]
                                s = 0
                                while s < mem[_17564]:
                                    mem[s + _17564 + 196] = mem[s + _17564 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17564]) > mem[_17564]:
                                    mem[mem[_17564] + _17564 + 196] = 0
                                require ext_code.size(address(_17563))
                                call address(_17563).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15387, address(_15749), 128, mem[_17564], mem[_17564 + 196 len ceil32(mem[_17564])]
                    else:
                        if idx >= mem[_10798] - 2:
                            require idx < mem[_10800]
                            require idx < mem[_10799]
                            if not mem[(32 * idx) + _10800 + 32]:
                                _16805 = mem[(32 * idx) + _10799 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15387
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16805))
                                call address(_16805).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15387, 0, this.address
                            else:
                                _16807 = mem[(32 * idx) + _10799 + 32]
                                _16808 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16808 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16808 + 36] = _15387
                                mem[_16808 + 68] = 0
                                mem[_16808 + 100] = this.address
                                mem[_16808 + 132] = 128
                                mem[_16808 + 164] = mem[_16808]
                                s = 0
                                while s < mem[_16808]:
                                    mem[s + _16808 + 196] = mem[s + _16808 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16808]) > mem[_16808]:
                                    mem[mem[_16808] + _16808 + 196] = 0
                                require ext_code.size(address(_16807))
                                call address(_16807).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15387, 0, address(this.address), 128, mem[_16808], mem[_16808 + 196 len ceil32(mem[_16808])]
                        else:
                            require idx + 1 < mem[_10799]
                            _15751 = mem[(32 * idx + 1) + _10799 + 32]
                            require idx < mem[_10800]
                            require idx < mem[_10799]
                            if not mem[(32 * idx) + _10800 + 32]:
                                _17566 = mem[(32 * idx) + _10799 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15387
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15751)
                                require ext_code.size(address(_17566))
                                call address(_17566).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15387, 0, address(_15751)
                            else:
                                _17568 = mem[(32 * idx) + _10799 + 32]
                                _17569 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17569 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17569 + 36] = _15387
                                mem[_17569 + 68] = 0
                                mem[_17569 + 100] = address(_15751)
                                mem[_17569 + 132] = 128
                                mem[_17569 + 164] = mem[_17569]
                                s = 0
                                while s < mem[_17569]:
                                    mem[s + _17569 + 196] = mem[s + _17569 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17569]) > mem[_17569]:
                                    mem[mem[_17569] + _17569 + 196] = 0
                                require ext_code.size(address(_17568))
                                call address(_17568).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15387, 0, address(_15751), 128, mem[_17569], mem[_17569 + 196 len ceil32(mem[_17569])]
                else:
                    _15388 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10798 + 44 len 20] == mem[(32 * idx + 1) + _10798 + 44 len 20]:
                        if idx >= mem[_10798] - 2:
                            require idx < mem[_10800]
                            require idx < mem[_10799]
                            if not mem[(32 * idx) + _10800 + 32]:
                                _16811 = mem[(32 * idx) + _10799 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15388
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16811))
                                call address(_16811).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15388, this.address
                            else:
                                _16813 = mem[(32 * idx) + _10799 + 32]
                                _16814 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16814 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16814 + 36] = 0
                                mem[_16814 + 68] = _15388
                                mem[_16814 + 100] = this.address
                                mem[_16814 + 132] = 128
                                mem[_16814 + 164] = mem[_16814]
                                s = 0
                                while s < mem[_16814]:
                                    mem[s + _16814 + 196] = mem[s + _16814 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16814]) > mem[_16814]:
                                    mem[mem[_16814] + _16814 + 196] = 0
                                require ext_code.size(address(_16813))
                                call address(_16813).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15388, address(this.address), 128, mem[_16814], mem[_16814 + 196 len ceil32(mem[_16814])]
                        else:
                            require idx + 1 < mem[_10799]
                            _15753 = mem[(32 * idx + 1) + _10799 + 32]
                            require idx < mem[_10800]
                            require idx < mem[_10799]
                            if not mem[(32 * idx) + _10800 + 32]:
                                _17571 = mem[(32 * idx) + _10799 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15388
                                mem[mem[64] + 68] = address(_15753)
                                require ext_code.size(address(_17571))
                                call address(_17571).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15388, address(_15753)
                            else:
                                _17573 = mem[(32 * idx) + _10799 + 32]
                                _17574 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17574 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17574 + 36] = 0
                                mem[_17574 + 68] = _15388
                                mem[_17574 + 100] = address(_15753)
                                mem[_17574 + 132] = 128
                                mem[_17574 + 164] = mem[_17574]
                                s = 0
                                while s < mem[_17574]:
                                    mem[s + _17574 + 196] = mem[s + _17574 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17574]) > mem[_17574]:
                                    mem[mem[_17574] + _17574 + 196] = 0
                                require ext_code.size(address(_17573))
                                call address(_17573).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15388, address(_15753), 128, mem[_17574], mem[_17574 + 196 len ceil32(mem[_17574])]
                    else:
                        if idx >= mem[_10798] - 2:
                            require idx < mem[_10800]
                            require idx < mem[_10799]
                            if not mem[(32 * idx) + _10800 + 32]:
                                _16817 = mem[(32 * idx) + _10799 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15388
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16817))
                                call address(_16817).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15388, 0, this.address
                            else:
                                _16819 = mem[(32 * idx) + _10799 + 32]
                                _16820 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16820 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16820 + 36] = _15388
                                mem[_16820 + 68] = 0
                                mem[_16820 + 100] = this.address
                                mem[_16820 + 132] = 128
                                mem[_16820 + 164] = mem[_16820]
                                s = 0
                                while s < mem[_16820]:
                                    mem[s + _16820 + 196] = mem[s + _16820 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16820]) > mem[_16820]:
                                    mem[mem[_16820] + _16820 + 196] = 0
                                require ext_code.size(address(_16819))
                                call address(_16819).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15388, 0, address(this.address), 128, mem[_16820], mem[_16820 + 196 len ceil32(mem[_16820])]
                        else:
                            require idx + 1 < mem[_10799]
                            _15755 = mem[(32 * idx + 1) + _10799 + 32]
                            require idx < mem[_10800]
                            require idx < mem[_10799]
                            if not mem[(32 * idx) + _10800 + 32]:
                                _17576 = mem[(32 * idx) + _10799 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15388
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15755)
                                require ext_code.size(address(_17576))
                                call address(_17576).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15388, 0, address(_15755)
                            else:
                                _17578 = mem[(32 * idx) + _10799 + 32]
                                _17579 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17579 + 36] = _15388
                                mem[_17579 + 68] = 0
                                mem[_17579 + 100] = address(_15755)
                                mem[_17579 + 132] = 128
                                mem[_17579 + 164] = mem[_17579]
                                s = 0
                                while s < mem[_17579]:
                                    mem[s + _17579 + 196] = mem[s + _17579 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17579]) > mem[_17579]:
                                    mem[mem[_17579] + _17579 + 196] = 0
                                require ext_code.size(address(_17578))
                                call address(_17578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15388, 0, address(_15755), 128, mem[_17579], mem[_17579 + 196 len ceil32(mem[_17579])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _15284 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _15284] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15284]
            return 32, mem[mem[64] + 32 len (32 * _15284) + 32]
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 68).length] = code.data[10045 len 32 * ('cd', 68).length]
        require 0 < ('cd', 68).length
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = cd[4]
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[(32 * ('cd', 68).length) + 128]
            require idx < mem[96]
            _5273 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _5286 = mem[(32 * idx + 1) + 128]
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                _5335 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_5335] == mem[_5335 + 18 len 14]
                require mem[_5335 + 32] == mem[_5335 + 50 len 14]
                require mem[_5335 + 64] == mem[_5335 + 92 len 4]
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if address(_5273) == address(_5273):
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_5335 + 18 len 14]
                        if 1000 * mem[_5335 + 18 len 14] / mem[_5335 + 18 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_5335 + 18 len 14] < 1000 * mem[_5335 + 18 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_5335 + 18 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5335 + 18 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_5335 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5335 + 18 len 14] / mem[_5335 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 18 len 14]) < 1000 * mem[_5335 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 18 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5335 + 50 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_5335 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5335 + 18 len 14] / mem[_5335 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 18 len 14]) < 1000 * mem[_5335 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 18 len 14])
                else:
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_5335 + 50 len 14]
                        if 1000 * mem[_5335 + 50 len 14] / mem[_5335 + 50 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_5335 + 50 len 14] < 1000 * mem[_5335 + 50 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_5335 + 50 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5335 + 50 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_5335 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5335 + 50 len 14] / mem[_5335 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 50 len 14]) < 1000 * mem[_5335 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 50 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5335 + 18 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_5335 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5335 + 50 len 14] / mem[_5335 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 50 len 14]) < 1000 * mem[_5335 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5335 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5335 + 50 len 14])
            else:
                _5336 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_5336] == mem[_5336 + 18 len 14]
                require mem[_5336 + 32] == mem[_5336 + 50 len 14]
                require mem[_5336 + 64] == mem[_5336 + 92 len 4]
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if address(_5273) == address(_5286):
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_5336 + 18 len 14]
                        if 1000 * mem[_5336 + 18 len 14] / mem[_5336 + 18 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_5336 + 18 len 14] < 1000 * mem[_5336 + 18 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_5336 + 18 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5336 + 18 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_5336 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5336 + 18 len 14] / mem[_5336 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 18 len 14]) < 1000 * mem[_5336 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 18 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5336 + 50 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_5336 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5336 + 18 len 14] / mem[_5336 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 18 len 14]) < 1000 * mem[_5336 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 18 len 14])
                else:
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_5336 + 50 len 14]
                        if 1000 * mem[_5336 + 50 len 14] / mem[_5336 + 50 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_5336 + 50 len 14] < 1000 * mem[_5336 + 50 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_5336 + 50 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5336 + 50 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_5336 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5336 + 50 len 14] / mem[_5336 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 50 len 14]) < 1000 * mem[_5336 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 50 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5336 + 18 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_5336 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5336 + 50 len 14] / mem[_5336 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 50 len 14]) < 1000 * mem[_5336 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5336 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5336 + 50 len 14])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < cd[36]:
            revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
        require 0 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        require mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
            revert with 0, 'Sorry bruh'
        require 0 < ('cd', 68).length
        require ('cd', 68)[0] == address(('cd', 68)[0])
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require 0 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        _5374 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
        _5378 = mem[64]
        mem[mem[64] + 36] = address(('cd', 100)[0])
        mem[mem[64] + 68] = _5374
        _5464 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_5464 + 32 len 4] = unknown_0xa9059cbb(?????)
        _5474 = mem[_5464]
        mem[_5378 + 100 len ceil32(mem[_5464])] = mem[_5464 + 32 len ceil32(mem[_5464])]
        if ceil32(_5474) <= _5474:
            call address(('cd', 68)[0]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _5474 + _5378 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if not mem[96]:
                    _10553 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                    mem[_10553] = ('cd', 68).length
                    mem[_10553 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[_10553 + (32 * ('cd', 68).length) + 32] = 0
                    _10554 = mem[64]
                    mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                    mem[_10554] = ('cd', 100).length
                    mem[_10554 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                    mem[_10554 + (32 * ('cd', 100).length) + 32] = 0
                    _10555 = mem[64]
                    mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                    mem[_10555] = ('cd', 164).length
                    mem[_10555 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_10555 + (32 * ('cd', 164).length) + 32] = 0
                    idx = 0
                    while idx < ('cd', 68).length - 1:
                        require idx < mem[_10553]
                        require idx + 1 < mem[_10553]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        if mem[(32 * idx) + _10553 + 44 len 20] < mem[(32 * idx + 1) + _10553 + 44 len 20]:
                            _15389 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _10553 + 44 len 20] == mem[(32 * idx) + _10553 + 44 len 20]:
                                if idx >= mem[_10553] - 2:
                                    require idx < mem[_10555]
                                    require idx < mem[_10554]
                                    if not mem[(32 * idx) + _10555 + 32]:
                                        _16824 = mem[(32 * idx) + _10554 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15389
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16824))
                                        call address(_16824).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15389, this.address
                                    else:
                                        _16826 = mem[(32 * idx) + _10554 + 32]
                                        _16827 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16827 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16827 + 36] = 0
                                        mem[_16827 + 68] = _15389
                                        mem[_16827 + 100] = this.address
                                        mem[_16827 + 132] = 128
                                        mem[_16827 + 164] = mem[_16827]
                                        s = 0
                                        while s < mem[_16827]:
                                            mem[s + _16827 + 196] = mem[s + _16827 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16827]) > mem[_16827]:
                                            mem[mem[_16827] + _16827 + 196] = 0
                                        require ext_code.size(address(_16826))
                                        call address(_16826).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15389, address(this.address), 128, mem[_16827], mem[_16827 + 196 len ceil32(mem[_16827])]
                                else:
                                    require idx + 1 < mem[_10554]
                                    _15757 = mem[(32 * idx + 1) + _10554 + 32]
                                    require idx < mem[_10555]
                                    require idx < mem[_10554]
                                    if not mem[(32 * idx) + _10555 + 32]:
                                        _17581 = mem[(32 * idx) + _10554 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15389
                                        mem[mem[64] + 68] = address(_15757)
                                        require ext_code.size(address(_17581))
                                        call address(_17581).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15389, address(_15757)
                                    else:
                                        _17583 = mem[(32 * idx) + _10554 + 32]
                                        _17584 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17584 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17584 + 36] = 0
                                        mem[_17584 + 68] = _15389
                                        mem[_17584 + 100] = address(_15757)
                                        mem[_17584 + 132] = 128
                                        mem[_17584 + 164] = mem[_17584]
                                        s = 0
                                        while s < mem[_17584]:
                                            mem[s + _17584 + 196] = mem[s + _17584 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17584]) > mem[_17584]:
                                            mem[mem[_17584] + _17584 + 196] = 0
                                        require ext_code.size(address(_17583))
                                        call address(_17583).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15389, address(_15757), 128, mem[_17584], mem[_17584 + 196 len ceil32(mem[_17584])]
                            else:
                                if idx >= mem[_10553] - 2:
                                    require idx < mem[_10555]
                                    require idx < mem[_10554]
                                    if not mem[(32 * idx) + _10555 + 32]:
                                        _16830 = mem[(32 * idx) + _10554 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15389
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16830))
                                        call address(_16830).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15389, 0, this.address
                                    else:
                                        _16832 = mem[(32 * idx) + _10554 + 32]
                                        _16833 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16833 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16833 + 36] = _15389
                                        mem[_16833 + 68] = 0
                                        mem[_16833 + 100] = this.address
                                        mem[_16833 + 132] = 128
                                        mem[_16833 + 164] = mem[_16833]
                                        s = 0
                                        while s < mem[_16833]:
                                            mem[s + _16833 + 196] = mem[s + _16833 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16833]) > mem[_16833]:
                                            mem[mem[_16833] + _16833 + 196] = 0
                                        require ext_code.size(address(_16832))
                                        call address(_16832).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15389, 0, address(this.address), 128, mem[_16833], mem[_16833 + 196 len ceil32(mem[_16833])]
                                else:
                                    require idx + 1 < mem[_10554]
                                    _15759 = mem[(32 * idx + 1) + _10554 + 32]
                                    require idx < mem[_10555]
                                    require idx < mem[_10554]
                                    if not mem[(32 * idx) + _10555 + 32]:
                                        _17586 = mem[(32 * idx) + _10554 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15389
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_15759)
                                        require ext_code.size(address(_17586))
                                        call address(_17586).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15389, 0, address(_15759)
                                    else:
                                        _17588 = mem[(32 * idx) + _10554 + 32]
                                        _17589 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17589 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17589 + 36] = _15389
                                        mem[_17589 + 68] = 0
                                        mem[_17589 + 100] = address(_15759)
                                        mem[_17589 + 132] = 128
                                        mem[_17589 + 164] = mem[_17589]
                                        s = 0
                                        while s < mem[_17589]:
                                            mem[s + _17589 + 196] = mem[s + _17589 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17589]) > mem[_17589]:
                                            mem[mem[_17589] + _17589 + 196] = 0
                                        require ext_code.size(address(_17588))
                                        call address(_17588).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15389, 0, address(_15759), 128, mem[_17589], mem[_17589 + 196 len ceil32(mem[_17589])]
                        else:
                            _15390 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _10553 + 44 len 20] == mem[(32 * idx + 1) + _10553 + 44 len 20]:
                                if idx >= mem[_10553] - 2:
                                    require idx < mem[_10555]
                                    require idx < mem[_10554]
                                    if not mem[(32 * idx) + _10555 + 32]:
                                        _16836 = mem[(32 * idx) + _10554 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15390
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16836))
                                        call address(_16836).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15390, this.address
                                    else:
                                        _16838 = mem[(32 * idx) + _10554 + 32]
                                        _16839 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16839 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16839 + 36] = 0
                                        mem[_16839 + 68] = _15390
                                        mem[_16839 + 100] = this.address
                                        mem[_16839 + 132] = 128
                                        mem[_16839 + 164] = mem[_16839]
                                        s = 0
                                        while s < mem[_16839]:
                                            mem[s + _16839 + 196] = mem[s + _16839 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16839]) > mem[_16839]:
                                            mem[mem[_16839] + _16839 + 196] = 0
                                        require ext_code.size(address(_16838))
                                        call address(_16838).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15390, address(this.address), 128, mem[_16839], mem[_16839 + 196 len ceil32(mem[_16839])]
                                else:
                                    require idx + 1 < mem[_10554]
                                    _15761 = mem[(32 * idx + 1) + _10554 + 32]
                                    require idx < mem[_10555]
                                    require idx < mem[_10554]
                                    if not mem[(32 * idx) + _10555 + 32]:
                                        _17591 = mem[(32 * idx) + _10554 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15390
                                        mem[mem[64] + 68] = address(_15761)
                                        require ext_code.size(address(_17591))
                                        call address(_17591).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15390, address(_15761)
                                    else:
                                        _17593 = mem[(32 * idx) + _10554 + 32]
                                        _17594 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17594 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17594 + 36] = 0
                                        mem[_17594 + 68] = _15390
                                        mem[_17594 + 100] = address(_15761)
                                        mem[_17594 + 132] = 128
                                        mem[_17594 + 164] = mem[_17594]
                                        s = 0
                                        while s < mem[_17594]:
                                            mem[s + _17594 + 196] = mem[s + _17594 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17594]) > mem[_17594]:
                                            mem[mem[_17594] + _17594 + 196] = 0
                                        require ext_code.size(address(_17593))
                                        call address(_17593).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15390, address(_15761), 128, mem[_17594], mem[_17594 + 196 len ceil32(mem[_17594])]
                            else:
                                if idx >= mem[_10553] - 2:
                                    require idx < mem[_10555]
                                    require idx < mem[_10554]
                                    if not mem[(32 * idx) + _10555 + 32]:
                                        _16842 = mem[(32 * idx) + _10554 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15390
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_16842))
                                        call address(_16842).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15390, 0, this.address
                                    else:
                                        _16844 = mem[(32 * idx) + _10554 + 32]
                                        _16845 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_16845 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_16845 + 36] = _15390
                                        mem[_16845 + 68] = 0
                                        mem[_16845 + 100] = this.address
                                        mem[_16845 + 132] = 128
                                        mem[_16845 + 164] = mem[_16845]
                                        s = 0
                                        while s < mem[_16845]:
                                            mem[s + _16845 + 196] = mem[s + _16845 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_16845]) > mem[_16845]:
                                            mem[mem[_16845] + _16845 + 196] = 0
                                        require ext_code.size(address(_16844))
                                        call address(_16844).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15390, 0, address(this.address), 128, mem[_16845], mem[_16845 + 196 len ceil32(mem[_16845])]
                                else:
                                    require idx + 1 < mem[_10554]
                                    _15763 = mem[(32 * idx + 1) + _10554 + 32]
                                    require idx < mem[_10555]
                                    require idx < mem[_10554]
                                    if not mem[(32 * idx) + _10555 + 32]:
                                        _17596 = mem[(32 * idx) + _10554 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15390
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_15763)
                                        require ext_code.size(address(_17596))
                                        call address(_17596).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15390, 0, address(_15763)
                                    else:
                                        _17598 = mem[(32 * idx) + _10554 + 32]
                                        _17599 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17599 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17599 + 36] = _15390
                                        mem[_17599 + 68] = 0
                                        mem[_17599 + 100] = address(_15763)
                                        mem[_17599 + 132] = 128
                                        mem[_17599 + 164] = mem[_17599]
                                        s = 0
                                        while s < mem[_17599]:
                                            mem[s + _17599 + 196] = mem[s + _17599 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17599]) > mem[_17599]:
                                            mem[mem[_17599] + _17599 + 196] = 0
                                        require ext_code.size(address(_17598))
                                        call address(_17598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15390, 0, address(_15763), 128, mem[_17599], mem[_17599 + 196 len ceil32(mem[_17599])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 32
                    _15285 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 64 len 32 * _15285] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15285]
                    return 32, mem[mem[64] + 32 len (32 * _15285) + 32]
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                _10803 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_10803] = ('cd', 68).length
                mem[_10803 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_10803 + (32 * ('cd', 68).length) + 32] = 0
                _10804 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_10804] = ('cd', 100).length
                mem[_10804 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_10804 + (32 * ('cd', 100).length) + 32] = 0
                _10805 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_10805] = ('cd', 164).length
                mem[_10805 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_10805 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_10803]
                    require idx + 1 < mem[_10803]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _10803 + 44 len 20] < mem[(32 * idx + 1) + _10803 + 44 len 20]:
                        _15391 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10803 + 44 len 20] == mem[(32 * idx) + _10803 + 44 len 20]:
                            if idx >= mem[_10803] - 2:
                                require idx < mem[_10805]
                                require idx < mem[_10804]
                                if not mem[(32 * idx) + _10805 + 32]:
                                    _16849 = mem[(32 * idx) + _10804 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15391
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16849))
                                    call address(_16849).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15391, this.address
                                else:
                                    _16851 = mem[(32 * idx) + _10804 + 32]
                                    _16852 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16852 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16852 + 36] = 0
                                    mem[_16852 + 68] = _15391
                                    mem[_16852 + 100] = this.address
                                    mem[_16852 + 132] = 128
                                    mem[_16852 + 164] = mem[_16852]
                                    s = 0
                                    while s < mem[_16852]:
                                        mem[s + _16852 + 196] = mem[s + _16852 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16852]) > mem[_16852]:
                                        mem[mem[_16852] + _16852 + 196] = 0
                                    require ext_code.size(address(_16851))
                                    call address(_16851).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15391, address(this.address), 128, mem[_16852], mem[_16852 + 196 len ceil32(mem[_16852])]
                            else:
                                require idx + 1 < mem[_10804]
                                _15765 = mem[(32 * idx + 1) + _10804 + 32]
                                require idx < mem[_10805]
                                require idx < mem[_10804]
                                if not mem[(32 * idx) + _10805 + 32]:
                                    _17601 = mem[(32 * idx) + _10804 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15391
                                    mem[mem[64] + 68] = address(_15765)
                                    require ext_code.size(address(_17601))
                                    call address(_17601).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15391, address(_15765)
                                else:
                                    _17603 = mem[(32 * idx) + _10804 + 32]
                                    _17604 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17604 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17604 + 36] = 0
                                    mem[_17604 + 68] = _15391
                                    mem[_17604 + 100] = address(_15765)
                                    mem[_17604 + 132] = 128
                                    mem[_17604 + 164] = mem[_17604]
                                    s = 0
                                    while s < mem[_17604]:
                                        mem[s + _17604 + 196] = mem[s + _17604 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17604]) > mem[_17604]:
                                        mem[mem[_17604] + _17604 + 196] = 0
                                    require ext_code.size(address(_17603))
                                    call address(_17603).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15391, address(_15765), 128, mem[_17604], mem[_17604 + 196 len ceil32(mem[_17604])]
                        else:
                            if idx >= mem[_10803] - 2:
                                require idx < mem[_10805]
                                require idx < mem[_10804]
                                if not mem[(32 * idx) + _10805 + 32]:
                                    _16855 = mem[(32 * idx) + _10804 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15391
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16855))
                                    call address(_16855).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15391, 0, this.address
                                else:
                                    _16857 = mem[(32 * idx) + _10804 + 32]
                                    _16858 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16858 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16858 + 36] = _15391
                                    mem[_16858 + 68] = 0
                                    mem[_16858 + 100] = this.address
                                    mem[_16858 + 132] = 128
                                    mem[_16858 + 164] = mem[_16858]
                                    s = 0
                                    while s < mem[_16858]:
                                        mem[s + _16858 + 196] = mem[s + _16858 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16858]) > mem[_16858]:
                                        mem[mem[_16858] + _16858 + 196] = 0
                                    require ext_code.size(address(_16857))
                                    call address(_16857).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15391, 0, address(this.address), 128, mem[_16858], mem[_16858 + 196 len ceil32(mem[_16858])]
                            else:
                                require idx + 1 < mem[_10804]
                                _15767 = mem[(32 * idx + 1) + _10804 + 32]
                                require idx < mem[_10805]
                                require idx < mem[_10804]
                                if not mem[(32 * idx) + _10805 + 32]:
                                    _17606 = mem[(32 * idx) + _10804 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15391
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15767)
                                    require ext_code.size(address(_17606))
                                    call address(_17606).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15391, 0, address(_15767)
                                else:
                                    _17608 = mem[(32 * idx) + _10804 + 32]
                                    _17609 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17609 + 36] = _15391
                                    mem[_17609 + 68] = 0
                                    mem[_17609 + 100] = address(_15767)
                                    mem[_17609 + 132] = 128
                                    mem[_17609 + 164] = mem[_17609]
                                    s = 0
                                    while s < mem[_17609]:
                                        mem[s + _17609 + 196] = mem[s + _17609 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17609]) > mem[_17609]:
                                        mem[mem[_17609] + _17609 + 196] = 0
                                    require ext_code.size(address(_17608))
                                    call address(_17608).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15391, 0, address(_15767), 128, mem[_17609], mem[_17609 + 196 len ceil32(mem[_17609])]
                    else:
                        _15392 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10803 + 44 len 20] == mem[(32 * idx + 1) + _10803 + 44 len 20]:
                            if idx >= mem[_10803] - 2:
                                require idx < mem[_10805]
                                require idx < mem[_10804]
                                if not mem[(32 * idx) + _10805 + 32]:
                                    _16861 = mem[(32 * idx) + _10804 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15392
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16861))
                                    call address(_16861).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15392, this.address
                                else:
                                    _16863 = mem[(32 * idx) + _10804 + 32]
                                    _16864 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16864 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16864 + 36] = 0
                                    mem[_16864 + 68] = _15392
                                    mem[_16864 + 100] = this.address
                                    mem[_16864 + 132] = 128
                                    mem[_16864 + 164] = mem[_16864]
                                    s = 0
                                    while s < mem[_16864]:
                                        mem[s + _16864 + 196] = mem[s + _16864 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16864]) > mem[_16864]:
                                        mem[mem[_16864] + _16864 + 196] = 0
                                    require ext_code.size(address(_16863))
                                    call address(_16863).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15392, address(this.address), 128, mem[_16864], mem[_16864 + 196 len ceil32(mem[_16864])]
                            else:
                                require idx + 1 < mem[_10804]
                                _15769 = mem[(32 * idx + 1) + _10804 + 32]
                                require idx < mem[_10805]
                                require idx < mem[_10804]
                                if not mem[(32 * idx) + _10805 + 32]:
                                    _17611 = mem[(32 * idx) + _10804 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15392
                                    mem[mem[64] + 68] = address(_15769)
                                    require ext_code.size(address(_17611))
                                    call address(_17611).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15392, address(_15769)
                                else:
                                    _17613 = mem[(32 * idx) + _10804 + 32]
                                    _17614 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17614 + 36] = 0
                                    mem[_17614 + 68] = _15392
                                    mem[_17614 + 100] = address(_15769)
                                    mem[_17614 + 132] = 128
                                    mem[_17614 + 164] = mem[_17614]
                                    s = 0
                                    while s < mem[_17614]:
                                        mem[s + _17614 + 196] = mem[s + _17614 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17614]) > mem[_17614]:
                                        mem[mem[_17614] + _17614 + 196] = 0
                                    require ext_code.size(address(_17613))
                                    call address(_17613).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15392, address(_15769), 128, mem[_17614], mem[_17614 + 196 len ceil32(mem[_17614])]
                        else:
                            if idx >= mem[_10803] - 2:
                                require idx < mem[_10805]
                                require idx < mem[_10804]
                                if not mem[(32 * idx) + _10805 + 32]:
                                    _16867 = mem[(32 * idx) + _10804 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15392
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16867))
                                    call address(_16867).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15392, 0, this.address
                                else:
                                    _16869 = mem[(32 * idx) + _10804 + 32]
                                    _16870 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16870 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16870 + 36] = _15392
                                    mem[_16870 + 68] = 0
                                    mem[_16870 + 100] = this.address
                                    mem[_16870 + 132] = 128
                                    mem[_16870 + 164] = mem[_16870]
                                    s = 0
                                    while s < mem[_16870]:
                                        mem[s + _16870 + 196] = mem[s + _16870 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16870]) > mem[_16870]:
                                        mem[mem[_16870] + _16870 + 196] = 0
                                    require ext_code.size(address(_16869))
                                    call address(_16869).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15392, 0, address(this.address), 128, mem[_16870], mem[_16870 + 196 len ceil32(mem[_16870])]
                            else:
                                require idx + 1 < mem[_10804]
                                _15771 = mem[(32 * idx + 1) + _10804 + 32]
                                require idx < mem[_10805]
                                require idx < mem[_10804]
                                if not mem[(32 * idx) + _10805 + 32]:
                                    _17616 = mem[(32 * idx) + _10804 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15392
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15771)
                                    require ext_code.size(address(_17616))
                                    call address(_17616).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15392, 0, address(_15771)
                                else:
                                    _17618 = mem[(32 * idx) + _10804 + 32]
                                    _17619 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17619 + 36] = _15392
                                    mem[_17619 + 68] = 0
                                    mem[_17619 + 100] = address(_15771)
                                    mem[_17619 + 132] = 128
                                    mem[_17619 + 164] = mem[_17619]
                                    s = 0
                                    while s < mem[_17619]:
                                        mem[s + _17619 + 196] = mem[s + _17619 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17619]) > mem[_17619]:
                                        mem[mem[_17619] + _17619 + 196] = 0
                                    require ext_code.size(address(_17618))
                                    call address(_17618).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15392, 0, address(_15771), 128, mem[_17619], mem[_17619 + 196 len ceil32(mem[_17619])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _15286 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _15286] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15286]
                return 32, mem[mem[64] + 32 len (32 * _15286) + 32]
            _10487 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_10487] = return_data.size
            mem[_10487 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if not return_data.size:
                _10556 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_10556] = ('cd', 68).length
                mem[_10556 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_10556 + (32 * ('cd', 68).length) + 32] = 0
                _10557 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_10557] = ('cd', 100).length
                mem[_10557 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_10557 + (32 * ('cd', 100).length) + 32] = 0
                _10558 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_10558] = ('cd', 164).length
                mem[_10558 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_10558 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_10556]
                    require idx + 1 < mem[_10556]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _10556 + 44 len 20] < mem[(32 * idx + 1) + _10556 + 44 len 20]:
                        _15393 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10556 + 44 len 20] == mem[(32 * idx) + _10556 + 44 len 20]:
                            if idx >= mem[_10556] - 2:
                                require idx < mem[_10558]
                                require idx < mem[_10557]
                                if not mem[(32 * idx) + _10558 + 32]:
                                    _16874 = mem[(32 * idx) + _10557 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15393
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16874))
                                    call address(_16874).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15393, this.address
                                else:
                                    _16876 = mem[(32 * idx) + _10557 + 32]
                                    _16877 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16877 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16877 + 36] = 0
                                    mem[_16877 + 68] = _15393
                                    mem[_16877 + 100] = this.address
                                    mem[_16877 + 132] = 128
                                    mem[_16877 + 164] = mem[_16877]
                                    s = 0
                                    while s < mem[_16877]:
                                        mem[s + _16877 + 196] = mem[s + _16877 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16877]) > mem[_16877]:
                                        mem[mem[_16877] + _16877 + 196] = 0
                                    require ext_code.size(address(_16876))
                                    call address(_16876).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15393, address(this.address), 128, mem[_16877], mem[_16877 + 196 len ceil32(mem[_16877])]
                            else:
                                require idx + 1 < mem[_10557]
                                _15773 = mem[(32 * idx + 1) + _10557 + 32]
                                require idx < mem[_10558]
                                require idx < mem[_10557]
                                if not mem[(32 * idx) + _10558 + 32]:
                                    _17621 = mem[(32 * idx) + _10557 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15393
                                    mem[mem[64] + 68] = address(_15773)
                                    require ext_code.size(address(_17621))
                                    call address(_17621).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15393, address(_15773)
                                else:
                                    _17623 = mem[(32 * idx) + _10557 + 32]
                                    _17624 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17624 + 36] = 0
                                    mem[_17624 + 68] = _15393
                                    mem[_17624 + 100] = address(_15773)
                                    mem[_17624 + 132] = 128
                                    mem[_17624 + 164] = mem[_17624]
                                    s = 0
                                    while s < mem[_17624]:
                                        mem[s + _17624 + 196] = mem[s + _17624 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17624]) > mem[_17624]:
                                        mem[mem[_17624] + _17624 + 196] = 0
                                    require ext_code.size(address(_17623))
                                    call address(_17623).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15393, address(_15773), 128, mem[_17624], mem[_17624 + 196 len ceil32(mem[_17624])]
                        else:
                            if idx >= mem[_10556] - 2:
                                require idx < mem[_10558]
                                require idx < mem[_10557]
                                if not mem[(32 * idx) + _10558 + 32]:
                                    _16880 = mem[(32 * idx) + _10557 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15393
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16880))
                                    call address(_16880).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15393, 0, this.address
                                else:
                                    _16882 = mem[(32 * idx) + _10557 + 32]
                                    _16883 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16883 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16883 + 36] = _15393
                                    mem[_16883 + 68] = 0
                                    mem[_16883 + 100] = this.address
                                    mem[_16883 + 132] = 128
                                    mem[_16883 + 164] = mem[_16883]
                                    s = 0
                                    while s < mem[_16883]:
                                        mem[s + _16883 + 196] = mem[s + _16883 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16883]) > mem[_16883]:
                                        mem[mem[_16883] + _16883 + 196] = 0
                                    require ext_code.size(address(_16882))
                                    call address(_16882).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15393, 0, address(this.address), 128, mem[_16883], mem[_16883 + 196 len ceil32(mem[_16883])]
                            else:
                                require idx + 1 < mem[_10557]
                                _15775 = mem[(32 * idx + 1) + _10557 + 32]
                                require idx < mem[_10558]
                                require idx < mem[_10557]
                                if not mem[(32 * idx) + _10558 + 32]:
                                    _17626 = mem[(32 * idx) + _10557 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15393
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15775)
                                    require ext_code.size(address(_17626))
                                    call address(_17626).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15393, 0, address(_15775)
                                else:
                                    _17628 = mem[(32 * idx) + _10557 + 32]
                                    _17629 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17629 + 36] = _15393
                                    mem[_17629 + 68] = 0
                                    mem[_17629 + 100] = address(_15775)
                                    mem[_17629 + 132] = 128
                                    mem[_17629 + 164] = mem[_17629]
                                    s = 0
                                    while s < mem[_17629]:
                                        mem[s + _17629 + 196] = mem[s + _17629 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17629]) > mem[_17629]:
                                        mem[mem[_17629] + _17629 + 196] = 0
                                    require ext_code.size(address(_17628))
                                    call address(_17628).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15393, 0, address(_15775), 128, mem[_17629], mem[_17629 + 196 len ceil32(mem[_17629])]
                    else:
                        _15394 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10556 + 44 len 20] == mem[(32 * idx + 1) + _10556 + 44 len 20]:
                            if idx >= mem[_10556] - 2:
                                require idx < mem[_10558]
                                require idx < mem[_10557]
                                if not mem[(32 * idx) + _10558 + 32]:
                                    _16886 = mem[(32 * idx) + _10557 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15394
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16886))
                                    call address(_16886).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15394, this.address
                                else:
                                    _16888 = mem[(32 * idx) + _10557 + 32]
                                    _16889 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16889 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16889 + 36] = 0
                                    mem[_16889 + 68] = _15394
                                    mem[_16889 + 100] = this.address
                                    mem[_16889 + 132] = 128
                                    mem[_16889 + 164] = mem[_16889]
                                    s = 0
                                    while s < mem[_16889]:
                                        mem[s + _16889 + 196] = mem[s + _16889 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16889]) > mem[_16889]:
                                        mem[mem[_16889] + _16889 + 196] = 0
                                    require ext_code.size(address(_16888))
                                    call address(_16888).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15394, address(this.address), 128, mem[_16889], mem[_16889 + 196 len ceil32(mem[_16889])]
                            else:
                                require idx + 1 < mem[_10557]
                                _15777 = mem[(32 * idx + 1) + _10557 + 32]
                                require idx < mem[_10558]
                                require idx < mem[_10557]
                                if not mem[(32 * idx) + _10558 + 32]:
                                    _17631 = mem[(32 * idx) + _10557 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15394
                                    mem[mem[64] + 68] = address(_15777)
                                    require ext_code.size(address(_17631))
                                    call address(_17631).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15394, address(_15777)
                                else:
                                    _17633 = mem[(32 * idx) + _10557 + 32]
                                    _17634 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17634 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17634 + 36] = 0
                                    mem[_17634 + 68] = _15394
                                    mem[_17634 + 100] = address(_15777)
                                    mem[_17634 + 132] = 128
                                    mem[_17634 + 164] = mem[_17634]
                                    s = 0
                                    while s < mem[_17634]:
                                        mem[s + _17634 + 196] = mem[s + _17634 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17634]) > mem[_17634]:
                                        mem[mem[_17634] + _17634 + 196] = 0
                                    require ext_code.size(address(_17633))
                                    call address(_17633).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15394, address(_15777), 128, mem[_17634], mem[_17634 + 196 len ceil32(mem[_17634])]
                        else:
                            if idx >= mem[_10556] - 2:
                                require idx < mem[_10558]
                                require idx < mem[_10557]
                                if not mem[(32 * idx) + _10558 + 32]:
                                    _16892 = mem[(32 * idx) + _10557 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15394
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16892))
                                    call address(_16892).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15394, 0, this.address
                                else:
                                    _16894 = mem[(32 * idx) + _10557 + 32]
                                    _16895 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16895 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16895 + 36] = _15394
                                    mem[_16895 + 68] = 0
                                    mem[_16895 + 100] = this.address
                                    mem[_16895 + 132] = 128
                                    mem[_16895 + 164] = mem[_16895]
                                    s = 0
                                    while s < mem[_16895]:
                                        mem[s + _16895 + 196] = mem[s + _16895 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16895]) > mem[_16895]:
                                        mem[mem[_16895] + _16895 + 196] = 0
                                    require ext_code.size(address(_16894))
                                    call address(_16894).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15394, 0, address(this.address), 128, mem[_16895], mem[_16895 + 196 len ceil32(mem[_16895])]
                            else:
                                require idx + 1 < mem[_10557]
                                _15779 = mem[(32 * idx + 1) + _10557 + 32]
                                require idx < mem[_10558]
                                require idx < mem[_10557]
                                if not mem[(32 * idx) + _10558 + 32]:
                                    _17636 = mem[(32 * idx) + _10557 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15394
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15779)
                                    require ext_code.size(address(_17636))
                                    call address(_17636).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15394, 0, address(_15779)
                                else:
                                    _17638 = mem[(32 * idx) + _10557 + 32]
                                    _17639 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17639 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17639 + 36] = _15394
                                    mem[_17639 + 68] = 0
                                    mem[_17639 + 100] = address(_15779)
                                    mem[_17639 + 132] = 128
                                    mem[_17639 + 164] = mem[_17639]
                                    s = 0
                                    while s < mem[_17639]:
                                        mem[s + _17639 + 196] = mem[s + _17639 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17639]) > mem[_17639]:
                                        mem[mem[_17639] + _17639 + 196] = 0
                                    require ext_code.size(address(_17638))
                                    call address(_17638).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15394, 0, address(_15779), 128, mem[_17639], mem[_17639 + 196 len ceil32(mem[_17639])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _15287 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _15287] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15287]
                return 32, mem[mem[64] + 32 len (32 * _15287) + 32]
            require return_data.size >= 32
            require mem[_10487 + 32] == bool(mem[_10487 + 32])
            if not mem[_10487 + 32]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            _10808 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_10808] = ('cd', 68).length
            mem[_10808 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_10808 + (32 * ('cd', 68).length) + 32] = 0
            _10809 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_10809] = ('cd', 100).length
            mem[_10809 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_10809 + (32 * ('cd', 100).length) + 32] = 0
            _10810 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_10810] = ('cd', 164).length
            mem[_10810 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_10810 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_10808]
                require idx + 1 < mem[_10808]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _10808 + 44 len 20] < mem[(32 * idx + 1) + _10808 + 44 len 20]:
                    _15395 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10808 + 44 len 20] == mem[(32 * idx) + _10808 + 44 len 20]:
                        if idx >= mem[_10808] - 2:
                            require idx < mem[_10810]
                            require idx < mem[_10809]
                            if not mem[(32 * idx) + _10810 + 32]:
                                _16899 = mem[(32 * idx) + _10809 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15395
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16899))
                                call address(_16899).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15395, this.address
                            else:
                                _16901 = mem[(32 * idx) + _10809 + 32]
                                _16902 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16902 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16902 + 36] = 0
                                mem[_16902 + 68] = _15395
                                mem[_16902 + 100] = this.address
                                mem[_16902 + 132] = 128
                                mem[_16902 + 164] = mem[_16902]
                                s = 0
                                while s < mem[_16902]:
                                    mem[s + _16902 + 196] = mem[s + _16902 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16902]) > mem[_16902]:
                                    mem[mem[_16902] + _16902 + 196] = 0
                                require ext_code.size(address(_16901))
                                call address(_16901).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15395, address(this.address), 128, mem[_16902], mem[_16902 + 196 len ceil32(mem[_16902])]
                        else:
                            require idx + 1 < mem[_10809]
                            _15781 = mem[(32 * idx + 1) + _10809 + 32]
                            require idx < mem[_10810]
                            require idx < mem[_10809]
                            if not mem[(32 * idx) + _10810 + 32]:
                                _17641 = mem[(32 * idx) + _10809 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15395
                                mem[mem[64] + 68] = address(_15781)
                                require ext_code.size(address(_17641))
                                call address(_17641).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15395, address(_15781)
                            else:
                                _17643 = mem[(32 * idx) + _10809 + 32]
                                _17644 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17644 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17644 + 36] = 0
                                mem[_17644 + 68] = _15395
                                mem[_17644 + 100] = address(_15781)
                                mem[_17644 + 132] = 128
                                mem[_17644 + 164] = mem[_17644]
                                s = 0
                                while s < mem[_17644]:
                                    mem[s + _17644 + 196] = mem[s + _17644 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17644]) > mem[_17644]:
                                    mem[mem[_17644] + _17644 + 196] = 0
                                require ext_code.size(address(_17643))
                                call address(_17643).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15395, address(_15781), 128, mem[_17644], mem[_17644 + 196 len ceil32(mem[_17644])]
                    else:
                        if idx >= mem[_10808] - 2:
                            require idx < mem[_10810]
                            require idx < mem[_10809]
                            if not mem[(32 * idx) + _10810 + 32]:
                                _16905 = mem[(32 * idx) + _10809 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15395
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16905))
                                call address(_16905).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15395, 0, this.address
                            else:
                                _16907 = mem[(32 * idx) + _10809 + 32]
                                _16908 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16908 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16908 + 36] = _15395
                                mem[_16908 + 68] = 0
                                mem[_16908 + 100] = this.address
                                mem[_16908 + 132] = 128
                                mem[_16908 + 164] = mem[_16908]
                                s = 0
                                while s < mem[_16908]:
                                    mem[s + _16908 + 196] = mem[s + _16908 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16908]) > mem[_16908]:
                                    mem[mem[_16908] + _16908 + 196] = 0
                                require ext_code.size(address(_16907))
                                call address(_16907).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15395, 0, address(this.address), 128, mem[_16908], mem[_16908 + 196 len ceil32(mem[_16908])]
                        else:
                            require idx + 1 < mem[_10809]
                            _15783 = mem[(32 * idx + 1) + _10809 + 32]
                            require idx < mem[_10810]
                            require idx < mem[_10809]
                            if not mem[(32 * idx) + _10810 + 32]:
                                _17646 = mem[(32 * idx) + _10809 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15395
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15783)
                                require ext_code.size(address(_17646))
                                call address(_17646).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15395, 0, address(_15783)
                            else:
                                _17648 = mem[(32 * idx) + _10809 + 32]
                                _17649 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17649 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17649 + 36] = _15395
                                mem[_17649 + 68] = 0
                                mem[_17649 + 100] = address(_15783)
                                mem[_17649 + 132] = 128
                                mem[_17649 + 164] = mem[_17649]
                                s = 0
                                while s < mem[_17649]:
                                    mem[s + _17649 + 196] = mem[s + _17649 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17649]) > mem[_17649]:
                                    mem[mem[_17649] + _17649 + 196] = 0
                                require ext_code.size(address(_17648))
                                call address(_17648).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15395, 0, address(_15783), 128, mem[_17649], mem[_17649 + 196 len ceil32(mem[_17649])]
                else:
                    _15396 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10808 + 44 len 20] == mem[(32 * idx + 1) + _10808 + 44 len 20]:
                        if idx >= mem[_10808] - 2:
                            require idx < mem[_10810]
                            require idx < mem[_10809]
                            if not mem[(32 * idx) + _10810 + 32]:
                                _16911 = mem[(32 * idx) + _10809 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15396
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16911))
                                call address(_16911).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15396, this.address
                            else:
                                _16913 = mem[(32 * idx) + _10809 + 32]
                                _16914 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16914 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16914 + 36] = 0
                                mem[_16914 + 68] = _15396
                                mem[_16914 + 100] = this.address
                                mem[_16914 + 132] = 128
                                mem[_16914 + 164] = mem[_16914]
                                s = 0
                                while s < mem[_16914]:
                                    mem[s + _16914 + 196] = mem[s + _16914 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16914]) > mem[_16914]:
                                    mem[mem[_16914] + _16914 + 196] = 0
                                require ext_code.size(address(_16913))
                                call address(_16913).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15396, address(this.address), 128, mem[_16914], mem[_16914 + 196 len ceil32(mem[_16914])]
                        else:
                            require idx + 1 < mem[_10809]
                            _15785 = mem[(32 * idx + 1) + _10809 + 32]
                            require idx < mem[_10810]
                            require idx < mem[_10809]
                            if not mem[(32 * idx) + _10810 + 32]:
                                _17651 = mem[(32 * idx) + _10809 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15396
                                mem[mem[64] + 68] = address(_15785)
                                require ext_code.size(address(_17651))
                                call address(_17651).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15396, address(_15785)
                            else:
                                _17653 = mem[(32 * idx) + _10809 + 32]
                                _17654 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17654 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17654 + 36] = 0
                                mem[_17654 + 68] = _15396
                                mem[_17654 + 100] = address(_15785)
                                mem[_17654 + 132] = 128
                                mem[_17654 + 164] = mem[_17654]
                                s = 0
                                while s < mem[_17654]:
                                    mem[s + _17654 + 196] = mem[s + _17654 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17654]) > mem[_17654]:
                                    mem[mem[_17654] + _17654 + 196] = 0
                                require ext_code.size(address(_17653))
                                call address(_17653).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15396, address(_15785), 128, mem[_17654], mem[_17654 + 196 len ceil32(mem[_17654])]
                    else:
                        if idx >= mem[_10808] - 2:
                            require idx < mem[_10810]
                            require idx < mem[_10809]
                            if not mem[(32 * idx) + _10810 + 32]:
                                _16917 = mem[(32 * idx) + _10809 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15396
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16917))
                                call address(_16917).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15396, 0, this.address
                            else:
                                _16919 = mem[(32 * idx) + _10809 + 32]
                                _16920 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16920 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16920 + 36] = _15396
                                mem[_16920 + 68] = 0
                                mem[_16920 + 100] = this.address
                                mem[_16920 + 132] = 128
                                mem[_16920 + 164] = mem[_16920]
                                s = 0
                                while s < mem[_16920]:
                                    mem[s + _16920 + 196] = mem[s + _16920 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16920]) > mem[_16920]:
                                    mem[mem[_16920] + _16920 + 196] = 0
                                require ext_code.size(address(_16919))
                                call address(_16919).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15396, 0, address(this.address), 128, mem[_16920], mem[_16920 + 196 len ceil32(mem[_16920])]
                        else:
                            require idx + 1 < mem[_10809]
                            _15787 = mem[(32 * idx + 1) + _10809 + 32]
                            require idx < mem[_10810]
                            require idx < mem[_10809]
                            if not mem[(32 * idx) + _10810 + 32]:
                                _17656 = mem[(32 * idx) + _10809 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15396
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15787)
                                require ext_code.size(address(_17656))
                                call address(_17656).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15396, 0, address(_15787)
                            else:
                                _17658 = mem[(32 * idx) + _10809 + 32]
                                _17659 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17659 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17659 + 36] = _15396
                                mem[_17659 + 68] = 0
                                mem[_17659 + 100] = address(_15787)
                                mem[_17659 + 132] = 128
                                mem[_17659 + 164] = mem[_17659]
                                s = 0
                                while s < mem[_17659]:
                                    mem[s + _17659 + 196] = mem[s + _17659 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17659]) > mem[_17659]:
                                    mem[mem[_17659] + _17659 + 196] = 0
                                require ext_code.size(address(_17658))
                                call address(_17658).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15396, 0, address(_15787), 128, mem[_17659], mem[_17659 + 196 len ceil32(mem[_17659])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _15288 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _15288] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15288]
            return 32, mem[mem[64] + 32 len (32 * _15288) + 32]
        mem[_5474 + _5378 + 100] = 0
        call address(('cd', 68)[0]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5474 + _5378 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if not mem[96]:
                _10559 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_10559] = ('cd', 68).length
                mem[_10559 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_10559 + (32 * ('cd', 68).length) + 32] = 0
                _10560 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_10560] = ('cd', 100).length
                mem[_10560 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_10560 + (32 * ('cd', 100).length) + 32] = 0
                _10561 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_10561] = ('cd', 164).length
                mem[_10561 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_10561 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_10559]
                    require idx + 1 < mem[_10559]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _10559 + 44 len 20] < mem[(32 * idx + 1) + _10559 + 44 len 20]:
                        _15397 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10559 + 44 len 20] == mem[(32 * idx) + _10559 + 44 len 20]:
                            if idx >= mem[_10559] - 2:
                                require idx < mem[_10561]
                                require idx < mem[_10560]
                                if not mem[(32 * idx) + _10561 + 32]:
                                    _16924 = mem[(32 * idx) + _10560 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15397
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16924))
                                    call address(_16924).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15397, this.address
                                else:
                                    _16926 = mem[(32 * idx) + _10560 + 32]
                                    _16927 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16927 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16927 + 36] = 0
                                    mem[_16927 + 68] = _15397
                                    mem[_16927 + 100] = this.address
                                    mem[_16927 + 132] = 128
                                    mem[_16927 + 164] = mem[_16927]
                                    s = 0
                                    while s < mem[_16927]:
                                        mem[s + _16927 + 196] = mem[s + _16927 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16927]) > mem[_16927]:
                                        mem[mem[_16927] + _16927 + 196] = 0
                                    require ext_code.size(address(_16926))
                                    call address(_16926).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15397, address(this.address), 128, mem[_16927], mem[_16927 + 196 len ceil32(mem[_16927])]
                            else:
                                require idx + 1 < mem[_10560]
                                _15789 = mem[(32 * idx + 1) + _10560 + 32]
                                require idx < mem[_10561]
                                require idx < mem[_10560]
                                if not mem[(32 * idx) + _10561 + 32]:
                                    _17661 = mem[(32 * idx) + _10560 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15397
                                    mem[mem[64] + 68] = address(_15789)
                                    require ext_code.size(address(_17661))
                                    call address(_17661).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15397, address(_15789)
                                else:
                                    _17663 = mem[(32 * idx) + _10560 + 32]
                                    _17664 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17664 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17664 + 36] = 0
                                    mem[_17664 + 68] = _15397
                                    mem[_17664 + 100] = address(_15789)
                                    mem[_17664 + 132] = 128
                                    mem[_17664 + 164] = mem[_17664]
                                    s = 0
                                    while s < mem[_17664]:
                                        mem[s + _17664 + 196] = mem[s + _17664 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17664]) > mem[_17664]:
                                        mem[mem[_17664] + _17664 + 196] = 0
                                    require ext_code.size(address(_17663))
                                    call address(_17663).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15397, address(_15789), 128, mem[_17664], mem[_17664 + 196 len ceil32(mem[_17664])]
                        else:
                            if idx >= mem[_10559] - 2:
                                require idx < mem[_10561]
                                require idx < mem[_10560]
                                if not mem[(32 * idx) + _10561 + 32]:
                                    _16930 = mem[(32 * idx) + _10560 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15397
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16930))
                                    call address(_16930).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15397, 0, this.address
                                else:
                                    _16932 = mem[(32 * idx) + _10560 + 32]
                                    _16933 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16933 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16933 + 36] = _15397
                                    mem[_16933 + 68] = 0
                                    mem[_16933 + 100] = this.address
                                    mem[_16933 + 132] = 128
                                    mem[_16933 + 164] = mem[_16933]
                                    s = 0
                                    while s < mem[_16933]:
                                        mem[s + _16933 + 196] = mem[s + _16933 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16933]) > mem[_16933]:
                                        mem[mem[_16933] + _16933 + 196] = 0
                                    require ext_code.size(address(_16932))
                                    call address(_16932).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15397, 0, address(this.address), 128, mem[_16933], mem[_16933 + 196 len ceil32(mem[_16933])]
                            else:
                                require idx + 1 < mem[_10560]
                                _15791 = mem[(32 * idx + 1) + _10560 + 32]
                                require idx < mem[_10561]
                                require idx < mem[_10560]
                                if not mem[(32 * idx) + _10561 + 32]:
                                    _17666 = mem[(32 * idx) + _10560 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15397
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15791)
                                    require ext_code.size(address(_17666))
                                    call address(_17666).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15397, 0, address(_15791)
                                else:
                                    _17668 = mem[(32 * idx) + _10560 + 32]
                                    _17669 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17669 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17669 + 36] = _15397
                                    mem[_17669 + 68] = 0
                                    mem[_17669 + 100] = address(_15791)
                                    mem[_17669 + 132] = 128
                                    mem[_17669 + 164] = mem[_17669]
                                    s = 0
                                    while s < mem[_17669]:
                                        mem[s + _17669 + 196] = mem[s + _17669 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17669]) > mem[_17669]:
                                        mem[mem[_17669] + _17669 + 196] = 0
                                    require ext_code.size(address(_17668))
                                    call address(_17668).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15397, 0, address(_15791), 128, mem[_17669], mem[_17669 + 196 len ceil32(mem[_17669])]
                    else:
                        _15398 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10559 + 44 len 20] == mem[(32 * idx + 1) + _10559 + 44 len 20]:
                            if idx >= mem[_10559] - 2:
                                require idx < mem[_10561]
                                require idx < mem[_10560]
                                if not mem[(32 * idx) + _10561 + 32]:
                                    _16936 = mem[(32 * idx) + _10560 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15398
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16936))
                                    call address(_16936).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15398, this.address
                                else:
                                    _16938 = mem[(32 * idx) + _10560 + 32]
                                    _16939 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16939 + 36] = 0
                                    mem[_16939 + 68] = _15398
                                    mem[_16939 + 100] = this.address
                                    mem[_16939 + 132] = 128
                                    mem[_16939 + 164] = mem[_16939]
                                    s = 0
                                    while s < mem[_16939]:
                                        mem[s + _16939 + 196] = mem[s + _16939 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16939]) > mem[_16939]:
                                        mem[mem[_16939] + _16939 + 196] = 0
                                    require ext_code.size(address(_16938))
                                    call address(_16938).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15398, address(this.address), 128, mem[_16939], mem[_16939 + 196 len ceil32(mem[_16939])]
                            else:
                                require idx + 1 < mem[_10560]
                                _15793 = mem[(32 * idx + 1) + _10560 + 32]
                                require idx < mem[_10561]
                                require idx < mem[_10560]
                                if not mem[(32 * idx) + _10561 + 32]:
                                    _17671 = mem[(32 * idx) + _10560 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15398
                                    mem[mem[64] + 68] = address(_15793)
                                    require ext_code.size(address(_17671))
                                    call address(_17671).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15398, address(_15793)
                                else:
                                    _17673 = mem[(32 * idx) + _10560 + 32]
                                    _17674 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17674 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17674 + 36] = 0
                                    mem[_17674 + 68] = _15398
                                    mem[_17674 + 100] = address(_15793)
                                    mem[_17674 + 132] = 128
                                    mem[_17674 + 164] = mem[_17674]
                                    s = 0
                                    while s < mem[_17674]:
                                        mem[s + _17674 + 196] = mem[s + _17674 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17674]) > mem[_17674]:
                                        mem[mem[_17674] + _17674 + 196] = 0
                                    require ext_code.size(address(_17673))
                                    call address(_17673).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15398, address(_15793), 128, mem[_17674], mem[_17674 + 196 len ceil32(mem[_17674])]
                        else:
                            if idx >= mem[_10559] - 2:
                                require idx < mem[_10561]
                                require idx < mem[_10560]
                                if not mem[(32 * idx) + _10561 + 32]:
                                    _16942 = mem[(32 * idx) + _10560 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15398
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_16942))
                                    call address(_16942).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15398, 0, this.address
                                else:
                                    _16944 = mem[(32 * idx) + _10560 + 32]
                                    _16945 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_16945 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16945 + 36] = _15398
                                    mem[_16945 + 68] = 0
                                    mem[_16945 + 100] = this.address
                                    mem[_16945 + 132] = 128
                                    mem[_16945 + 164] = mem[_16945]
                                    s = 0
                                    while s < mem[_16945]:
                                        mem[s + _16945 + 196] = mem[s + _16945 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_16945]) > mem[_16945]:
                                        mem[mem[_16945] + _16945 + 196] = 0
                                    require ext_code.size(address(_16944))
                                    call address(_16944).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15398, 0, address(this.address), 128, mem[_16945], mem[_16945 + 196 len ceil32(mem[_16945])]
                            else:
                                require idx + 1 < mem[_10560]
                                _15795 = mem[(32 * idx + 1) + _10560 + 32]
                                require idx < mem[_10561]
                                require idx < mem[_10560]
                                if not mem[(32 * idx) + _10561 + 32]:
                                    _17676 = mem[(32 * idx) + _10560 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15398
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15795)
                                    require ext_code.size(address(_17676))
                                    call address(_17676).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15398, 0, address(_15795)
                                else:
                                    _17678 = mem[(32 * idx) + _10560 + 32]
                                    _17679 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17679 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17679 + 36] = _15398
                                    mem[_17679 + 68] = 0
                                    mem[_17679 + 100] = address(_15795)
                                    mem[_17679 + 132] = 128
                                    mem[_17679 + 164] = mem[_17679]
                                    s = 0
                                    while s < mem[_17679]:
                                        mem[s + _17679 + 196] = mem[s + _17679 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17679]) > mem[_17679]:
                                        mem[mem[_17679] + _17679 + 196] = 0
                                    require ext_code.size(address(_17678))
                                    call address(_17678).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15398, 0, address(_15795), 128, mem[_17679], mem[_17679 + 196 len ceil32(mem[_17679])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _15289 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _15289] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15289]
                return 32, mem[mem[64] + 32 len (32 * _15289) + 32]
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            _10813 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_10813] = ('cd', 68).length
            mem[_10813 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_10813 + (32 * ('cd', 68).length) + 32] = 0
            _10814 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_10814] = ('cd', 100).length
            mem[_10814 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_10814 + (32 * ('cd', 100).length) + 32] = 0
            _10815 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_10815] = ('cd', 164).length
            mem[_10815 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_10815 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_10813]
                require idx + 1 < mem[_10813]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _10813 + 44 len 20] < mem[(32 * idx + 1) + _10813 + 44 len 20]:
                    _15399 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10813 + 44 len 20] == mem[(32 * idx) + _10813 + 44 len 20]:
                        if idx >= mem[_10813] - 2:
                            require idx < mem[_10815]
                            require idx < mem[_10814]
                            if not mem[(32 * idx) + _10815 + 32]:
                                _16949 = mem[(32 * idx) + _10814 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15399
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16949))
                                call address(_16949).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15399, this.address
                            else:
                                _16951 = mem[(32 * idx) + _10814 + 32]
                                _16952 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16952 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16952 + 36] = 0
                                mem[_16952 + 68] = _15399
                                mem[_16952 + 100] = this.address
                                mem[_16952 + 132] = 128
                                mem[_16952 + 164] = mem[_16952]
                                s = 0
                                while s < mem[_16952]:
                                    mem[s + _16952 + 196] = mem[s + _16952 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16952]) > mem[_16952]:
                                    mem[mem[_16952] + _16952 + 196] = 0
                                require ext_code.size(address(_16951))
                                call address(_16951).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15399, address(this.address), 128, mem[_16952], mem[_16952 + 196 len ceil32(mem[_16952])]
                        else:
                            require idx + 1 < mem[_10814]
                            _15797 = mem[(32 * idx + 1) + _10814 + 32]
                            require idx < mem[_10815]
                            require idx < mem[_10814]
                            if not mem[(32 * idx) + _10815 + 32]:
                                _17681 = mem[(32 * idx) + _10814 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15399
                                mem[mem[64] + 68] = address(_15797)
                                require ext_code.size(address(_17681))
                                call address(_17681).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15399, address(_15797)
                            else:
                                _17683 = mem[(32 * idx) + _10814 + 32]
                                _17684 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17684 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17684 + 36] = 0
                                mem[_17684 + 68] = _15399
                                mem[_17684 + 100] = address(_15797)
                                mem[_17684 + 132] = 128
                                mem[_17684 + 164] = mem[_17684]
                                s = 0
                                while s < mem[_17684]:
                                    mem[s + _17684 + 196] = mem[s + _17684 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17684]) > mem[_17684]:
                                    mem[mem[_17684] + _17684 + 196] = 0
                                require ext_code.size(address(_17683))
                                call address(_17683).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15399, address(_15797), 128, mem[_17684], mem[_17684 + 196 len ceil32(mem[_17684])]
                    else:
                        if idx >= mem[_10813] - 2:
                            require idx < mem[_10815]
                            require idx < mem[_10814]
                            if not mem[(32 * idx) + _10815 + 32]:
                                _16955 = mem[(32 * idx) + _10814 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15399
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16955))
                                call address(_16955).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15399, 0, this.address
                            else:
                                _16957 = mem[(32 * idx) + _10814 + 32]
                                _16958 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16958 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16958 + 36] = _15399
                                mem[_16958 + 68] = 0
                                mem[_16958 + 100] = this.address
                                mem[_16958 + 132] = 128
                                mem[_16958 + 164] = mem[_16958]
                                s = 0
                                while s < mem[_16958]:
                                    mem[s + _16958 + 196] = mem[s + _16958 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16958]) > mem[_16958]:
                                    mem[mem[_16958] + _16958 + 196] = 0
                                require ext_code.size(address(_16957))
                                call address(_16957).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15399, 0, address(this.address), 128, mem[_16958], mem[_16958 + 196 len ceil32(mem[_16958])]
                        else:
                            require idx + 1 < mem[_10814]
                            _15799 = mem[(32 * idx + 1) + _10814 + 32]
                            require idx < mem[_10815]
                            require idx < mem[_10814]
                            if not mem[(32 * idx) + _10815 + 32]:
                                _17686 = mem[(32 * idx) + _10814 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15399
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15799)
                                require ext_code.size(address(_17686))
                                call address(_17686).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15399, 0, address(_15799)
                            else:
                                _17688 = mem[(32 * idx) + _10814 + 32]
                                _17689 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17689 + 36] = _15399
                                mem[_17689 + 68] = 0
                                mem[_17689 + 100] = address(_15799)
                                mem[_17689 + 132] = 128
                                mem[_17689 + 164] = mem[_17689]
                                s = 0
                                while s < mem[_17689]:
                                    mem[s + _17689 + 196] = mem[s + _17689 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17689]) > mem[_17689]:
                                    mem[mem[_17689] + _17689 + 196] = 0
                                require ext_code.size(address(_17688))
                                call address(_17688).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15399, 0, address(_15799), 128, mem[_17689], mem[_17689 + 196 len ceil32(mem[_17689])]
                else:
                    _15400 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10813 + 44 len 20] == mem[(32 * idx + 1) + _10813 + 44 len 20]:
                        if idx >= mem[_10813] - 2:
                            require idx < mem[_10815]
                            require idx < mem[_10814]
                            if not mem[(32 * idx) + _10815 + 32]:
                                _16961 = mem[(32 * idx) + _10814 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15400
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16961))
                                call address(_16961).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15400, this.address
                            else:
                                _16963 = mem[(32 * idx) + _10814 + 32]
                                _16964 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16964 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16964 + 36] = 0
                                mem[_16964 + 68] = _15400
                                mem[_16964 + 100] = this.address
                                mem[_16964 + 132] = 128
                                mem[_16964 + 164] = mem[_16964]
                                s = 0
                                while s < mem[_16964]:
                                    mem[s + _16964 + 196] = mem[s + _16964 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16964]) > mem[_16964]:
                                    mem[mem[_16964] + _16964 + 196] = 0
                                require ext_code.size(address(_16963))
                                call address(_16963).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15400, address(this.address), 128, mem[_16964], mem[_16964 + 196 len ceil32(mem[_16964])]
                        else:
                            require idx + 1 < mem[_10814]
                            _15801 = mem[(32 * idx + 1) + _10814 + 32]
                            require idx < mem[_10815]
                            require idx < mem[_10814]
                            if not mem[(32 * idx) + _10815 + 32]:
                                _17691 = mem[(32 * idx) + _10814 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15400
                                mem[mem[64] + 68] = address(_15801)
                                require ext_code.size(address(_17691))
                                call address(_17691).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15400, address(_15801)
                            else:
                                _17693 = mem[(32 * idx) + _10814 + 32]
                                _17694 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17694 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17694 + 36] = 0
                                mem[_17694 + 68] = _15400
                                mem[_17694 + 100] = address(_15801)
                                mem[_17694 + 132] = 128
                                mem[_17694 + 164] = mem[_17694]
                                s = 0
                                while s < mem[_17694]:
                                    mem[s + _17694 + 196] = mem[s + _17694 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17694]) > mem[_17694]:
                                    mem[mem[_17694] + _17694 + 196] = 0
                                require ext_code.size(address(_17693))
                                call address(_17693).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15400, address(_15801), 128, mem[_17694], mem[_17694 + 196 len ceil32(mem[_17694])]
                    else:
                        if idx >= mem[_10813] - 2:
                            require idx < mem[_10815]
                            require idx < mem[_10814]
                            if not mem[(32 * idx) + _10815 + 32]:
                                _16967 = mem[(32 * idx) + _10814 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15400
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16967))
                                call address(_16967).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15400, 0, this.address
                            else:
                                _16969 = mem[(32 * idx) + _10814 + 32]
                                _16970 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16970 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16970 + 36] = _15400
                                mem[_16970 + 68] = 0
                                mem[_16970 + 100] = this.address
                                mem[_16970 + 132] = 128
                                mem[_16970 + 164] = mem[_16970]
                                s = 0
                                while s < mem[_16970]:
                                    mem[s + _16970 + 196] = mem[s + _16970 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16970]) > mem[_16970]:
                                    mem[mem[_16970] + _16970 + 196] = 0
                                require ext_code.size(address(_16969))
                                call address(_16969).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15400, 0, address(this.address), 128, mem[_16970], mem[_16970 + 196 len ceil32(mem[_16970])]
                        else:
                            require idx + 1 < mem[_10814]
                            _15803 = mem[(32 * idx + 1) + _10814 + 32]
                            require idx < mem[_10815]
                            require idx < mem[_10814]
                            if not mem[(32 * idx) + _10815 + 32]:
                                _17696 = mem[(32 * idx) + _10814 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15400
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15803)
                                require ext_code.size(address(_17696))
                                call address(_17696).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15400, 0, address(_15803)
                            else:
                                _17698 = mem[(32 * idx) + _10814 + 32]
                                _17699 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17699 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17699 + 36] = _15400
                                mem[_17699 + 68] = 0
                                mem[_17699 + 100] = address(_15803)
                                mem[_17699 + 132] = 128
                                mem[_17699 + 164] = mem[_17699]
                                s = 0
                                while s < mem[_17699]:
                                    mem[s + _17699 + 196] = mem[s + _17699 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17699]) > mem[_17699]:
                                    mem[mem[_17699] + _17699 + 196] = 0
                                require ext_code.size(address(_17698))
                                call address(_17698).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15400, 0, address(_15803), 128, mem[_17699], mem[_17699 + 196 len ceil32(mem[_17699])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _15290 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _15290] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15290]
            return 32, mem[mem[64] + 32 len (32 * _15290) + 32]
        _10488 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_10488] = return_data.size
        mem[_10488 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if not return_data.size:
            _10562 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_10562] = ('cd', 68).length
            mem[_10562 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_10562 + (32 * ('cd', 68).length) + 32] = 0
            _10563 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_10563] = ('cd', 100).length
            mem[_10563 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_10563 + (32 * ('cd', 100).length) + 32] = 0
            _10564 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_10564] = ('cd', 164).length
            mem[_10564 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_10564 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_10562]
                require idx + 1 < mem[_10562]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _10562 + 44 len 20] < mem[(32 * idx + 1) + _10562 + 44 len 20]:
                    _15401 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10562 + 44 len 20] == mem[(32 * idx) + _10562 + 44 len 20]:
                        if idx >= mem[_10562] - 2:
                            require idx < mem[_10564]
                            require idx < mem[_10563]
                            if not mem[(32 * idx) + _10564 + 32]:
                                _16974 = mem[(32 * idx) + _10563 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15401
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16974))
                                call address(_16974).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15401, this.address
                            else:
                                _16976 = mem[(32 * idx) + _10563 + 32]
                                _16977 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16977 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16977 + 36] = 0
                                mem[_16977 + 68] = _15401
                                mem[_16977 + 100] = this.address
                                mem[_16977 + 132] = 128
                                mem[_16977 + 164] = mem[_16977]
                                s = 0
                                while s < mem[_16977]:
                                    mem[s + _16977 + 196] = mem[s + _16977 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16977]) > mem[_16977]:
                                    mem[mem[_16977] + _16977 + 196] = 0
                                require ext_code.size(address(_16976))
                                call address(_16976).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15401, address(this.address), 128, mem[_16977], mem[_16977 + 196 len ceil32(mem[_16977])]
                        else:
                            require idx + 1 < mem[_10563]
                            _15805 = mem[(32 * idx + 1) + _10563 + 32]
                            require idx < mem[_10564]
                            require idx < mem[_10563]
                            if not mem[(32 * idx) + _10564 + 32]:
                                _17701 = mem[(32 * idx) + _10563 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15401
                                mem[mem[64] + 68] = address(_15805)
                                require ext_code.size(address(_17701))
                                call address(_17701).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15401, address(_15805)
                            else:
                                _17703 = mem[(32 * idx) + _10563 + 32]
                                _17704 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17704 + 36] = 0
                                mem[_17704 + 68] = _15401
                                mem[_17704 + 100] = address(_15805)
                                mem[_17704 + 132] = 128
                                mem[_17704 + 164] = mem[_17704]
                                s = 0
                                while s < mem[_17704]:
                                    mem[s + _17704 + 196] = mem[s + _17704 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17704]) > mem[_17704]:
                                    mem[mem[_17704] + _17704 + 196] = 0
                                require ext_code.size(address(_17703))
                                call address(_17703).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15401, address(_15805), 128, mem[_17704], mem[_17704 + 196 len ceil32(mem[_17704])]
                    else:
                        if idx >= mem[_10562] - 2:
                            require idx < mem[_10564]
                            require idx < mem[_10563]
                            if not mem[(32 * idx) + _10564 + 32]:
                                _16980 = mem[(32 * idx) + _10563 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15401
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16980))
                                call address(_16980).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15401, 0, this.address
                            else:
                                _16982 = mem[(32 * idx) + _10563 + 32]
                                _16983 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16983 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16983 + 36] = _15401
                                mem[_16983 + 68] = 0
                                mem[_16983 + 100] = this.address
                                mem[_16983 + 132] = 128
                                mem[_16983 + 164] = mem[_16983]
                                s = 0
                                while s < mem[_16983]:
                                    mem[s + _16983 + 196] = mem[s + _16983 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16983]) > mem[_16983]:
                                    mem[mem[_16983] + _16983 + 196] = 0
                                require ext_code.size(address(_16982))
                                call address(_16982).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15401, 0, address(this.address), 128, mem[_16983], mem[_16983 + 196 len ceil32(mem[_16983])]
                        else:
                            require idx + 1 < mem[_10563]
                            _15807 = mem[(32 * idx + 1) + _10563 + 32]
                            require idx < mem[_10564]
                            require idx < mem[_10563]
                            if not mem[(32 * idx) + _10564 + 32]:
                                _17706 = mem[(32 * idx) + _10563 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15401
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15807)
                                require ext_code.size(address(_17706))
                                call address(_17706).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15401, 0, address(_15807)
                            else:
                                _17708 = mem[(32 * idx) + _10563 + 32]
                                _17709 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17709 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17709 + 36] = _15401
                                mem[_17709 + 68] = 0
                                mem[_17709 + 100] = address(_15807)
                                mem[_17709 + 132] = 128
                                mem[_17709 + 164] = mem[_17709]
                                s = 0
                                while s < mem[_17709]:
                                    mem[s + _17709 + 196] = mem[s + _17709 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17709]) > mem[_17709]:
                                    mem[mem[_17709] + _17709 + 196] = 0
                                require ext_code.size(address(_17708))
                                call address(_17708).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15401, 0, address(_15807), 128, mem[_17709], mem[_17709 + 196 len ceil32(mem[_17709])]
                else:
                    _15402 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10562 + 44 len 20] == mem[(32 * idx + 1) + _10562 + 44 len 20]:
                        if idx >= mem[_10562] - 2:
                            require idx < mem[_10564]
                            require idx < mem[_10563]
                            if not mem[(32 * idx) + _10564 + 32]:
                                _16986 = mem[(32 * idx) + _10563 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15402
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16986))
                                call address(_16986).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15402, this.address
                            else:
                                _16988 = mem[(32 * idx) + _10563 + 32]
                                _16989 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16989 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16989 + 36] = 0
                                mem[_16989 + 68] = _15402
                                mem[_16989 + 100] = this.address
                                mem[_16989 + 132] = 128
                                mem[_16989 + 164] = mem[_16989]
                                s = 0
                                while s < mem[_16989]:
                                    mem[s + _16989 + 196] = mem[s + _16989 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16989]) > mem[_16989]:
                                    mem[mem[_16989] + _16989 + 196] = 0
                                require ext_code.size(address(_16988))
                                call address(_16988).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15402, address(this.address), 128, mem[_16989], mem[_16989 + 196 len ceil32(mem[_16989])]
                        else:
                            require idx + 1 < mem[_10563]
                            _15809 = mem[(32 * idx + 1) + _10563 + 32]
                            require idx < mem[_10564]
                            require idx < mem[_10563]
                            if not mem[(32 * idx) + _10564 + 32]:
                                _17711 = mem[(32 * idx) + _10563 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15402
                                mem[mem[64] + 68] = address(_15809)
                                require ext_code.size(address(_17711))
                                call address(_17711).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15402, address(_15809)
                            else:
                                _17713 = mem[(32 * idx) + _10563 + 32]
                                _17714 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17714 + 36] = 0
                                mem[_17714 + 68] = _15402
                                mem[_17714 + 100] = address(_15809)
                                mem[_17714 + 132] = 128
                                mem[_17714 + 164] = mem[_17714]
                                s = 0
                                while s < mem[_17714]:
                                    mem[s + _17714 + 196] = mem[s + _17714 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17714]) > mem[_17714]:
                                    mem[mem[_17714] + _17714 + 196] = 0
                                require ext_code.size(address(_17713))
                                call address(_17713).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15402, address(_15809), 128, mem[_17714], mem[_17714 + 196 len ceil32(mem[_17714])]
                    else:
                        if idx >= mem[_10562] - 2:
                            require idx < mem[_10564]
                            require idx < mem[_10563]
                            if not mem[(32 * idx) + _10564 + 32]:
                                _16992 = mem[(32 * idx) + _10563 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15402
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_16992))
                                call address(_16992).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15402, 0, this.address
                            else:
                                _16994 = mem[(32 * idx) + _10563 + 32]
                                _16995 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_16995 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_16995 + 36] = _15402
                                mem[_16995 + 68] = 0
                                mem[_16995 + 100] = this.address
                                mem[_16995 + 132] = 128
                                mem[_16995 + 164] = mem[_16995]
                                s = 0
                                while s < mem[_16995]:
                                    mem[s + _16995 + 196] = mem[s + _16995 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_16995]) > mem[_16995]:
                                    mem[mem[_16995] + _16995 + 196] = 0
                                require ext_code.size(address(_16994))
                                call address(_16994).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15402, 0, address(this.address), 128, mem[_16995], mem[_16995 + 196 len ceil32(mem[_16995])]
                        else:
                            require idx + 1 < mem[_10563]
                            _15811 = mem[(32 * idx + 1) + _10563 + 32]
                            require idx < mem[_10564]
                            require idx < mem[_10563]
                            if not mem[(32 * idx) + _10564 + 32]:
                                _17716 = mem[(32 * idx) + _10563 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15402
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15811)
                                require ext_code.size(address(_17716))
                                call address(_17716).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15402, 0, address(_15811)
                            else:
                                _17718 = mem[(32 * idx) + _10563 + 32]
                                _17719 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17719 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17719 + 36] = _15402
                                mem[_17719 + 68] = 0
                                mem[_17719 + 100] = address(_15811)
                                mem[_17719 + 132] = 128
                                mem[_17719 + 164] = mem[_17719]
                                s = 0
                                while s < mem[_17719]:
                                    mem[s + _17719 + 196] = mem[s + _17719 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17719]) > mem[_17719]:
                                    mem[mem[_17719] + _17719 + 196] = 0
                                require ext_code.size(address(_17718))
                                call address(_17718).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15402, 0, address(_15811), 128, mem[_17719], mem[_17719 + 196 len ceil32(mem[_17719])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _15291 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _15291] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15291]
            return 32, mem[mem[64] + 32 len (32 * _15291) + 32]
        require return_data.size >= 32
        require mem[_10488 + 32] == bool(mem[_10488 + 32])
        if not mem[_10488 + 32]:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        _10818 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_10818] = ('cd', 68).length
        mem[_10818 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_10818 + (32 * ('cd', 68).length) + 32] = 0
        _10819 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_10819] = ('cd', 100).length
        mem[_10819 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_10819 + (32 * ('cd', 100).length) + 32] = 0
        _10820 = mem[64]
        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
        mem[_10820] = ('cd', 164).length
        mem[_10820 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[_10820 + (32 * ('cd', 164).length) + 32] = 0
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[_10818]
            require idx + 1 < mem[_10818]
            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * idx) + _10818 + 44 len 20] < mem[(32 * idx + 1) + _10818 + 44 len 20]:
                _15403 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _10818 + 44 len 20] == mem[(32 * idx) + _10818 + 44 len 20]:
                    if idx >= mem[_10818] - 2:
                        require idx < mem[_10820]
                        require idx < mem[_10819]
                        if not mem[(32 * idx) + _10820 + 32]:
                            _16999 = mem[(32 * idx) + _10819 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15403
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_16999))
                            call address(_16999).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15403, this.address
                        else:
                            _17001 = mem[(32 * idx) + _10819 + 32]
                            _17002 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17002 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17002 + 36] = 0
                            mem[_17002 + 68] = _15403
                            mem[_17002 + 100] = this.address
                            mem[_17002 + 132] = 128
                            mem[_17002 + 164] = mem[_17002]
                            s = 0
                            while s < mem[_17002]:
                                mem[s + _17002 + 196] = mem[s + _17002 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17002]) > mem[_17002]:
                                mem[mem[_17002] + _17002 + 196] = 0
                            require ext_code.size(address(_17001))
                            call address(_17001).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15403, address(this.address), 128, mem[_17002], mem[_17002 + 196 len ceil32(mem[_17002])]
                    else:
                        require idx + 1 < mem[_10819]
                        _15813 = mem[(32 * idx + 1) + _10819 + 32]
                        require idx < mem[_10820]
                        require idx < mem[_10819]
                        if not mem[(32 * idx) + _10820 + 32]:
                            _17721 = mem[(32 * idx) + _10819 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15403
                            mem[mem[64] + 68] = address(_15813)
                            require ext_code.size(address(_17721))
                            call address(_17721).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15403, address(_15813)
                        else:
                            _17723 = mem[(32 * idx) + _10819 + 32]
                            _17724 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17724 + 36] = 0
                            mem[_17724 + 68] = _15403
                            mem[_17724 + 100] = address(_15813)
                            mem[_17724 + 132] = 128
                            mem[_17724 + 164] = mem[_17724]
                            s = 0
                            while s < mem[_17724]:
                                mem[s + _17724 + 196] = mem[s + _17724 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17724]) > mem[_17724]:
                                mem[mem[_17724] + _17724 + 196] = 0
                            require ext_code.size(address(_17723))
                            call address(_17723).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15403, address(_15813), 128, mem[_17724], mem[_17724 + 196 len ceil32(mem[_17724])]
                else:
                    if idx >= mem[_10818] - 2:
                        require idx < mem[_10820]
                        require idx < mem[_10819]
                        if not mem[(32 * idx) + _10820 + 32]:
                            _17005 = mem[(32 * idx) + _10819 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15403
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17005))
                            call address(_17005).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15403, 0, this.address
                        else:
                            _17007 = mem[(32 * idx) + _10819 + 32]
                            _17008 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17008 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17008 + 36] = _15403
                            mem[_17008 + 68] = 0
                            mem[_17008 + 100] = this.address
                            mem[_17008 + 132] = 128
                            mem[_17008 + 164] = mem[_17008]
                            s = 0
                            while s < mem[_17008]:
                                mem[s + _17008 + 196] = mem[s + _17008 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17008]) > mem[_17008]:
                                mem[mem[_17008] + _17008 + 196] = 0
                            require ext_code.size(address(_17007))
                            call address(_17007).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15403, 0, address(this.address), 128, mem[_17008], mem[_17008 + 196 len ceil32(mem[_17008])]
                    else:
                        require idx + 1 < mem[_10819]
                        _15815 = mem[(32 * idx + 1) + _10819 + 32]
                        require idx < mem[_10820]
                        require idx < mem[_10819]
                        if not mem[(32 * idx) + _10820 + 32]:
                            _17726 = mem[(32 * idx) + _10819 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15403
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_15815)
                            require ext_code.size(address(_17726))
                            call address(_17726).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15403, 0, address(_15815)
                        else:
                            _17728 = mem[(32 * idx) + _10819 + 32]
                            _17729 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17729 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17729 + 36] = _15403
                            mem[_17729 + 68] = 0
                            mem[_17729 + 100] = address(_15815)
                            mem[_17729 + 132] = 128
                            mem[_17729 + 164] = mem[_17729]
                            s = 0
                            while s < mem[_17729]:
                                mem[s + _17729 + 196] = mem[s + _17729 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17729]) > mem[_17729]:
                                mem[mem[_17729] + _17729 + 196] = 0
                            require ext_code.size(address(_17728))
                            call address(_17728).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15403, 0, address(_15815), 128, mem[_17729], mem[_17729 + 196 len ceil32(mem[_17729])]
            else:
                _15404 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _10818 + 44 len 20] == mem[(32 * idx + 1) + _10818 + 44 len 20]:
                    if idx >= mem[_10818] - 2:
                        require idx < mem[_10820]
                        require idx < mem[_10819]
                        if not mem[(32 * idx) + _10820 + 32]:
                            _17011 = mem[(32 * idx) + _10819 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15404
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17011))
                            call address(_17011).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15404, this.address
                        else:
                            _17013 = mem[(32 * idx) + _10819 + 32]
                            _17014 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17014 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17014 + 36] = 0
                            mem[_17014 + 68] = _15404
                            mem[_17014 + 100] = this.address
                            mem[_17014 + 132] = 128
                            mem[_17014 + 164] = mem[_17014]
                            s = 0
                            while s < mem[_17014]:
                                mem[s + _17014 + 196] = mem[s + _17014 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17014]) > mem[_17014]:
                                mem[mem[_17014] + _17014 + 196] = 0
                            require ext_code.size(address(_17013))
                            call address(_17013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15404, address(this.address), 128, mem[_17014], mem[_17014 + 196 len ceil32(mem[_17014])]
                    else:
                        require idx + 1 < mem[_10819]
                        _15817 = mem[(32 * idx + 1) + _10819 + 32]
                        require idx < mem[_10820]
                        require idx < mem[_10819]
                        if not mem[(32 * idx) + _10820 + 32]:
                            _17731 = mem[(32 * idx) + _10819 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15404
                            mem[mem[64] + 68] = address(_15817)
                            require ext_code.size(address(_17731))
                            call address(_17731).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15404, address(_15817)
                        else:
                            _17733 = mem[(32 * idx) + _10819 + 32]
                            _17734 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17734 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17734 + 36] = 0
                            mem[_17734 + 68] = _15404
                            mem[_17734 + 100] = address(_15817)
                            mem[_17734 + 132] = 128
                            mem[_17734 + 164] = mem[_17734]
                            s = 0
                            while s < mem[_17734]:
                                mem[s + _17734 + 196] = mem[s + _17734 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17734]) > mem[_17734]:
                                mem[mem[_17734] + _17734 + 196] = 0
                            require ext_code.size(address(_17733))
                            call address(_17733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15404, address(_15817), 128, mem[_17734], mem[_17734 + 196 len ceil32(mem[_17734])]
                else:
                    if idx >= mem[_10818] - 2:
                        require idx < mem[_10820]
                        require idx < mem[_10819]
                        if not mem[(32 * idx) + _10820 + 32]:
                            _17017 = mem[(32 * idx) + _10819 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15404
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17017))
                            call address(_17017).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15404, 0, this.address
                        else:
                            _17019 = mem[(32 * idx) + _10819 + 32]
                            _17020 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17020 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17020 + 36] = _15404
                            mem[_17020 + 68] = 0
                            mem[_17020 + 100] = this.address
                            mem[_17020 + 132] = 128
                            mem[_17020 + 164] = mem[_17020]
                            s = 0
                            while s < mem[_17020]:
                                mem[s + _17020 + 196] = mem[s + _17020 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17020]) > mem[_17020]:
                                mem[mem[_17020] + _17020 + 196] = 0
                            require ext_code.size(address(_17019))
                            call address(_17019).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15404, 0, address(this.address), 128, mem[_17020], mem[_17020 + 196 len ceil32(mem[_17020])]
                    else:
                        require idx + 1 < mem[_10819]
                        _15819 = mem[(32 * idx + 1) + _10819 + 32]
                        require idx < mem[_10820]
                        require idx < mem[_10819]
                        if not mem[(32 * idx) + _10820 + 32]:
                            _17736 = mem[(32 * idx) + _10819 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15404
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_15819)
                            require ext_code.size(address(_17736))
                            call address(_17736).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15404, 0, address(_15819)
                        else:
                            _17738 = mem[(32 * idx) + _10819 + 32]
                            _17739 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17739 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17739 + 36] = _15404
                            mem[_17739 + 68] = 0
                            mem[_17739 + 100] = address(_15819)
                            mem[_17739 + 132] = 128
                            mem[_17739 + 164] = mem[_17739]
                            s = 0
                            while s < mem[_17739]:
                                mem[s + _17739 + 196] = mem[s + _17739 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17739]) > mem[_17739]:
                                mem[mem[_17739] + _17739 + 196] = 0
                            require ext_code.size(address(_17738))
                            call address(_17738).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15404, 0, address(_15819), 128, mem[_17739], mem[_17739 + 196 len ceil32(mem[_17739])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _15292 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len 32 * _15292] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15292]
        return 32, mem[mem[64] + 32 len (32 * _15292) + 32]
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = ('cd', 68).length
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] = ('cd', 132).length
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = ('cd', 68).length
    mem[64] = (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + 224
    if not ('cd', 68).length:
        require 0 < ('cd', 68).length
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = cd[4]
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[(32 * ('cd', 68).length) + 128]
            require idx < mem[96]
            _5276 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _5289 = mem[(32 * idx + 1) + 128]
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                _5337 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_5337] == mem[_5337 + 18 len 14]
                require mem[_5337 + 32] == mem[_5337 + 50 len 14]
                require mem[_5337 + 64] == mem[_5337 + 92 len 4]
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if address(_5276) == address(_5276):
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_5337 + 18 len 14]
                        if 1000 * mem[_5337 + 18 len 14] / mem[_5337 + 18 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_5337 + 18 len 14] < 1000 * mem[_5337 + 18 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_5337 + 18 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5337 + 18 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_5337 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5337 + 18 len 14] / mem[_5337 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 18 len 14]) < 1000 * mem[_5337 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 18 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5337 + 50 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_5337 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5337 + 18 len 14] / mem[_5337 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 18 len 14]) < 1000 * mem[_5337 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 18 len 14])
                else:
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_5337 + 50 len 14]
                        if 1000 * mem[_5337 + 50 len 14] / mem[_5337 + 50 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_5337 + 50 len 14] < 1000 * mem[_5337 + 50 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_5337 + 50 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5337 + 50 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_5337 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5337 + 50 len 14] / mem[_5337 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 50 len 14]) < 1000 * mem[_5337 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 50 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5337 + 18 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_5337 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5337 + 50 len 14] / mem[_5337 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 50 len 14]) < 1000 * mem[_5337 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5337 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5337 + 50 len 14])
            else:
                _5338 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_5338] == mem[_5338 + 18 len 14]
                require mem[_5338 + 32] == mem[_5338 + 50 len 14]
                require mem[_5338 + 64] == mem[_5338 + 92 len 4]
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if address(_5276) == address(_5289):
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_5338 + 18 len 14]
                        if 1000 * mem[_5338 + 18 len 14] / mem[_5338 + 18 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_5338 + 18 len 14] < 1000 * mem[_5338 + 18 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_5338 + 18 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5338 + 18 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_5338 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5338 + 18 len 14] / mem[_5338 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 18 len 14]) < 1000 * mem[_5338 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 18 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5338 + 50 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_5338 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5338 + 18 len 14] / mem[_5338 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 18 len 14]) < 1000 * mem[_5338 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 18 len 14])
                else:
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_5338 + 50 len 14]
                        if 1000 * mem[_5338 + 50 len 14] / mem[_5338 + 50 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_5338 + 50 len 14] < 1000 * mem[_5338 + 50 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_5338 + 50 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5338 + 50 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_5338 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5338 + 50 len 14] / mem[_5338 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 50 len 14]) < 1000 * mem[_5338 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 50 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5338 + 18 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_5338 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_5338 + 50 len 14] / mem[_5338 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 50 len 14]) < 1000 * mem[_5338 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5338 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5338 + 50 len 14])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < cd[36]:
            revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
        require 0 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        require mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
            revert with 0, 'Sorry bruh'
        require 0 < ('cd', 68).length
        require ('cd', 68)[0] == address(('cd', 68)[0])
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require 0 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        _5375 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
        _5379 = mem[64]
        mem[mem[64] + 36] = address(('cd', 100)[0])
        mem[mem[64] + 68] = _5375
        _5467 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_5467 + 32 len 4] = unknown_0xa9059cbb(?????)
        _5475 = mem[_5467]
        mem[_5379 + 100 len ceil32(mem[_5467])] = mem[_5467 + 32 len ceil32(mem[_5467])]
        if ceil32(_5475) <= _5475:
            call address(('cd', 68)[0]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _5475 + _5379 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if not mem[96]:
                    _10565 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                    mem[_10565] = ('cd', 68).length
                    mem[_10565 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[_10565 + (32 * ('cd', 68).length) + 32] = 0
                    _10566 = mem[64]
                    mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                    mem[_10566] = ('cd', 100).length
                    mem[_10566 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                    mem[_10566 + (32 * ('cd', 100).length) + 32] = 0
                    _10567 = mem[64]
                    mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                    mem[_10567] = ('cd', 164).length
                    mem[_10567 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_10567 + (32 * ('cd', 164).length) + 32] = 0
                    idx = 0
                    while idx < ('cd', 68).length - 1:
                        require idx < mem[_10565]
                        require idx + 1 < mem[_10565]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        if mem[(32 * idx) + _10565 + 44 len 20] < mem[(32 * idx + 1) + _10565 + 44 len 20]:
                            _15405 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _10565 + 44 len 20] == mem[(32 * idx) + _10565 + 44 len 20]:
                                if idx >= mem[_10565] - 2:
                                    require idx < mem[_10567]
                                    require idx < mem[_10566]
                                    if not mem[(32 * idx) + _10567 + 32]:
                                        _17024 = mem[(32 * idx) + _10566 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15405
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_17024))
                                        call address(_17024).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15405, this.address
                                    else:
                                        _17026 = mem[(32 * idx) + _10566 + 32]
                                        _17027 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17027 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17027 + 36] = 0
                                        mem[_17027 + 68] = _15405
                                        mem[_17027 + 100] = this.address
                                        mem[_17027 + 132] = 128
                                        mem[_17027 + 164] = mem[_17027]
                                        s = 0
                                        while s < mem[_17027]:
                                            mem[s + _17027 + 196] = mem[s + _17027 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17027]) > mem[_17027]:
                                            mem[mem[_17027] + _17027 + 196] = 0
                                        require ext_code.size(address(_17026))
                                        call address(_17026).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15405, address(this.address), 128, mem[_17027], mem[_17027 + 196 len ceil32(mem[_17027])]
                                else:
                                    require idx + 1 < mem[_10566]
                                    _15821 = mem[(32 * idx + 1) + _10566 + 32]
                                    require idx < mem[_10567]
                                    require idx < mem[_10566]
                                    if not mem[(32 * idx) + _10567 + 32]:
                                        _17741 = mem[(32 * idx) + _10566 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15405
                                        mem[mem[64] + 68] = address(_15821)
                                        require ext_code.size(address(_17741))
                                        call address(_17741).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15405, address(_15821)
                                    else:
                                        _17743 = mem[(32 * idx) + _10566 + 32]
                                        _17744 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17744 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17744 + 36] = 0
                                        mem[_17744 + 68] = _15405
                                        mem[_17744 + 100] = address(_15821)
                                        mem[_17744 + 132] = 128
                                        mem[_17744 + 164] = mem[_17744]
                                        s = 0
                                        while s < mem[_17744]:
                                            mem[s + _17744 + 196] = mem[s + _17744 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17744]) > mem[_17744]:
                                            mem[mem[_17744] + _17744 + 196] = 0
                                        require ext_code.size(address(_17743))
                                        call address(_17743).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15405, address(_15821), 128, mem[_17744], mem[_17744 + 196 len ceil32(mem[_17744])]
                            else:
                                if idx >= mem[_10565] - 2:
                                    require idx < mem[_10567]
                                    require idx < mem[_10566]
                                    if not mem[(32 * idx) + _10567 + 32]:
                                        _17030 = mem[(32 * idx) + _10566 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15405
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_17030))
                                        call address(_17030).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15405, 0, this.address
                                    else:
                                        _17032 = mem[(32 * idx) + _10566 + 32]
                                        _17033 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17033 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17033 + 36] = _15405
                                        mem[_17033 + 68] = 0
                                        mem[_17033 + 100] = this.address
                                        mem[_17033 + 132] = 128
                                        mem[_17033 + 164] = mem[_17033]
                                        s = 0
                                        while s < mem[_17033]:
                                            mem[s + _17033 + 196] = mem[s + _17033 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17033]) > mem[_17033]:
                                            mem[mem[_17033] + _17033 + 196] = 0
                                        require ext_code.size(address(_17032))
                                        call address(_17032).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15405, 0, address(this.address), 128, mem[_17033], mem[_17033 + 196 len ceil32(mem[_17033])]
                                else:
                                    require idx + 1 < mem[_10566]
                                    _15823 = mem[(32 * idx + 1) + _10566 + 32]
                                    require idx < mem[_10567]
                                    require idx < mem[_10566]
                                    if not mem[(32 * idx) + _10567 + 32]:
                                        _17746 = mem[(32 * idx) + _10566 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15405
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_15823)
                                        require ext_code.size(address(_17746))
                                        call address(_17746).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15405, 0, address(_15823)
                                    else:
                                        _17748 = mem[(32 * idx) + _10566 + 32]
                                        _17749 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17749 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17749 + 36] = _15405
                                        mem[_17749 + 68] = 0
                                        mem[_17749 + 100] = address(_15823)
                                        mem[_17749 + 132] = 128
                                        mem[_17749 + 164] = mem[_17749]
                                        s = 0
                                        while s < mem[_17749]:
                                            mem[s + _17749 + 196] = mem[s + _17749 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17749]) > mem[_17749]:
                                            mem[mem[_17749] + _17749 + 196] = 0
                                        require ext_code.size(address(_17748))
                                        call address(_17748).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15405, 0, address(_15823), 128, mem[_17749], mem[_17749 + 196 len ceil32(mem[_17749])]
                        else:
                            _15406 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _10565 + 44 len 20] == mem[(32 * idx + 1) + _10565 + 44 len 20]:
                                if idx >= mem[_10565] - 2:
                                    require idx < mem[_10567]
                                    require idx < mem[_10566]
                                    if not mem[(32 * idx) + _10567 + 32]:
                                        _17036 = mem[(32 * idx) + _10566 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15406
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_17036))
                                        call address(_17036).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15406, this.address
                                    else:
                                        _17038 = mem[(32 * idx) + _10566 + 32]
                                        _17039 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17039 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17039 + 36] = 0
                                        mem[_17039 + 68] = _15406
                                        mem[_17039 + 100] = this.address
                                        mem[_17039 + 132] = 128
                                        mem[_17039 + 164] = mem[_17039]
                                        s = 0
                                        while s < mem[_17039]:
                                            mem[s + _17039 + 196] = mem[s + _17039 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17039]) > mem[_17039]:
                                            mem[mem[_17039] + _17039 + 196] = 0
                                        require ext_code.size(address(_17038))
                                        call address(_17038).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15406, address(this.address), 128, mem[_17039], mem[_17039 + 196 len ceil32(mem[_17039])]
                                else:
                                    require idx + 1 < mem[_10566]
                                    _15825 = mem[(32 * idx + 1) + _10566 + 32]
                                    require idx < mem[_10567]
                                    require idx < mem[_10566]
                                    if not mem[(32 * idx) + _10567 + 32]:
                                        _17751 = mem[(32 * idx) + _10566 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _15406
                                        mem[mem[64] + 68] = address(_15825)
                                        require ext_code.size(address(_17751))
                                        call address(_17751).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _15406, address(_15825)
                                    else:
                                        _17753 = mem[(32 * idx) + _10566 + 32]
                                        _17754 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17754 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17754 + 36] = 0
                                        mem[_17754 + 68] = _15406
                                        mem[_17754 + 100] = address(_15825)
                                        mem[_17754 + 132] = 128
                                        mem[_17754 + 164] = mem[_17754]
                                        s = 0
                                        while s < mem[_17754]:
                                            mem[s + _17754 + 196] = mem[s + _17754 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17754]) > mem[_17754]:
                                            mem[mem[_17754] + _17754 + 196] = 0
                                        require ext_code.size(address(_17753))
                                        call address(_17753).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _15406, address(_15825), 128, mem[_17754], mem[_17754 + 196 len ceil32(mem[_17754])]
                            else:
                                if idx >= mem[_10565] - 2:
                                    require idx < mem[_10567]
                                    require idx < mem[_10566]
                                    if not mem[(32 * idx) + _10567 + 32]:
                                        _17042 = mem[(32 * idx) + _10566 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15406
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_17042))
                                        call address(_17042).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15406, 0, this.address
                                    else:
                                        _17044 = mem[(32 * idx) + _10566 + 32]
                                        _17045 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17045 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17045 + 36] = _15406
                                        mem[_17045 + 68] = 0
                                        mem[_17045 + 100] = this.address
                                        mem[_17045 + 132] = 128
                                        mem[_17045 + 164] = mem[_17045]
                                        s = 0
                                        while s < mem[_17045]:
                                            mem[s + _17045 + 196] = mem[s + _17045 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17045]) > mem[_17045]:
                                            mem[mem[_17045] + _17045 + 196] = 0
                                        require ext_code.size(address(_17044))
                                        call address(_17044).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15406, 0, address(this.address), 128, mem[_17045], mem[_17045 + 196 len ceil32(mem[_17045])]
                                else:
                                    require idx + 1 < mem[_10566]
                                    _15827 = mem[(32 * idx + 1) + _10566 + 32]
                                    require idx < mem[_10567]
                                    require idx < mem[_10566]
                                    if not mem[(32 * idx) + _10567 + 32]:
                                        _17756 = mem[(32 * idx) + _10566 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _15406
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_15827)
                                        require ext_code.size(address(_17756))
                                        call address(_17756).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _15406, 0, address(_15827)
                                    else:
                                        _17758 = mem[(32 * idx) + _10566 + 32]
                                        _17759 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_17759 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_17759 + 36] = _15406
                                        mem[_17759 + 68] = 0
                                        mem[_17759 + 100] = address(_15827)
                                        mem[_17759 + 132] = 128
                                        mem[_17759 + 164] = mem[_17759]
                                        s = 0
                                        while s < mem[_17759]:
                                            mem[s + _17759 + 196] = mem[s + _17759 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_17759]) > mem[_17759]:
                                            mem[mem[_17759] + _17759 + 196] = 0
                                        require ext_code.size(address(_17758))
                                        call address(_17758).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _15406, 0, address(_15827), 128, mem[_17759], mem[_17759 + 196 len ceil32(mem[_17759])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 32
                    _15293 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 64 len 32 * _15293] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15293]
                    return 32, mem[mem[64] + 32 len (32 * _15293) + 32]
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                _10823 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_10823] = ('cd', 68).length
                mem[_10823 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_10823 + (32 * ('cd', 68).length) + 32] = 0
                _10824 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_10824] = ('cd', 100).length
                mem[_10824 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_10824 + (32 * ('cd', 100).length) + 32] = 0
                _10825 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_10825] = ('cd', 164).length
                mem[_10825 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_10825 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_10823]
                    require idx + 1 < mem[_10823]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _10823 + 44 len 20] < mem[(32 * idx + 1) + _10823 + 44 len 20]:
                        _15407 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10823 + 44 len 20] == mem[(32 * idx) + _10823 + 44 len 20]:
                            if idx >= mem[_10823] - 2:
                                require idx < mem[_10825]
                                require idx < mem[_10824]
                                if not mem[(32 * idx) + _10825 + 32]:
                                    _17049 = mem[(32 * idx) + _10824 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15407
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17049))
                                    call address(_17049).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15407, this.address
                                else:
                                    _17051 = mem[(32 * idx) + _10824 + 32]
                                    _17052 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17052 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17052 + 36] = 0
                                    mem[_17052 + 68] = _15407
                                    mem[_17052 + 100] = this.address
                                    mem[_17052 + 132] = 128
                                    mem[_17052 + 164] = mem[_17052]
                                    s = 0
                                    while s < mem[_17052]:
                                        mem[s + _17052 + 196] = mem[s + _17052 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17052]) > mem[_17052]:
                                        mem[mem[_17052] + _17052 + 196] = 0
                                    require ext_code.size(address(_17051))
                                    call address(_17051).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15407, address(this.address), 128, mem[_17052], mem[_17052 + 196 len ceil32(mem[_17052])]
                            else:
                                require idx + 1 < mem[_10824]
                                _15829 = mem[(32 * idx + 1) + _10824 + 32]
                                require idx < mem[_10825]
                                require idx < mem[_10824]
                                if not mem[(32 * idx) + _10825 + 32]:
                                    _17761 = mem[(32 * idx) + _10824 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15407
                                    mem[mem[64] + 68] = address(_15829)
                                    require ext_code.size(address(_17761))
                                    call address(_17761).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15407, address(_15829)
                                else:
                                    _17763 = mem[(32 * idx) + _10824 + 32]
                                    _17764 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17764 + 36] = 0
                                    mem[_17764 + 68] = _15407
                                    mem[_17764 + 100] = address(_15829)
                                    mem[_17764 + 132] = 128
                                    mem[_17764 + 164] = mem[_17764]
                                    s = 0
                                    while s < mem[_17764]:
                                        mem[s + _17764 + 196] = mem[s + _17764 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17764]) > mem[_17764]:
                                        mem[mem[_17764] + _17764 + 196] = 0
                                    require ext_code.size(address(_17763))
                                    call address(_17763).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15407, address(_15829), 128, mem[_17764], mem[_17764 + 196 len ceil32(mem[_17764])]
                        else:
                            if idx >= mem[_10823] - 2:
                                require idx < mem[_10825]
                                require idx < mem[_10824]
                                if not mem[(32 * idx) + _10825 + 32]:
                                    _17055 = mem[(32 * idx) + _10824 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15407
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17055))
                                    call address(_17055).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15407, 0, this.address
                                else:
                                    _17057 = mem[(32 * idx) + _10824 + 32]
                                    _17058 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17058 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17058 + 36] = _15407
                                    mem[_17058 + 68] = 0
                                    mem[_17058 + 100] = this.address
                                    mem[_17058 + 132] = 128
                                    mem[_17058 + 164] = mem[_17058]
                                    s = 0
                                    while s < mem[_17058]:
                                        mem[s + _17058 + 196] = mem[s + _17058 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17058]) > mem[_17058]:
                                        mem[mem[_17058] + _17058 + 196] = 0
                                    require ext_code.size(address(_17057))
                                    call address(_17057).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15407, 0, address(this.address), 128, mem[_17058], mem[_17058 + 196 len ceil32(mem[_17058])]
                            else:
                                require idx + 1 < mem[_10824]
                                _15831 = mem[(32 * idx + 1) + _10824 + 32]
                                require idx < mem[_10825]
                                require idx < mem[_10824]
                                if not mem[(32 * idx) + _10825 + 32]:
                                    _17766 = mem[(32 * idx) + _10824 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15407
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15831)
                                    require ext_code.size(address(_17766))
                                    call address(_17766).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15407, 0, address(_15831)
                                else:
                                    _17768 = mem[(32 * idx) + _10824 + 32]
                                    _17769 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17769 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17769 + 36] = _15407
                                    mem[_17769 + 68] = 0
                                    mem[_17769 + 100] = address(_15831)
                                    mem[_17769 + 132] = 128
                                    mem[_17769 + 164] = mem[_17769]
                                    s = 0
                                    while s < mem[_17769]:
                                        mem[s + _17769 + 196] = mem[s + _17769 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17769]) > mem[_17769]:
                                        mem[mem[_17769] + _17769 + 196] = 0
                                    require ext_code.size(address(_17768))
                                    call address(_17768).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15407, 0, address(_15831), 128, mem[_17769], mem[_17769 + 196 len ceil32(mem[_17769])]
                    else:
                        _15408 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10823 + 44 len 20] == mem[(32 * idx + 1) + _10823 + 44 len 20]:
                            if idx >= mem[_10823] - 2:
                                require idx < mem[_10825]
                                require idx < mem[_10824]
                                if not mem[(32 * idx) + _10825 + 32]:
                                    _17061 = mem[(32 * idx) + _10824 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15408
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17061))
                                    call address(_17061).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15408, this.address
                                else:
                                    _17063 = mem[(32 * idx) + _10824 + 32]
                                    _17064 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17064 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17064 + 36] = 0
                                    mem[_17064 + 68] = _15408
                                    mem[_17064 + 100] = this.address
                                    mem[_17064 + 132] = 128
                                    mem[_17064 + 164] = mem[_17064]
                                    s = 0
                                    while s < mem[_17064]:
                                        mem[s + _17064 + 196] = mem[s + _17064 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17064]) > mem[_17064]:
                                        mem[mem[_17064] + _17064 + 196] = 0
                                    require ext_code.size(address(_17063))
                                    call address(_17063).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15408, address(this.address), 128, mem[_17064], mem[_17064 + 196 len ceil32(mem[_17064])]
                            else:
                                require idx + 1 < mem[_10824]
                                _15833 = mem[(32 * idx + 1) + _10824 + 32]
                                require idx < mem[_10825]
                                require idx < mem[_10824]
                                if not mem[(32 * idx) + _10825 + 32]:
                                    _17771 = mem[(32 * idx) + _10824 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15408
                                    mem[mem[64] + 68] = address(_15833)
                                    require ext_code.size(address(_17771))
                                    call address(_17771).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15408, address(_15833)
                                else:
                                    _17773 = mem[(32 * idx) + _10824 + 32]
                                    _17774 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17774 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17774 + 36] = 0
                                    mem[_17774 + 68] = _15408
                                    mem[_17774 + 100] = address(_15833)
                                    mem[_17774 + 132] = 128
                                    mem[_17774 + 164] = mem[_17774]
                                    s = 0
                                    while s < mem[_17774]:
                                        mem[s + _17774 + 196] = mem[s + _17774 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17774]) > mem[_17774]:
                                        mem[mem[_17774] + _17774 + 196] = 0
                                    require ext_code.size(address(_17773))
                                    call address(_17773).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15408, address(_15833), 128, mem[_17774], mem[_17774 + 196 len ceil32(mem[_17774])]
                        else:
                            if idx >= mem[_10823] - 2:
                                require idx < mem[_10825]
                                require idx < mem[_10824]
                                if not mem[(32 * idx) + _10825 + 32]:
                                    _17067 = mem[(32 * idx) + _10824 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15408
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17067))
                                    call address(_17067).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15408, 0, this.address
                                else:
                                    _17069 = mem[(32 * idx) + _10824 + 32]
                                    _17070 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17070 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17070 + 36] = _15408
                                    mem[_17070 + 68] = 0
                                    mem[_17070 + 100] = this.address
                                    mem[_17070 + 132] = 128
                                    mem[_17070 + 164] = mem[_17070]
                                    s = 0
                                    while s < mem[_17070]:
                                        mem[s + _17070 + 196] = mem[s + _17070 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17070]) > mem[_17070]:
                                        mem[mem[_17070] + _17070 + 196] = 0
                                    require ext_code.size(address(_17069))
                                    call address(_17069).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15408, 0, address(this.address), 128, mem[_17070], mem[_17070 + 196 len ceil32(mem[_17070])]
                            else:
                                require idx + 1 < mem[_10824]
                                _15835 = mem[(32 * idx + 1) + _10824 + 32]
                                require idx < mem[_10825]
                                require idx < mem[_10824]
                                if not mem[(32 * idx) + _10825 + 32]:
                                    _17776 = mem[(32 * idx) + _10824 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15408
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15835)
                                    require ext_code.size(address(_17776))
                                    call address(_17776).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15408, 0, address(_15835)
                                else:
                                    _17778 = mem[(32 * idx) + _10824 + 32]
                                    _17779 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17779 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17779 + 36] = _15408
                                    mem[_17779 + 68] = 0
                                    mem[_17779 + 100] = address(_15835)
                                    mem[_17779 + 132] = 128
                                    mem[_17779 + 164] = mem[_17779]
                                    s = 0
                                    while s < mem[_17779]:
                                        mem[s + _17779 + 196] = mem[s + _17779 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17779]) > mem[_17779]:
                                        mem[mem[_17779] + _17779 + 196] = 0
                                    require ext_code.size(address(_17778))
                                    call address(_17778).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15408, 0, address(_15835), 128, mem[_17779], mem[_17779 + 196 len ceil32(mem[_17779])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _15294 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _15294] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15294]
                return 32, mem[mem[64] + 32 len (32 * _15294) + 32]
            _10489 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_10489] = return_data.size
            mem[_10489 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if not return_data.size:
                _10568 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_10568] = ('cd', 68).length
                mem[_10568 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_10568 + (32 * ('cd', 68).length) + 32] = 0
                _10569 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_10569] = ('cd', 100).length
                mem[_10569 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_10569 + (32 * ('cd', 100).length) + 32] = 0
                _10570 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_10570] = ('cd', 164).length
                mem[_10570 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_10570 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_10568]
                    require idx + 1 < mem[_10568]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _10568 + 44 len 20] < mem[(32 * idx + 1) + _10568 + 44 len 20]:
                        _15409 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10568 + 44 len 20] == mem[(32 * idx) + _10568 + 44 len 20]:
                            if idx >= mem[_10568] - 2:
                                require idx < mem[_10570]
                                require idx < mem[_10569]
                                if not mem[(32 * idx) + _10570 + 32]:
                                    _17074 = mem[(32 * idx) + _10569 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15409
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17074))
                                    call address(_17074).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15409, this.address
                                else:
                                    _17076 = mem[(32 * idx) + _10569 + 32]
                                    _17077 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17077 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17077 + 36] = 0
                                    mem[_17077 + 68] = _15409
                                    mem[_17077 + 100] = this.address
                                    mem[_17077 + 132] = 128
                                    mem[_17077 + 164] = mem[_17077]
                                    s = 0
                                    while s < mem[_17077]:
                                        mem[s + _17077 + 196] = mem[s + _17077 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17077]) > mem[_17077]:
                                        mem[mem[_17077] + _17077 + 196] = 0
                                    require ext_code.size(address(_17076))
                                    call address(_17076).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15409, address(this.address), 128, mem[_17077], mem[_17077 + 196 len ceil32(mem[_17077])]
                            else:
                                require idx + 1 < mem[_10569]
                                _15837 = mem[(32 * idx + 1) + _10569 + 32]
                                require idx < mem[_10570]
                                require idx < mem[_10569]
                                if not mem[(32 * idx) + _10570 + 32]:
                                    _17781 = mem[(32 * idx) + _10569 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15409
                                    mem[mem[64] + 68] = address(_15837)
                                    require ext_code.size(address(_17781))
                                    call address(_17781).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15409, address(_15837)
                                else:
                                    _17783 = mem[(32 * idx) + _10569 + 32]
                                    _17784 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17784 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17784 + 36] = 0
                                    mem[_17784 + 68] = _15409
                                    mem[_17784 + 100] = address(_15837)
                                    mem[_17784 + 132] = 128
                                    mem[_17784 + 164] = mem[_17784]
                                    s = 0
                                    while s < mem[_17784]:
                                        mem[s + _17784 + 196] = mem[s + _17784 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17784]) > mem[_17784]:
                                        mem[mem[_17784] + _17784 + 196] = 0
                                    require ext_code.size(address(_17783))
                                    call address(_17783).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15409, address(_15837), 128, mem[_17784], mem[_17784 + 196 len ceil32(mem[_17784])]
                        else:
                            if idx >= mem[_10568] - 2:
                                require idx < mem[_10570]
                                require idx < mem[_10569]
                                if not mem[(32 * idx) + _10570 + 32]:
                                    _17080 = mem[(32 * idx) + _10569 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15409
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17080))
                                    call address(_17080).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15409, 0, this.address
                                else:
                                    _17082 = mem[(32 * idx) + _10569 + 32]
                                    _17083 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17083 + 36] = _15409
                                    mem[_17083 + 68] = 0
                                    mem[_17083 + 100] = this.address
                                    mem[_17083 + 132] = 128
                                    mem[_17083 + 164] = mem[_17083]
                                    s = 0
                                    while s < mem[_17083]:
                                        mem[s + _17083 + 196] = mem[s + _17083 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17083]) > mem[_17083]:
                                        mem[mem[_17083] + _17083 + 196] = 0
                                    require ext_code.size(address(_17082))
                                    call address(_17082).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15409, 0, address(this.address), 128, mem[_17083], mem[_17083 + 196 len ceil32(mem[_17083])]
                            else:
                                require idx + 1 < mem[_10569]
                                _15839 = mem[(32 * idx + 1) + _10569 + 32]
                                require idx < mem[_10570]
                                require idx < mem[_10569]
                                if not mem[(32 * idx) + _10570 + 32]:
                                    _17786 = mem[(32 * idx) + _10569 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15409
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15839)
                                    require ext_code.size(address(_17786))
                                    call address(_17786).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15409, 0, address(_15839)
                                else:
                                    _17788 = mem[(32 * idx) + _10569 + 32]
                                    _17789 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17789 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17789 + 36] = _15409
                                    mem[_17789 + 68] = 0
                                    mem[_17789 + 100] = address(_15839)
                                    mem[_17789 + 132] = 128
                                    mem[_17789 + 164] = mem[_17789]
                                    s = 0
                                    while s < mem[_17789]:
                                        mem[s + _17789 + 196] = mem[s + _17789 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17789]) > mem[_17789]:
                                        mem[mem[_17789] + _17789 + 196] = 0
                                    require ext_code.size(address(_17788))
                                    call address(_17788).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15409, 0, address(_15839), 128, mem[_17789], mem[_17789 + 196 len ceil32(mem[_17789])]
                    else:
                        _15410 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10568 + 44 len 20] == mem[(32 * idx + 1) + _10568 + 44 len 20]:
                            if idx >= mem[_10568] - 2:
                                require idx < mem[_10570]
                                require idx < mem[_10569]
                                if not mem[(32 * idx) + _10570 + 32]:
                                    _17086 = mem[(32 * idx) + _10569 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15410
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17086))
                                    call address(_17086).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15410, this.address
                                else:
                                    _17088 = mem[(32 * idx) + _10569 + 32]
                                    _17089 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17089 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17089 + 36] = 0
                                    mem[_17089 + 68] = _15410
                                    mem[_17089 + 100] = this.address
                                    mem[_17089 + 132] = 128
                                    mem[_17089 + 164] = mem[_17089]
                                    s = 0
                                    while s < mem[_17089]:
                                        mem[s + _17089 + 196] = mem[s + _17089 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17089]) > mem[_17089]:
                                        mem[mem[_17089] + _17089 + 196] = 0
                                    require ext_code.size(address(_17088))
                                    call address(_17088).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15410, address(this.address), 128, mem[_17089], mem[_17089 + 196 len ceil32(mem[_17089])]
                            else:
                                require idx + 1 < mem[_10569]
                                _15841 = mem[(32 * idx + 1) + _10569 + 32]
                                require idx < mem[_10570]
                                require idx < mem[_10569]
                                if not mem[(32 * idx) + _10570 + 32]:
                                    _17791 = mem[(32 * idx) + _10569 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15410
                                    mem[mem[64] + 68] = address(_15841)
                                    require ext_code.size(address(_17791))
                                    call address(_17791).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15410, address(_15841)
                                else:
                                    _17793 = mem[(32 * idx) + _10569 + 32]
                                    _17794 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17794 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17794 + 36] = 0
                                    mem[_17794 + 68] = _15410
                                    mem[_17794 + 100] = address(_15841)
                                    mem[_17794 + 132] = 128
                                    mem[_17794 + 164] = mem[_17794]
                                    s = 0
                                    while s < mem[_17794]:
                                        mem[s + _17794 + 196] = mem[s + _17794 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17794]) > mem[_17794]:
                                        mem[mem[_17794] + _17794 + 196] = 0
                                    require ext_code.size(address(_17793))
                                    call address(_17793).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15410, address(_15841), 128, mem[_17794], mem[_17794 + 196 len ceil32(mem[_17794])]
                        else:
                            if idx >= mem[_10568] - 2:
                                require idx < mem[_10570]
                                require idx < mem[_10569]
                                if not mem[(32 * idx) + _10570 + 32]:
                                    _17092 = mem[(32 * idx) + _10569 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15410
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17092))
                                    call address(_17092).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15410, 0, this.address
                                else:
                                    _17094 = mem[(32 * idx) + _10569 + 32]
                                    _17095 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17095 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17095 + 36] = _15410
                                    mem[_17095 + 68] = 0
                                    mem[_17095 + 100] = this.address
                                    mem[_17095 + 132] = 128
                                    mem[_17095 + 164] = mem[_17095]
                                    s = 0
                                    while s < mem[_17095]:
                                        mem[s + _17095 + 196] = mem[s + _17095 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17095]) > mem[_17095]:
                                        mem[mem[_17095] + _17095 + 196] = 0
                                    require ext_code.size(address(_17094))
                                    call address(_17094).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15410, 0, address(this.address), 128, mem[_17095], mem[_17095 + 196 len ceil32(mem[_17095])]
                            else:
                                require idx + 1 < mem[_10569]
                                _15843 = mem[(32 * idx + 1) + _10569 + 32]
                                require idx < mem[_10570]
                                require idx < mem[_10569]
                                if not mem[(32 * idx) + _10570 + 32]:
                                    _17796 = mem[(32 * idx) + _10569 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15410
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15843)
                                    require ext_code.size(address(_17796))
                                    call address(_17796).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15410, 0, address(_15843)
                                else:
                                    _17798 = mem[(32 * idx) + _10569 + 32]
                                    _17799 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17799 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17799 + 36] = _15410
                                    mem[_17799 + 68] = 0
                                    mem[_17799 + 100] = address(_15843)
                                    mem[_17799 + 132] = 128
                                    mem[_17799 + 164] = mem[_17799]
                                    s = 0
                                    while s < mem[_17799]:
                                        mem[s + _17799 + 196] = mem[s + _17799 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17799]) > mem[_17799]:
                                        mem[mem[_17799] + _17799 + 196] = 0
                                    require ext_code.size(address(_17798))
                                    call address(_17798).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15410, 0, address(_15843), 128, mem[_17799], mem[_17799 + 196 len ceil32(mem[_17799])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _15295 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _15295] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15295]
                return 32, mem[mem[64] + 32 len (32 * _15295) + 32]
            require return_data.size >= 32
            require mem[_10489 + 32] == bool(mem[_10489 + 32])
            if not mem[_10489 + 32]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            _10828 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_10828] = ('cd', 68).length
            mem[_10828 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_10828 + (32 * ('cd', 68).length) + 32] = 0
            _10829 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_10829] = ('cd', 100).length
            mem[_10829 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_10829 + (32 * ('cd', 100).length) + 32] = 0
            _10830 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_10830] = ('cd', 164).length
            mem[_10830 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_10830 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_10828]
                require idx + 1 < mem[_10828]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _10828 + 44 len 20] < mem[(32 * idx + 1) + _10828 + 44 len 20]:
                    _15411 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10828 + 44 len 20] == mem[(32 * idx) + _10828 + 44 len 20]:
                        if idx >= mem[_10828] - 2:
                            require idx < mem[_10830]
                            require idx < mem[_10829]
                            if not mem[(32 * idx) + _10830 + 32]:
                                _17099 = mem[(32 * idx) + _10829 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15411
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17099))
                                call address(_17099).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15411, this.address
                            else:
                                _17101 = mem[(32 * idx) + _10829 + 32]
                                _17102 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17102 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17102 + 36] = 0
                                mem[_17102 + 68] = _15411
                                mem[_17102 + 100] = this.address
                                mem[_17102 + 132] = 128
                                mem[_17102 + 164] = mem[_17102]
                                s = 0
                                while s < mem[_17102]:
                                    mem[s + _17102 + 196] = mem[s + _17102 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17102]) > mem[_17102]:
                                    mem[mem[_17102] + _17102 + 196] = 0
                                require ext_code.size(address(_17101))
                                call address(_17101).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15411, address(this.address), 128, mem[_17102], mem[_17102 + 196 len ceil32(mem[_17102])]
                        else:
                            require idx + 1 < mem[_10829]
                            _15845 = mem[(32 * idx + 1) + _10829 + 32]
                            require idx < mem[_10830]
                            require idx < mem[_10829]
                            if not mem[(32 * idx) + _10830 + 32]:
                                _17801 = mem[(32 * idx) + _10829 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15411
                                mem[mem[64] + 68] = address(_15845)
                                require ext_code.size(address(_17801))
                                call address(_17801).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15411, address(_15845)
                            else:
                                _17803 = mem[(32 * idx) + _10829 + 32]
                                _17804 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17804 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17804 + 36] = 0
                                mem[_17804 + 68] = _15411
                                mem[_17804 + 100] = address(_15845)
                                mem[_17804 + 132] = 128
                                mem[_17804 + 164] = mem[_17804]
                                s = 0
                                while s < mem[_17804]:
                                    mem[s + _17804 + 196] = mem[s + _17804 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17804]) > mem[_17804]:
                                    mem[mem[_17804] + _17804 + 196] = 0
                                require ext_code.size(address(_17803))
                                call address(_17803).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15411, address(_15845), 128, mem[_17804], mem[_17804 + 196 len ceil32(mem[_17804])]
                    else:
                        if idx >= mem[_10828] - 2:
                            require idx < mem[_10830]
                            require idx < mem[_10829]
                            if not mem[(32 * idx) + _10830 + 32]:
                                _17105 = mem[(32 * idx) + _10829 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15411
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17105))
                                call address(_17105).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15411, 0, this.address
                            else:
                                _17107 = mem[(32 * idx) + _10829 + 32]
                                _17108 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17108 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17108 + 36] = _15411
                                mem[_17108 + 68] = 0
                                mem[_17108 + 100] = this.address
                                mem[_17108 + 132] = 128
                                mem[_17108 + 164] = mem[_17108]
                                s = 0
                                while s < mem[_17108]:
                                    mem[s + _17108 + 196] = mem[s + _17108 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17108]) > mem[_17108]:
                                    mem[mem[_17108] + _17108 + 196] = 0
                                require ext_code.size(address(_17107))
                                call address(_17107).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15411, 0, address(this.address), 128, mem[_17108], mem[_17108 + 196 len ceil32(mem[_17108])]
                        else:
                            require idx + 1 < mem[_10829]
                            _15847 = mem[(32 * idx + 1) + _10829 + 32]
                            require idx < mem[_10830]
                            require idx < mem[_10829]
                            if not mem[(32 * idx) + _10830 + 32]:
                                _17806 = mem[(32 * idx) + _10829 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15411
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15847)
                                require ext_code.size(address(_17806))
                                call address(_17806).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15411, 0, address(_15847)
                            else:
                                _17808 = mem[(32 * idx) + _10829 + 32]
                                _17809 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17809 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17809 + 36] = _15411
                                mem[_17809 + 68] = 0
                                mem[_17809 + 100] = address(_15847)
                                mem[_17809 + 132] = 128
                                mem[_17809 + 164] = mem[_17809]
                                s = 0
                                while s < mem[_17809]:
                                    mem[s + _17809 + 196] = mem[s + _17809 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17809]) > mem[_17809]:
                                    mem[mem[_17809] + _17809 + 196] = 0
                                require ext_code.size(address(_17808))
                                call address(_17808).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15411, 0, address(_15847), 128, mem[_17809], mem[_17809 + 196 len ceil32(mem[_17809])]
                else:
                    _15412 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10828 + 44 len 20] == mem[(32 * idx + 1) + _10828 + 44 len 20]:
                        if idx >= mem[_10828] - 2:
                            require idx < mem[_10830]
                            require idx < mem[_10829]
                            if not mem[(32 * idx) + _10830 + 32]:
                                _17111 = mem[(32 * idx) + _10829 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15412
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17111))
                                call address(_17111).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15412, this.address
                            else:
                                _17113 = mem[(32 * idx) + _10829 + 32]
                                _17114 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17114 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17114 + 36] = 0
                                mem[_17114 + 68] = _15412
                                mem[_17114 + 100] = this.address
                                mem[_17114 + 132] = 128
                                mem[_17114 + 164] = mem[_17114]
                                s = 0
                                while s < mem[_17114]:
                                    mem[s + _17114 + 196] = mem[s + _17114 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17114]) > mem[_17114]:
                                    mem[mem[_17114] + _17114 + 196] = 0
                                require ext_code.size(address(_17113))
                                call address(_17113).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15412, address(this.address), 128, mem[_17114], mem[_17114 + 196 len ceil32(mem[_17114])]
                        else:
                            require idx + 1 < mem[_10829]
                            _15849 = mem[(32 * idx + 1) + _10829 + 32]
                            require idx < mem[_10830]
                            require idx < mem[_10829]
                            if not mem[(32 * idx) + _10830 + 32]:
                                _17811 = mem[(32 * idx) + _10829 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15412
                                mem[mem[64] + 68] = address(_15849)
                                require ext_code.size(address(_17811))
                                call address(_17811).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15412, address(_15849)
                            else:
                                _17813 = mem[(32 * idx) + _10829 + 32]
                                _17814 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17814 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17814 + 36] = 0
                                mem[_17814 + 68] = _15412
                                mem[_17814 + 100] = address(_15849)
                                mem[_17814 + 132] = 128
                                mem[_17814 + 164] = mem[_17814]
                                s = 0
                                while s < mem[_17814]:
                                    mem[s + _17814 + 196] = mem[s + _17814 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17814]) > mem[_17814]:
                                    mem[mem[_17814] + _17814 + 196] = 0
                                require ext_code.size(address(_17813))
                                call address(_17813).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15412, address(_15849), 128, mem[_17814], mem[_17814 + 196 len ceil32(mem[_17814])]
                    else:
                        if idx >= mem[_10828] - 2:
                            require idx < mem[_10830]
                            require idx < mem[_10829]
                            if not mem[(32 * idx) + _10830 + 32]:
                                _17117 = mem[(32 * idx) + _10829 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15412
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17117))
                                call address(_17117).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15412, 0, this.address
                            else:
                                _17119 = mem[(32 * idx) + _10829 + 32]
                                _17120 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17120 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17120 + 36] = _15412
                                mem[_17120 + 68] = 0
                                mem[_17120 + 100] = this.address
                                mem[_17120 + 132] = 128
                                mem[_17120 + 164] = mem[_17120]
                                s = 0
                                while s < mem[_17120]:
                                    mem[s + _17120 + 196] = mem[s + _17120 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17120]) > mem[_17120]:
                                    mem[mem[_17120] + _17120 + 196] = 0
                                require ext_code.size(address(_17119))
                                call address(_17119).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15412, 0, address(this.address), 128, mem[_17120], mem[_17120 + 196 len ceil32(mem[_17120])]
                        else:
                            require idx + 1 < mem[_10829]
                            _15851 = mem[(32 * idx + 1) + _10829 + 32]
                            require idx < mem[_10830]
                            require idx < mem[_10829]
                            if not mem[(32 * idx) + _10830 + 32]:
                                _17816 = mem[(32 * idx) + _10829 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15412
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15851)
                                require ext_code.size(address(_17816))
                                call address(_17816).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15412, 0, address(_15851)
                            else:
                                _17818 = mem[(32 * idx) + _10829 + 32]
                                _17819 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17819 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17819 + 36] = _15412
                                mem[_17819 + 68] = 0
                                mem[_17819 + 100] = address(_15851)
                                mem[_17819 + 132] = 128
                                mem[_17819 + 164] = mem[_17819]
                                s = 0
                                while s < mem[_17819]:
                                    mem[s + _17819 + 196] = mem[s + _17819 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17819]) > mem[_17819]:
                                    mem[mem[_17819] + _17819 + 196] = 0
                                require ext_code.size(address(_17818))
                                call address(_17818).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15412, 0, address(_15851), 128, mem[_17819], mem[_17819 + 196 len ceil32(mem[_17819])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _15296 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _15296] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15296]
            return 32, mem[mem[64] + 32 len (32 * _15296) + 32]
        mem[_5475 + _5379 + 100] = 0
        call address(('cd', 68)[0]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5475 + _5379 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if not mem[96]:
                _10571 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_10571] = ('cd', 68).length
                mem[_10571 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_10571 + (32 * ('cd', 68).length) + 32] = 0
                _10572 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_10572] = ('cd', 100).length
                mem[_10572 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_10572 + (32 * ('cd', 100).length) + 32] = 0
                _10573 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_10573] = ('cd', 164).length
                mem[_10573 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_10573 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_10571]
                    require idx + 1 < mem[_10571]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _10571 + 44 len 20] < mem[(32 * idx + 1) + _10571 + 44 len 20]:
                        _15413 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10571 + 44 len 20] == mem[(32 * idx) + _10571 + 44 len 20]:
                            if idx >= mem[_10571] - 2:
                                require idx < mem[_10573]
                                require idx < mem[_10572]
                                if not mem[(32 * idx) + _10573 + 32]:
                                    _17124 = mem[(32 * idx) + _10572 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15413
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17124))
                                    call address(_17124).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15413, this.address
                                else:
                                    _17126 = mem[(32 * idx) + _10572 + 32]
                                    _17127 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17127 + 36] = 0
                                    mem[_17127 + 68] = _15413
                                    mem[_17127 + 100] = this.address
                                    mem[_17127 + 132] = 128
                                    mem[_17127 + 164] = mem[_17127]
                                    s = 0
                                    while s < mem[_17127]:
                                        mem[s + _17127 + 196] = mem[s + _17127 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17127]) > mem[_17127]:
                                        mem[mem[_17127] + _17127 + 196] = 0
                                    require ext_code.size(address(_17126))
                                    call address(_17126).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15413, address(this.address), 128, mem[_17127], mem[_17127 + 196 len ceil32(mem[_17127])]
                            else:
                                require idx + 1 < mem[_10572]
                                _15853 = mem[(32 * idx + 1) + _10572 + 32]
                                require idx < mem[_10573]
                                require idx < mem[_10572]
                                if not mem[(32 * idx) + _10573 + 32]:
                                    _17821 = mem[(32 * idx) + _10572 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15413
                                    mem[mem[64] + 68] = address(_15853)
                                    require ext_code.size(address(_17821))
                                    call address(_17821).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15413, address(_15853)
                                else:
                                    _17823 = mem[(32 * idx) + _10572 + 32]
                                    _17824 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17824 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17824 + 36] = 0
                                    mem[_17824 + 68] = _15413
                                    mem[_17824 + 100] = address(_15853)
                                    mem[_17824 + 132] = 128
                                    mem[_17824 + 164] = mem[_17824]
                                    s = 0
                                    while s < mem[_17824]:
                                        mem[s + _17824 + 196] = mem[s + _17824 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17824]) > mem[_17824]:
                                        mem[mem[_17824] + _17824 + 196] = 0
                                    require ext_code.size(address(_17823))
                                    call address(_17823).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15413, address(_15853), 128, mem[_17824], mem[_17824 + 196 len ceil32(mem[_17824])]
                        else:
                            if idx >= mem[_10571] - 2:
                                require idx < mem[_10573]
                                require idx < mem[_10572]
                                if not mem[(32 * idx) + _10573 + 32]:
                                    _17130 = mem[(32 * idx) + _10572 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15413
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17130))
                                    call address(_17130).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15413, 0, this.address
                                else:
                                    _17132 = mem[(32 * idx) + _10572 + 32]
                                    _17133 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17133 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17133 + 36] = _15413
                                    mem[_17133 + 68] = 0
                                    mem[_17133 + 100] = this.address
                                    mem[_17133 + 132] = 128
                                    mem[_17133 + 164] = mem[_17133]
                                    s = 0
                                    while s < mem[_17133]:
                                        mem[s + _17133 + 196] = mem[s + _17133 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17133]) > mem[_17133]:
                                        mem[mem[_17133] + _17133 + 196] = 0
                                    require ext_code.size(address(_17132))
                                    call address(_17132).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15413, 0, address(this.address), 128, mem[_17133], mem[_17133 + 196 len ceil32(mem[_17133])]
                            else:
                                require idx + 1 < mem[_10572]
                                _15855 = mem[(32 * idx + 1) + _10572 + 32]
                                require idx < mem[_10573]
                                require idx < mem[_10572]
                                if not mem[(32 * idx) + _10573 + 32]:
                                    _17826 = mem[(32 * idx) + _10572 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15413
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15855)
                                    require ext_code.size(address(_17826))
                                    call address(_17826).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15413, 0, address(_15855)
                                else:
                                    _17828 = mem[(32 * idx) + _10572 + 32]
                                    _17829 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17829 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17829 + 36] = _15413
                                    mem[_17829 + 68] = 0
                                    mem[_17829 + 100] = address(_15855)
                                    mem[_17829 + 132] = 128
                                    mem[_17829 + 164] = mem[_17829]
                                    s = 0
                                    while s < mem[_17829]:
                                        mem[s + _17829 + 196] = mem[s + _17829 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17829]) > mem[_17829]:
                                        mem[mem[_17829] + _17829 + 196] = 0
                                    require ext_code.size(address(_17828))
                                    call address(_17828).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15413, 0, address(_15855), 128, mem[_17829], mem[_17829 + 196 len ceil32(mem[_17829])]
                    else:
                        _15414 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10571 + 44 len 20] == mem[(32 * idx + 1) + _10571 + 44 len 20]:
                            if idx >= mem[_10571] - 2:
                                require idx < mem[_10573]
                                require idx < mem[_10572]
                                if not mem[(32 * idx) + _10573 + 32]:
                                    _17136 = mem[(32 * idx) + _10572 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15414
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17136))
                                    call address(_17136).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15414, this.address
                                else:
                                    _17138 = mem[(32 * idx) + _10572 + 32]
                                    _17139 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17139 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17139 + 36] = 0
                                    mem[_17139 + 68] = _15414
                                    mem[_17139 + 100] = this.address
                                    mem[_17139 + 132] = 128
                                    mem[_17139 + 164] = mem[_17139]
                                    s = 0
                                    while s < mem[_17139]:
                                        mem[s + _17139 + 196] = mem[s + _17139 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17139]) > mem[_17139]:
                                        mem[mem[_17139] + _17139 + 196] = 0
                                    require ext_code.size(address(_17138))
                                    call address(_17138).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15414, address(this.address), 128, mem[_17139], mem[_17139 + 196 len ceil32(mem[_17139])]
                            else:
                                require idx + 1 < mem[_10572]
                                _15857 = mem[(32 * idx + 1) + _10572 + 32]
                                require idx < mem[_10573]
                                require idx < mem[_10572]
                                if not mem[(32 * idx) + _10573 + 32]:
                                    _17831 = mem[(32 * idx) + _10572 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15414
                                    mem[mem[64] + 68] = address(_15857)
                                    require ext_code.size(address(_17831))
                                    call address(_17831).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15414, address(_15857)
                                else:
                                    _17833 = mem[(32 * idx) + _10572 + 32]
                                    _17834 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17834 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17834 + 36] = 0
                                    mem[_17834 + 68] = _15414
                                    mem[_17834 + 100] = address(_15857)
                                    mem[_17834 + 132] = 128
                                    mem[_17834 + 164] = mem[_17834]
                                    s = 0
                                    while s < mem[_17834]:
                                        mem[s + _17834 + 196] = mem[s + _17834 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17834]) > mem[_17834]:
                                        mem[mem[_17834] + _17834 + 196] = 0
                                    require ext_code.size(address(_17833))
                                    call address(_17833).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15414, address(_15857), 128, mem[_17834], mem[_17834 + 196 len ceil32(mem[_17834])]
                        else:
                            if idx >= mem[_10571] - 2:
                                require idx < mem[_10573]
                                require idx < mem[_10572]
                                if not mem[(32 * idx) + _10573 + 32]:
                                    _17142 = mem[(32 * idx) + _10572 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15414
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17142))
                                    call address(_17142).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15414, 0, this.address
                                else:
                                    _17144 = mem[(32 * idx) + _10572 + 32]
                                    _17145 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17145 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17145 + 36] = _15414
                                    mem[_17145 + 68] = 0
                                    mem[_17145 + 100] = this.address
                                    mem[_17145 + 132] = 128
                                    mem[_17145 + 164] = mem[_17145]
                                    s = 0
                                    while s < mem[_17145]:
                                        mem[s + _17145 + 196] = mem[s + _17145 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17145]) > mem[_17145]:
                                        mem[mem[_17145] + _17145 + 196] = 0
                                    require ext_code.size(address(_17144))
                                    call address(_17144).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15414, 0, address(this.address), 128, mem[_17145], mem[_17145 + 196 len ceil32(mem[_17145])]
                            else:
                                require idx + 1 < mem[_10572]
                                _15859 = mem[(32 * idx + 1) + _10572 + 32]
                                require idx < mem[_10573]
                                require idx < mem[_10572]
                                if not mem[(32 * idx) + _10573 + 32]:
                                    _17836 = mem[(32 * idx) + _10572 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15414
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15859)
                                    require ext_code.size(address(_17836))
                                    call address(_17836).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15414, 0, address(_15859)
                                else:
                                    _17838 = mem[(32 * idx) + _10572 + 32]
                                    _17839 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17839 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17839 + 36] = _15414
                                    mem[_17839 + 68] = 0
                                    mem[_17839 + 100] = address(_15859)
                                    mem[_17839 + 132] = 128
                                    mem[_17839 + 164] = mem[_17839]
                                    s = 0
                                    while s < mem[_17839]:
                                        mem[s + _17839 + 196] = mem[s + _17839 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17839]) > mem[_17839]:
                                        mem[mem[_17839] + _17839 + 196] = 0
                                    require ext_code.size(address(_17838))
                                    call address(_17838).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15414, 0, address(_15859), 128, mem[_17839], mem[_17839 + 196 len ceil32(mem[_17839])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _15297 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _15297] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15297]
                return 32, mem[mem[64] + 32 len (32 * _15297) + 32]
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            _10833 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_10833] = ('cd', 68).length
            mem[_10833 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_10833 + (32 * ('cd', 68).length) + 32] = 0
            _10834 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_10834] = ('cd', 100).length
            mem[_10834 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_10834 + (32 * ('cd', 100).length) + 32] = 0
            _10835 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_10835] = ('cd', 164).length
            mem[_10835 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_10835 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_10833]
                require idx + 1 < mem[_10833]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _10833 + 44 len 20] < mem[(32 * idx + 1) + _10833 + 44 len 20]:
                    _15415 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10833 + 44 len 20] == mem[(32 * idx) + _10833 + 44 len 20]:
                        if idx >= mem[_10833] - 2:
                            require idx < mem[_10835]
                            require idx < mem[_10834]
                            if not mem[(32 * idx) + _10835 + 32]:
                                _17149 = mem[(32 * idx) + _10834 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15415
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17149))
                                call address(_17149).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15415, this.address
                            else:
                                _17151 = mem[(32 * idx) + _10834 + 32]
                                _17152 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17152 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17152 + 36] = 0
                                mem[_17152 + 68] = _15415
                                mem[_17152 + 100] = this.address
                                mem[_17152 + 132] = 128
                                mem[_17152 + 164] = mem[_17152]
                                s = 0
                                while s < mem[_17152]:
                                    mem[s + _17152 + 196] = mem[s + _17152 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17152]) > mem[_17152]:
                                    mem[mem[_17152] + _17152 + 196] = 0
                                require ext_code.size(address(_17151))
                                call address(_17151).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15415, address(this.address), 128, mem[_17152], mem[_17152 + 196 len ceil32(mem[_17152])]
                        else:
                            require idx + 1 < mem[_10834]
                            _15861 = mem[(32 * idx + 1) + _10834 + 32]
                            require idx < mem[_10835]
                            require idx < mem[_10834]
                            if not mem[(32 * idx) + _10835 + 32]:
                                _17841 = mem[(32 * idx) + _10834 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15415
                                mem[mem[64] + 68] = address(_15861)
                                require ext_code.size(address(_17841))
                                call address(_17841).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15415, address(_15861)
                            else:
                                _17843 = mem[(32 * idx) + _10834 + 32]
                                _17844 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17844 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17844 + 36] = 0
                                mem[_17844 + 68] = _15415
                                mem[_17844 + 100] = address(_15861)
                                mem[_17844 + 132] = 128
                                mem[_17844 + 164] = mem[_17844]
                                s = 0
                                while s < mem[_17844]:
                                    mem[s + _17844 + 196] = mem[s + _17844 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17844]) > mem[_17844]:
                                    mem[mem[_17844] + _17844 + 196] = 0
                                require ext_code.size(address(_17843))
                                call address(_17843).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15415, address(_15861), 128, mem[_17844], mem[_17844 + 196 len ceil32(mem[_17844])]
                    else:
                        if idx >= mem[_10833] - 2:
                            require idx < mem[_10835]
                            require idx < mem[_10834]
                            if not mem[(32 * idx) + _10835 + 32]:
                                _17155 = mem[(32 * idx) + _10834 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15415
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17155))
                                call address(_17155).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15415, 0, this.address
                            else:
                                _17157 = mem[(32 * idx) + _10834 + 32]
                                _17158 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17158 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17158 + 36] = _15415
                                mem[_17158 + 68] = 0
                                mem[_17158 + 100] = this.address
                                mem[_17158 + 132] = 128
                                mem[_17158 + 164] = mem[_17158]
                                s = 0
                                while s < mem[_17158]:
                                    mem[s + _17158 + 196] = mem[s + _17158 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17158]) > mem[_17158]:
                                    mem[mem[_17158] + _17158 + 196] = 0
                                require ext_code.size(address(_17157))
                                call address(_17157).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15415, 0, address(this.address), 128, mem[_17158], mem[_17158 + 196 len ceil32(mem[_17158])]
                        else:
                            require idx + 1 < mem[_10834]
                            _15863 = mem[(32 * idx + 1) + _10834 + 32]
                            require idx < mem[_10835]
                            require idx < mem[_10834]
                            if not mem[(32 * idx) + _10835 + 32]:
                                _17846 = mem[(32 * idx) + _10834 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15415
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15863)
                                require ext_code.size(address(_17846))
                                call address(_17846).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15415, 0, address(_15863)
                            else:
                                _17848 = mem[(32 * idx) + _10834 + 32]
                                _17849 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17849 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17849 + 36] = _15415
                                mem[_17849 + 68] = 0
                                mem[_17849 + 100] = address(_15863)
                                mem[_17849 + 132] = 128
                                mem[_17849 + 164] = mem[_17849]
                                s = 0
                                while s < mem[_17849]:
                                    mem[s + _17849 + 196] = mem[s + _17849 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17849]) > mem[_17849]:
                                    mem[mem[_17849] + _17849 + 196] = 0
                                require ext_code.size(address(_17848))
                                call address(_17848).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15415, 0, address(_15863), 128, mem[_17849], mem[_17849 + 196 len ceil32(mem[_17849])]
                else:
                    _15416 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10833 + 44 len 20] == mem[(32 * idx + 1) + _10833 + 44 len 20]:
                        if idx >= mem[_10833] - 2:
                            require idx < mem[_10835]
                            require idx < mem[_10834]
                            if not mem[(32 * idx) + _10835 + 32]:
                                _17161 = mem[(32 * idx) + _10834 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15416
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17161))
                                call address(_17161).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15416, this.address
                            else:
                                _17163 = mem[(32 * idx) + _10834 + 32]
                                _17164 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17164 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17164 + 36] = 0
                                mem[_17164 + 68] = _15416
                                mem[_17164 + 100] = this.address
                                mem[_17164 + 132] = 128
                                mem[_17164 + 164] = mem[_17164]
                                s = 0
                                while s < mem[_17164]:
                                    mem[s + _17164 + 196] = mem[s + _17164 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17164]) > mem[_17164]:
                                    mem[mem[_17164] + _17164 + 196] = 0
                                require ext_code.size(address(_17163))
                                call address(_17163).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15416, address(this.address), 128, mem[_17164], mem[_17164 + 196 len ceil32(mem[_17164])]
                        else:
                            require idx + 1 < mem[_10834]
                            _15865 = mem[(32 * idx + 1) + _10834 + 32]
                            require idx < mem[_10835]
                            require idx < mem[_10834]
                            if not mem[(32 * idx) + _10835 + 32]:
                                _17851 = mem[(32 * idx) + _10834 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15416
                                mem[mem[64] + 68] = address(_15865)
                                require ext_code.size(address(_17851))
                                call address(_17851).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15416, address(_15865)
                            else:
                                _17853 = mem[(32 * idx) + _10834 + 32]
                                _17854 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17854 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17854 + 36] = 0
                                mem[_17854 + 68] = _15416
                                mem[_17854 + 100] = address(_15865)
                                mem[_17854 + 132] = 128
                                mem[_17854 + 164] = mem[_17854]
                                s = 0
                                while s < mem[_17854]:
                                    mem[s + _17854 + 196] = mem[s + _17854 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17854]) > mem[_17854]:
                                    mem[mem[_17854] + _17854 + 196] = 0
                                require ext_code.size(address(_17853))
                                call address(_17853).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15416, address(_15865), 128, mem[_17854], mem[_17854 + 196 len ceil32(mem[_17854])]
                    else:
                        if idx >= mem[_10833] - 2:
                            require idx < mem[_10835]
                            require idx < mem[_10834]
                            if not mem[(32 * idx) + _10835 + 32]:
                                _17167 = mem[(32 * idx) + _10834 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15416
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17167))
                                call address(_17167).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15416, 0, this.address
                            else:
                                _17169 = mem[(32 * idx) + _10834 + 32]
                                _17170 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17170 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17170 + 36] = _15416
                                mem[_17170 + 68] = 0
                                mem[_17170 + 100] = this.address
                                mem[_17170 + 132] = 128
                                mem[_17170 + 164] = mem[_17170]
                                s = 0
                                while s < mem[_17170]:
                                    mem[s + _17170 + 196] = mem[s + _17170 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17170]) > mem[_17170]:
                                    mem[mem[_17170] + _17170 + 196] = 0
                                require ext_code.size(address(_17169))
                                call address(_17169).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15416, 0, address(this.address), 128, mem[_17170], mem[_17170 + 196 len ceil32(mem[_17170])]
                        else:
                            require idx + 1 < mem[_10834]
                            _15867 = mem[(32 * idx + 1) + _10834 + 32]
                            require idx < mem[_10835]
                            require idx < mem[_10834]
                            if not mem[(32 * idx) + _10835 + 32]:
                                _17856 = mem[(32 * idx) + _10834 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15416
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15867)
                                require ext_code.size(address(_17856))
                                call address(_17856).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15416, 0, address(_15867)
                            else:
                                _17858 = mem[(32 * idx) + _10834 + 32]
                                _17859 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17859 + 36] = _15416
                                mem[_17859 + 68] = 0
                                mem[_17859 + 100] = address(_15867)
                                mem[_17859 + 132] = 128
                                mem[_17859 + 164] = mem[_17859]
                                s = 0
                                while s < mem[_17859]:
                                    mem[s + _17859 + 196] = mem[s + _17859 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17859]) > mem[_17859]:
                                    mem[mem[_17859] + _17859 + 196] = 0
                                require ext_code.size(address(_17858))
                                call address(_17858).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15416, 0, address(_15867), 128, mem[_17859], mem[_17859 + 196 len ceil32(mem[_17859])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _15298 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _15298] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15298]
            return 32, mem[mem[64] + 32 len (32 * _15298) + 32]
        _10490 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_10490] = return_data.size
        mem[_10490 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if not return_data.size:
            _10574 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_10574] = ('cd', 68).length
            mem[_10574 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_10574 + (32 * ('cd', 68).length) + 32] = 0
            _10575 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_10575] = ('cd', 100).length
            mem[_10575 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_10575 + (32 * ('cd', 100).length) + 32] = 0
            _10576 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_10576] = ('cd', 164).length
            mem[_10576 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_10576 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_10574]
                require idx + 1 < mem[_10574]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _10574 + 44 len 20] < mem[(32 * idx + 1) + _10574 + 44 len 20]:
                    _15417 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10574 + 44 len 20] == mem[(32 * idx) + _10574 + 44 len 20]:
                        if idx >= mem[_10574] - 2:
                            require idx < mem[_10576]
                            require idx < mem[_10575]
                            if not mem[(32 * idx) + _10576 + 32]:
                                _17174 = mem[(32 * idx) + _10575 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15417
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17174))
                                call address(_17174).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15417, this.address
                            else:
                                _17176 = mem[(32 * idx) + _10575 + 32]
                                _17177 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17177 + 36] = 0
                                mem[_17177 + 68] = _15417
                                mem[_17177 + 100] = this.address
                                mem[_17177 + 132] = 128
                                mem[_17177 + 164] = mem[_17177]
                                s = 0
                                while s < mem[_17177]:
                                    mem[s + _17177 + 196] = mem[s + _17177 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17177]) > mem[_17177]:
                                    mem[mem[_17177] + _17177 + 196] = 0
                                require ext_code.size(address(_17176))
                                call address(_17176).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15417, address(this.address), 128, mem[_17177], mem[_17177 + 196 len ceil32(mem[_17177])]
                        else:
                            require idx + 1 < mem[_10575]
                            _15869 = mem[(32 * idx + 1) + _10575 + 32]
                            require idx < mem[_10576]
                            require idx < mem[_10575]
                            if not mem[(32 * idx) + _10576 + 32]:
                                _17861 = mem[(32 * idx) + _10575 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15417
                                mem[mem[64] + 68] = address(_15869)
                                require ext_code.size(address(_17861))
                                call address(_17861).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15417, address(_15869)
                            else:
                                _17863 = mem[(32 * idx) + _10575 + 32]
                                _17864 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17864 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17864 + 36] = 0
                                mem[_17864 + 68] = _15417
                                mem[_17864 + 100] = address(_15869)
                                mem[_17864 + 132] = 128
                                mem[_17864 + 164] = mem[_17864]
                                s = 0
                                while s < mem[_17864]:
                                    mem[s + _17864 + 196] = mem[s + _17864 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17864]) > mem[_17864]:
                                    mem[mem[_17864] + _17864 + 196] = 0
                                require ext_code.size(address(_17863))
                                call address(_17863).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15417, address(_15869), 128, mem[_17864], mem[_17864 + 196 len ceil32(mem[_17864])]
                    else:
                        if idx >= mem[_10574] - 2:
                            require idx < mem[_10576]
                            require idx < mem[_10575]
                            if not mem[(32 * idx) + _10576 + 32]:
                                _17180 = mem[(32 * idx) + _10575 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15417
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17180))
                                call address(_17180).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15417, 0, this.address
                            else:
                                _17182 = mem[(32 * idx) + _10575 + 32]
                                _17183 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17183 + 36] = _15417
                                mem[_17183 + 68] = 0
                                mem[_17183 + 100] = this.address
                                mem[_17183 + 132] = 128
                                mem[_17183 + 164] = mem[_17183]
                                s = 0
                                while s < mem[_17183]:
                                    mem[s + _17183 + 196] = mem[s + _17183 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17183]) > mem[_17183]:
                                    mem[mem[_17183] + _17183 + 196] = 0
                                require ext_code.size(address(_17182))
                                call address(_17182).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15417, 0, address(this.address), 128, mem[_17183], mem[_17183 + 196 len ceil32(mem[_17183])]
                        else:
                            require idx + 1 < mem[_10575]
                            _15871 = mem[(32 * idx + 1) + _10575 + 32]
                            require idx < mem[_10576]
                            require idx < mem[_10575]
                            if not mem[(32 * idx) + _10576 + 32]:
                                _17866 = mem[(32 * idx) + _10575 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15417
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15871)
                                require ext_code.size(address(_17866))
                                call address(_17866).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15417, 0, address(_15871)
                            else:
                                _17868 = mem[(32 * idx) + _10575 + 32]
                                _17869 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17869 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17869 + 36] = _15417
                                mem[_17869 + 68] = 0
                                mem[_17869 + 100] = address(_15871)
                                mem[_17869 + 132] = 128
                                mem[_17869 + 164] = mem[_17869]
                                s = 0
                                while s < mem[_17869]:
                                    mem[s + _17869 + 196] = mem[s + _17869 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17869]) > mem[_17869]:
                                    mem[mem[_17869] + _17869 + 196] = 0
                                require ext_code.size(address(_17868))
                                call address(_17868).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15417, 0, address(_15871), 128, mem[_17869], mem[_17869 + 196 len ceil32(mem[_17869])]
                else:
                    _15418 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10574 + 44 len 20] == mem[(32 * idx + 1) + _10574 + 44 len 20]:
                        if idx >= mem[_10574] - 2:
                            require idx < mem[_10576]
                            require idx < mem[_10575]
                            if not mem[(32 * idx) + _10576 + 32]:
                                _17186 = mem[(32 * idx) + _10575 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15418
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17186))
                                call address(_17186).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15418, this.address
                            else:
                                _17188 = mem[(32 * idx) + _10575 + 32]
                                _17189 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17189 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17189 + 36] = 0
                                mem[_17189 + 68] = _15418
                                mem[_17189 + 100] = this.address
                                mem[_17189 + 132] = 128
                                mem[_17189 + 164] = mem[_17189]
                                s = 0
                                while s < mem[_17189]:
                                    mem[s + _17189 + 196] = mem[s + _17189 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17189]) > mem[_17189]:
                                    mem[mem[_17189] + _17189 + 196] = 0
                                require ext_code.size(address(_17188))
                                call address(_17188).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15418, address(this.address), 128, mem[_17189], mem[_17189 + 196 len ceil32(mem[_17189])]
                        else:
                            require idx + 1 < mem[_10575]
                            _15873 = mem[(32 * idx + 1) + _10575 + 32]
                            require idx < mem[_10576]
                            require idx < mem[_10575]
                            if not mem[(32 * idx) + _10576 + 32]:
                                _17871 = mem[(32 * idx) + _10575 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15418
                                mem[mem[64] + 68] = address(_15873)
                                require ext_code.size(address(_17871))
                                call address(_17871).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15418, address(_15873)
                            else:
                                _17873 = mem[(32 * idx) + _10575 + 32]
                                _17874 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17874 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17874 + 36] = 0
                                mem[_17874 + 68] = _15418
                                mem[_17874 + 100] = address(_15873)
                                mem[_17874 + 132] = 128
                                mem[_17874 + 164] = mem[_17874]
                                s = 0
                                while s < mem[_17874]:
                                    mem[s + _17874 + 196] = mem[s + _17874 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17874]) > mem[_17874]:
                                    mem[mem[_17874] + _17874 + 196] = 0
                                require ext_code.size(address(_17873))
                                call address(_17873).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15418, address(_15873), 128, mem[_17874], mem[_17874 + 196 len ceil32(mem[_17874])]
                    else:
                        if idx >= mem[_10574] - 2:
                            require idx < mem[_10576]
                            require idx < mem[_10575]
                            if not mem[(32 * idx) + _10576 + 32]:
                                _17192 = mem[(32 * idx) + _10575 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15418
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17192))
                                call address(_17192).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15418, 0, this.address
                            else:
                                _17194 = mem[(32 * idx) + _10575 + 32]
                                _17195 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17195 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17195 + 36] = _15418
                                mem[_17195 + 68] = 0
                                mem[_17195 + 100] = this.address
                                mem[_17195 + 132] = 128
                                mem[_17195 + 164] = mem[_17195]
                                s = 0
                                while s < mem[_17195]:
                                    mem[s + _17195 + 196] = mem[s + _17195 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17195]) > mem[_17195]:
                                    mem[mem[_17195] + _17195 + 196] = 0
                                require ext_code.size(address(_17194))
                                call address(_17194).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15418, 0, address(this.address), 128, mem[_17195], mem[_17195 + 196 len ceil32(mem[_17195])]
                        else:
                            require idx + 1 < mem[_10575]
                            _15875 = mem[(32 * idx + 1) + _10575 + 32]
                            require idx < mem[_10576]
                            require idx < mem[_10575]
                            if not mem[(32 * idx) + _10576 + 32]:
                                _17876 = mem[(32 * idx) + _10575 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15418
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15875)
                                require ext_code.size(address(_17876))
                                call address(_17876).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15418, 0, address(_15875)
                            else:
                                _17878 = mem[(32 * idx) + _10575 + 32]
                                _17879 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17879 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17879 + 36] = _15418
                                mem[_17879 + 68] = 0
                                mem[_17879 + 100] = address(_15875)
                                mem[_17879 + 132] = 128
                                mem[_17879 + 164] = mem[_17879]
                                s = 0
                                while s < mem[_17879]:
                                    mem[s + _17879 + 196] = mem[s + _17879 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17879]) > mem[_17879]:
                                    mem[mem[_17879] + _17879 + 196] = 0
                                require ext_code.size(address(_17878))
                                call address(_17878).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15418, 0, address(_15875), 128, mem[_17879], mem[_17879 + 196 len ceil32(mem[_17879])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _15299 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _15299] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15299]
            return 32, mem[mem[64] + 32 len (32 * _15299) + 32]
        require return_data.size >= 32
        require mem[_10490 + 32] == bool(mem[_10490 + 32])
        if not mem[_10490 + 32]:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        _10838 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_10838] = ('cd', 68).length
        mem[_10838 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_10838 + (32 * ('cd', 68).length) + 32] = 0
        _10839 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_10839] = ('cd', 100).length
        mem[_10839 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_10839 + (32 * ('cd', 100).length) + 32] = 0
        _10840 = mem[64]
        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
        mem[_10840] = ('cd', 164).length
        mem[_10840 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[_10840 + (32 * ('cd', 164).length) + 32] = 0
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[_10838]
            require idx + 1 < mem[_10838]
            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * idx) + _10838 + 44 len 20] < mem[(32 * idx + 1) + _10838 + 44 len 20]:
                _15419 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _10838 + 44 len 20] == mem[(32 * idx) + _10838 + 44 len 20]:
                    if idx >= mem[_10838] - 2:
                        require idx < mem[_10840]
                        require idx < mem[_10839]
                        if not mem[(32 * idx) + _10840 + 32]:
                            _17199 = mem[(32 * idx) + _10839 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15419
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17199))
                            call address(_17199).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15419, this.address
                        else:
                            _17201 = mem[(32 * idx) + _10839 + 32]
                            _17202 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17202 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17202 + 36] = 0
                            mem[_17202 + 68] = _15419
                            mem[_17202 + 100] = this.address
                            mem[_17202 + 132] = 128
                            mem[_17202 + 164] = mem[_17202]
                            s = 0
                            while s < mem[_17202]:
                                mem[s + _17202 + 196] = mem[s + _17202 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17202]) > mem[_17202]:
                                mem[mem[_17202] + _17202 + 196] = 0
                            require ext_code.size(address(_17201))
                            call address(_17201).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15419, address(this.address), 128, mem[_17202], mem[_17202 + 196 len ceil32(mem[_17202])]
                    else:
                        require idx + 1 < mem[_10839]
                        _15877 = mem[(32 * idx + 1) + _10839 + 32]
                        require idx < mem[_10840]
                        require idx < mem[_10839]
                        if not mem[(32 * idx) + _10840 + 32]:
                            _17881 = mem[(32 * idx) + _10839 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15419
                            mem[mem[64] + 68] = address(_15877)
                            require ext_code.size(address(_17881))
                            call address(_17881).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15419, address(_15877)
                        else:
                            _17883 = mem[(32 * idx) + _10839 + 32]
                            _17884 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17884 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17884 + 36] = 0
                            mem[_17884 + 68] = _15419
                            mem[_17884 + 100] = address(_15877)
                            mem[_17884 + 132] = 128
                            mem[_17884 + 164] = mem[_17884]
                            s = 0
                            while s < mem[_17884]:
                                mem[s + _17884 + 196] = mem[s + _17884 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17884]) > mem[_17884]:
                                mem[mem[_17884] + _17884 + 196] = 0
                            require ext_code.size(address(_17883))
                            call address(_17883).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15419, address(_15877), 128, mem[_17884], mem[_17884 + 196 len ceil32(mem[_17884])]
                else:
                    if idx >= mem[_10838] - 2:
                        require idx < mem[_10840]
                        require idx < mem[_10839]
                        if not mem[(32 * idx) + _10840 + 32]:
                            _17205 = mem[(32 * idx) + _10839 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15419
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17205))
                            call address(_17205).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15419, 0, this.address
                        else:
                            _17207 = mem[(32 * idx) + _10839 + 32]
                            _17208 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17208 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17208 + 36] = _15419
                            mem[_17208 + 68] = 0
                            mem[_17208 + 100] = this.address
                            mem[_17208 + 132] = 128
                            mem[_17208 + 164] = mem[_17208]
                            s = 0
                            while s < mem[_17208]:
                                mem[s + _17208 + 196] = mem[s + _17208 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17208]) > mem[_17208]:
                                mem[mem[_17208] + _17208 + 196] = 0
                            require ext_code.size(address(_17207))
                            call address(_17207).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15419, 0, address(this.address), 128, mem[_17208], mem[_17208 + 196 len ceil32(mem[_17208])]
                    else:
                        require idx + 1 < mem[_10839]
                        _15879 = mem[(32 * idx + 1) + _10839 + 32]
                        require idx < mem[_10840]
                        require idx < mem[_10839]
                        if not mem[(32 * idx) + _10840 + 32]:
                            _17886 = mem[(32 * idx) + _10839 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15419
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_15879)
                            require ext_code.size(address(_17886))
                            call address(_17886).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15419, 0, address(_15879)
                        else:
                            _17888 = mem[(32 * idx) + _10839 + 32]
                            _17889 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17889 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17889 + 36] = _15419
                            mem[_17889 + 68] = 0
                            mem[_17889 + 100] = address(_15879)
                            mem[_17889 + 132] = 128
                            mem[_17889 + 164] = mem[_17889]
                            s = 0
                            while s < mem[_17889]:
                                mem[s + _17889 + 196] = mem[s + _17889 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17889]) > mem[_17889]:
                                mem[mem[_17889] + _17889 + 196] = 0
                            require ext_code.size(address(_17888))
                            call address(_17888).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15419, 0, address(_15879), 128, mem[_17889], mem[_17889 + 196 len ceil32(mem[_17889])]
            else:
                _15420 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _10838 + 44 len 20] == mem[(32 * idx + 1) + _10838 + 44 len 20]:
                    if idx >= mem[_10838] - 2:
                        require idx < mem[_10840]
                        require idx < mem[_10839]
                        if not mem[(32 * idx) + _10840 + 32]:
                            _17211 = mem[(32 * idx) + _10839 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15420
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17211))
                            call address(_17211).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15420, this.address
                        else:
                            _17213 = mem[(32 * idx) + _10839 + 32]
                            _17214 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17214 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17214 + 36] = 0
                            mem[_17214 + 68] = _15420
                            mem[_17214 + 100] = this.address
                            mem[_17214 + 132] = 128
                            mem[_17214 + 164] = mem[_17214]
                            s = 0
                            while s < mem[_17214]:
                                mem[s + _17214 + 196] = mem[s + _17214 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17214]) > mem[_17214]:
                                mem[mem[_17214] + _17214 + 196] = 0
                            require ext_code.size(address(_17213))
                            call address(_17213).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15420, address(this.address), 128, mem[_17214], mem[_17214 + 196 len ceil32(mem[_17214])]
                    else:
                        require idx + 1 < mem[_10839]
                        _15881 = mem[(32 * idx + 1) + _10839 + 32]
                        require idx < mem[_10840]
                        require idx < mem[_10839]
                        if not mem[(32 * idx) + _10840 + 32]:
                            _17891 = mem[(32 * idx) + _10839 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15420
                            mem[mem[64] + 68] = address(_15881)
                            require ext_code.size(address(_17891))
                            call address(_17891).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15420, address(_15881)
                        else:
                            _17893 = mem[(32 * idx) + _10839 + 32]
                            _17894 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17894 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17894 + 36] = 0
                            mem[_17894 + 68] = _15420
                            mem[_17894 + 100] = address(_15881)
                            mem[_17894 + 132] = 128
                            mem[_17894 + 164] = mem[_17894]
                            s = 0
                            while s < mem[_17894]:
                                mem[s + _17894 + 196] = mem[s + _17894 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17894]) > mem[_17894]:
                                mem[mem[_17894] + _17894 + 196] = 0
                            require ext_code.size(address(_17893))
                            call address(_17893).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15420, address(_15881), 128, mem[_17894], mem[_17894 + 196 len ceil32(mem[_17894])]
                else:
                    if idx >= mem[_10838] - 2:
                        require idx < mem[_10840]
                        require idx < mem[_10839]
                        if not mem[(32 * idx) + _10840 + 32]:
                            _17217 = mem[(32 * idx) + _10839 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15420
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17217))
                            call address(_17217).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15420, 0, this.address
                        else:
                            _17219 = mem[(32 * idx) + _10839 + 32]
                            _17220 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17220 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17220 + 36] = _15420
                            mem[_17220 + 68] = 0
                            mem[_17220 + 100] = this.address
                            mem[_17220 + 132] = 128
                            mem[_17220 + 164] = mem[_17220]
                            s = 0
                            while s < mem[_17220]:
                                mem[s + _17220 + 196] = mem[s + _17220 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17220]) > mem[_17220]:
                                mem[mem[_17220] + _17220 + 196] = 0
                            require ext_code.size(address(_17219))
                            call address(_17219).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15420, 0, address(this.address), 128, mem[_17220], mem[_17220 + 196 len ceil32(mem[_17220])]
                    else:
                        require idx + 1 < mem[_10839]
                        _15883 = mem[(32 * idx + 1) + _10839 + 32]
                        require idx < mem[_10840]
                        require idx < mem[_10839]
                        if not mem[(32 * idx) + _10840 + 32]:
                            _17896 = mem[(32 * idx) + _10839 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15420
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_15883)
                            require ext_code.size(address(_17896))
                            call address(_17896).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15420, 0, address(_15883)
                        else:
                            _17898 = mem[(32 * idx) + _10839 + 32]
                            _17899 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17899 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17899 + 36] = _15420
                            mem[_17899 + 68] = 0
                            mem[_17899 + 100] = address(_15883)
                            mem[_17899 + 132] = 128
                            mem[_17899 + 164] = mem[_17899]
                            s = 0
                            while s < mem[_17899]:
                                mem[s + _17899 + 196] = mem[s + _17899 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17899]) > mem[_17899]:
                                mem[mem[_17899] + _17899 + 196] = 0
                            require ext_code.size(address(_17898))
                            call address(_17898).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15420, 0, address(_15883), 128, mem[_17899], mem[_17899 + 196 len ceil32(mem[_17899])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _15300 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len 32 * _15300] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15300]
        return 32, mem[mem[64] + 32 len (32 * _15300) + 32]
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 68).length] = code.data[10045 len 32 * ('cd', 68).length]
    require 0 < ('cd', 68).length
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = cd[4]
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[(32 * ('cd', 68).length) + 128]
        require idx < mem[96]
        _5279 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _5292 = mem[(32 * idx + 1) + 128]
        require ext_code.size(mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20])
        staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            _5339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_5339] == mem[_5339 + 18 len 14]
            require mem[_5339 + 32] == mem[_5339 + 50 len 14]
            require mem[_5339 + 64] == mem[_5339 + 92 len 4]
            require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
            if address(_5279) == address(_5279):
                if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                    require mem[_5339 + 18 len 14]
                    if 1000 * mem[_5339 + 18 len 14] / mem[_5339 + 18 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_5339 + 18 len 14] < 1000 * mem[_5339 + 18 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_5339 + 18 len 14]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5339 + 18 len 14]
                else:
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                        if not mem[_5339 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_5339 + 18 len 14] / mem[_5339 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 18 len 14]) < 1000 * mem[_5339 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 18 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 18 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5339 + 50 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_5339 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_5339 + 18 len 14] / mem[_5339 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 18 len 14]) < 1000 * mem[_5339 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 18 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 18 len 14])
            else:
                if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                    require mem[_5339 + 50 len 14]
                    if 1000 * mem[_5339 + 50 len 14] / mem[_5339 + 50 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_5339 + 50 len 14] < 1000 * mem[_5339 + 50 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_5339 + 50 len 14]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5339 + 50 len 14]
                else:
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                        if not mem[_5339 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_5339 + 50 len 14] / mem[_5339 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 50 len 14]) < 1000 * mem[_5339 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 50 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 50 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5339 + 18 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_5339 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_5339 + 50 len 14] / mem[_5339 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 50 len 14]) < 1000 * mem[_5339 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 50 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5339 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5339 + 50 len 14])
        else:
            _5340 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_5340] == mem[_5340 + 18 len 14]
            require mem[_5340 + 32] == mem[_5340 + 50 len 14]
            require mem[_5340 + 64] == mem[_5340 + 92 len 4]
            require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
            if address(_5279) == address(_5292):
                if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                    require mem[_5340 + 18 len 14]
                    if 1000 * mem[_5340 + 18 len 14] / mem[_5340 + 18 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_5340 + 18 len 14] < 1000 * mem[_5340 + 18 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_5340 + 18 len 14]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5340 + 18 len 14]
                else:
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                        if not mem[_5340 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_5340 + 18 len 14] / mem[_5340 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 18 len 14]) < 1000 * mem[_5340 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 18 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 18 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5340 + 50 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_5340 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_5340 + 18 len 14] / mem[_5340 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 18 len 14]) < 1000 * mem[_5340 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 18 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 18 len 14])
            else:
                if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                    require mem[_5340 + 50 len 14]
                    if 1000 * mem[_5340 + 50 len 14] / mem[_5340 + 50 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_5340 + 50 len 14] < 1000 * mem[_5340 + 50 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_5340 + 50 len 14]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_5340 + 50 len 14]
                else:
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                        if not mem[_5340 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_5340 + 50 len 14] / mem[_5340 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 50 len 14]) < 1000 * mem[_5340 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 50 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 50 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_5340 + 18 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_5340 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_5340 + 50 len 14] / mem[_5340 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 50 len 14]) < 1000 * mem[_5340 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 50 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_5340 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_5340 + 50 len 14])
        idx = idx + 1
        continue 
    require mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
    if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < cd[36]:
        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
    require 0 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
    require mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
    if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
        revert with 0, 'Sorry bruh'
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require 0 < ('cd', 100).length
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require 0 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
    _5376 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
    _5380 = mem[64]
    mem[mem[64] + 36] = address(('cd', 100)[0])
    mem[mem[64] + 68] = _5376
    _5470 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_5470 + 32 len 4] = unknown_0xa9059cbb(?????)
    _5476 = mem[_5470]
    mem[_5380 + 100 len ceil32(mem[_5470])] = mem[_5470 + 32 len ceil32(mem[_5470])]
    if ceil32(_5476) <= _5476:
        call address(('cd', 68)[0]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5476 + _5380 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if not mem[96]:
                _10577 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_10577] = ('cd', 68).length
                mem[_10577 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_10577 + (32 * ('cd', 68).length) + 32] = 0
                _10578 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_10578] = ('cd', 100).length
                mem[_10578 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_10578 + (32 * ('cd', 100).length) + 32] = 0
                _10579 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_10579] = ('cd', 164).length
                mem[_10579 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_10579 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_10577]
                    require idx + 1 < mem[_10577]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _10577 + 44 len 20] < mem[(32 * idx + 1) + _10577 + 44 len 20]:
                        _15421 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10577 + 44 len 20] == mem[(32 * idx) + _10577 + 44 len 20]:
                            if idx >= mem[_10577] - 2:
                                require idx < mem[_10579]
                                require idx < mem[_10578]
                                if not mem[(32 * idx) + _10579 + 32]:
                                    _17224 = mem[(32 * idx) + _10578 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15421
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17224))
                                    call address(_17224).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15421, this.address
                                else:
                                    _17226 = mem[(32 * idx) + _10578 + 32]
                                    _17227 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17227 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17227 + 36] = 0
                                    mem[_17227 + 68] = _15421
                                    mem[_17227 + 100] = this.address
                                    mem[_17227 + 132] = 128
                                    mem[_17227 + 164] = mem[_17227]
                                    s = 0
                                    while s < mem[_17227]:
                                        mem[s + _17227 + 196] = mem[s + _17227 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17227]) > mem[_17227]:
                                        mem[mem[_17227] + _17227 + 196] = 0
                                    require ext_code.size(address(_17226))
                                    call address(_17226).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15421, address(this.address), 128, mem[_17227], mem[_17227 + 196 len ceil32(mem[_17227])]
                            else:
                                require idx + 1 < mem[_10578]
                                _15885 = mem[(32 * idx + 1) + _10578 + 32]
                                require idx < mem[_10579]
                                require idx < mem[_10578]
                                if not mem[(32 * idx) + _10579 + 32]:
                                    _17901 = mem[(32 * idx) + _10578 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15421
                                    mem[mem[64] + 68] = address(_15885)
                                    require ext_code.size(address(_17901))
                                    call address(_17901).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15421, address(_15885)
                                else:
                                    _17903 = mem[(32 * idx) + _10578 + 32]
                                    _17904 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17904 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17904 + 36] = 0
                                    mem[_17904 + 68] = _15421
                                    mem[_17904 + 100] = address(_15885)
                                    mem[_17904 + 132] = 128
                                    mem[_17904 + 164] = mem[_17904]
                                    s = 0
                                    while s < mem[_17904]:
                                        mem[s + _17904 + 196] = mem[s + _17904 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17904]) > mem[_17904]:
                                        mem[mem[_17904] + _17904 + 196] = 0
                                    require ext_code.size(address(_17903))
                                    call address(_17903).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15421, address(_15885), 128, mem[_17904], mem[_17904 + 196 len ceil32(mem[_17904])]
                        else:
                            if idx >= mem[_10577] - 2:
                                require idx < mem[_10579]
                                require idx < mem[_10578]
                                if not mem[(32 * idx) + _10579 + 32]:
                                    _17230 = mem[(32 * idx) + _10578 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15421
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17230))
                                    call address(_17230).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15421, 0, this.address
                                else:
                                    _17232 = mem[(32 * idx) + _10578 + 32]
                                    _17233 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17233 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17233 + 36] = _15421
                                    mem[_17233 + 68] = 0
                                    mem[_17233 + 100] = this.address
                                    mem[_17233 + 132] = 128
                                    mem[_17233 + 164] = mem[_17233]
                                    s = 0
                                    while s < mem[_17233]:
                                        mem[s + _17233 + 196] = mem[s + _17233 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17233]) > mem[_17233]:
                                        mem[mem[_17233] + _17233 + 196] = 0
                                    require ext_code.size(address(_17232))
                                    call address(_17232).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15421, 0, address(this.address), 128, mem[_17233], mem[_17233 + 196 len ceil32(mem[_17233])]
                            else:
                                require idx + 1 < mem[_10578]
                                _15887 = mem[(32 * idx + 1) + _10578 + 32]
                                require idx < mem[_10579]
                                require idx < mem[_10578]
                                if not mem[(32 * idx) + _10579 + 32]:
                                    _17906 = mem[(32 * idx) + _10578 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15421
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15887)
                                    require ext_code.size(address(_17906))
                                    call address(_17906).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15421, 0, address(_15887)
                                else:
                                    _17908 = mem[(32 * idx) + _10578 + 32]
                                    _17909 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17909 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17909 + 36] = _15421
                                    mem[_17909 + 68] = 0
                                    mem[_17909 + 100] = address(_15887)
                                    mem[_17909 + 132] = 128
                                    mem[_17909 + 164] = mem[_17909]
                                    s = 0
                                    while s < mem[_17909]:
                                        mem[s + _17909 + 196] = mem[s + _17909 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17909]) > mem[_17909]:
                                        mem[mem[_17909] + _17909 + 196] = 0
                                    require ext_code.size(address(_17908))
                                    call address(_17908).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15421, 0, address(_15887), 128, mem[_17909], mem[_17909 + 196 len ceil32(mem[_17909])]
                    else:
                        _15422 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _10577 + 44 len 20] == mem[(32 * idx + 1) + _10577 + 44 len 20]:
                            if idx >= mem[_10577] - 2:
                                require idx < mem[_10579]
                                require idx < mem[_10578]
                                if not mem[(32 * idx) + _10579 + 32]:
                                    _17236 = mem[(32 * idx) + _10578 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15422
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17236))
                                    call address(_17236).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15422, this.address
                                else:
                                    _17238 = mem[(32 * idx) + _10578 + 32]
                                    _17239 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17239 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17239 + 36] = 0
                                    mem[_17239 + 68] = _15422
                                    mem[_17239 + 100] = this.address
                                    mem[_17239 + 132] = 128
                                    mem[_17239 + 164] = mem[_17239]
                                    s = 0
                                    while s < mem[_17239]:
                                        mem[s + _17239 + 196] = mem[s + _17239 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17239]) > mem[_17239]:
                                        mem[mem[_17239] + _17239 + 196] = 0
                                    require ext_code.size(address(_17238))
                                    call address(_17238).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15422, address(this.address), 128, mem[_17239], mem[_17239 + 196 len ceil32(mem[_17239])]
                            else:
                                require idx + 1 < mem[_10578]
                                _15889 = mem[(32 * idx + 1) + _10578 + 32]
                                require idx < mem[_10579]
                                require idx < mem[_10578]
                                if not mem[(32 * idx) + _10579 + 32]:
                                    _17911 = mem[(32 * idx) + _10578 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _15422
                                    mem[mem[64] + 68] = address(_15889)
                                    require ext_code.size(address(_17911))
                                    call address(_17911).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _15422, address(_15889)
                                else:
                                    _17913 = mem[(32 * idx) + _10578 + 32]
                                    _17914 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17914 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17914 + 36] = 0
                                    mem[_17914 + 68] = _15422
                                    mem[_17914 + 100] = address(_15889)
                                    mem[_17914 + 132] = 128
                                    mem[_17914 + 164] = mem[_17914]
                                    s = 0
                                    while s < mem[_17914]:
                                        mem[s + _17914 + 196] = mem[s + _17914 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17914]) > mem[_17914]:
                                        mem[mem[_17914] + _17914 + 196] = 0
                                    require ext_code.size(address(_17913))
                                    call address(_17913).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _15422, address(_15889), 128, mem[_17914], mem[_17914 + 196 len ceil32(mem[_17914])]
                        else:
                            if idx >= mem[_10577] - 2:
                                require idx < mem[_10579]
                                require idx < mem[_10578]
                                if not mem[(32 * idx) + _10579 + 32]:
                                    _17242 = mem[(32 * idx) + _10578 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15422
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_17242))
                                    call address(_17242).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15422, 0, this.address
                                else:
                                    _17244 = mem[(32 * idx) + _10578 + 32]
                                    _17245 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17245 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17245 + 36] = _15422
                                    mem[_17245 + 68] = 0
                                    mem[_17245 + 100] = this.address
                                    mem[_17245 + 132] = 128
                                    mem[_17245 + 164] = mem[_17245]
                                    s = 0
                                    while s < mem[_17245]:
                                        mem[s + _17245 + 196] = mem[s + _17245 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17245]) > mem[_17245]:
                                        mem[mem[_17245] + _17245 + 196] = 0
                                    require ext_code.size(address(_17244))
                                    call address(_17244).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15422, 0, address(this.address), 128, mem[_17245], mem[_17245 + 196 len ceil32(mem[_17245])]
                            else:
                                require idx + 1 < mem[_10578]
                                _15891 = mem[(32 * idx + 1) + _10578 + 32]
                                require idx < mem[_10579]
                                require idx < mem[_10578]
                                if not mem[(32 * idx) + _10579 + 32]:
                                    _17916 = mem[(32 * idx) + _10578 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _15422
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_15891)
                                    require ext_code.size(address(_17916))
                                    call address(_17916).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _15422, 0, address(_15891)
                                else:
                                    _17918 = mem[(32 * idx) + _10578 + 32]
                                    _17919 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_17919 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_17919 + 36] = _15422
                                    mem[_17919 + 68] = 0
                                    mem[_17919 + 100] = address(_15891)
                                    mem[_17919 + 132] = 128
                                    mem[_17919 + 164] = mem[_17919]
                                    s = 0
                                    while s < mem[_17919]:
                                        mem[s + _17919 + 196] = mem[s + _17919 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_17919]) > mem[_17919]:
                                        mem[mem[_17919] + _17919 + 196] = 0
                                    require ext_code.size(address(_17918))
                                    call address(_17918).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _15422, 0, address(_15891), 128, mem[_17919], mem[_17919 + 196 len ceil32(mem[_17919])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _15301 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _15301] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15301]
                return 32, mem[mem[64] + 32 len (32 * _15301) + 32]
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            _10843 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_10843] = ('cd', 68).length
            mem[_10843 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_10843 + (32 * ('cd', 68).length) + 32] = 0
            _10844 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_10844] = ('cd', 100).length
            mem[_10844 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_10844 + (32 * ('cd', 100).length) + 32] = 0
            _10845 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_10845] = ('cd', 164).length
            mem[_10845 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_10845 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_10843]
                require idx + 1 < mem[_10843]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _10843 + 44 len 20] < mem[(32 * idx + 1) + _10843 + 44 len 20]:
                    _15423 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10843 + 44 len 20] == mem[(32 * idx) + _10843 + 44 len 20]:
                        if idx >= mem[_10843] - 2:
                            require idx < mem[_10845]
                            require idx < mem[_10844]
                            if not mem[(32 * idx) + _10845 + 32]:
                                _17249 = mem[(32 * idx) + _10844 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15423
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17249))
                                call address(_17249).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15423, this.address
                            else:
                                _17251 = mem[(32 * idx) + _10844 + 32]
                                _17252 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17252 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17252 + 36] = 0
                                mem[_17252 + 68] = _15423
                                mem[_17252 + 100] = this.address
                                mem[_17252 + 132] = 128
                                mem[_17252 + 164] = mem[_17252]
                                s = 0
                                while s < mem[_17252]:
                                    mem[s + _17252 + 196] = mem[s + _17252 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17252]) > mem[_17252]:
                                    mem[mem[_17252] + _17252 + 196] = 0
                                require ext_code.size(address(_17251))
                                call address(_17251).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15423, address(this.address), 128, mem[_17252], mem[_17252 + 196 len ceil32(mem[_17252])]
                        else:
                            require idx + 1 < mem[_10844]
                            _15893 = mem[(32 * idx + 1) + _10844 + 32]
                            require idx < mem[_10845]
                            require idx < mem[_10844]
                            if not mem[(32 * idx) + _10845 + 32]:
                                _17921 = mem[(32 * idx) + _10844 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15423
                                mem[mem[64] + 68] = address(_15893)
                                require ext_code.size(address(_17921))
                                call address(_17921).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15423, address(_15893)
                            else:
                                _17923 = mem[(32 * idx) + _10844 + 32]
                                _17924 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17924 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17924 + 36] = 0
                                mem[_17924 + 68] = _15423
                                mem[_17924 + 100] = address(_15893)
                                mem[_17924 + 132] = 128
                                mem[_17924 + 164] = mem[_17924]
                                s = 0
                                while s < mem[_17924]:
                                    mem[s + _17924 + 196] = mem[s + _17924 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17924]) > mem[_17924]:
                                    mem[mem[_17924] + _17924 + 196] = 0
                                require ext_code.size(address(_17923))
                                call address(_17923).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15423, address(_15893), 128, mem[_17924], mem[_17924 + 196 len ceil32(mem[_17924])]
                    else:
                        if idx >= mem[_10843] - 2:
                            require idx < mem[_10845]
                            require idx < mem[_10844]
                            if not mem[(32 * idx) + _10845 + 32]:
                                _17255 = mem[(32 * idx) + _10844 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15423
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17255))
                                call address(_17255).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15423, 0, this.address
                            else:
                                _17257 = mem[(32 * idx) + _10844 + 32]
                                _17258 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17258 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17258 + 36] = _15423
                                mem[_17258 + 68] = 0
                                mem[_17258 + 100] = this.address
                                mem[_17258 + 132] = 128
                                mem[_17258 + 164] = mem[_17258]
                                s = 0
                                while s < mem[_17258]:
                                    mem[s + _17258 + 196] = mem[s + _17258 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17258]) > mem[_17258]:
                                    mem[mem[_17258] + _17258 + 196] = 0
                                require ext_code.size(address(_17257))
                                call address(_17257).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15423, 0, address(this.address), 128, mem[_17258], mem[_17258 + 196 len ceil32(mem[_17258])]
                        else:
                            require idx + 1 < mem[_10844]
                            _15895 = mem[(32 * idx + 1) + _10844 + 32]
                            require idx < mem[_10845]
                            require idx < mem[_10844]
                            if not mem[(32 * idx) + _10845 + 32]:
                                _17926 = mem[(32 * idx) + _10844 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15423
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15895)
                                require ext_code.size(address(_17926))
                                call address(_17926).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15423, 0, address(_15895)
                            else:
                                _17928 = mem[(32 * idx) + _10844 + 32]
                                _17929 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17929 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17929 + 36] = _15423
                                mem[_17929 + 68] = 0
                                mem[_17929 + 100] = address(_15895)
                                mem[_17929 + 132] = 128
                                mem[_17929 + 164] = mem[_17929]
                                s = 0
                                while s < mem[_17929]:
                                    mem[s + _17929 + 196] = mem[s + _17929 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17929]) > mem[_17929]:
                                    mem[mem[_17929] + _17929 + 196] = 0
                                require ext_code.size(address(_17928))
                                call address(_17928).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15423, 0, address(_15895), 128, mem[_17929], mem[_17929 + 196 len ceil32(mem[_17929])]
                else:
                    _15424 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10843 + 44 len 20] == mem[(32 * idx + 1) + _10843 + 44 len 20]:
                        if idx >= mem[_10843] - 2:
                            require idx < mem[_10845]
                            require idx < mem[_10844]
                            if not mem[(32 * idx) + _10845 + 32]:
                                _17261 = mem[(32 * idx) + _10844 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15424
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17261))
                                call address(_17261).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15424, this.address
                            else:
                                _17263 = mem[(32 * idx) + _10844 + 32]
                                _17264 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17264 + 36] = 0
                                mem[_17264 + 68] = _15424
                                mem[_17264 + 100] = this.address
                                mem[_17264 + 132] = 128
                                mem[_17264 + 164] = mem[_17264]
                                s = 0
                                while s < mem[_17264]:
                                    mem[s + _17264 + 196] = mem[s + _17264 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17264]) > mem[_17264]:
                                    mem[mem[_17264] + _17264 + 196] = 0
                                require ext_code.size(address(_17263))
                                call address(_17263).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15424, address(this.address), 128, mem[_17264], mem[_17264 + 196 len ceil32(mem[_17264])]
                        else:
                            require idx + 1 < mem[_10844]
                            _15897 = mem[(32 * idx + 1) + _10844 + 32]
                            require idx < mem[_10845]
                            require idx < mem[_10844]
                            if not mem[(32 * idx) + _10845 + 32]:
                                _17931 = mem[(32 * idx) + _10844 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15424
                                mem[mem[64] + 68] = address(_15897)
                                require ext_code.size(address(_17931))
                                call address(_17931).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15424, address(_15897)
                            else:
                                _17933 = mem[(32 * idx) + _10844 + 32]
                                _17934 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17934 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17934 + 36] = 0
                                mem[_17934 + 68] = _15424
                                mem[_17934 + 100] = address(_15897)
                                mem[_17934 + 132] = 128
                                mem[_17934 + 164] = mem[_17934]
                                s = 0
                                while s < mem[_17934]:
                                    mem[s + _17934 + 196] = mem[s + _17934 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17934]) > mem[_17934]:
                                    mem[mem[_17934] + _17934 + 196] = 0
                                require ext_code.size(address(_17933))
                                call address(_17933).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15424, address(_15897), 128, mem[_17934], mem[_17934 + 196 len ceil32(mem[_17934])]
                    else:
                        if idx >= mem[_10843] - 2:
                            require idx < mem[_10845]
                            require idx < mem[_10844]
                            if not mem[(32 * idx) + _10845 + 32]:
                                _17267 = mem[(32 * idx) + _10844 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15424
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17267))
                                call address(_17267).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15424, 0, this.address
                            else:
                                _17269 = mem[(32 * idx) + _10844 + 32]
                                _17270 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17270 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17270 + 36] = _15424
                                mem[_17270 + 68] = 0
                                mem[_17270 + 100] = this.address
                                mem[_17270 + 132] = 128
                                mem[_17270 + 164] = mem[_17270]
                                s = 0
                                while s < mem[_17270]:
                                    mem[s + _17270 + 196] = mem[s + _17270 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17270]) > mem[_17270]:
                                    mem[mem[_17270] + _17270 + 196] = 0
                                require ext_code.size(address(_17269))
                                call address(_17269).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15424, 0, address(this.address), 128, mem[_17270], mem[_17270 + 196 len ceil32(mem[_17270])]
                        else:
                            require idx + 1 < mem[_10844]
                            _15899 = mem[(32 * idx + 1) + _10844 + 32]
                            require idx < mem[_10845]
                            require idx < mem[_10844]
                            if not mem[(32 * idx) + _10845 + 32]:
                                _17936 = mem[(32 * idx) + _10844 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15424
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15899)
                                require ext_code.size(address(_17936))
                                call address(_17936).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15424, 0, address(_15899)
                            else:
                                _17938 = mem[(32 * idx) + _10844 + 32]
                                _17939 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17939 + 36] = _15424
                                mem[_17939 + 68] = 0
                                mem[_17939 + 100] = address(_15899)
                                mem[_17939 + 132] = 128
                                mem[_17939 + 164] = mem[_17939]
                                s = 0
                                while s < mem[_17939]:
                                    mem[s + _17939 + 196] = mem[s + _17939 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17939]) > mem[_17939]:
                                    mem[mem[_17939] + _17939 + 196] = 0
                                require ext_code.size(address(_17938))
                                call address(_17938).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15424, 0, address(_15899), 128, mem[_17939], mem[_17939 + 196 len ceil32(mem[_17939])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _15302 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _15302] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15302]
            return 32, mem[mem[64] + 32 len (32 * _15302) + 32]
        _10491 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_10491] = return_data.size
        mem[_10491 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if not return_data.size:
            _10580 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_10580] = ('cd', 68).length
            mem[_10580 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_10580 + (32 * ('cd', 68).length) + 32] = 0
            _10581 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_10581] = ('cd', 100).length
            mem[_10581 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_10581 + (32 * ('cd', 100).length) + 32] = 0
            _10582 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_10582] = ('cd', 164).length
            mem[_10582 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_10582 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_10580]
                require idx + 1 < mem[_10580]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _10580 + 44 len 20] < mem[(32 * idx + 1) + _10580 + 44 len 20]:
                    _15425 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10580 + 44 len 20] == mem[(32 * idx) + _10580 + 44 len 20]:
                        if idx >= mem[_10580] - 2:
                            require idx < mem[_10582]
                            require idx < mem[_10581]
                            if not mem[(32 * idx) + _10582 + 32]:
                                _17274 = mem[(32 * idx) + _10581 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15425
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17274))
                                call address(_17274).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15425, this.address
                            else:
                                _17276 = mem[(32 * idx) + _10581 + 32]
                                _17277 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17277 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17277 + 36] = 0
                                mem[_17277 + 68] = _15425
                                mem[_17277 + 100] = this.address
                                mem[_17277 + 132] = 128
                                mem[_17277 + 164] = mem[_17277]
                                s = 0
                                while s < mem[_17277]:
                                    mem[s + _17277 + 196] = mem[s + _17277 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17277]) > mem[_17277]:
                                    mem[mem[_17277] + _17277 + 196] = 0
                                require ext_code.size(address(_17276))
                                call address(_17276).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15425, address(this.address), 128, mem[_17277], mem[_17277 + 196 len ceil32(mem[_17277])]
                        else:
                            require idx + 1 < mem[_10581]
                            _15901 = mem[(32 * idx + 1) + _10581 + 32]
                            require idx < mem[_10582]
                            require idx < mem[_10581]
                            if not mem[(32 * idx) + _10582 + 32]:
                                _17941 = mem[(32 * idx) + _10581 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15425
                                mem[mem[64] + 68] = address(_15901)
                                require ext_code.size(address(_17941))
                                call address(_17941).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15425, address(_15901)
                            else:
                                _17943 = mem[(32 * idx) + _10581 + 32]
                                _17944 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17944 + 36] = 0
                                mem[_17944 + 68] = _15425
                                mem[_17944 + 100] = address(_15901)
                                mem[_17944 + 132] = 128
                                mem[_17944 + 164] = mem[_17944]
                                s = 0
                                while s < mem[_17944]:
                                    mem[s + _17944 + 196] = mem[s + _17944 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17944]) > mem[_17944]:
                                    mem[mem[_17944] + _17944 + 196] = 0
                                require ext_code.size(address(_17943))
                                call address(_17943).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15425, address(_15901), 128, mem[_17944], mem[_17944 + 196 len ceil32(mem[_17944])]
                    else:
                        if idx >= mem[_10580] - 2:
                            require idx < mem[_10582]
                            require idx < mem[_10581]
                            if not mem[(32 * idx) + _10582 + 32]:
                                _17280 = mem[(32 * idx) + _10581 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15425
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17280))
                                call address(_17280).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15425, 0, this.address
                            else:
                                _17282 = mem[(32 * idx) + _10581 + 32]
                                _17283 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17283 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17283 + 36] = _15425
                                mem[_17283 + 68] = 0
                                mem[_17283 + 100] = this.address
                                mem[_17283 + 132] = 128
                                mem[_17283 + 164] = mem[_17283]
                                s = 0
                                while s < mem[_17283]:
                                    mem[s + _17283 + 196] = mem[s + _17283 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17283]) > mem[_17283]:
                                    mem[mem[_17283] + _17283 + 196] = 0
                                require ext_code.size(address(_17282))
                                call address(_17282).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15425, 0, address(this.address), 128, mem[_17283], mem[_17283 + 196 len ceil32(mem[_17283])]
                        else:
                            require idx + 1 < mem[_10581]
                            _15903 = mem[(32 * idx + 1) + _10581 + 32]
                            require idx < mem[_10582]
                            require idx < mem[_10581]
                            if not mem[(32 * idx) + _10582 + 32]:
                                _17946 = mem[(32 * idx) + _10581 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15425
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15903)
                                require ext_code.size(address(_17946))
                                call address(_17946).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15425, 0, address(_15903)
                            else:
                                _17948 = mem[(32 * idx) + _10581 + 32]
                                _17949 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17949 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17949 + 36] = _15425
                                mem[_17949 + 68] = 0
                                mem[_17949 + 100] = address(_15903)
                                mem[_17949 + 132] = 128
                                mem[_17949 + 164] = mem[_17949]
                                s = 0
                                while s < mem[_17949]:
                                    mem[s + _17949 + 196] = mem[s + _17949 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17949]) > mem[_17949]:
                                    mem[mem[_17949] + _17949 + 196] = 0
                                require ext_code.size(address(_17948))
                                call address(_17948).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15425, 0, address(_15903), 128, mem[_17949], mem[_17949 + 196 len ceil32(mem[_17949])]
                else:
                    _15426 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10580 + 44 len 20] == mem[(32 * idx + 1) + _10580 + 44 len 20]:
                        if idx >= mem[_10580] - 2:
                            require idx < mem[_10582]
                            require idx < mem[_10581]
                            if not mem[(32 * idx) + _10582 + 32]:
                                _17286 = mem[(32 * idx) + _10581 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15426
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17286))
                                call address(_17286).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15426, this.address
                            else:
                                _17288 = mem[(32 * idx) + _10581 + 32]
                                _17289 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17289 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17289 + 36] = 0
                                mem[_17289 + 68] = _15426
                                mem[_17289 + 100] = this.address
                                mem[_17289 + 132] = 128
                                mem[_17289 + 164] = mem[_17289]
                                s = 0
                                while s < mem[_17289]:
                                    mem[s + _17289 + 196] = mem[s + _17289 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17289]) > mem[_17289]:
                                    mem[mem[_17289] + _17289 + 196] = 0
                                require ext_code.size(address(_17288))
                                call address(_17288).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15426, address(this.address), 128, mem[_17289], mem[_17289 + 196 len ceil32(mem[_17289])]
                        else:
                            require idx + 1 < mem[_10581]
                            _15905 = mem[(32 * idx + 1) + _10581 + 32]
                            require idx < mem[_10582]
                            require idx < mem[_10581]
                            if not mem[(32 * idx) + _10582 + 32]:
                                _17951 = mem[(32 * idx) + _10581 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15426
                                mem[mem[64] + 68] = address(_15905)
                                require ext_code.size(address(_17951))
                                call address(_17951).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15426, address(_15905)
                            else:
                                _17953 = mem[(32 * idx) + _10581 + 32]
                                _17954 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17954 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17954 + 36] = 0
                                mem[_17954 + 68] = _15426
                                mem[_17954 + 100] = address(_15905)
                                mem[_17954 + 132] = 128
                                mem[_17954 + 164] = mem[_17954]
                                s = 0
                                while s < mem[_17954]:
                                    mem[s + _17954 + 196] = mem[s + _17954 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17954]) > mem[_17954]:
                                    mem[mem[_17954] + _17954 + 196] = 0
                                require ext_code.size(address(_17953))
                                call address(_17953).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15426, address(_15905), 128, mem[_17954], mem[_17954 + 196 len ceil32(mem[_17954])]
                    else:
                        if idx >= mem[_10580] - 2:
                            require idx < mem[_10582]
                            require idx < mem[_10581]
                            if not mem[(32 * idx) + _10582 + 32]:
                                _17292 = mem[(32 * idx) + _10581 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15426
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17292))
                                call address(_17292).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15426, 0, this.address
                            else:
                                _17294 = mem[(32 * idx) + _10581 + 32]
                                _17295 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17295 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17295 + 36] = _15426
                                mem[_17295 + 68] = 0
                                mem[_17295 + 100] = this.address
                                mem[_17295 + 132] = 128
                                mem[_17295 + 164] = mem[_17295]
                                s = 0
                                while s < mem[_17295]:
                                    mem[s + _17295 + 196] = mem[s + _17295 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17295]) > mem[_17295]:
                                    mem[mem[_17295] + _17295 + 196] = 0
                                require ext_code.size(address(_17294))
                                call address(_17294).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15426, 0, address(this.address), 128, mem[_17295], mem[_17295 + 196 len ceil32(mem[_17295])]
                        else:
                            require idx + 1 < mem[_10581]
                            _15907 = mem[(32 * idx + 1) + _10581 + 32]
                            require idx < mem[_10582]
                            require idx < mem[_10581]
                            if not mem[(32 * idx) + _10582 + 32]:
                                _17956 = mem[(32 * idx) + _10581 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15426
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15907)
                                require ext_code.size(address(_17956))
                                call address(_17956).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15426, 0, address(_15907)
                            else:
                                _17958 = mem[(32 * idx) + _10581 + 32]
                                _17959 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17959 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17959 + 36] = _15426
                                mem[_17959 + 68] = 0
                                mem[_17959 + 100] = address(_15907)
                                mem[_17959 + 132] = 128
                                mem[_17959 + 164] = mem[_17959]
                                s = 0
                                while s < mem[_17959]:
                                    mem[s + _17959 + 196] = mem[s + _17959 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17959]) > mem[_17959]:
                                    mem[mem[_17959] + _17959 + 196] = 0
                                require ext_code.size(address(_17958))
                                call address(_17958).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15426, 0, address(_15907), 128, mem[_17959], mem[_17959 + 196 len ceil32(mem[_17959])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _15303 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _15303] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15303]
            return 32, mem[mem[64] + 32 len (32 * _15303) + 32]
        require return_data.size >= 32
        require mem[_10491 + 32] == bool(mem[_10491 + 32])
        if not mem[_10491 + 32]:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        _10848 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_10848] = ('cd', 68).length
        mem[_10848 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_10848 + (32 * ('cd', 68).length) + 32] = 0
        _10849 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_10849] = ('cd', 100).length
        mem[_10849 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_10849 + (32 * ('cd', 100).length) + 32] = 0
        _10850 = mem[64]
        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
        mem[_10850] = ('cd', 164).length
        mem[_10850 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[_10850 + (32 * ('cd', 164).length) + 32] = 0
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[_10848]
            require idx + 1 < mem[_10848]
            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * idx) + _10848 + 44 len 20] < mem[(32 * idx + 1) + _10848 + 44 len 20]:
                _15427 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _10848 + 44 len 20] == mem[(32 * idx) + _10848 + 44 len 20]:
                    if idx >= mem[_10848] - 2:
                        require idx < mem[_10850]
                        require idx < mem[_10849]
                        if not mem[(32 * idx) + _10850 + 32]:
                            _17299 = mem[(32 * idx) + _10849 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15427
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17299))
                            call address(_17299).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15427, this.address
                        else:
                            _17301 = mem[(32 * idx) + _10849 + 32]
                            _17302 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17302 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17302 + 36] = 0
                            mem[_17302 + 68] = _15427
                            mem[_17302 + 100] = this.address
                            mem[_17302 + 132] = 128
                            mem[_17302 + 164] = mem[_17302]
                            s = 0
                            while s < mem[_17302]:
                                mem[s + _17302 + 196] = mem[s + _17302 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17302]) > mem[_17302]:
                                mem[mem[_17302] + _17302 + 196] = 0
                            require ext_code.size(address(_17301))
                            call address(_17301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15427, address(this.address), 128, mem[_17302], mem[_17302 + 196 len ceil32(mem[_17302])]
                    else:
                        require idx + 1 < mem[_10849]
                        _15909 = mem[(32 * idx + 1) + _10849 + 32]
                        require idx < mem[_10850]
                        require idx < mem[_10849]
                        if not mem[(32 * idx) + _10850 + 32]:
                            _17961 = mem[(32 * idx) + _10849 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15427
                            mem[mem[64] + 68] = address(_15909)
                            require ext_code.size(address(_17961))
                            call address(_17961).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15427, address(_15909)
                        else:
                            _17963 = mem[(32 * idx) + _10849 + 32]
                            _17964 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17964 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17964 + 36] = 0
                            mem[_17964 + 68] = _15427
                            mem[_17964 + 100] = address(_15909)
                            mem[_17964 + 132] = 128
                            mem[_17964 + 164] = mem[_17964]
                            s = 0
                            while s < mem[_17964]:
                                mem[s + _17964 + 196] = mem[s + _17964 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17964]) > mem[_17964]:
                                mem[mem[_17964] + _17964 + 196] = 0
                            require ext_code.size(address(_17963))
                            call address(_17963).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15427, address(_15909), 128, mem[_17964], mem[_17964 + 196 len ceil32(mem[_17964])]
                else:
                    if idx >= mem[_10848] - 2:
                        require idx < mem[_10850]
                        require idx < mem[_10849]
                        if not mem[(32 * idx) + _10850 + 32]:
                            _17305 = mem[(32 * idx) + _10849 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15427
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17305))
                            call address(_17305).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15427, 0, this.address
                        else:
                            _17307 = mem[(32 * idx) + _10849 + 32]
                            _17308 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17308 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17308 + 36] = _15427
                            mem[_17308 + 68] = 0
                            mem[_17308 + 100] = this.address
                            mem[_17308 + 132] = 128
                            mem[_17308 + 164] = mem[_17308]
                            s = 0
                            while s < mem[_17308]:
                                mem[s + _17308 + 196] = mem[s + _17308 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17308]) > mem[_17308]:
                                mem[mem[_17308] + _17308 + 196] = 0
                            require ext_code.size(address(_17307))
                            call address(_17307).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15427, 0, address(this.address), 128, mem[_17308], mem[_17308 + 196 len ceil32(mem[_17308])]
                    else:
                        require idx + 1 < mem[_10849]
                        _15911 = mem[(32 * idx + 1) + _10849 + 32]
                        require idx < mem[_10850]
                        require idx < mem[_10849]
                        if not mem[(32 * idx) + _10850 + 32]:
                            _17966 = mem[(32 * idx) + _10849 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15427
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_15911)
                            require ext_code.size(address(_17966))
                            call address(_17966).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15427, 0, address(_15911)
                        else:
                            _17968 = mem[(32 * idx) + _10849 + 32]
                            _17969 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17969 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17969 + 36] = _15427
                            mem[_17969 + 68] = 0
                            mem[_17969 + 100] = address(_15911)
                            mem[_17969 + 132] = 128
                            mem[_17969 + 164] = mem[_17969]
                            s = 0
                            while s < mem[_17969]:
                                mem[s + _17969 + 196] = mem[s + _17969 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17969]) > mem[_17969]:
                                mem[mem[_17969] + _17969 + 196] = 0
                            require ext_code.size(address(_17968))
                            call address(_17968).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15427, 0, address(_15911), 128, mem[_17969], mem[_17969 + 196 len ceil32(mem[_17969])]
            else:
                _15428 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _10848 + 44 len 20] == mem[(32 * idx + 1) + _10848 + 44 len 20]:
                    if idx >= mem[_10848] - 2:
                        require idx < mem[_10850]
                        require idx < mem[_10849]
                        if not mem[(32 * idx) + _10850 + 32]:
                            _17311 = mem[(32 * idx) + _10849 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15428
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17311))
                            call address(_17311).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15428, this.address
                        else:
                            _17313 = mem[(32 * idx) + _10849 + 32]
                            _17314 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17314 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17314 + 36] = 0
                            mem[_17314 + 68] = _15428
                            mem[_17314 + 100] = this.address
                            mem[_17314 + 132] = 128
                            mem[_17314 + 164] = mem[_17314]
                            s = 0
                            while s < mem[_17314]:
                                mem[s + _17314 + 196] = mem[s + _17314 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17314]) > mem[_17314]:
                                mem[mem[_17314] + _17314 + 196] = 0
                            require ext_code.size(address(_17313))
                            call address(_17313).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15428, address(this.address), 128, mem[_17314], mem[_17314 + 196 len ceil32(mem[_17314])]
                    else:
                        require idx + 1 < mem[_10849]
                        _15913 = mem[(32 * idx + 1) + _10849 + 32]
                        require idx < mem[_10850]
                        require idx < mem[_10849]
                        if not mem[(32 * idx) + _10850 + 32]:
                            _17971 = mem[(32 * idx) + _10849 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15428
                            mem[mem[64] + 68] = address(_15913)
                            require ext_code.size(address(_17971))
                            call address(_17971).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15428, address(_15913)
                        else:
                            _17973 = mem[(32 * idx) + _10849 + 32]
                            _17974 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17974 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17974 + 36] = 0
                            mem[_17974 + 68] = _15428
                            mem[_17974 + 100] = address(_15913)
                            mem[_17974 + 132] = 128
                            mem[_17974 + 164] = mem[_17974]
                            s = 0
                            while s < mem[_17974]:
                                mem[s + _17974 + 196] = mem[s + _17974 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17974]) > mem[_17974]:
                                mem[mem[_17974] + _17974 + 196] = 0
                            require ext_code.size(address(_17973))
                            call address(_17973).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15428, address(_15913), 128, mem[_17974], mem[_17974 + 196 len ceil32(mem[_17974])]
                else:
                    if idx >= mem[_10848] - 2:
                        require idx < mem[_10850]
                        require idx < mem[_10849]
                        if not mem[(32 * idx) + _10850 + 32]:
                            _17317 = mem[(32 * idx) + _10849 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15428
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17317))
                            call address(_17317).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15428, 0, this.address
                        else:
                            _17319 = mem[(32 * idx) + _10849 + 32]
                            _17320 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17320 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17320 + 36] = _15428
                            mem[_17320 + 68] = 0
                            mem[_17320 + 100] = this.address
                            mem[_17320 + 132] = 128
                            mem[_17320 + 164] = mem[_17320]
                            s = 0
                            while s < mem[_17320]:
                                mem[s + _17320 + 196] = mem[s + _17320 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17320]) > mem[_17320]:
                                mem[mem[_17320] + _17320 + 196] = 0
                            require ext_code.size(address(_17319))
                            call address(_17319).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15428, 0, address(this.address), 128, mem[_17320], mem[_17320 + 196 len ceil32(mem[_17320])]
                    else:
                        require idx + 1 < mem[_10849]
                        _15915 = mem[(32 * idx + 1) + _10849 + 32]
                        require idx < mem[_10850]
                        require idx < mem[_10849]
                        if not mem[(32 * idx) + _10850 + 32]:
                            _17976 = mem[(32 * idx) + _10849 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15428
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_15915)
                            require ext_code.size(address(_17976))
                            call address(_17976).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15428, 0, address(_15915)
                        else:
                            _17978 = mem[(32 * idx) + _10849 + 32]
                            _17979 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17979 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17979 + 36] = _15428
                            mem[_17979 + 68] = 0
                            mem[_17979 + 100] = address(_15915)
                            mem[_17979 + 132] = 128
                            mem[_17979 + 164] = mem[_17979]
                            s = 0
                            while s < mem[_17979]:
                                mem[s + _17979 + 196] = mem[s + _17979 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17979]) > mem[_17979]:
                                mem[mem[_17979] + _17979 + 196] = 0
                            require ext_code.size(address(_17978))
                            call address(_17978).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15428, 0, address(_15915), 128, mem[_17979], mem[_17979 + 196 len ceil32(mem[_17979])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _15304 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len 32 * _15304] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15304]
        return 32, mem[mem[64] + 32 len (32 * _15304) + 32]
    mem[_5476 + _5380 + 100] = 0
    call address(('cd', 68)[0]) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _5476 + _5380 + -mem[64] + 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if not mem[96]:
            _10583 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_10583] = ('cd', 68).length
            mem[_10583 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_10583 + (32 * ('cd', 68).length) + 32] = 0
            _10584 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_10584] = ('cd', 100).length
            mem[_10584 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_10584 + (32 * ('cd', 100).length) + 32] = 0
            _10585 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_10585] = ('cd', 164).length
            mem[_10585 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_10585 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_10583]
                require idx + 1 < mem[_10583]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _10583 + 44 len 20] < mem[(32 * idx + 1) + _10583 + 44 len 20]:
                    _15429 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10583 + 44 len 20] == mem[(32 * idx) + _10583 + 44 len 20]:
                        if idx >= mem[_10583] - 2:
                            require idx < mem[_10585]
                            require idx < mem[_10584]
                            if not mem[(32 * idx) + _10585 + 32]:
                                _17324 = mem[(32 * idx) + _10584 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15429
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17324))
                                call address(_17324).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15429, this.address
                            else:
                                _17326 = mem[(32 * idx) + _10584 + 32]
                                _17327 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17327 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17327 + 36] = 0
                                mem[_17327 + 68] = _15429
                                mem[_17327 + 100] = this.address
                                mem[_17327 + 132] = 128
                                mem[_17327 + 164] = mem[_17327]
                                s = 0
                                while s < mem[_17327]:
                                    mem[s + _17327 + 196] = mem[s + _17327 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17327]) > mem[_17327]:
                                    mem[mem[_17327] + _17327 + 196] = 0
                                require ext_code.size(address(_17326))
                                call address(_17326).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15429, address(this.address), 128, mem[_17327], mem[_17327 + 196 len ceil32(mem[_17327])]
                        else:
                            require idx + 1 < mem[_10584]
                            _15917 = mem[(32 * idx + 1) + _10584 + 32]
                            require idx < mem[_10585]
                            require idx < mem[_10584]
                            if not mem[(32 * idx) + _10585 + 32]:
                                _17981 = mem[(32 * idx) + _10584 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15429
                                mem[mem[64] + 68] = address(_15917)
                                require ext_code.size(address(_17981))
                                call address(_17981).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15429, address(_15917)
                            else:
                                _17983 = mem[(32 * idx) + _10584 + 32]
                                _17984 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17984 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17984 + 36] = 0
                                mem[_17984 + 68] = _15429
                                mem[_17984 + 100] = address(_15917)
                                mem[_17984 + 132] = 128
                                mem[_17984 + 164] = mem[_17984]
                                s = 0
                                while s < mem[_17984]:
                                    mem[s + _17984 + 196] = mem[s + _17984 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17984]) > mem[_17984]:
                                    mem[mem[_17984] + _17984 + 196] = 0
                                require ext_code.size(address(_17983))
                                call address(_17983).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15429, address(_15917), 128, mem[_17984], mem[_17984 + 196 len ceil32(mem[_17984])]
                    else:
                        if idx >= mem[_10583] - 2:
                            require idx < mem[_10585]
                            require idx < mem[_10584]
                            if not mem[(32 * idx) + _10585 + 32]:
                                _17330 = mem[(32 * idx) + _10584 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15429
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17330))
                                call address(_17330).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15429, 0, this.address
                            else:
                                _17332 = mem[(32 * idx) + _10584 + 32]
                                _17333 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17333 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17333 + 36] = _15429
                                mem[_17333 + 68] = 0
                                mem[_17333 + 100] = this.address
                                mem[_17333 + 132] = 128
                                mem[_17333 + 164] = mem[_17333]
                                s = 0
                                while s < mem[_17333]:
                                    mem[s + _17333 + 196] = mem[s + _17333 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17333]) > mem[_17333]:
                                    mem[mem[_17333] + _17333 + 196] = 0
                                require ext_code.size(address(_17332))
                                call address(_17332).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15429, 0, address(this.address), 128, mem[_17333], mem[_17333 + 196 len ceil32(mem[_17333])]
                        else:
                            require idx + 1 < mem[_10584]
                            _15919 = mem[(32 * idx + 1) + _10584 + 32]
                            require idx < mem[_10585]
                            require idx < mem[_10584]
                            if not mem[(32 * idx) + _10585 + 32]:
                                _17986 = mem[(32 * idx) + _10584 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15429
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15919)
                                require ext_code.size(address(_17986))
                                call address(_17986).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15429, 0, address(_15919)
                            else:
                                _17988 = mem[(32 * idx) + _10584 + 32]
                                _17989 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17989 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17989 + 36] = _15429
                                mem[_17989 + 68] = 0
                                mem[_17989 + 100] = address(_15919)
                                mem[_17989 + 132] = 128
                                mem[_17989 + 164] = mem[_17989]
                                s = 0
                                while s < mem[_17989]:
                                    mem[s + _17989 + 196] = mem[s + _17989 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17989]) > mem[_17989]:
                                    mem[mem[_17989] + _17989 + 196] = 0
                                require ext_code.size(address(_17988))
                                call address(_17988).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15429, 0, address(_15919), 128, mem[_17989], mem[_17989 + 196 len ceil32(mem[_17989])]
                else:
                    _15430 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _10583 + 44 len 20] == mem[(32 * idx + 1) + _10583 + 44 len 20]:
                        if idx >= mem[_10583] - 2:
                            require idx < mem[_10585]
                            require idx < mem[_10584]
                            if not mem[(32 * idx) + _10585 + 32]:
                                _17336 = mem[(32 * idx) + _10584 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15430
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17336))
                                call address(_17336).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15430, this.address
                            else:
                                _17338 = mem[(32 * idx) + _10584 + 32]
                                _17339 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17339 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17339 + 36] = 0
                                mem[_17339 + 68] = _15430
                                mem[_17339 + 100] = this.address
                                mem[_17339 + 132] = 128
                                mem[_17339 + 164] = mem[_17339]
                                s = 0
                                while s < mem[_17339]:
                                    mem[s + _17339 + 196] = mem[s + _17339 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17339]) > mem[_17339]:
                                    mem[mem[_17339] + _17339 + 196] = 0
                                require ext_code.size(address(_17338))
                                call address(_17338).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15430, address(this.address), 128, mem[_17339], mem[_17339 + 196 len ceil32(mem[_17339])]
                        else:
                            require idx + 1 < mem[_10584]
                            _15921 = mem[(32 * idx + 1) + _10584 + 32]
                            require idx < mem[_10585]
                            require idx < mem[_10584]
                            if not mem[(32 * idx) + _10585 + 32]:
                                _17991 = mem[(32 * idx) + _10584 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _15430
                                mem[mem[64] + 68] = address(_15921)
                                require ext_code.size(address(_17991))
                                call address(_17991).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _15430, address(_15921)
                            else:
                                _17993 = mem[(32 * idx) + _10584 + 32]
                                _17994 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17994 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17994 + 36] = 0
                                mem[_17994 + 68] = _15430
                                mem[_17994 + 100] = address(_15921)
                                mem[_17994 + 132] = 128
                                mem[_17994 + 164] = mem[_17994]
                                s = 0
                                while s < mem[_17994]:
                                    mem[s + _17994 + 196] = mem[s + _17994 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17994]) > mem[_17994]:
                                    mem[mem[_17994] + _17994 + 196] = 0
                                require ext_code.size(address(_17993))
                                call address(_17993).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _15430, address(_15921), 128, mem[_17994], mem[_17994 + 196 len ceil32(mem[_17994])]
                    else:
                        if idx >= mem[_10583] - 2:
                            require idx < mem[_10585]
                            require idx < mem[_10584]
                            if not mem[(32 * idx) + _10585 + 32]:
                                _17342 = mem[(32 * idx) + _10584 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15430
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_17342))
                                call address(_17342).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15430, 0, this.address
                            else:
                                _17344 = mem[(32 * idx) + _10584 + 32]
                                _17345 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17345 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17345 + 36] = _15430
                                mem[_17345 + 68] = 0
                                mem[_17345 + 100] = this.address
                                mem[_17345 + 132] = 128
                                mem[_17345 + 164] = mem[_17345]
                                s = 0
                                while s < mem[_17345]:
                                    mem[s + _17345 + 196] = mem[s + _17345 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17345]) > mem[_17345]:
                                    mem[mem[_17345] + _17345 + 196] = 0
                                require ext_code.size(address(_17344))
                                call address(_17344).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15430, 0, address(this.address), 128, mem[_17345], mem[_17345 + 196 len ceil32(mem[_17345])]
                        else:
                            require idx + 1 < mem[_10584]
                            _15923 = mem[(32 * idx + 1) + _10584 + 32]
                            require idx < mem[_10585]
                            require idx < mem[_10584]
                            if not mem[(32 * idx) + _10585 + 32]:
                                _17996 = mem[(32 * idx) + _10584 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _15430
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_15923)
                                require ext_code.size(address(_17996))
                                call address(_17996).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _15430, 0, address(_15923)
                            else:
                                _17998 = mem[(32 * idx) + _10584 + 32]
                                _17999 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_17999 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_17999 + 36] = _15430
                                mem[_17999 + 68] = 0
                                mem[_17999 + 100] = address(_15923)
                                mem[_17999 + 132] = 128
                                mem[_17999 + 164] = mem[_17999]
                                s = 0
                                while s < mem[_17999]:
                                    mem[s + _17999 + 196] = mem[s + _17999 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_17999]) > mem[_17999]:
                                    mem[mem[_17999] + _17999 + 196] = 0
                                require ext_code.size(address(_17998))
                                call address(_17998).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _15430, 0, address(_15923), 128, mem[_17999], mem[_17999 + 196 len ceil32(mem[_17999])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _15305 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _15305] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15305]
            return 32, mem[mem[64] + 32 len (32 * _15305) + 32]
        require mem[96] >= 32
        require mem[128] == bool(mem[128])
        if not mem[128]:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        _10853 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_10853] = ('cd', 68).length
        mem[_10853 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_10853 + (32 * ('cd', 68).length) + 32] = 0
        _10854 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_10854] = ('cd', 100).length
        mem[_10854 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_10854 + (32 * ('cd', 100).length) + 32] = 0
        _10855 = mem[64]
        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
        mem[_10855] = ('cd', 164).length
        mem[_10855 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[_10855 + (32 * ('cd', 164).length) + 32] = 0
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[_10853]
            require idx + 1 < mem[_10853]
            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * idx) + _10853 + 44 len 20] < mem[(32 * idx + 1) + _10853 + 44 len 20]:
                _15431 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _10853 + 44 len 20] == mem[(32 * idx) + _10853 + 44 len 20]:
                    if idx >= mem[_10853] - 2:
                        require idx < mem[_10855]
                        require idx < mem[_10854]
                        if not mem[(32 * idx) + _10855 + 32]:
                            _17349 = mem[(32 * idx) + _10854 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15431
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17349))
                            call address(_17349).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15431, this.address
                        else:
                            _17351 = mem[(32 * idx) + _10854 + 32]
                            _17352 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17352 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17352 + 36] = 0
                            mem[_17352 + 68] = _15431
                            mem[_17352 + 100] = this.address
                            mem[_17352 + 132] = 128
                            mem[_17352 + 164] = mem[_17352]
                            s = 0
                            while s < mem[_17352]:
                                mem[s + _17352 + 196] = mem[s + _17352 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17352]) > mem[_17352]:
                                mem[mem[_17352] + _17352 + 196] = 0
                            require ext_code.size(address(_17351))
                            call address(_17351).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15431, address(this.address), 128, mem[_17352], mem[_17352 + 196 len ceil32(mem[_17352])]
                    else:
                        require idx + 1 < mem[_10854]
                        _15925 = mem[(32 * idx + 1) + _10854 + 32]
                        require idx < mem[_10855]
                        require idx < mem[_10854]
                        if not mem[(32 * idx) + _10855 + 32]:
                            _18001 = mem[(32 * idx) + _10854 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15431
                            mem[mem[64] + 68] = address(_15925)
                            require ext_code.size(address(_18001))
                            call address(_18001).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15431, address(_15925)
                        else:
                            _18003 = mem[(32 * idx) + _10854 + 32]
                            _18004 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_18004 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_18004 + 36] = 0
                            mem[_18004 + 68] = _15431
                            mem[_18004 + 100] = address(_15925)
                            mem[_18004 + 132] = 128
                            mem[_18004 + 164] = mem[_18004]
                            s = 0
                            while s < mem[_18004]:
                                mem[s + _18004 + 196] = mem[s + _18004 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_18004]) > mem[_18004]:
                                mem[mem[_18004] + _18004 + 196] = 0
                            require ext_code.size(address(_18003))
                            call address(_18003).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15431, address(_15925), 128, mem[_18004], mem[_18004 + 196 len ceil32(mem[_18004])]
                else:
                    if idx >= mem[_10853] - 2:
                        require idx < mem[_10855]
                        require idx < mem[_10854]
                        if not mem[(32 * idx) + _10855 + 32]:
                            _17355 = mem[(32 * idx) + _10854 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15431
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17355))
                            call address(_17355).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15431, 0, this.address
                        else:
                            _17357 = mem[(32 * idx) + _10854 + 32]
                            _17358 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17358 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17358 + 36] = _15431
                            mem[_17358 + 68] = 0
                            mem[_17358 + 100] = this.address
                            mem[_17358 + 132] = 128
                            mem[_17358 + 164] = mem[_17358]
                            s = 0
                            while s < mem[_17358]:
                                mem[s + _17358 + 196] = mem[s + _17358 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17358]) > mem[_17358]:
                                mem[mem[_17358] + _17358 + 196] = 0
                            require ext_code.size(address(_17357))
                            call address(_17357).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15431, 0, address(this.address), 128, mem[_17358], mem[_17358 + 196 len ceil32(mem[_17358])]
                    else:
                        require idx + 1 < mem[_10854]
                        _15927 = mem[(32 * idx + 1) + _10854 + 32]
                        require idx < mem[_10855]
                        require idx < mem[_10854]
                        if not mem[(32 * idx) + _10855 + 32]:
                            _18006 = mem[(32 * idx) + _10854 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15431
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_15927)
                            require ext_code.size(address(_18006))
                            call address(_18006).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15431, 0, address(_15927)
                        else:
                            _18008 = mem[(32 * idx) + _10854 + 32]
                            _18009 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_18009 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_18009 + 36] = _15431
                            mem[_18009 + 68] = 0
                            mem[_18009 + 100] = address(_15927)
                            mem[_18009 + 132] = 128
                            mem[_18009 + 164] = mem[_18009]
                            s = 0
                            while s < mem[_18009]:
                                mem[s + _18009 + 196] = mem[s + _18009 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_18009]) > mem[_18009]:
                                mem[mem[_18009] + _18009 + 196] = 0
                            require ext_code.size(address(_18008))
                            call address(_18008).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15431, 0, address(_15927), 128, mem[_18009], mem[_18009 + 196 len ceil32(mem[_18009])]
            else:
                _15432 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _10853 + 44 len 20] == mem[(32 * idx + 1) + _10853 + 44 len 20]:
                    if idx >= mem[_10853] - 2:
                        require idx < mem[_10855]
                        require idx < mem[_10854]
                        if not mem[(32 * idx) + _10855 + 32]:
                            _17361 = mem[(32 * idx) + _10854 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15432
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17361))
                            call address(_17361).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15432, this.address
                        else:
                            _17363 = mem[(32 * idx) + _10854 + 32]
                            _17364 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17364 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17364 + 36] = 0
                            mem[_17364 + 68] = _15432
                            mem[_17364 + 100] = this.address
                            mem[_17364 + 132] = 128
                            mem[_17364 + 164] = mem[_17364]
                            s = 0
                            while s < mem[_17364]:
                                mem[s + _17364 + 196] = mem[s + _17364 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17364]) > mem[_17364]:
                                mem[mem[_17364] + _17364 + 196] = 0
                            require ext_code.size(address(_17363))
                            call address(_17363).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15432, address(this.address), 128, mem[_17364], mem[_17364 + 196 len ceil32(mem[_17364])]
                    else:
                        require idx + 1 < mem[_10854]
                        _15929 = mem[(32 * idx + 1) + _10854 + 32]
                        require idx < mem[_10855]
                        require idx < mem[_10854]
                        if not mem[(32 * idx) + _10855 + 32]:
                            _18011 = mem[(32 * idx) + _10854 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15432
                            mem[mem[64] + 68] = address(_15929)
                            require ext_code.size(address(_18011))
                            call address(_18011).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15432, address(_15929)
                        else:
                            _18013 = mem[(32 * idx) + _10854 + 32]
                            _18014 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_18014 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_18014 + 36] = 0
                            mem[_18014 + 68] = _15432
                            mem[_18014 + 100] = address(_15929)
                            mem[_18014 + 132] = 128
                            mem[_18014 + 164] = mem[_18014]
                            s = 0
                            while s < mem[_18014]:
                                mem[s + _18014 + 196] = mem[s + _18014 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_18014]) > mem[_18014]:
                                mem[mem[_18014] + _18014 + 196] = 0
                            require ext_code.size(address(_18013))
                            call address(_18013).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15432, address(_15929), 128, mem[_18014], mem[_18014 + 196 len ceil32(mem[_18014])]
                else:
                    if idx >= mem[_10853] - 2:
                        require idx < mem[_10855]
                        require idx < mem[_10854]
                        if not mem[(32 * idx) + _10855 + 32]:
                            _17367 = mem[(32 * idx) + _10854 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15432
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17367))
                            call address(_17367).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15432, 0, this.address
                        else:
                            _17369 = mem[(32 * idx) + _10854 + 32]
                            _17370 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17370 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17370 + 36] = _15432
                            mem[_17370 + 68] = 0
                            mem[_17370 + 100] = this.address
                            mem[_17370 + 132] = 128
                            mem[_17370 + 164] = mem[_17370]
                            s = 0
                            while s < mem[_17370]:
                                mem[s + _17370 + 196] = mem[s + _17370 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17370]) > mem[_17370]:
                                mem[mem[_17370] + _17370 + 196] = 0
                            require ext_code.size(address(_17369))
                            call address(_17369).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15432, 0, address(this.address), 128, mem[_17370], mem[_17370 + 196 len ceil32(mem[_17370])]
                    else:
                        require idx + 1 < mem[_10854]
                        _15931 = mem[(32 * idx + 1) + _10854 + 32]
                        require idx < mem[_10855]
                        require idx < mem[_10854]
                        if not mem[(32 * idx) + _10855 + 32]:
                            _18016 = mem[(32 * idx) + _10854 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15432
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_15931)
                            require ext_code.size(address(_18016))
                            call address(_18016).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15432, 0, address(_15931)
                        else:
                            _18018 = mem[(32 * idx) + _10854 + 32]
                            _18019 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_18019 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_18019 + 36] = _15432
                            mem[_18019 + 68] = 0
                            mem[_18019 + 100] = address(_15931)
                            mem[_18019 + 132] = 128
                            mem[_18019 + 164] = mem[_18019]
                            s = 0
                            while s < mem[_18019]:
                                mem[s + _18019 + 196] = mem[s + _18019 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_18019]) > mem[_18019]:
                                mem[mem[_18019] + _18019 + 196] = 0
                            require ext_code.size(address(_18018))
                            call address(_18018).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15432, 0, address(_15931), 128, mem[_18019], mem[_18019 + 196 len ceil32(mem[_18019])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _15306 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len 32 * _15306] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15306]
        return 32, mem[mem[64] + 32 len (32 * _15306) + 32]
    _10492 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_10492] = return_data.size
    mem[_10492 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    if not return_data.size:
        _10586 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_10586] = ('cd', 68).length
        mem[_10586 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_10586 + (32 * ('cd', 68).length) + 32] = 0
        _10587 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_10587] = ('cd', 100).length
        mem[_10587 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_10587 + (32 * ('cd', 100).length) + 32] = 0
        _10588 = mem[64]
        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
        mem[_10588] = ('cd', 164).length
        mem[_10588 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[_10588 + (32 * ('cd', 164).length) + 32] = 0
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[_10586]
            require idx + 1 < mem[_10586]
            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * idx) + _10586 + 44 len 20] < mem[(32 * idx + 1) + _10586 + 44 len 20]:
                _15433 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _10586 + 44 len 20] == mem[(32 * idx) + _10586 + 44 len 20]:
                    if idx >= mem[_10586] - 2:
                        require idx < mem[_10588]
                        require idx < mem[_10587]
                        if not mem[(32 * idx) + _10588 + 32]:
                            _17374 = mem[(32 * idx) + _10587 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15433
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17374))
                            call address(_17374).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15433, this.address
                        else:
                            _17376 = mem[(32 * idx) + _10587 + 32]
                            _17377 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17377 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17377 + 36] = 0
                            mem[_17377 + 68] = _15433
                            mem[_17377 + 100] = this.address
                            mem[_17377 + 132] = 128
                            mem[_17377 + 164] = mem[_17377]
                            s = 0
                            while s < mem[_17377]:
                                mem[s + _17377 + 196] = mem[s + _17377 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17377]) > mem[_17377]:
                                mem[mem[_17377] + _17377 + 196] = 0
                            require ext_code.size(address(_17376))
                            call address(_17376).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15433, address(this.address), 128, mem[_17377], mem[_17377 + 196 len ceil32(mem[_17377])]
                    else:
                        require idx + 1 < mem[_10587]
                        _15933 = mem[(32 * idx + 1) + _10587 + 32]
                        require idx < mem[_10588]
                        require idx < mem[_10587]
                        if not mem[(32 * idx) + _10588 + 32]:
                            _18021 = mem[(32 * idx) + _10587 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15433
                            mem[mem[64] + 68] = address(_15933)
                            require ext_code.size(address(_18021))
                            call address(_18021).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15433, address(_15933)
                        else:
                            _18023 = mem[(32 * idx) + _10587 + 32]
                            _18024 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_18024 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_18024 + 36] = 0
                            mem[_18024 + 68] = _15433
                            mem[_18024 + 100] = address(_15933)
                            mem[_18024 + 132] = 128
                            mem[_18024 + 164] = mem[_18024]
                            s = 0
                            while s < mem[_18024]:
                                mem[s + _18024 + 196] = mem[s + _18024 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_18024]) > mem[_18024]:
                                mem[mem[_18024] + _18024 + 196] = 0
                            require ext_code.size(address(_18023))
                            call address(_18023).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15433, address(_15933), 128, mem[_18024], mem[_18024 + 196 len ceil32(mem[_18024])]
                else:
                    if idx >= mem[_10586] - 2:
                        require idx < mem[_10588]
                        require idx < mem[_10587]
                        if not mem[(32 * idx) + _10588 + 32]:
                            _17380 = mem[(32 * idx) + _10587 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15433
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17380))
                            call address(_17380).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15433, 0, this.address
                        else:
                            _17382 = mem[(32 * idx) + _10587 + 32]
                            _17383 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17383 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17383 + 36] = _15433
                            mem[_17383 + 68] = 0
                            mem[_17383 + 100] = this.address
                            mem[_17383 + 132] = 128
                            mem[_17383 + 164] = mem[_17383]
                            s = 0
                            while s < mem[_17383]:
                                mem[s + _17383 + 196] = mem[s + _17383 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17383]) > mem[_17383]:
                                mem[mem[_17383] + _17383 + 196] = 0
                            require ext_code.size(address(_17382))
                            call address(_17382).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15433, 0, address(this.address), 128, mem[_17383], mem[_17383 + 196 len ceil32(mem[_17383])]
                    else:
                        require idx + 1 < mem[_10587]
                        _15935 = mem[(32 * idx + 1) + _10587 + 32]
                        require idx < mem[_10588]
                        require idx < mem[_10587]
                        if not mem[(32 * idx) + _10588 + 32]:
                            _18026 = mem[(32 * idx) + _10587 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15433
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_15935)
                            require ext_code.size(address(_18026))
                            call address(_18026).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15433, 0, address(_15935)
                        else:
                            _18028 = mem[(32 * idx) + _10587 + 32]
                            _18029 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_18029 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_18029 + 36] = _15433
                            mem[_18029 + 68] = 0
                            mem[_18029 + 100] = address(_15935)
                            mem[_18029 + 132] = 128
                            mem[_18029 + 164] = mem[_18029]
                            s = 0
                            while s < mem[_18029]:
                                mem[s + _18029 + 196] = mem[s + _18029 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_18029]) > mem[_18029]:
                                mem[mem[_18029] + _18029 + 196] = 0
                            require ext_code.size(address(_18028))
                            call address(_18028).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15433, 0, address(_15935), 128, mem[_18029], mem[_18029 + 196 len ceil32(mem[_18029])]
            else:
                _15434 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _10586 + 44 len 20] == mem[(32 * idx + 1) + _10586 + 44 len 20]:
                    if idx >= mem[_10586] - 2:
                        require idx < mem[_10588]
                        require idx < mem[_10587]
                        if not mem[(32 * idx) + _10588 + 32]:
                            _17386 = mem[(32 * idx) + _10587 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15434
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17386))
                            call address(_17386).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15434, this.address
                        else:
                            _17388 = mem[(32 * idx) + _10587 + 32]
                            _17389 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17389 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17389 + 36] = 0
                            mem[_17389 + 68] = _15434
                            mem[_17389 + 100] = this.address
                            mem[_17389 + 132] = 128
                            mem[_17389 + 164] = mem[_17389]
                            s = 0
                            while s < mem[_17389]:
                                mem[s + _17389 + 196] = mem[s + _17389 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17389]) > mem[_17389]:
                                mem[mem[_17389] + _17389 + 196] = 0
                            require ext_code.size(address(_17388))
                            call address(_17388).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15434, address(this.address), 128, mem[_17389], mem[_17389 + 196 len ceil32(mem[_17389])]
                    else:
                        require idx + 1 < mem[_10587]
                        _15937 = mem[(32 * idx + 1) + _10587 + 32]
                        require idx < mem[_10588]
                        require idx < mem[_10587]
                        if not mem[(32 * idx) + _10588 + 32]:
                            _18031 = mem[(32 * idx) + _10587 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _15434
                            mem[mem[64] + 68] = address(_15937)
                            require ext_code.size(address(_18031))
                            call address(_18031).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _15434, address(_15937)
                        else:
                            _18033 = mem[(32 * idx) + _10587 + 32]
                            _18034 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_18034 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_18034 + 36] = 0
                            mem[_18034 + 68] = _15434
                            mem[_18034 + 100] = address(_15937)
                            mem[_18034 + 132] = 128
                            mem[_18034 + 164] = mem[_18034]
                            s = 0
                            while s < mem[_18034]:
                                mem[s + _18034 + 196] = mem[s + _18034 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_18034]) > mem[_18034]:
                                mem[mem[_18034] + _18034 + 196] = 0
                            require ext_code.size(address(_18033))
                            call address(_18033).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _15434, address(_15937), 128, mem[_18034], mem[_18034 + 196 len ceil32(mem[_18034])]
                else:
                    if idx >= mem[_10586] - 2:
                        require idx < mem[_10588]
                        require idx < mem[_10587]
                        if not mem[(32 * idx) + _10588 + 32]:
                            _17392 = mem[(32 * idx) + _10587 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15434
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_17392))
                            call address(_17392).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15434, 0, this.address
                        else:
                            _17394 = mem[(32 * idx) + _10587 + 32]
                            _17395 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_17395 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_17395 + 36] = _15434
                            mem[_17395 + 68] = 0
                            mem[_17395 + 100] = this.address
                            mem[_17395 + 132] = 128
                            mem[_17395 + 164] = mem[_17395]
                            s = 0
                            while s < mem[_17395]:
                                mem[s + _17395 + 196] = mem[s + _17395 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_17395]) > mem[_17395]:
                                mem[mem[_17395] + _17395 + 196] = 0
                            require ext_code.size(address(_17394))
                            call address(_17394).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15434, 0, address(this.address), 128, mem[_17395], mem[_17395 + 196 len ceil32(mem[_17395])]
                    else:
                        require idx + 1 < mem[_10587]
                        _15939 = mem[(32 * idx + 1) + _10587 + 32]
                        require idx < mem[_10588]
                        require idx < mem[_10587]
                        if not mem[(32 * idx) + _10588 + 32]:
                            _18036 = mem[(32 * idx) + _10587 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _15434
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_15939)
                            require ext_code.size(address(_18036))
                            call address(_18036).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _15434, 0, address(_15939)
                        else:
                            _18038 = mem[(32 * idx) + _10587 + 32]
                            _18039 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_18039 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_18039 + 36] = _15434
                            mem[_18039 + 68] = 0
                            mem[_18039 + 100] = address(_15939)
                            mem[_18039 + 132] = 128
                            mem[_18039 + 164] = mem[_18039]
                            s = 0
                            while s < mem[_18039]:
                                mem[s + _18039 + 196] = mem[s + _18039 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_18039]) > mem[_18039]:
                                mem[mem[_18039] + _18039 + 196] = 0
                            require ext_code.size(address(_18038))
                            call address(_18038).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _15434, 0, address(_15939), 128, mem[_18039], mem[_18039 + 196 len ceil32(mem[_18039])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _15307 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len 32 * _15307] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15307]
        return 32, mem[mem[64] + 32 len (32 * _15307) + 32]
    require return_data.size >= 32
    require mem[_10492 + 32] == bool(mem[_10492 + 32])
    if not mem[_10492 + 32]:
        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    _10858 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_10858] = ('cd', 68).length
    mem[_10858 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[_10858 + (32 * ('cd', 68).length) + 32] = 0
    _10859 = mem[64]
    mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
    mem[_10859] = ('cd', 100).length
    mem[_10859 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[_10859 + (32 * ('cd', 100).length) + 32] = 0
    _10860 = mem[64]
    mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
    mem[_10860] = ('cd', 164).length
    mem[_10860 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
    mem[_10860 + (32 * ('cd', 164).length) + 32] = 0
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[_10858]
        require idx + 1 < mem[_10858]
        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        if mem[(32 * idx) + _10858 + 44 len 20] < mem[(32 * idx + 1) + _10858 + 44 len 20]:
            _15435 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
            if mem[(32 * idx) + _10858 + 44 len 20] == mem[(32 * idx) + _10858 + 44 len 20]:
                if idx >= mem[_10858] - 2:
                    require idx < mem[_10860]
                    require idx < mem[_10859]
                    if not mem[(32 * idx) + _10860 + 32]:
                        _17399 = mem[(32 * idx) + _10859 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _15435
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_17399))
                        call address(_17399).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _15435, this.address
                    else:
                        _17401 = mem[(32 * idx) + _10859 + 32]
                        _17402 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_17402 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_17402 + 36] = 0
                        mem[_17402 + 68] = _15435
                        mem[_17402 + 100] = this.address
                        mem[_17402 + 132] = 128
                        mem[_17402 + 164] = mem[_17402]
                        s = 0
                        while s < mem[_17402]:
                            mem[s + _17402 + 196] = mem[s + _17402 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_17402]) > mem[_17402]:
                            mem[mem[_17402] + _17402 + 196] = 0
                        require ext_code.size(address(_17401))
                        call address(_17401).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _15435, address(this.address), 128, mem[_17402], mem[_17402 + 196 len ceil32(mem[_17402])]
                else:
                    require idx + 1 < mem[_10859]
                    _15941 = mem[(32 * idx + 1) + _10859 + 32]
                    require idx < mem[_10860]
                    require idx < mem[_10859]
                    if not mem[(32 * idx) + _10860 + 32]:
                        _18041 = mem[(32 * idx) + _10859 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _15435
                        mem[mem[64] + 68] = address(_15941)
                        require ext_code.size(address(_18041))
                        call address(_18041).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _15435, address(_15941)
                    else:
                        _18043 = mem[(32 * idx) + _10859 + 32]
                        _18044 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_18044 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_18044 + 36] = 0
                        mem[_18044 + 68] = _15435
                        mem[_18044 + 100] = address(_15941)
                        mem[_18044 + 132] = 128
                        mem[_18044 + 164] = mem[_18044]
                        s = 0
                        while s < mem[_18044]:
                            mem[s + _18044 + 196] = mem[s + _18044 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_18044]) > mem[_18044]:
                            mem[mem[_18044] + _18044 + 196] = 0
                        require ext_code.size(address(_18043))
                        call address(_18043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _15435, address(_15941), 128, mem[_18044], mem[_18044 + 196 len ceil32(mem[_18044])]
            else:
                if idx >= mem[_10858] - 2:
                    require idx < mem[_10860]
                    require idx < mem[_10859]
                    if not mem[(32 * idx) + _10860 + 32]:
                        _17405 = mem[(32 * idx) + _10859 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _15435
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_17405))
                        call address(_17405).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _15435, 0, this.address
                    else:
                        _17407 = mem[(32 * idx) + _10859 + 32]
                        _17408 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_17408 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_17408 + 36] = _15435
                        mem[_17408 + 68] = 0
                        mem[_17408 + 100] = this.address
                        mem[_17408 + 132] = 128
                        mem[_17408 + 164] = mem[_17408]
                        s = 0
                        while s < mem[_17408]:
                            mem[s + _17408 + 196] = mem[s + _17408 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_17408]) > mem[_17408]:
                            mem[mem[_17408] + _17408 + 196] = 0
                        require ext_code.size(address(_17407))
                        call address(_17407).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _15435, 0, address(this.address), 128, mem[_17408], mem[_17408 + 196 len ceil32(mem[_17408])]
                else:
                    require idx + 1 < mem[_10859]
                    _15943 = mem[(32 * idx + 1) + _10859 + 32]
                    require idx < mem[_10860]
                    require idx < mem[_10859]
                    if not mem[(32 * idx) + _10860 + 32]:
                        _18046 = mem[(32 * idx) + _10859 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _15435
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_15943)
                        require ext_code.size(address(_18046))
                        call address(_18046).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _15435, 0, address(_15943)
                    else:
                        _18048 = mem[(32 * idx) + _10859 + 32]
                        _18049 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_18049 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_18049 + 36] = _15435
                        mem[_18049 + 68] = 0
                        mem[_18049 + 100] = address(_15943)
                        mem[_18049 + 132] = 128
                        mem[_18049 + 164] = mem[_18049]
                        s = 0
                        while s < mem[_18049]:
                            mem[s + _18049 + 196] = mem[s + _18049 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_18049]) > mem[_18049]:
                            mem[mem[_18049] + _18049 + 196] = 0
                        require ext_code.size(address(_18048))
                        call address(_18048).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _15435, 0, address(_15943), 128, mem[_18049], mem[_18049 + 196 len ceil32(mem[_18049])]
        else:
            _15436 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
            if mem[(32 * idx) + _10858 + 44 len 20] == mem[(32 * idx + 1) + _10858 + 44 len 20]:
                if idx >= mem[_10858] - 2:
                    require idx < mem[_10860]
                    require idx < mem[_10859]
                    if not mem[(32 * idx) + _10860 + 32]:
                        _17411 = mem[(32 * idx) + _10859 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _15436
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_17411))
                        call address(_17411).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _15436, this.address
                    else:
                        _17413 = mem[(32 * idx) + _10859 + 32]
                        _17414 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_17414 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_17414 + 36] = 0
                        mem[_17414 + 68] = _15436
                        mem[_17414 + 100] = this.address
                        mem[_17414 + 132] = 128
                        mem[_17414 + 164] = mem[_17414]
                        s = 0
                        while s < mem[_17414]:
                            mem[s + _17414 + 196] = mem[s + _17414 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_17414]) > mem[_17414]:
                            mem[mem[_17414] + _17414 + 196] = 0
                        require ext_code.size(address(_17413))
                        call address(_17413).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _15436, address(this.address), 128, mem[_17414], mem[_17414 + 196 len ceil32(mem[_17414])]
                else:
                    require idx + 1 < mem[_10859]
                    _15945 = mem[(32 * idx + 1) + _10859 + 32]
                    require idx < mem[_10860]
                    require idx < mem[_10859]
                    if not mem[(32 * idx) + _10860 + 32]:
                        _18051 = mem[(32 * idx) + _10859 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _15436
                        mem[mem[64] + 68] = address(_15945)
                        require ext_code.size(address(_18051))
                        call address(_18051).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _15436, address(_15945)
                    else:
                        _18053 = mem[(32 * idx) + _10859 + 32]
                        _18054 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_18054 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_18054 + 36] = 0
                        mem[_18054 + 68] = _15436
                        mem[_18054 + 100] = address(_15945)
                        mem[_18054 + 132] = 128
                        mem[_18054 + 164] = mem[_18054]
                        s = 0
                        while s < mem[_18054]:
                            mem[s + _18054 + 196] = mem[s + _18054 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_18054]) > mem[_18054]:
                            mem[mem[_18054] + _18054 + 196] = 0
                        require ext_code.size(address(_18053))
                        call address(_18053).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _15436, address(_15945), 128, mem[_18054], mem[_18054 + 196 len ceil32(mem[_18054])]
            else:
                if idx >= mem[_10858] - 2:
                    require idx < mem[_10860]
                    require idx < mem[_10859]
                    if not mem[(32 * idx) + _10860 + 32]:
                        _17417 = mem[(32 * idx) + _10859 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _15436
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_17417))
                        call address(_17417).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _15436, 0, this.address
                    else:
                        _17419 = mem[(32 * idx) + _10859 + 32]
                        _17420 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_17420 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_17420 + 36] = _15436
                        mem[_17420 + 68] = 0
                        mem[_17420 + 100] = this.address
                        mem[_17420 + 132] = 128
                        mem[_17420 + 164] = mem[_17420]
                        s = 0
                        while s < mem[_17420]:
                            mem[s + _17420 + 196] = mem[s + _17420 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_17420]) > mem[_17420]:
                            mem[mem[_17420] + _17420 + 196] = 0
                        require ext_code.size(address(_17419))
                        call address(_17419).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _15436, 0, address(this.address), 128, mem[_17420], mem[_17420 + 196 len ceil32(mem[_17420])]
                else:
                    require idx + 1 < mem[_10859]
                    _15947 = mem[(32 * idx + 1) + _10859 + 32]
                    require idx < mem[_10860]
                    require idx < mem[_10859]
                    if not mem[(32 * idx) + _10860 + 32]:
                        _18056 = mem[(32 * idx) + _10859 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _15436
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_15947)
                        require ext_code.size(address(_18056))
                        call address(_18056).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _15436, 0, address(_15947)
                    else:
                        _18058 = mem[(32 * idx) + _10859 + 32]
                        _18059 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_18059 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_18059 + 36] = _15436
                        mem[_18059 + 68] = 0
                        mem[_18059 + 100] = address(_15947)
                        mem[_18059 + 132] = 128
                        mem[_18059 + 164] = mem[_18059]
                        s = 0
                        while s < mem[_18059]:
                            mem[s + _18059 + 196] = mem[s + _18059 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_18059]) > mem[_18059]:
                            mem[mem[_18059] + _18059 + 196] = 0
                        require ext_code.size(address(_18058))
                        call address(_18058).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _15436, 0, address(_15947), 128, mem[_18059], mem[_18059 + 196 len ceil32(mem[_18059])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _15308 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
    mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
    mem[mem[64] + 64 len 32 * _15308] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _15308]
    return 32, mem[mem[64] + 32 len (32 * _15308) + 32]
}



}
