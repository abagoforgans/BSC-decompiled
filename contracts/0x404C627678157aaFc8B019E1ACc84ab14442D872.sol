contract main {




// =====================  Runtime code  =====================


const getContractBNBBallance = eth.balance(this.address)


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 sub_e7b20cad;
uint256 stor2;
address stor3;
address stor4;
address sub_91a8fc8bAddress;

function paused() {
    return bool(uint8(stor0.field_160))
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function sub_91a8fc8b(?) {
    return sub_91a8fc8bAddress
}

function sub_e7b20cad(?) {
    return sub_e7b20cad
}

function destroySmartContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(arg1)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if sub_e7b20cad != msg.value:
            if sub_e7b20cad > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 * sub_e7b20cad != msg.value:
                if sub_e7b20cad > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                if 3 * sub_e7b20cad != msg.value:
                    if sub_e7b20cad > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 4 * sub_e7b20cad != msg.value:
                        if sub_e7b20cad > 0x3333333333333333333333333333333333333333333333333333333333333333:
                            revert with 0, 17
                        if 5 * sub_e7b20cad != msg.value:
                            revert with 0, 'Wrong value'
        if uint8(stor0.field_160):
            revert with 0, 'Pause'
        if not sub_e7b20cad:
            revert with 0, 18
        require ext_code.size(sub_91a8fc8bAddress)
        call sub_91a8fc8bAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, msg.value / sub_e7b20cad
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 10000 < stor2:
            revert with 0, 17
        if msg.value and -stor2 + 10000 > -1 / msg.value:
            revert with 0, 17
        call stor3 with:
           value (10000 * msg.value) - (stor2 * msg.value) / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value and stor2 > -1 / msg.value:
            revert with 0, 17
        call stor4 with:
           value msg.value * stor2 / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if unknown_0x9259a853(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd49f0fa5(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9259a853(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor4 = address(arg1)
                else:
                    if unknown_0x9b528448(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return eth.balance(this.address)
                    if unknown_0xb91734dd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return stor3, stor4, stor2
                    require unknown_0xbc0d6ff3(?????) == uint32(call.func_hash) >> 224
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor3 = address(arg1)
            else:
                if unknown_0xd49f0fa5(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_e7b20cad = arg1
                else:
                    if unknown_0xd744aec8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xe7b20cad(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_e7b20cad
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        require unknown_0xf56e9c66(?????) == uint32(call.func_hash) >> 224
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_91a8fc8bAddress = address(arg1)
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
        else:
            if unknown_0x5c975abb(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(uint8(stor0.field_160))
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                if unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                require unknown_0x91a8fc8b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_91a8fc8bAddress
            if pause(bool arg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == bool(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                Mask(96, 0, stor0.field_160) = Mask(96, 0, bool(arg1))
            else:
                if unknown_0x2e5bb6ff(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor2 = arg1
                else:
                    if unknown_0x39df43ff(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        selfdestruct(address(arg1))
                    require unknown_0x51cff8d9(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
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
                    if ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if eth.balance(this.address):
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function sub_b91734dd(?) {
    return stor3, stor4, stor2
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function setprice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e7b20cad = arg1
}

function sub_9259a853(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
}

function sub_bc0d6ff3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = address(arg1)
}

function setNFT(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_91a8fc8bAddress = arg1
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getTokenBalanceInContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
