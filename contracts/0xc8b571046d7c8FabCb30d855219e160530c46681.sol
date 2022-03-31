contract main {




// =====================  Runtime code  =====================


#
#  - _claimStakeCommission(uint256 arg1, address arg2)
#  - claimPendingReward(uint256 arg1)
#  - getRewardAndClaimedStatus(uint256 arg1, uint256 arg2)
#  - claimAllPendingReward(uint256 arg1)
#  - changeClaimStatus(uint256 arg1)
#
address msAddress;
address soteMasterAddress;
address stor2;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
uint256 stor12;
address stor13;
uint256 stor13;

function ms() payable {
    return msAddress
}

function soteMasterAddress() payable {
    return soteMasterAddress
}

function _fallback() payable {
    revert
}

function changeMasterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    soteMasterAddress = arg1
}

function upgrade(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor2))
    staticcall address(stor2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(stor2))
        call address(stor2).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function changeDependentContractAddress() payable {
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x434c000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor7 = ext_call.return_data[12 len 20] or Mask(96, 160, stor7)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4344000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    require ext_code.size(msAddress)
    staticcall msAddress.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5443000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor3 = ext_call.return_data[12 len 20] or Mask(96, 160, stor3)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5444000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor5 = ext_call.return_data[12 len 20] or Mask(96, 160, stor5)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5446000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor4 = ext_call.return_data[12 len 20] or Mask(96, 160, stor4)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5031000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor9 = ext_call.return_data[12 len 20] or Mask(96, 160, stor9)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5032000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor10 = ext_call.return_data[12 len 20] or Mask(96, 160, stor10)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5044000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor11 = ext_call.return_data[12 len 20] or Mask(96, 160, stor11)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5144000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor6 = ext_call.return_data[12 len 20] or Mask(96, 160, stor6)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5053000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
}

function getRewardToBeDistributedByUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x34f19e2c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor8))
    staticcall address(stor8).getRewardDistributedIndex(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    idx = mem[96]
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor8))
        staticcall address(stor8).0xfc57c9bb with:
                gas gas_remaining wei
               args address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(address(stor8))
            staticcall address(stor8).0x54a1b431 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[96 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 128
                mem[100] = ext_call.return_data[32]
                require ext_code.size(address(stor8))
                staticcall address(stor8).0x4e06c014 with:
                        gas gas_remaining wei
                       args ext_call.return_data[32]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ('signextend', 0, ('ext_call.return_data', 0, 32)):
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[0]:
                                        idx = idx + 1
                                        s = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                s = ext_call.return_data[0]
                                continue 
                    else:
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[0]:
                                        idx = idx + 1
                                        s = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                s = ext_call.return_data[0]
                                continue 
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x274d865f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = ext_call.return_data[32]
    t = s
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor8))
        staticcall address(stor8).0xf2d16e2a with:
                gas gas_remaining wei
               args address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(address(stor8))
            staticcall address(stor8).0x54a1b431 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[96 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 128
                mem[100] = ext_call.return_data[32]
                require ext_code.size(address(stor8))
                staticcall address(stor8).0x4e06c014 with:
                        gas gas_remaining wei
                       args ext_call.return_data[32]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ('signextend', 0, ('ext_call.return_data', 0, 32)):
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            t = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[32]:
                                        idx = idx + 1
                                        t = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                t = ext_call.return_data[0]
                                continue 
                    else:
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            t = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[32]:
                                        idx = idx + 1
                                        t = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                t = ext_call.return_data[0]
                                continue 
    return 0
}

function getPendingRewardOfUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x34f19e2c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor8))
    staticcall address(stor8).getRewardDistributedIndex(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    idx = mem[96]
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor8))
        staticcall address(stor8).0xfc57c9bb with:
                gas gas_remaining wei
               args address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(address(stor8))
            staticcall address(stor8).0x54a1b431 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[96 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 128
                mem[100] = ext_call.return_data[32]
                require ext_code.size(address(stor8))
                staticcall address(stor8).0x4e06c014 with:
                        gas gas_remaining wei
                       args ext_call.return_data[32]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ('signextend', 0, ('ext_call.return_data', 0, 32)):
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[0]:
                                        idx = idx + 1
                                        s = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                s = ext_call.return_data[0]
                                continue 
                    else:
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[0]:
                                        idx = idx + 1
                                        s = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                s = ext_call.return_data[0]
                                continue 
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x274d865f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = ext_call.return_data[32]
    t = s
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor8))
        staticcall address(stor8).0xf2d16e2a with:
                gas gas_remaining wei
               args address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(address(stor8))
            staticcall address(stor8).0x54a1b431 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[96 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 128
                mem[100] = ext_call.return_data[32]
                require ext_code.size(address(stor8))
                staticcall address(stor8).0x4e06c014 with:
                        gas gas_remaining wei
                       args ext_call.return_data[32]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ('signextend', 0, ('ext_call.return_data', 0, 32)):
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            t = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[32]:
                                        idx = idx + 1
                                        t = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                t = ext_call.return_data[0]
                                continue 
                    else:
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            t = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[32]:
                                        idx = idx + 1
                                        t = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                t = ext_call.return_data[0]
                                continue 
    require ext_code.size(address(stor13))
    staticcall address(stor13).stakerReward(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    return ext_call.return_data[0]
}

function getAllPendingRewardOfUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x34f19e2c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor8))
    staticcall address(stor8).getRewardDistributedIndex(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    idx = mem[96]
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor8))
        staticcall address(stor8).0xfc57c9bb with:
                gas gas_remaining wei
               args address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(address(stor8))
            staticcall address(stor8).0x54a1b431 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[96 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 128
                mem[100] = ext_call.return_data[32]
                require ext_code.size(address(stor8))
                staticcall address(stor8).0x4e06c014 with:
                        gas gas_remaining wei
                       args ext_call.return_data[32]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ('signextend', 0, ('ext_call.return_data', 0, 32)):
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[0]:
                                        idx = idx + 1
                                        s = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                s = ext_call.return_data[0]
                                continue 
                    else:
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[0]:
                                        idx = idx + 1
                                        s = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            s = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        s = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                s = ext_call.return_data[0]
                                continue 
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x274d865f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = ext_call.return_data[32]
    t = s
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor8))
        staticcall address(stor8).0xf2d16e2a with:
                gas gas_remaining wei
               args address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(address(stor8))
            staticcall address(stor8).0x54a1b431 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[96 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 128
                mem[100] = ext_call.return_data[32]
                require ext_code.size(address(stor8))
                staticcall address(stor8).0x4e06c014 with:
                        gas gas_remaining wei
                       args ext_call.return_data[32]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ('signextend', 0, ('ext_call.return_data', 0, 32)):
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            t = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[32]:
                                        idx = idx + 1
                                        t = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                t = ext_call.return_data[0]
                                continue 
                    else:
                        if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                            idx = idx + 1
                            t = ext_call.return_data[0]
                            continue 
                        else:
                            if not ext_call.return_data[96]:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                mem[96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[32]:
                                        idx = idx + 1
                                        t = ext_call.return_data[0]
                                        continue 
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            require 0 / 100 * ext_call.return_data[64] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        require 0 / 100 * ext_call.return_data[64] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            mem[96 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            require 0 / 100 * ext_call.return_data[32] >= 0
                                                            idx = idx + 1
                                                            t = ext_call.return_data[0]
                                                            continue 
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        require 0 / 100 * ext_call.return_data[32] >= 0
                                                        idx = idx + 1
                                                        t = ext_call.return_data[0]
                                                        continue 
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                            else:
                                idx = idx + 1
                                t = ext_call.return_data[0]
                                continue 
    require ext_code.size(address(stor13))
    staticcall address(stor13).stakerReward(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor12))
    staticcall address(stor12).getPendingReward(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    return (2 * ext_call.return_data[0])
}

function getRewardToBeGiven(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x54a1b431 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 128
        require ext_code.size(address(stor8))
        staticcall address(stor8).0x4e06c014 with:
                gas gas_remaining wei
               args ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ('signextend', 0, ('ext_call.return_data', 0, 32)):
                if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                    return 0, 0, ext_call.return_data[0], 0
                else:
                    if not ext_call.return_data[96]:
                        if arg1 != 1:
                            require ext_code.size(address(stor8))
                            staticcall address(stor8).0xc49a8b19 with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if not ext_call.return_data[32]:
                                    return 0, 0, ext_call.return_data[0], ext_call.return_data[32]
                                else:
                                    if arg1 != 1:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64], 
                                                                   0,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32], 
                                                                   0,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64], 
                                                                   0,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32], 
                                                                   0,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                        else:
                            require ext_code.size(address(stor8))
                            staticcall address(stor8).0xc49a8b19 with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if not ext_call.return_data[0]:
                                    return 0, 0, ext_call.return_data[0], ext_call.return_data[0]
                                else:
                                    if arg1 != 1:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64], 
                                                                   0,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32], 
                                                                   0,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64], 
                                                                   0,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32], 
                                                                   0,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                    else:
                        if arg3 != 1:
                            return 0, 0, ext_call.return_data[0], 0
                        else:
                            if arg1 != 1:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[32]:
                                        return 0, 0, ext_call.return_data[0], ext_call.return_data[32]
                                    else:
                                        if arg1 != 1:
                                            if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0x949d9d76 with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[64]:
                                                        require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                        if ext_call.return_data[32]:
                                                            require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[32]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64], 
                                                                       0,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[32]
                                                            else:
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require ext_call.return_data[32]
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[32]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                        revert
                                            else:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0x949d9d76 with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                        if ext_call.return_data[32]:
                                                            require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[32]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32], 
                                                                       0,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[32]
                                                            else:
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require ext_call.return_data[32]
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[32]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                        revert
                                        else:
                                            if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0xdbd0064c with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[64]:
                                                        require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                        if ext_call.return_data[32]:
                                                            require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[32]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64], 
                                                                       0,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[32]
                                                            else:
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require ext_call.return_data[32]
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[32]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                        revert
                                            else:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0xdbd0064c with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                        if ext_call.return_data[32]:
                                                            require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[32]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32], 
                                                                       0,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[32]
                                                            else:
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require ext_call.return_data[32]
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[32]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                        revert
                            else:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[0]:
                                        return 0, 0, ext_call.return_data[0], ext_call.return_data[0]
                                    else:
                                        if arg1 != 1:
                                            if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0x949d9d76 with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[64]:
                                                        require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64], 
                                                                       0,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[0]
                                                            else:
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                        revert
                                            else:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0x949d9d76 with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32], 
                                                                       0,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[0]
                                                            else:
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                        revert
                                        else:
                                            if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0xdbd0064c with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[64]:
                                                        require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64], 
                                                                       0,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[0]
                                                            else:
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                        revert
                                            else:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0xdbd0064c with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32], 
                                                                       0,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[0]
                                                            else:
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 0, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                        revert
            else:
                if ('signextend', 0, ('ext_call.return_data', 0, 32)) != ('signextend', 0, ('ext_call.return_data', 64, 32)):
                    return 0, 1, ext_call.return_data[0], 0
                else:
                    if not ext_call.return_data[96]:
                        if arg1 != 1:
                            require ext_code.size(address(stor8))
                            staticcall address(stor8).0xc49a8b19 with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if not ext_call.return_data[32]:
                                    return 0, 1, ext_call.return_data[0], ext_call.return_data[32]
                                else:
                                    if arg1 != 1:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64], 
                                                                   1,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32], 
                                                                   1,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64], 
                                                                   1,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[32]:
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[32]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32], 
                                                                   1,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                else:
                                                    require ext_call.return_data[32]
                                                    require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[32]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                    revert
                        else:
                            require ext_code.size(address(stor8))
                            staticcall address(stor8).0xc49a8b19 with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                if not ext_call.return_data[0]:
                                    return 0, 1, ext_call.return_data[0], ext_call.return_data[0]
                                else:
                                    if arg1 != 1:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64], 
                                                                   1,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0x949d9d76 with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32], 
                                                                   1,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                    else:
                                        if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[64]:
                                                    require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64], 
                                                                   1,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require 100 * ext_call.return_data[64] > 0
                                                        require 100 * ext_call.return_data[64]
                                                        return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                                        else:
                                            require ext_code.size(address(stor8))
                                            staticcall address(stor8).0xdbd0064c with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                if ext_call.return_data[32]:
                                                    require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0]:
                                                            require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32], 
                                                                   1,
                                                                   ext_call.return_data[0],
                                                                   ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require 100 * ext_call.return_data[32] > 0
                                                        require 100 * ext_call.return_data[32]
                                                        return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                else:
                                                    require ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                    require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                    revert
                    else:
                        if arg3 != 1:
                            return 0, 1, ext_call.return_data[0], 0
                        else:
                            if arg1 != 1:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[32]:
                                        return 0, 1, ext_call.return_data[0], ext_call.return_data[32]
                                    else:
                                        if arg1 != 1:
                                            if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0x949d9d76 with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[64]:
                                                        require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                        if ext_call.return_data[32]:
                                                            require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[32]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64], 
                                                                       1,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[32]
                                                            else:
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require ext_call.return_data[32]
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[32]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                        revert
                                            else:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0x949d9d76 with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                        if ext_call.return_data[32]:
                                                            require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[32]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32], 
                                                                       1,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[32]
                                                            else:
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require ext_call.return_data[32]
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[32]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                        revert
                                        else:
                                            if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0xdbd0064c with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[64]:
                                                        require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                        if ext_call.return_data[32]:
                                                            require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[32]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[64], 
                                                                       1,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[32]
                                                            else:
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require ext_call.return_data[32]
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[32]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                        revert
                                            else:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0xdbd0064c with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                        if ext_call.return_data[32]:
                                                            require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[32]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / 100 * ext_call.return_data[32], 
                                                                       1,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[32]
                                                            else:
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[32]
                                                    else:
                                                        require ext_call.return_data[32]
                                                        require ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[32]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[32] != ext_call.return_data[64]
                                                        revert
                            else:
                                require ext_code.size(address(stor8))
                                staticcall address(stor8).0xc49a8b19 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    if not ext_call.return_data[0]:
                                        return 0, 1, ext_call.return_data[0], ext_call.return_data[0]
                                    else:
                                        if arg1 != 1:
                                            if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0x949d9d76 with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[64]:
                                                        require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64], 
                                                                       1,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[0]
                                                            else:
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                        revert
                                            else:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0x949d9d76 with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32], 
                                                                       1,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[0]
                                                            else:
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                        revert
                                        else:
                                            if ('signextend', 0, ('ext_call.return_data', 64, 32)) != 1:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0xdbd0064c with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[64]:
                                                        require 100 * ext_call.return_data[64] / ext_call.return_data[64] == 100
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[64], 
                                                                       1,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[0]
                                                            else:
                                                                require 100 * ext_call.return_data[64] > 0
                                                                require 100 * ext_call.return_data[64]
                                                                return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[64] > 0
                                                            require 100 * ext_call.return_data[64]
                                                            return 0 / 100 * ext_call.return_data[64], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                        revert
                                            else:
                                                require ext_code.size(address(stor8))
                                                staticcall address(stor8).0xdbd0064c with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    if ext_call.return_data[32]:
                                                        require 100 * ext_call.return_data[32] / ext_call.return_data[32] == 100
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] == ext_call.return_data[64]
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 100 * ext_call.return_data[32], 
                                                                       1,
                                                                       ext_call.return_data[0],
                                                                       ext_call.return_data[0]
                                                            else:
                                                                require 100 * ext_call.return_data[32] > 0
                                                                require 100 * ext_call.return_data[32]
                                                                return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                        else:
                                                            require 100 * ext_call.return_data[32] > 0
                                                            require 100 * ext_call.return_data[32]
                                                            return 0 / 100 * ext_call.return_data[32], 1, ext_call.return_data[0], ext_call.return_data[0]
                                                    else:
                                                        require ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[0] * ext_call.return_data[0]
                                                        require ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[64]
                                                        revert
}



}
