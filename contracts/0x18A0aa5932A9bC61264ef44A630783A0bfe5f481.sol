contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 160
address owner;
address tokenAddress;
address sub_bc6a9e01Address;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of struct sub_9353b9df;
mapping of uint8 stor7;
array of address distributors;
uint256 tokenSupply;
uint256 totalAllocated;

function isActive() payable {
    return bool(uint8(stor0.field_160))
}

function totalAllocated() payable {
    return totalAllocated
}

function distributors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < distributors.length
    return distributors[arg1]
}

function tokenSupply() payable {
    return tokenSupply
}

function owner() payable {
    return owner
}

function sub_9353b9df(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9353b9df[arg1].field_0, 
           sub_9353b9df[arg1].field_256,
           sub_9353b9df[arg1].field_512,
           sub_9353b9df[arg1].field_768,
           sub_9353b9df[arg1].field_1024,
           sub_9353b9df[arg1].field_1280,
           sub_9353b9df[arg1].field_1536
}

function sub_bc6a9e01(?) payable {
    return sub_bc6a9e01Address
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
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

function initialize(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_168):
        revert with 0, 'already initialized'
    uint8(stor0.field_168) = 1
    tokenSupply = arg3
    tokenAddress = arg1
    sub_bc6a9e01Address = arg2
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[address(arg1)]:
        return 0
    if block.number <= sub_9353b9df[address(arg1)].field_1024:
        return 0
    if tokenSupply and sub_9353b9df[address(arg1)].field_256 > -1 / tokenSupply:
        revert with 0, 17
    if tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000 < sub_9353b9df[address(arg1)].field_1280:
        revert with 0, 17
    if not (tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000) - sub_9353b9df[address(arg1)].field_1280:
        return 0
    return 1
}

function removeDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor7[address(arg1)]) != 1:
        revert with 0, 'Not found'
    if totalAllocated < sub_9353b9df[address(arg1)].field_256:
        revert with 0, 17
    totalAllocated -= sub_9353b9df[address(arg1)].field_256
    stor7[address(arg1)] = 0
    sub_9353b9df[address(arg1)].field_0 = 0
    sub_9353b9df[address(arg1)].field_256 = 0
    sub_9353b9df[address(arg1)].field_512 = 0
    sub_9353b9df[address(arg1)].field_768 = 0
    sub_9353b9df[address(arg1)].field_1024 = 0
    sub_9353b9df[address(arg1)].field_1280 = 0
    sub_9353b9df[address(arg1)].field_1536 = 0
    emit 0x74001d52: arg1
}

function pendingClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[address(arg1)]:
        return 0
    if block.number <= sub_9353b9df[address(arg1)].field_1024:
        return 0
    if tokenSupply and sub_9353b9df[address(arg1)].field_256 > -1 / tokenSupply:
        revert with 0, 17
    if tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000 < sub_9353b9df[address(arg1)].field_1280:
        revert with 0, 17
    if block.number < sub_9353b9df[address(arg1)].field_1024:
        revert with 0, 17
    if sub_9353b9df[address(arg1)].field_768 and block.number - sub_9353b9df[address(arg1)].field_1024 > -1 / sub_9353b9df[address(arg1)].field_768:
        revert with 0, 17
    return ((tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000) - sub_9353b9df[address(arg1)].field_1280)
}

function setSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Not update'
    tokenSupply = arg1
    idx = 0
    while idx < distributors.length:
        mem[0] = distributors[idx]
        mem[32] = 6
        if tokenSupply and sub_9353b9df[stor8[idx]].field_256 > -1 / tokenSupply:
            revert with 0, 17
        if tokenSupply * sub_9353b9df[stor8[idx]].field_256 / 10000 < sub_9353b9df[stor8[idx]].field_1280:
            revert with 0, 17
        if (tokenSupply * sub_9353b9df[stor8[idx]].field_256 / 10000) - sub_9353b9df[stor8[idx]].field_1280 and stor3 > -1 / (tokenSupply * sub_9353b9df[stor8[idx]].field_256 / 10000) - sub_9353b9df[stor8[idx]].field_1280:
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        sub_9353b9df[stor8[idx]].field_1536 = (tokenSupply * sub_9353b9df[stor8[idx]].field_256 / 10000 * stor3) - (sub_9353b9df[stor8[idx]].field_1280 * stor3) / stor5
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0xea4bfee7: arg1
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall sub_bc6a9e01Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call sub_bc6a9e01Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_69328bc9(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalAllocated > !arg2:
        revert with 0, 17
    if totalAllocated + arg2 > 10000:
        revert with 0, 'total allocations exceed 100%'
    if stor7[address(arg1)]:
        revert with 0, 'already set'
    distributors.length++
    distributors[distributors.length] = address(arg1)
    stor7[address(arg1)] = 1
    if totalAllocated > !arg2:
        revert with 0, 17
    totalAllocated += arg2
    sub_9353b9df[address(arg1)].field_0 = address(arg1)
    sub_9353b9df[address(arg1)].field_256 = arg2
    sub_9353b9df[address(arg1)].field_512 = arg3
    sub_9353b9df[address(arg1)].field_768 = arg4
    sub_9353b9df[address(arg1)].field_1280 = 0
    if arg3 and 20 > -1 / arg3:
        revert with 0, 17
    if block.number > !(20 * arg3):
        revert with 0, 17
    sub_9353b9df[address(arg1)].field_1024 = block.number + (20 * arg3)
    if tokenSupply and sub_9353b9df[address(arg1)].field_256 > -1 / tokenSupply:
        revert with 0, 17
    if tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000 and stor3 > -1 / tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000:
        revert with 0, 17
    if not stor5:
        revert with 0, 18
    sub_9353b9df[address(arg1)].field_1536 = tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000 * stor3 / stor5
    emit 0x499420c7: address(arg1), arg2, arg3, arg4
}

function sub_720f6366(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor7[address(arg1)]) != 1:
        revert with 0, 'Not found'
    if block.number >= sub_9353b9df[address(arg1)].field_1024:
        revert with 0, 'cannot update'
    if totalAllocated < sub_9353b9df[address(arg1)].field_256:
        revert with 0, 17
    if totalAllocated - sub_9353b9df[address(arg1)].field_256 > !arg2:
        revert with 0, 17
    if totalAllocated - sub_9353b9df[address(arg1)].field_256 + arg2 > 10000:
        revert with 0, 'total allocations exceed 100%'
    if totalAllocated < sub_9353b9df[address(arg1)].field_256:
        revert with 0, 17
    if totalAllocated - sub_9353b9df[address(arg1)].field_256 > !arg2:
        revert with 0, 17
    totalAllocated = totalAllocated - sub_9353b9df[address(arg1)].field_256 + arg2
    sub_9353b9df[address(arg1)].field_256 = arg2
    sub_9353b9df[address(arg1)].field_512 = arg3
    sub_9353b9df[address(arg1)].field_768 = arg4
    if arg3 and 20 > -1 / arg3:
        revert with 0, 17
    if block.number > !(20 * arg3):
        revert with 0, 17
    sub_9353b9df[address(arg1)].field_1024 = block.number + (20 * arg3)
    if tokenSupply and sub_9353b9df[address(arg1)].field_256 > -1 / tokenSupply:
        revert with 0, 17
    if tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000 and stor3 > -1 / tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000:
        revert with 0, 17
    if not stor5:
        revert with 0, 18
    sub_9353b9df[address(arg1)].field_1536 = tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000 * stor3 / stor5
    emit 0xd96cc92d: address(arg1), arg2, arg3, arg4
}

function sub_5f5288c2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor7[address(arg1)]:
        return 0
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if block.number <= sub_9353b9df[address(arg1)].field_1024:
        return 0
    staticcall sub_bc6a9e01Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor4:
        revert with 0, 17
    if ext_call.return_data[0] - stor4 and stor5 > -1 / ext_call.return_data[0] - stor4:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if stor3 > !((ext_call.return_data[0] * stor5) - (stor4 * stor5) / ext_call.return_data[0]):
        revert with 0, 17
    if tokenSupply and sub_9353b9df[address(arg1)].field_256 > -1 / tokenSupply:
        revert with 0, 17
    if tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000 < sub_9353b9df[address(arg1)].field_1280:
        revert with 0, 17
    if (tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000) - sub_9353b9df[address(arg1)].field_1280 and stor3 + ((ext_call.return_data[0] * stor5) - (stor4 * stor5) / ext_call.return_data[0]) > -1 / (tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000) - sub_9353b9df[address(arg1)].field_1280:
        revert with 0, 17
    if not stor5:
        revert with 0, 18
    if (stor3 * tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000) + ((ext_call.return_data[0] * stor5) - (stor4 * stor5) / ext_call.return_data[0] * tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000) - (stor3 * sub_9353b9df[address(arg1)].field_1280) - ((ext_call.return_data[0] * stor5) - (stor4 * stor5) / ext_call.return_data[0] * sub_9353b9df[address(arg1)].field_1280) / stor5 < sub_9353b9df[address(arg1)].field_1536:
        revert with 0, 17
    return (((stor3 * tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000) + ((ext_call.return_data[0] * stor5) - (stor4 * stor5) / ext_call.return_data[0] * tokenSupply * sub_9353b9df[address(arg1)].field_256 / 10000) - (stor3 * sub_9353b9df[address(arg1)].field_1280) - ((ext_call.return_data[0] * stor5) - (stor4 * stor5) / ext_call.return_data[0] * sub_9353b9df[address(arg1)].field_1280) / stor5) - sub_9353b9df[address(arg1)].field_1536)
}

function harvest() payable {
    if bool(uint8(stor0.field_160)) != 1:
        revert with 0, 'not active'
    if stor7[msg.sender]:
        mem[100] = this.address
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if tokenSupply and sub_9353b9df[msg.sender].field_256 > -1 / tokenSupply:
                revert with 0, 17
            if tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 < sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 and stor3 > -1 / (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5 < sub_9353b9df[msg.sender].field_1536:
                revert with 0, 17
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 and stor3 > -1 / (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            sub_9353b9df[msg.sender].field_1536 = (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5
            if ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536:
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_bc6a9e01Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0
                mem[ceil32(return_data.size) + 328] = 0
                call sub_bc6a9e01Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor4 < ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536:
                    revert with 0, 17
                stor4 = stor4 - ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) + sub_9353b9df[msg.sender].field_1536
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            staticcall sub_bc6a9e01Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor4:
                revert with 0, 17
            if ext_call.return_data[0] - stor4 and stor5 > -1 / ext_call.return_data[0] - stor4:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor3 > !((ext_call.return_data[0] * stor5) - (stor4 * stor5) / ext_call.return_data[0]):
                revert with 0, 17
            stor3 += (ext_call.return_data[0] * stor5) - (stor4 * stor5) / ext_call.return_data[0]
            if stor4 > !(ext_call.return_data[0] - stor4):
                revert with 0, 17
            stor4 = ext_call.return_data[0]
            if tokenSupply and sub_9353b9df[msg.sender].field_256 > -1 / tokenSupply:
                revert with 0, 17
            if tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 < sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 and stor3 > -1 / (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5 < sub_9353b9df[msg.sender].field_1536:
                revert with 0, 17
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 and stor3 > -1 / (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            sub_9353b9df[msg.sender].field_1536 = (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5
            if ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536:
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_bc6a9e01Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call sub_bc6a9e01Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor4 < ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536:
                    revert with 0, 17
                stor4 = stor4 - ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) + sub_9353b9df[msg.sender].field_1536
}

function claim() payable {
    if bool(uint8(stor0.field_160)) != 1:
        revert with 0, 'not active'
    if not stor7[address(msg.sender)]:
        revert with 0, 'not claimable'
    if block.number <= sub_9353b9df[address(msg.sender)].field_1024:
        revert with 0, 'not claimable'
    mem[128] = sub_9353b9df[address(msg.sender)].field_256
    mem[160] = sub_9353b9df[address(msg.sender)].field_512
    mem[192] = sub_9353b9df[address(msg.sender)].field_768
    mem[224] = sub_9353b9df[address(msg.sender)].field_1024
    mem[256] = sub_9353b9df[address(msg.sender)].field_1280
    mem[288] = sub_9353b9df[address(msg.sender)].field_1536
    if tokenSupply and sub_9353b9df[address(msg.sender)].field_256 > -1 / tokenSupply:
        revert with 0, 17
    if tokenSupply * sub_9353b9df[address(msg.sender)].field_256 / 10000 < sub_9353b9df[address(msg.sender)].field_1280:
        revert with 0, 17
    if not (tokenSupply * sub_9353b9df[address(msg.sender)].field_256 / 10000) - sub_9353b9df[address(msg.sender)].field_1280:
        revert with 0, 'not claimable'
    if bool(uint8(stor0.field_160)) != 1:
        revert with 0, 'not active'
    if stor7[msg.sender]:
        mem[324] = this.address
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if tokenSupply and sub_9353b9df[msg.sender].field_256 > -1 / tokenSupply:
                revert with 0, 17
            if tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 < sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 and stor3 > -1 / (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5 < sub_9353b9df[msg.sender].field_1536:
                revert with 0, 17
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 and stor3 > -1 / (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            sub_9353b9df[msg.sender].field_1536 = (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5
            if ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536:
                mem[ceil32(return_data.size) + 356] = msg.sender
                mem[ceil32(return_data.size) + 388] = ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536
                mem[ceil32(return_data.size) + 320] = 68
                mem[ceil32(return_data.size) + 356 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 352 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 420] = 32
                mem[ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_bc6a9e01Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 484 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0
                mem[ceil32(return_data.size) + 552] = 0
                call sub_bc6a9e01Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_9353b9df[address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len sub_9353b9df[address(msg.sender)].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_9353b9df[address(msg.sender)].field_0:
                        require sub_9353b9df[address(msg.sender)].field_0 >= 32
                        require sub_9353b9df[address(msg.sender)].field_256 == bool(sub_9353b9df[address(msg.sender)].field_256)
                        if not sub_9353b9df[address(msg.sender)].field_256:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 516] == bool(mem[ceil32(return_data.size) + 516])
                        if not mem[ceil32(return_data.size) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor4 < ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536:
                    revert with 0, 17
                stor4 = stor4 - ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) + sub_9353b9df[msg.sender].field_1536
        else:
            mem[ceil32(return_data.size) + 324] = this.address
            staticcall sub_bc6a9e01Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor4:
                revert with 0, 17
            if ext_call.return_data[0] - stor4 and stor5 > -1 / ext_call.return_data[0] - stor4:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor3 > !((ext_call.return_data[0] * stor5) - (stor4 * stor5) / ext_call.return_data[0]):
                revert with 0, 17
            stor3 += (ext_call.return_data[0] * stor5) - (stor4 * stor5) / ext_call.return_data[0]
            if stor4 > !(ext_call.return_data[0] - stor4):
                revert with 0, 17
            stor4 = ext_call.return_data[0]
            if tokenSupply and sub_9353b9df[msg.sender].field_256 > -1 / tokenSupply:
                revert with 0, 17
            if tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 < sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 and stor3 > -1 / (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5 < sub_9353b9df[msg.sender].field_1536:
                revert with 0, 17
            if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 and stor3 > -1 / (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            sub_9353b9df[msg.sender].field_1536 = (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5
            if ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536:
                mem[(2 * ceil32(return_data.size)) + 356] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 388] = ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536
                mem[(2 * ceil32(return_data.size)) + 320] = 68
                mem[(2 * ceil32(return_data.size)) + 356 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 352 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 420] = 32
                mem[(2 * ceil32(return_data.size)) + 452] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_bc6a9e01Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 484 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0
                mem[(2 * ceil32(return_data.size)) + 552] = 0
                call sub_bc6a9e01Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_9353b9df[address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len sub_9353b9df[address(msg.sender)].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_9353b9df[address(msg.sender)].field_0:
                        require sub_9353b9df[address(msg.sender)].field_0 >= 32
                        require sub_9353b9df[address(msg.sender)].field_256 == bool(sub_9353b9df[address(msg.sender)].field_256)
                        if not sub_9353b9df[address(msg.sender)].field_256:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 516] == bool(mem[(2 * ceil32(return_data.size)) + 516])
                        if not mem[(2 * ceil32(return_data.size)) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor4 < ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) - sub_9353b9df[msg.sender].field_1536:
                    revert with 0, 17
                stor4 = stor4 - ((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) / stor5) + sub_9353b9df[msg.sender].field_1536
    if tokenSupply and sub_9353b9df[msg.sender].field_256 > -1 / tokenSupply:
        revert with 0, 17
    if tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 < sub_9353b9df[msg.sender].field_1280:
        revert with 0, 17
    if block.number < sub_9353b9df[msg.sender].field_1024:
        revert with 0, 17
    if sub_9353b9df[msg.sender].field_768 and block.number - sub_9353b9df[msg.sender].field_1024 > -1 / sub_9353b9df[msg.sender].field_768:
        revert with 0, 17
    if (block.number * sub_9353b9df[msg.sender].field_768) - (sub_9353b9df[msg.sender].field_1024 * sub_9353b9df[msg.sender].field_768) > (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280:
        if sub_9353b9df[msg.sender].field_1280 > !((tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280):
            revert with 0, 17
        sub_9353b9df[msg.sender].field_1280 = tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000
        if False and stor3 > 0:
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        sub_9353b9df[msg.sender].field_1536 = 0 / stor5
        sub_9353b9df[msg.sender].field_1024 = block.number
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_9353b9df[msg.sender].field_0, (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Claim(sub_9353b9df[msg.sender].field_0, (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280);
    else:
        if sub_9353b9df[msg.sender].field_1280 > !((block.number * sub_9353b9df[msg.sender].field_768) - (sub_9353b9df[msg.sender].field_1024 * sub_9353b9df[msg.sender].field_768)):
            revert with 0, 17
        sub_9353b9df[msg.sender].field_1280 = sub_9353b9df[msg.sender].field_1280 + (block.number * sub_9353b9df[msg.sender].field_768) - (sub_9353b9df[msg.sender].field_1024 * sub_9353b9df[msg.sender].field_768)
        if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 < (block.number * sub_9353b9df[msg.sender].field_768) - (sub_9353b9df[msg.sender].field_1024 * sub_9353b9df[msg.sender].field_768):
            revert with 0, 17
        if (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 - (block.number * sub_9353b9df[msg.sender].field_768) + (sub_9353b9df[msg.sender].field_1024 * sub_9353b9df[msg.sender].field_768) and stor3 > -1 / (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000) - sub_9353b9df[msg.sender].field_1280 - (block.number * sub_9353b9df[msg.sender].field_768) + (sub_9353b9df[msg.sender].field_1024 * sub_9353b9df[msg.sender].field_768):
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        sub_9353b9df[msg.sender].field_1536 = (tokenSupply * sub_9353b9df[msg.sender].field_256 / 10000 * stor3) - (sub_9353b9df[msg.sender].field_1280 * stor3) - (block.number * sub_9353b9df[msg.sender].field_768 * stor3) + (sub_9353b9df[msg.sender].field_1024 * sub_9353b9df[msg.sender].field_768 * stor3) / stor5
        sub_9353b9df[msg.sender].field_1024 = block.number
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_9353b9df[msg.sender].field_0, (block.number * sub_9353b9df[msg.sender].field_768) - (sub_9353b9df[msg.sender].field_1024 * sub_9353b9df[msg.sender].field_768)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Claim(sub_9353b9df[msg.sender].field_0, (block.number * sub_9353b9df[msg.sender].field_768) - (sub_9353b9df[msg.sender].field_1024 * sub_9353b9df[msg.sender].field_768));
}



}
