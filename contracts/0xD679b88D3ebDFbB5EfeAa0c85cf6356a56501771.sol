contract main {




// =====================  Runtime code  =====================


#
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


address owner;
array of address stor1;
address stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3549f341(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_91dbbb2c(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length < 2:
        revert with 0, 'array too small'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    if address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]) == address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if block.gasprice < 10^10:
        if address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]) < address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
            if not address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            if not address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d):
                revert with 0, 'invalid router'
            require ext_code.size(address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d))
            staticcall address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d).factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]), address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'invalid flash swap pair'
            stor1.length = ('cd', 36).length
            if not ('cd', 36).length:
                idx = 0
                while stor1.length > idx:
                    uint256(stor1[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = cd[36] + 36
                while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
                    address(stor1[s]) = address(cd[idx])
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
                while stor1.length > idx:
                    uint256(stor1[idx]) = 0
                    idx = idx + 1
                    continue 
            stor2 = address(cd[68])
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            require ext_code.size(address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]) == address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]):
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[4], 0, address(this.address), 128, 9, 'not empty', 0
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[4], address(this.address), 128, 9, 'not empty', 0
        else:
            if not address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            if not address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d):
                revert with 0, 'invalid router'
            require ext_code.size(address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d))
            staticcall address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d).factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'invalid flash swap pair'
            stor1.length = ('cd', 36).length
            if not ('cd', 36).length:
                idx = 0
                while stor1.length > idx:
                    uint256(stor1[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = cd[36] + 36
                while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
                    address(stor1[s]) = address(cd[idx])
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
                while stor1.length > idx:
                    uint256(stor1[idx]) = 0
                    idx = idx + 1
                    continue 
            stor2 = address(cd[68])
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            require ext_code.size(address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) == address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]):
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[4], 0, address(this.address), 128, 9, 'not empty', 0
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[4], address(this.address), 128, 9, 'not empty', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
    else:
        if address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]) < address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
            if not address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            if not address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d):
                revert with 0, 'invalid router'
            require ext_code.size(address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d))
            staticcall address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d).factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]), address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'invalid flash swap pair'
            stor1.length = ('cd', 36).length
            if not ('cd', 36).length:
                idx = 0
                while stor1.length > idx:
                    uint256(stor1[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = cd[36] + 36
                while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
                    address(stor1[s]) = address(cd[idx])
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
                while stor1.length > idx:
                    uint256(stor1[idx]) = 0
                    idx = idx + 1
                    continue 
            stor2 = address(cd[68])
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            require ext_code.size(address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]) == address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]):
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[4], 0, address(this.address), 128, 9, 'not empty', 0
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[4], address(this.address), 128, 9, 'not empty', 0
        else:
            if not address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            if not address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d):
                revert with 0, 'invalid router'
            require ext_code.size(address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d))
            staticcall address(cd[68] xor 0x37061f0a2741a12c459777abf378db18c788e38d).factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'invalid flash swap pair'
            stor1.length = ('cd', 36).length
            if not ('cd', 36).length:
                idx = 0
                while stor1.length > idx:
                    uint256(stor1[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = cd[36] + 36
                while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
                    address(stor1[s]) = address(cd[idx])
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
                while stor1.length > idx:
                    uint256(stor1[idx]) = 0
                    idx = idx + 1
                    continue 
            stor2 = address(cd[68])
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            require ext_code.size(address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) == address(0x37061f0a2741a12c459777abf378db18c788e38d xor ('cd', 36)[0]):
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[4], 0, address(this.address), 128, 9, 'not empty', 0
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[4], address(this.address), 128, 9, 'not empty', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(0x37061f0a2741a12c459777abf378db18c788e38d xor cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
        if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 21000 > !(16 * calldata.size):
            revert with 'NH{q', 17
        if (16 * calldata.size) + 21000 > !gas_remaining:
            revert with 'NH{q', 17
        if (16 * calldata.size) + gas_remaining + 21000 < gas_remaining:
            revert with 'NH{q', 17
        if 14154 > !((16 * calldata.size) + 21000):
            revert with 'NH{q', 17
        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (16 * calldata.size) + 35154 / 41947
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 0
}



}
