contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 listingPrice;
address sub_eaf31a2fAddress;
address feeReceiverAddress;
mapping of struct owner;

function getListingPrice() payable {
    return listingPrice
}

function owner() payable {
    return owner
}

function feeReceiver() payable {
    return feeReceiverAddress
}

function getOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return owner[arg1].field_1024
}

function getMarketItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return owner[arg1].field_0, 
           owner[arg1].field_256,
           owner[arg1].field_512,
           owner[arg1].field_768,
           owner[arg1].field_1024,
           owner[arg1].field_1280,
           bool(owner[arg1].field_1536),
           bool(owner[arg1].field_1544)
}

function sub_eaf31a2f(?) payable {
    return sub_eaf31a2fAddress
}

function _fallback() payable {
    revert
}

function sub_2832f2d5(?) payable {
    if stor2 < stor3:
        revert with 0, 17
    if stor2 - stor3 < stor4:
        revert with 0, 17
    return (stor2 - stor3 - stor4)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setFeeReceiver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeReceiverAddress = arg1
}

function sub_16bfb2cd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eaf31a2fAddress = address(arg1)
}

function setListingPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    listingPrice = 10^18 * arg1
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function cancelSale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner[arg1].field_768
    owner[arg1].field_1544 = 1
    owner[arg1].field_1024 = msg.sender or Mask(96, 160, owner[arg1].field_1024)
    require ext_code.size(owner[arg1].field_256)
    call owner[arg1].field_256.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, owner[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4++
}

function createMarketItem(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg3:
        revert with 0, 'Price can't be 0 MetaDoge'
    require ext_code.size(sub_eaf31a2fAddress)
    staticcall sub_eaf31a2fAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < listingPrice:
        revert with 0, 'Check the token allowance'
    require ext_code.size(sub_eaf31a2fAddress)
    call sub_eaf31a2fAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, feeReceiverAddress, listingPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor2++
    if arg3 and 10^18 > -1 / arg3:
        revert with 0, 17
    owner[stor2].field_0 = stor2
    owner[stor2].field_256 = arg1
    owner[stor2].field_512 = arg2
    owner[stor2].field_768 = msg.sender
    owner[stor2].field_1024 = this.address
    owner[stor2].field_1280 = 10^18 * arg3
    owner[stor2].field_1536 = 0
    owner[stor2].field_1544 = 0
    owner[stor2].field_1552 = 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MarketItemCreated(msg.sender, this.address, arg3, 0, 0, stor2, arg1, arg2);
    stor0 = 1
}

function createMarketSale(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(sub_eaf31a2fAddress)
    staticcall sub_eaf31a2fAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < owner[arg2].field_1280:
        revert with 0, 'Check the token allowance'
    require ext_code.size(sub_eaf31a2fAddress)
    call sub_eaf31a2fAddress.0x658d4b7f with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_eaf31a2fAddress)
    call sub_eaf31a2fAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, owner[arg2].field_768, owner[arg2].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_eaf31a2fAddress)
    call sub_eaf31a2fAddress.0x658d4b7f with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, owner[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    owner[arg2].field_1536 = 1
    stor3++
    stor0 = 1
}

function sub_ad5edd50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_1024 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 9
            if owner[idx + 1].field_1024 != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = owner[idx + 1].field_0
            mem[32] = 9
            _74 = mem[64]
            mem[64] = mem[64] + 256
            mem[_74] = owner[owner[idx + 1].field_0].field_0
            mem[_74 + 32] = owner[owner[idx + 1].field_0].field_256
            mem[_74 + 64] = owner[owner[idx + 1].field_0].field_512
            mem[_74 + 96] = owner[owner[idx + 1].field_0].field_768
            mem[_74 + 128] = owner[owner[idx + 1].field_0].field_1024
            mem[_74 + 160] = owner[owner[idx + 1].field_0].field_1280
            mem[_74 + 192] = bool(owner[owner[idx + 1].field_0].field_1536)
            mem[_74 + 224] = bool(owner[owner[idx + 1].field_0].field_1544)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _74
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _58 = mem[64]
        mem[mem[64]] = 32
        _59 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _59:
            _93 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_93 + 44 len 20]
            mem[s + 64] = mem[_93 + 64]
            mem[s + 96] = mem[_93 + 108 len 20]
            mem[s + 128] = mem[_93 + 140 len 20]
            mem[s + 160] = mem[_93 + 160]
            mem[s + 192] = bool(mem[_93 + 192])
            mem[s + 224] = bool(mem[_93 + 224])
            idx = idx + 1
            s = s + 256
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _58 + (256 * _59) + -mem[64] + 64
    mem[64] = (32 * s) + 384
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[var19001] = (32 * s) + 128
    t = var19001
    idx = var19002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_1024 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = owner[idx + 1].field_0
        mem[32] = 9
        _135 = mem[64]
        mem[64] = mem[64] + 256
        mem[_135] = owner[owner[idx + 1].field_0].field_0
        mem[_135 + 32] = owner[owner[idx + 1].field_0].field_256
        mem[_135 + 64] = owner[owner[idx + 1].field_0].field_512
        mem[_135 + 96] = owner[owner[idx + 1].field_0].field_768
        mem[_135 + 128] = owner[owner[idx + 1].field_0].field_1024
        mem[_135 + 160] = owner[owner[idx + 1].field_0].field_1280
        mem[_135 + 192] = bool(owner[owner[idx + 1].field_0].field_1536)
        mem[_135 + 224] = bool(owner[owner[idx + 1].field_0].field_1544)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _135
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _120 = mem[64]
    mem[mem[64]] = 32
    _121 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _121:
        _137 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_137 + 44 len 20]
        mem[s + 64] = mem[_137 + 64]
        mem[s + 96] = mem[_137 + 108 len 20]
        mem[s + 128] = mem[_137 + 140 len 20]
        mem[s + 160] = mem[_137 + 160]
        mem[s + 192] = bool(mem[_137 + 192])
        mem[s + 224] = bool(mem[_137 + 224])
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _120 + (256 * _121) + -mem[64] + 64
}

function sub_6e09dc51(?) payable {
    if stor2 < stor3:
        revert with 0, 17
    if stor2 - stor3 < stor4:
        revert with 0, 17
    if stor2 - stor3 - stor4 > test266151307():
        revert with 0, 65
    mem[96] = stor2 - stor3 - stor4
    mem[64] = (32 * stor2 - stor3 - stor4) + 128
    if not stor2 - stor3 - stor4:
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 9
            if owner[idx + 1].field_1024 != this.address:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 9
            if owner[idx + 1].field_1544:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 9
            if owner[idx + 1].field_1536:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = owner[idx + 1].field_0
            mem[32] = 9
            _73 = mem[64]
            mem[64] = mem[64] + 256
            mem[_73] = owner[owner[idx + 1].field_0].field_0
            mem[_73 + 32] = owner[owner[idx + 1].field_0].field_256
            mem[_73 + 64] = owner[owner[idx + 1].field_0].field_512
            mem[_73 + 96] = owner[owner[idx + 1].field_0].field_768
            mem[_73 + 128] = owner[owner[idx + 1].field_0].field_1024
            mem[_73 + 160] = owner[owner[idx + 1].field_0].field_1280
            mem[_73 + 192] = bool(owner[owner[idx + 1].field_0].field_1536)
            mem[_73 + 224] = bool(owner[owner[idx + 1].field_0].field_1544)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _73
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _43:
            _81 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_81 + 44 len 20]
            mem[s + 64] = mem[_81 + 64]
            mem[s + 96] = mem[_81 + 108 len 20]
            mem[s + 128] = mem[_81 + 140 len 20]
            mem[s + 160] = mem[_81 + 160]
            mem[s + 192] = bool(mem[_81 + 192])
            mem[s + 224] = bool(mem[_81 + 224])
            idx = idx + 1
            s = s + 256
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _42 + (256 * _43) + -mem[64] + 64
    mem[64] = (32 * stor2 - stor3 - stor4) + 384
    mem[(32 * stor2 - stor3 - stor4) + 128] = 0
    mem[(32 * stor2 - stor3 - stor4) + 160] = 0
    mem[(32 * stor2 - stor3 - stor4) + 192] = 0
    mem[(32 * stor2 - stor3 - stor4) + 224] = 0
    mem[(32 * stor2 - stor3 - stor4) + 256] = 0
    mem[(32 * stor2 - stor3 - stor4) + 288] = 0
    mem[(32 * stor2 - stor3 - stor4) + 320] = 0
    mem[(32 * stor2 - stor3 - stor4) + 352] = 0
    mem[var16001] = (32 * stor2 - stor3 - stor4) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * stor2 - stor3 - stor4) + 128] = 0
        mem[(32 * stor2 - stor3 - stor4) + 160] = 0
        mem[(32 * stor2 - stor3 - stor4) + 192] = 0
        mem[(32 * stor2 - stor3 - stor4) + 224] = 0
        mem[(32 * stor2 - stor3 - stor4) + 256] = 0
        mem[(32 * stor2 - stor3 - stor4) + 288] = 0
        mem[(32 * stor2 - stor3 - stor4) + 320] = 0
        mem[(32 * stor2 - stor3 - stor4) + 352] = 0
        mem[s + 32] = (32 * stor2 - stor3 - stor4) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_1024 != this.address:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_1544:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_1536:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = owner[idx + 1].field_0
        mem[32] = 9
        _127 = mem[64]
        mem[64] = mem[64] + 256
        mem[_127] = owner[owner[idx + 1].field_0].field_0
        mem[_127 + 32] = owner[owner[idx + 1].field_0].field_256
        mem[_127 + 64] = owner[owner[idx + 1].field_0].field_512
        mem[_127 + 96] = owner[owner[idx + 1].field_0].field_768
        mem[_127 + 128] = owner[owner[idx + 1].field_0].field_1024
        mem[_127 + 160] = owner[owner[idx + 1].field_0].field_1280
        mem[_127 + 192] = bool(owner[owner[idx + 1].field_0].field_1536)
        mem[_127 + 224] = bool(owner[owner[idx + 1].field_0].field_1544)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _127
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _110 = mem[64]
    mem[mem[64]] = 32
    _111 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _111:
        _129 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_129 + 44 len 20]
        mem[s + 64] = mem[_129 + 64]
        mem[s + 96] = mem[_129 + 108 len 20]
        mem[s + 128] = mem[_129 + 140 len 20]
        mem[s + 160] = mem[_129 + 160]
        mem[s + 192] = bool(mem[_129 + 192])
        mem[s + 224] = bool(mem[_129 + 224])
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _110 + (256 * _111) + -mem[64] + 64
}

function sub_0ea8fd52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_768 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_1544:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_1536:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 9
            if owner[idx + 1].field_768 != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 9
            if owner[idx + 1].field_1544:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 9
            if owner[idx + 1].field_1536:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = owner[idx + 1].field_0
            mem[32] = 9
            _99 = mem[64]
            mem[64] = mem[64] + 256
            mem[_99] = owner[owner[idx + 1].field_0].field_0
            mem[_99 + 32] = owner[owner[idx + 1].field_0].field_256
            mem[_99 + 64] = owner[owner[idx + 1].field_0].field_512
            mem[_99 + 96] = owner[owner[idx + 1].field_0].field_768
            mem[_99 + 128] = owner[owner[idx + 1].field_0].field_1024
            mem[_99 + 160] = owner[owner[idx + 1].field_0].field_1280
            mem[_99 + 192] = bool(owner[owner[idx + 1].field_0].field_1536)
            mem[_99 + 224] = bool(owner[owner[idx + 1].field_0].field_1544)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _99
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _68 = mem[64]
        mem[mem[64]] = 32
        _69 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _69:
            _107 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_107 + 44 len 20]
            mem[s + 64] = mem[_107 + 64]
            mem[s + 96] = mem[_107 + 108 len 20]
            mem[s + 128] = mem[_107 + 140 len 20]
            mem[s + 160] = mem[_107 + 160]
            mem[s + 192] = bool(mem[_107 + 192])
            mem[s + 224] = bool(mem[_107 + 224])
            idx = idx + 1
            s = s + 256
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _68 + (256 * _69) + -mem[64] + 64
    mem[64] = (32 * s) + 384
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[var19001] = (32 * s) + 128
    t = var19001
    idx = var19002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_768 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_1544:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 9
        if owner[idx + 1].field_1536:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = owner[idx + 1].field_0
        mem[32] = 9
        _153 = mem[64]
        mem[64] = mem[64] + 256
        mem[_153] = owner[owner[idx + 1].field_0].field_0
        mem[_153 + 32] = owner[owner[idx + 1].field_0].field_256
        mem[_153 + 64] = owner[owner[idx + 1].field_0].field_512
        mem[_153 + 96] = owner[owner[idx + 1].field_0].field_768
        mem[_153 + 128] = owner[owner[idx + 1].field_0].field_1024
        mem[_153 + 160] = owner[owner[idx + 1].field_0].field_1280
        mem[_153 + 192] = bool(owner[owner[idx + 1].field_0].field_1536)
        mem[_153 + 224] = bool(owner[owner[idx + 1].field_0].field_1544)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _153
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _136 = mem[64]
    mem[mem[64]] = 32
    _137 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _137:
        _155 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_155 + 44 len 20]
        mem[s + 64] = mem[_155 + 64]
        mem[s + 96] = mem[_155 + 108 len 20]
        mem[s + 128] = mem[_155 + 140 len 20]
        mem[s + 160] = mem[_155 + 160]
        mem[s + 192] = bool(mem[_155 + 192])
        mem[s + 224] = bool(mem[_155 + 224])
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _136 + (256 * _137) + -mem[64] + 64
}



}
