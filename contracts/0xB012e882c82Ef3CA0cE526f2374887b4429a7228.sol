contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor51;
address stor52;
address daiAddress;
address sub_c947576aAddress;
address sub_f76fd0f4Address;
address dfProfitsAddress;
array of struct profits;
mapping of uint64 lastProfitDistIndex;
array of struct stor95180956487804427236283528451910841010914820816968589596515543152805896179579;

function profits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < profits.length
    return profits[arg1].field_0, profits[arg1].field_64
}

function lastProfitDistIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastProfitDistIndex[arg1]
}

function dfProfits() payable {
    return dfProfitsAddress
}

function owner() payable {
    return address(owner)
}

function sub_c947576a(?) payable {
    return sub_c947576aAddress
}

function dai() payable {
    return daiAddress
}

function sub_f76fd0f4(?) payable {
    return sub_f76fd0f4Address
}

function _fallback() payable {
    revert
}

function acceptOwner() payable {
    require msg.sender == stor52
    address(owner) = stor52
}

function transferOwnerToDfPool() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    address(owner) = 0xfb87002e2c029fd4a9e9aa20930f2bea9d464757
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    stor52 = arg1
}

function setDaiAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    daiAddress = arg1
}

function sub_52013522(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    sub_f76fd0f4Address = address(arg1)
}

function sub_ba5fee2f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    sub_c947576aAddress = address(arg1)
}

function transferToEth(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_f76fd0f4Address)
    call sub_f76fd0f4Address.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToEth(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_f76fd0f4Address)
    call sub_f76fd0f4Address.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_f76fd0f4Address)
    call sub_f76fd0f4Address.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(daiAddress)
    call daiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function burnDDai(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_f76fd0f4Address)
    call sub_f76fd0f4Address.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_c947576aAddress)
    call sub_c947576aAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        address(owner) = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            address(owner) = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                address(owner) = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                address(owner) = arg1
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function userShare(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_f76fd0f4Address)
    if arg2 != -1:
        staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_f76fd0f4Address)
        staticcall sub_f76fd0f4Address.0x981b24d0 with:
                gas gas_remaining wei
               args arg2
    else:
        staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                gas gas_remaining wei
               args address(arg1), profits.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_f76fd0f4Address)
        staticcall sub_f76fd0f4Address.0x981b24d0 with:
                gas gas_remaining wei
               args profits.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_c947576aAddress)
    staticcall sub_c947576aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_f76fd0f4Address)
    staticcall sub_f76fd0f4Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] + arg1 >= ext_call.return_data[0]
    if ext_call.return_data[0] + arg1 > ext_call.return_data[0]:
        revert with 0, 'DfPool: not enough dDai'
    require ext_code.size(daiAddress)
    call daiAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_f76fd0f4Address)
    call sub_f76fd0f4Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize() payable {
    if uint8(stor0.field_8):
        uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if uint8(stor0.field_8):
                    uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
}

function addProfit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    if not dfProfitsAddress:
        create contract with 0 wei
                        code: code.data[8515 len 1089], address(this.address)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        dfProfitsAddress = address(create.new_address)
        emit 0x428e45dc: address(create.new_address)
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args dfProfitsAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_f76fd0f4Address)
    call sub_f76fd0f4Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, dfProfitsAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args dfProfitsAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require 0 <= ext_call.return_data[0]
    profits.length++
    storD26E[stor157.length].field_0 = uint64(block.number)
    storD26E[stor157.length].field_64 = 0
    require ext_code.size(sub_f76fd0f4Address)
    call sub_f76fd0f4Address.0x9711715a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function getUserProfitFromCustomIndex(address arg1, uint64 arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if profits.length >= arg3:
        idx = arg2
        s = 0
        while uint64(idx) < arg3:
            _48 = mem[64]
            mem[64] = mem[64] + 64
            mem[_48] = 0
            mem[_48 + 32] = 0
            require uint64(idx) < profits.length
            mem[0] = 157
            _52 = mem[64]
            mem[64] = mem[64] + 64
            mem[_52] = profits[uint64(idx)].field_0
            mem[_52 + 32] = profits[uint64(idx)].field_64
            mem[mem[64] + 4] = arg1
            if uint64(idx + 1) != -1:
                mem[mem[64] + 36] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                        gas gas_remaining wei
                       args address(arg1), uint64(idx + 1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _65 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _69 = mem[_65]
                require mem[_65] == mem[_65]
                mem[mem[64] + 4] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x981b24d0 with:
                        gas gas_remaining wei
                       args (idx + 1 << 192)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_81] == mem[_81]
                require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
                if not _69:
                    require mem[_81] / 2 >= 0
                    require mem[_81]
                    require s + (mem[_81] / 2 / mem[_81]) >= s
                    idx = idx + 1
                    s = s + (mem[_81] / 2 / mem[_81])
                    continue 
                require _69
                require 10^12 * profits[uint64(idx)].field_64 * _69 / _69 == 10^12 * profits[uint64(idx)].field_64
                require (10^12 * profits[uint64(idx)].field_64 * _69) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _69
                require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _69) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _69) + 5 * 10^17 / 10^18
                require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _69) + 5 * 10^17 / 10^18) + (mem[_81] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _69) + 5 * 10^17 / 10^18
                require mem[_81]
                require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _69) + 5 * 10^17 / 10^18) + (mem[_81] / 2) / mem[_81]) >= s
                idx = idx + 1
                s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _69) + 5 * 10^17 / 10^18) + (mem[_81] / 2) / mem[_81])
                continue 
            mem[mem[64] + 36] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _71 = mem[_67]
            require mem[_67] == mem[_67]
            mem[mem[64] + 4] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x981b24d0 with:
                    gas gas_remaining wei
                   args profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_83] == mem[_83]
            require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
            if not _71:
                require mem[_83] / 2 >= 0
                require mem[_83]
                require s + (mem[_83] / 2 / mem[_83]) >= s
                idx = idx + 1
                s = s + (mem[_83] / 2 / mem[_83])
                continue 
            require _71
            require 10^12 * profits[uint64(idx)].field_64 * _71 / _71 == 10^12 * profits[uint64(idx)].field_64
            require (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _71
            require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18
            require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18) + (mem[_83] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18
            require mem[_83]
            require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18) + (mem[_83] / 2) / mem[_83]) >= s
            idx = idx + 1
            s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18) + (mem[_83] / 2) / mem[_83])
            continue 
    else:
        idx = arg2
        s = 0
        while uint64(idx) < profits.length:
            _50 = mem[64]
            mem[64] = mem[64] + 64
            mem[_50] = 0
            mem[_50 + 32] = 0
            mem[0] = 157
            _54 = mem[64]
            mem[64] = mem[64] + 64
            mem[_54] = profits[uint64(idx)].field_0
            mem[_54 + 32] = profits[uint64(idx)].field_64
            mem[mem[64] + 4] = arg1
            if uint64(idx + 1) != -1:
                mem[mem[64] + 36] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                        gas gas_remaining wei
                       args address(arg1), uint64(idx + 1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _66 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _70 = mem[_66]
                require mem[_66] == mem[_66]
                mem[mem[64] + 4] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x981b24d0 with:
                        gas gas_remaining wei
                       args (idx + 1 << 192)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_82] == mem[_82]
                require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
                if not _70:
                    require mem[_82] / 2 >= 0
                    require mem[_82]
                    require s + (mem[_82] / 2 / mem[_82]) >= s
                    idx = idx + 1
                    s = s + (mem[_82] / 2 / mem[_82])
                    continue 
                require _70
                require 10^12 * profits[uint64(idx)].field_64 * _70 / _70 == 10^12 * profits[uint64(idx)].field_64
                require (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _70
                require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18
                require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18) + (mem[_82] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18
                require mem[_82]
                require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18) + (mem[_82] / 2) / mem[_82]) >= s
                idx = idx + 1
                s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18) + (mem[_82] / 2) / mem[_82])
                continue 
            mem[mem[64] + 36] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _72 = mem[_68]
            require mem[_68] == mem[_68]
            mem[mem[64] + 4] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x981b24d0 with:
                    gas gas_remaining wei
                   args profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_84] == mem[_84]
            require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
            if not _72:
                require mem[_84] / 2 >= 0
                require mem[_84]
                require s + (mem[_84] / 2 / mem[_84]) >= s
                idx = idx + 1
                s = s + (mem[_84] / 2 / mem[_84])
                continue 
            require _72
            require 10^12 * profits[uint64(idx)].field_64 * _72 / _72 == 10^12 * profits[uint64(idx)].field_64
            require (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _72
            require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18
            require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18) + (mem[_84] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18
            require mem[_84]
            require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18) + (mem[_84] / 2) / mem[_84]) >= s
            idx = idx + 1
            s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18) + (mem[_84] / 2) / mem[_84])
            continue 
    return s, uint64(idx)
}

function calcUserProfit(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = arg1
    mem[32] = 158
    if profits.length >= arg2:
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while uint64(idx) < arg2:
            _48 = mem[64]
            mem[64] = mem[64] + 64
            mem[_48] = 0
            mem[_48 + 32] = 0
            require uint64(idx) < profits.length
            mem[0] = 157
            _53 = mem[64]
            mem[64] = mem[64] + 64
            mem[_53] = profits[uint64(idx)].field_0
            mem[_53 + 32] = profits[uint64(idx)].field_64
            mem[mem[64] + 4] = arg1
            if uint64(idx + 1) != -1:
                mem[mem[64] + 36] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                        gas gas_remaining wei
                       args address(arg1), uint64(idx + 1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _66 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _70 = mem[_66]
                require mem[_66] == mem[_66]
                mem[mem[64] + 4] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x981b24d0 with:
                        gas gas_remaining wei
                       args (idx + 1 << 192)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_82] == mem[_82]
                require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
                if not _70:
                    require mem[_82] / 2 >= 0
                    require mem[_82]
                    require s + (mem[_82] / 2 / mem[_82]) >= s
                    idx = idx + 1
                    s = s + (mem[_82] / 2 / mem[_82])
                    continue 
                require _70
                require 10^12 * profits[uint64(idx)].field_64 * _70 / _70 == 10^12 * profits[uint64(idx)].field_64
                require (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _70
                require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18
                require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18) + (mem[_82] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18
                require mem[_82]
                require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18) + (mem[_82] / 2) / mem[_82]) >= s
                idx = idx + 1
                s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _70) + 5 * 10^17 / 10^18) + (mem[_82] / 2) / mem[_82])
                continue 
            mem[mem[64] + 36] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _72 = mem[_68]
            require mem[_68] == mem[_68]
            mem[mem[64] + 4] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x981b24d0 with:
                    gas gas_remaining wei
                   args profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_84] == mem[_84]
            require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
            if not _72:
                require mem[_84] / 2 >= 0
                require mem[_84]
                require s + (mem[_84] / 2 / mem[_84]) >= s
                idx = idx + 1
                s = s + (mem[_84] / 2 / mem[_84])
                continue 
            require _72
            require 10^12 * profits[uint64(idx)].field_64 * _72 / _72 == 10^12 * profits[uint64(idx)].field_64
            require (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _72
            require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18
            require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18) + (mem[_84] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18
            require mem[_84]
            require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18) + (mem[_84] / 2) / mem[_84]) >= s
            idx = idx + 1
            s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _72) + 5 * 10^17 / 10^18) + (mem[_84] / 2) / mem[_84])
            continue 
    else:
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while uint64(idx) < profits.length:
            _49 = mem[64]
            mem[64] = mem[64] + 64
            mem[_49] = 0
            mem[_49 + 32] = 0
            mem[0] = 157
            _55 = mem[64]
            mem[64] = mem[64] + 64
            mem[_55] = profits[uint64(idx)].field_0
            mem[_55 + 32] = profits[uint64(idx)].field_64
            mem[mem[64] + 4] = arg1
            if uint64(idx + 1) != -1:
                mem[mem[64] + 36] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                        gas gas_remaining wei
                       args address(arg1), uint64(idx + 1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _67 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _71 = mem[_67]
                require mem[_67] == mem[_67]
                mem[mem[64] + 4] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x981b24d0 with:
                        gas gas_remaining wei
                       args (idx + 1 << 192)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _83 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_83] == mem[_83]
                require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
                if not _71:
                    require mem[_83] / 2 >= 0
                    require mem[_83]
                    require s + (mem[_83] / 2 / mem[_83]) >= s
                    idx = idx + 1
                    s = s + (mem[_83] / 2 / mem[_83])
                    continue 
                require _71
                require 10^12 * profits[uint64(idx)].field_64 * _71 / _71 == 10^12 * profits[uint64(idx)].field_64
                require (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _71
                require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18
                require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18) + (mem[_83] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18
                require mem[_83]
                require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18) + (mem[_83] / 2) / mem[_83]) >= s
                idx = idx + 1
                s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _71) + 5 * 10^17 / 10^18) + (mem[_83] / 2) / mem[_83])
                continue 
            mem[mem[64] + 36] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _73 = mem[_69]
            require mem[_69] == mem[_69]
            mem[mem[64] + 4] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x981b24d0 with:
                    gas gas_remaining wei
                   args profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_85] == mem[_85]
            require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
            if not _73:
                require mem[_85] / 2 >= 0
                require mem[_85]
                require s + (mem[_85] / 2 / mem[_85]) >= s
                idx = idx + 1
                s = s + (mem[_85] / 2 / mem[_85])
                continue 
            require _73
            require 10^12 * profits[uint64(idx)].field_64 * _73 / _73 == 10^12 * profits[uint64(idx)].field_64
            require (10^12 * profits[uint64(idx)].field_64 * _73) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _73
            require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _73) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _73) + 5 * 10^17 / 10^18
            require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _73) + 5 * 10^17 / 10^18) + (mem[_85] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _73) + 5 * 10^17 / 10^18
            require mem[_85]
            require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _73) + 5 * 10^17 / 10^18) + (mem[_85] / 2) / mem[_85]) >= s
            idx = idx + 1
            s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _73) + 5 * 10^17 / 10^18) + (mem[_85] / 2) / mem[_85])
            continue 
    return s, uint64(idx)
}

function userClaimProfit(uint64 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require tx.origin == msg.sender
    mem[0] = msg.sender
    mem[32] = 158
    if profits.length >= arg1:
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while uint64(idx) < arg1:
            _50 = mem[64]
            mem[64] = mem[64] + 64
            mem[_50] = 0
            mem[_50 + 32] = 0
            require uint64(idx) < profits.length
            mem[0] = 157
            _54 = mem[64]
            mem[64] = mem[64] + 64
            mem[_54] = profits[uint64(idx)].field_0
            mem[_54 + 32] = profits[uint64(idx)].field_64
            mem[mem[64] + 4] = msg.sender
            if uint64(idx + 1) != -1:
                mem[mem[64] + 36] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                        gas gas_remaining wei
                       args msg.sender, uint64(idx + 1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _82 = mem[_78]
                require mem[_78] == mem[_78]
                mem[mem[64] + 4] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x981b24d0 with:
                        gas gas_remaining wei
                       args (idx + 1 << 192)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _100 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_100] == mem[_100]
                require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
                if not _82:
                    require mem[_100] / 2 >= 0
                    require mem[_100]
                    require s + (mem[_100] / 2 / mem[_100]) >= s
                    idx = idx + 1
                    s = s + (mem[_100] / 2 / mem[_100])
                    continue 
                require _82
                require 10^12 * profits[uint64(idx)].field_64 * _82 / _82 == 10^12 * profits[uint64(idx)].field_64
                require (10^12 * profits[uint64(idx)].field_64 * _82) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _82
                require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _82) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _82) + 5 * 10^17 / 10^18
                require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _82) + 5 * 10^17 / 10^18) + (mem[_100] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _82) + 5 * 10^17 / 10^18
                require mem[_100]
                require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _82) + 5 * 10^17 / 10^18) + (mem[_100] / 2) / mem[_100]) >= s
                idx = idx + 1
                s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _82) + 5 * 10^17 / 10^18) + (mem[_100] / 2) / mem[_100])
                continue 
            mem[mem[64] + 36] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args msg.sender, profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _80 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _84 = mem[_80]
            require mem[_80] == mem[_80]
            mem[mem[64] + 4] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x981b24d0 with:
                    gas gas_remaining wei
                   args profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_104] == mem[_104]
            require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
            if not _84:
                require mem[_104] / 2 >= 0
                require mem[_104]
                require s + (mem[_104] / 2 / mem[_104]) >= s
                idx = idx + 1
                s = s + (mem[_104] / 2 / mem[_104])
                continue 
            require _84
            require 10^12 * profits[uint64(idx)].field_64 * _84 / _84 == 10^12 * profits[uint64(idx)].field_64
            require (10^12 * profits[uint64(idx)].field_64 * _84) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _84
            require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _84) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _84) + 5 * 10^17 / 10^18
            require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _84) + 5 * 10^17 / 10^18) + (mem[_104] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _84) + 5 * 10^17 / 10^18
            require mem[_104]
            require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _84) + 5 * 10^17 / 10^18) + (mem[_104] / 2) / mem[_104]) >= s
            idx = idx + 1
            s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _84) + 5 * 10^17 / 10^18) + (mem[_104] / 2) / mem[_104])
            continue 
        mem[0] = msg.sender
        mem[32] = 158
        lastProfitDistIndex[msg.sender] = uint64(idx)
        if s:
            _58 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = s
            _68 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_68 + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[_58 + 100] = 0xbe2a1f7900000000000000000000000000000000000000000000000000000000
            mem[_58 + 104] = daiAddress
            mem[_58 + 136] = 64
            _86 = mem[_68]
            mem[_58 + 168] = mem[_68]
            mem[_58 + 200 len ceil32(_86)] = mem[_68 + 32 len ceil32(_86)]
            if ceil32(_86) > _86:
                mem[_86 + _58 + 200] = 0
            require ext_code.size(dfProfitsAddress)
            call dfProfitsAddress.cast(address rg1, bytes rg2) with:
                 gas gas_remaining wei
                args daiAddress, 64, mem[_58 + 168 len ceil32(_86) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while uint64(idx) < profits.length:
            _51 = mem[64]
            mem[64] = mem[64] + 64
            mem[_51] = 0
            mem[_51 + 32] = 0
            mem[0] = 157
            _57 = mem[64]
            mem[64] = mem[64] + 64
            mem[_57] = profits[uint64(idx)].field_0
            mem[_57 + 32] = profits[uint64(idx)].field_64
            mem[mem[64] + 4] = msg.sender
            if uint64(idx + 1) != -1:
                mem[mem[64] + 36] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                        gas gas_remaining wei
                       args msg.sender, uint64(idx + 1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _79 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _83 = mem[_79]
                require mem[_79] == mem[_79]
                mem[mem[64] + 4] = uint64(idx + 1)
                require ext_code.size(sub_f76fd0f4Address)
                staticcall sub_f76fd0f4Address.0x981b24d0 with:
                        gas gas_remaining wei
                       args (idx + 1 << 192)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _103 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_103] == mem[_103]
                require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
                if not _83:
                    require mem[_103] / 2 >= 0
                    require mem[_103]
                    require s + (mem[_103] / 2 / mem[_103]) >= s
                    idx = idx + 1
                    s = s + (mem[_103] / 2 / mem[_103])
                    continue 
                require _83
                require 10^12 * profits[uint64(idx)].field_64 * _83 / _83 == 10^12 * profits[uint64(idx)].field_64
                require (10^12 * profits[uint64(idx)].field_64 * _83) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _83
                require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _83) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _83) + 5 * 10^17 / 10^18
                require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _83) + 5 * 10^17 / 10^18) + (mem[_103] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _83) + 5 * 10^17 / 10^18
                require mem[_103]
                require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _83) + 5 * 10^17 / 10^18) + (mem[_103] / 2) / mem[_103]) >= s
                idx = idx + 1
                s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _83) + 5 * 10^17 / 10^18) + (mem[_103] / 2) / mem[_103])
                continue 
            mem[mem[64] + 36] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args msg.sender, profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _85 = mem[_81]
            require mem[_81] == mem[_81]
            mem[mem[64] + 4] = profits.length
            require ext_code.size(sub_f76fd0f4Address)
            staticcall sub_f76fd0f4Address.0x981b24d0 with:
                    gas gas_remaining wei
                   args profits.length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_105] == mem[_105]
            require 10^12 * profits[uint64(idx)].field_64 / 10^12 == profits[uint64(idx)].field_64
            if not _85:
                require mem[_105] / 2 >= 0
                require mem[_105]
                require s + (mem[_105] / 2 / mem[_105]) >= s
                idx = idx + 1
                s = s + (mem[_105] / 2 / mem[_105])
                continue 
            require _85
            require 10^12 * profits[uint64(idx)].field_64 * _85 / _85 == 10^12 * profits[uint64(idx)].field_64
            require (10^12 * profits[uint64(idx)].field_64 * _85) + 5 * 10^17 >= 10^12 * profits[uint64(idx)].field_64 * _85
            require 10^18 * (10^12 * profits[uint64(idx)].field_64 * _85) + 5 * 10^17 / 10^18 / 10^18 == (10^12 * profits[uint64(idx)].field_64 * _85) + 5 * 10^17 / 10^18
            require (10^18 * (10^12 * profits[uint64(idx)].field_64 * _85) + 5 * 10^17 / 10^18) + (mem[_105] / 2) >= 10^18 * (10^12 * profits[uint64(idx)].field_64 * _85) + 5 * 10^17 / 10^18
            require mem[_105]
            require s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _85) + 5 * 10^17 / 10^18) + (mem[_105] / 2) / mem[_105]) >= s
            idx = idx + 1
            s = s + ((10^18 * (10^12 * profits[uint64(idx)].field_64 * _85) + 5 * 10^17 / 10^18) + (mem[_105] / 2) / mem[_105])
            continue 
        mem[0] = msg.sender
        mem[32] = 158
        lastProfitDistIndex[msg.sender] = uint64(idx)
        if s:
            _59 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = s
            _71 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_71 + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[_59 + 100] = 0xbe2a1f7900000000000000000000000000000000000000000000000000000000
            mem[_59 + 104] = daiAddress
            mem[_59 + 136] = 64
            _87 = mem[_71]
            mem[_59 + 168] = mem[_71]
            mem[_59 + 200 len ceil32(_87)] = mem[_71 + 32 len ceil32(_87)]
            if ceil32(_87) > _87:
                mem[_87 + _59 + 200] = 0
            require ext_code.size(dfProfitsAddress)
            call dfProfitsAddress.cast(address rg1, bytes rg2) with:
                 gas gas_remaining wei
                args daiAddress, 64, mem[_59 + 168 len ceil32(_87) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0xd110a5eb: idx << 192, uint64(s), msg.sender
}

function withdrawAll(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _308 = mem[(32 * idx) + 128]
        require idx < mem[96]
        _310 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            if address(owner) != msg.sender:
                revert with 0, 'Permission denied'
            if not mem[(32 * idx) + 140 len 20]:
                call address(owner) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if eth.balance(this.address):
                    if not mem[(32 * idx) + 140 len 20]:
                        call address(owner) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + 140 len 20]:
                            call address(owner) with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _321 = mem[64]
                            mem[mem[64] + 36] = address(owner)
                            mem[mem[64] + 68] = eth.balance(this.address)
                            _327 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_327 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_327 + 36 len 28]
                            if not ext_code.hash(address(_308)):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_308)):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _340 = mem[_327]
                            s = 0
                            while s < _340:
                                mem[s + _321 + 100] = mem[s + _327 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_340) <= _340:
                                call address(_308).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _340 + _321 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    _465 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_465] = return_data.size
                                    mem[_465 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_465 + 32] == bool(mem[_465 + 32])
                                        if not mem[_465 + 32]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_340 + _321 + 100] = 0
                                call address(_308).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _340 + _321 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    _466 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_466] = return_data.size
                                    mem[_466 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_466 + 32] == bool(mem[_466 + 32])
                                        if not mem[_466 + 32]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + 140 len 20]:
                if address(owner) != msg.sender:
                    revert with 0, 'Permission denied'
                if not mem[(32 * idx) + 140 len 20]:
                    call address(owner) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if eth.balance(this.address):
                        if not mem[(32 * idx) + 140 len 20]:
                            call address(owner) with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + 140 len 20]:
                                call address(owner) with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _325 = mem[64]
                                mem[mem[64] + 36] = address(owner)
                                mem[mem[64] + 68] = eth.balance(this.address)
                                _330 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_330 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_330 + 36 len 28]
                                if not ext_code.hash(address(_308)):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_308)):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _342 = mem[_330]
                                s = 0
                                while s < _342:
                                    mem[s + _325 + 100] = mem[s + _330 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_342) <= _342:
                                    call address(_308).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _342 + _325 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        _469 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_469] = return_data.size
                                        mem[_469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_469 + 32] == bool(mem[_469 + 32])
                                            if not mem[_469 + 32]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_342 + _325 + 100] = 0
                                    call address(_308).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _342 + _325 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        _470 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_470] = return_data.size
                                        mem[_470 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_470 + 32] == bool(mem[_470 + 32])
                                            if not mem[_470 + 32]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_310))
                staticcall address(_310).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _318 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _323 = mem[_318]
                require mem[_318] == mem[_318]
                if address(owner) != msg.sender:
                    revert with 0, 'Permission denied'
                if not address(_308):
                    call address(owner) with:
                       value mem[_318] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if mem[_318]:
                        if not address(_308):
                            call address(owner) with:
                               value mem[_318] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_308):
                                call address(owner) with:
                                   value mem[_318] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _343 = mem[64]
                                mem[mem[64] + 36] = address(owner)
                                mem[mem[64] + 68] = _323
                                _371 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_371 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_371 + 36 len 28]
                                if not ext_code.hash(address(_308)):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_308)):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _404 = mem[_371]
                                s = 0
                                while s < _404:
                                    mem[s + _343 + 100] = mem[s + _371 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_404) <= _404:
                                    call address(_308).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _404 + _343 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        _467 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_467] = return_data.size
                                        mem[_467 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_467 + 32] == bool(mem[_467 + 32])
                                            if not mem[_467 + 32]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_404 + _343 + 100] = 0
                                    call address(_308).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _404 + _343 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        _468 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_468] = return_data.size
                                        mem[_468 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_468 + 32] == bool(mem[_468 + 32])
                                            if not mem[_468 + 32]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        idx = idx + 1
        continue 
}



}
