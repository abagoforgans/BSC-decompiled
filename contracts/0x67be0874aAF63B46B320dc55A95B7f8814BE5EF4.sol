contract main {




// =====================  Runtime code  =====================


#
#  - withdrawToken(uint256 arg1)
#  - sub_52d1b2d7(?)
#
address stor0;
array of struct stor1;
mapping of uint256 stor2;
uint32 stor3;
address stor3;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
bool stor7; offset 256
uint64 stor7;
uint64 stor7; offset 64
uint64 stor7; offset 128
uint64 stor7; offset 192

function _fallback() payable {
    revert
}

function getAmount() payable {
    if not stor2[address(msg.sender)]:
        if stor0 != msg.sender:
            revert with 0, 'access denied'
    return stor5
}

function getDuration() payable {
    if not stor2[address(msg.sender)]:
        if stor0 != msg.sender:
            revert with 0, 'access denied'
    return uint64(stor7.field_0)
}

function isPaused() payable {
    if not stor2[address(msg.sender)]:
        if stor0 != msg.sender:
            revert with 0, 'access denied'
    return not not uint64(stor7.field_128)
}

function claimed() payable {
    if address(stor3) != msg.sender:
        if not stor2[address(msg.sender)]:
            if stor0 != msg.sender:
                revert with 0, 'access denied'
    return stor6
}

function getOwner() payable {
    if address(stor3) != msg.sender:
        if not stor2[address(msg.sender)]:
            if stor0 != msg.sender:
                revert with 0, 'access denied'
    return stor0
}

function getUser() payable {
    if address(stor3) != msg.sender:
        if not stor2[address(msg.sender)]:
            if stor0 != msg.sender:
                revert with 0, 'access denied'
    return address(stor3)
}

function setAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        if stor0 != msg.sender:
            revert with 0, 'access denied'
    stor5 = arg1
}

function pause() payable {
    if not stor2[address(msg.sender)]:
        if stor0 != msg.sender:
            revert with 0, 'access denied'
    if uint64(stor7.field_128):
        revert with 0, 'already paused'
    uint64(stor7.field_128) = uint64(block.timestamp)
    emit Paused()
}

function setDuration(uint64 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        if stor0 != msg.sender:
            revert with 0, 'access denied'
    if not arg1:
        revert with 0, 'duration can't be zero'
    uint64(stor7.field_0) = arg1
}

function isMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor3) != msg.sender:
        if not stor2[address(msg.sender)]:
            if stor0 != msg.sender:
                revert with 0, 'access denied'
    if stor2[address(arg1)]:
        return not not stor2[address(arg1)]
    return (stor0 == arg1)
}

function withdrawCoin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'access denied'
    if arg1 <= 0:
        revert with 0, 'zero amount'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'access denied'
    if arg1 == stor0:
        revert with 0, 'this is owner'
    if not stor2[address(arg1)]:
        stor1.length++
        stor1[stor1.length].field_0 = arg1
        stor1[stor1.length].field_160 = 0
        stor2[address(arg1)] = stor1.length
    emit MaintainerAdded(arg1);
}

function getEndTime() payable {
    if not stor2[address(msg.sender)]:
        if stor0 != msg.sender:
            revert with 0, 'access denied'
    if uint64(stor7.field_64) > -uint64(stor7.field_0) + test266151307():
        revert with 'NH{q', 17
    if uint64(uint64(stor7.field_64) + uint64(stor7.field_0)) > -uint64(stor7.field_192) + test266151307():
        revert with 'NH{q', 17
    return uint64(uint64(uint64(stor7.field_64) + uint64(stor7.field_0)) + uint64(stor7.field_192))
}

function unpause() payable {
    if not stor2[address(msg.sender)]:
        if stor0 != msg.sender:
            revert with 0, 'access denied'
    if not uint64(stor7.field_128):
        revert with 0, 'not paused'
    if uint64(block.timestamp) < uint64(stor7.field_128):
        revert with 'NH{q', 17
    if uint64(stor7.field_0) > -uint64(uint64(block.timestamp) - uint64(stor7.field_128)) + test266151307():
        revert with 'NH{q', 17
    uint64(stor7.field_128) = 0
    stor7.field_256 % 1 = 0
    uint64(stor7.field_192) = uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_128)))
    emit Unpaused()
}

function removeMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'access denied'
    if stor2[address(arg1)]:
        if stor2[address(arg1)] < 1:
            revert with 'NH{q', 17
        if stor1.length < 1:
            revert with 'NH{q', 17
        if stor1.length - 1 != stor2[address(arg1)] - 1:
            if stor1.length - 1 >= stor1.length:
                revert with 'NH{q', 50
            if stor2[address(arg1)] - 1 >= stor1.length:
                revert with 'NH{q', 50
            stor1[stor2[address(arg1)]].field_0 = stor1[stor1.length].field_0
            stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        if not stor1.length:
            revert with 'NH{q', 49
        stor1[stor1.length].field_0 = 0
        stor1.length--
        stor2[address(arg1)] = 0
        emit MaintainerRemoved(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'access denied'
    stor0 = arg1
    if stor2[address(arg1)]:
        if stor2[address(arg1)] < 1:
            revert with 'NH{q', 17
        if stor1.length < 1:
            revert with 'NH{q', 17
        if stor1.length - 1 != stor2[address(arg1)] - 1:
            if stor1.length - 1 >= stor1.length:
                revert with 'NH{q', 50
            if stor2[address(arg1)] - 1 >= stor1.length:
                revert with 'NH{q', 50
            stor1[stor2[address(arg1)]].field_0 = stor1[stor1.length].field_0
            stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        if not stor1.length:
            revert with 'NH{q', 49
        stor1[stor1.length].field_0 = 0
        stor1.length--
        stor2[address(arg1)] = 0
    emit OwnershipTransferred(arg1);
}

function vested() payable {
    if address(stor3) != msg.sender:
        if not stor2[address(msg.sender)]:
            if stor0 != msg.sender:
                revert with 0, 'access denied'
    if not uint64(stor7.field_128):
        if uint64(stor7.field_64) > -uint64(stor7.field_0) + test266151307():
            revert with 'NH{q', 17
        if uint64(block.timestamp) <= uint64(uint64(stor7.field_64) + uint64(stor7.field_0)):
            return 0
        if uint64(uint64(stor7.field_0) + uint64(stor7.field_0)) > -uint64(stor7.field_0) + test266151307():
            revert with 'NH{q', 17
        if uint64(block.timestamp) >= uint64(uint64(uint64(stor7.field_0) + uint64(stor7.field_0)) + uint64(stor7.field_0)):
            return stor5
        if uint64(block.timestamp) < uint64(uint64(stor7.field_64) + uint64(stor7.field_0)):
            revert with 'NH{q', 17
        if stor5 and uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_0))) > -1 / stor5:
            revert with 'NH{q', 17
        if not uint64(stor7.field_0):
            revert with 'NH{q', 18
        return (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(stor7.field_0))) / uint64(stor7.field_0))
    if uint64(block.timestamp) < uint64(stor7.field_128):
        revert with 'NH{q', 17
    if uint64(stor7.field_0) > -uint64(uint64(block.timestamp) - uint64(stor7.field_128)) + test266151307():
        revert with 'NH{q', 17
    if uint64(stor7.field_64) > -uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))) + test266151307():
        revert with 'NH{q', 17
    if uint64(block.timestamp) <= uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))):
        return 0
    if uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))) > -uint64(stor7.field_0) + test266151307():
        revert with 'NH{q', 17
    if uint64(block.timestamp) >= uint64(uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))) + uint64(stor7.field_0)):
        return stor5
    if uint64(block.timestamp) < uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))):
        revert with 'NH{q', 17
    if stor5 and uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) > -1 / stor5:
        revert with 'NH{q', 17
    if not uint64(stor7.field_0):
        revert with 'NH{q', 18
    return (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) / uint64(stor7.field_0))
}

function sub_553735d9(?) payable {
    if not stor2[address(msg.sender)]:
        if stor0 != msg.sender:
            revert with 0, 'access denied'
    if not uint64(stor7.field_128):
        if uint64(stor7.field_64) > -uint64(stor7.field_0) + test266151307():
            revert with 'NH{q', 17
        if uint64(block.timestamp) <= uint64(uint64(stor7.field_64) + uint64(stor7.field_0)):
            if stor5 < 0:
                revert with 'NH{q', 17
            return stor5
        if uint64(uint64(stor7.field_0) + uint64(stor7.field_0)) > -uint64(stor7.field_0) + test266151307():
            revert with 'NH{q', 17
        if uint64(block.timestamp) >= uint64(uint64(uint64(stor7.field_0) + uint64(stor7.field_0)) + uint64(stor7.field_0)):
            if stor5 < stor5:
                revert with 'NH{q', 17
            else:
                return 0
        if uint64(block.timestamp) < uint64(uint64(stor7.field_64) + uint64(stor7.field_0)):
            revert with 'NH{q', 17
        if stor5 and uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_0))) > -1 / stor5:
            revert with 'NH{q', 17
        if not uint64(stor7.field_0):
            revert with 'NH{q', 18
        if stor5 < stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(stor7.field_0))) / uint64(stor7.field_0):
            revert with 'NH{q', 17
        return (stor5 - (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(stor7.field_0))) / uint64(stor7.field_0)))
    if uint64(block.timestamp) < uint64(stor7.field_128):
        revert with 'NH{q', 17
    if uint64(stor7.field_0) > -uint64(uint64(block.timestamp) - uint64(stor7.field_128)) + test266151307():
        revert with 'NH{q', 17
    if uint64(stor7.field_64) > -uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))) + test266151307():
        revert with 'NH{q', 17
    if uint64(block.timestamp) <= uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))):
        if stor5 < 0:
            revert with 'NH{q', 17
        return stor5
    if uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))) > -uint64(stor7.field_0) + test266151307():
        revert with 'NH{q', 17
    if uint64(block.timestamp) >= uint64(uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))) + uint64(stor7.field_0)):
        if stor5 < stor5:
            revert with 'NH{q', 17
        else:
            return 0
    if uint64(block.timestamp) < uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))):
        revert with 'NH{q', 17
    if stor5 and uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) > -1 / stor5:
        revert with 'NH{q', 17
    if not uint64(stor7.field_0):
        revert with 'NH{q', 18
    if stor5 < stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) / uint64(stor7.field_0):
        revert with 'NH{q', 17
    return (stor5 - (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) / uint64(stor7.field_0)))
}

function sub_060acbdd(?) payable {
    if address(stor3) != msg.sender:
        if not stor2[address(msg.sender)]:
            if stor0 != msg.sender:
                revert with 0, 'access denied'
    if not uint64(stor7.field_128):
        if uint64(stor7.field_64) > -uint64(stor7.field_0) + test266151307():
            revert with 'NH{q', 17
        if uint64(block.timestamp) <= uint64(uint64(stor7.field_64) + uint64(stor7.field_0)):
            if 0 <= stor6:
                return 0
            if 0 < stor6:
                revert with 'NH{q', 17
            return -stor6
        if uint64(uint64(stor7.field_0) + uint64(stor7.field_0)) > -uint64(stor7.field_0) + test266151307():
            revert with 'NH{q', 17
        if uint64(block.timestamp) >= uint64(uint64(uint64(stor7.field_0) + uint64(stor7.field_0)) + uint64(stor7.field_0)):
            if stor5 <= stor6:
                return 0
            if stor5 < stor6:
                revert with 'NH{q', 17
            return (stor5 - stor6)
        if uint64(block.timestamp) < uint64(uint64(stor7.field_64) + uint64(stor7.field_0)):
            revert with 'NH{q', 17
        if stor5 and uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_0))) > -1 / stor5:
            revert with 'NH{q', 17
        if not uint64(stor7.field_0):
            revert with 'NH{q', 18
        if stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(stor7.field_0))) / uint64(stor7.field_0) <= stor6:
            return 0
        if stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(stor7.field_0))) / uint64(stor7.field_0) < stor6:
            revert with 'NH{q', 17
        return ((stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(stor7.field_0))) / uint64(stor7.field_0)) - stor6)
    if uint64(block.timestamp) < uint64(stor7.field_128):
        revert with 'NH{q', 17
    if uint64(stor7.field_0) > -uint64(uint64(block.timestamp) - uint64(stor7.field_128)) + test266151307():
        revert with 'NH{q', 17
    if uint64(stor7.field_64) > -uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))) + test266151307():
        revert with 'NH{q', 17
    if uint64(block.timestamp) <= uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))):
        if 0 <= stor6:
            return 0
        if 0 < stor6:
            revert with 'NH{q', 17
        return -stor6
    if uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))) > -uint64(stor7.field_0) + test266151307():
        revert with 'NH{q', 17
    if uint64(block.timestamp) >= uint64(uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))) + uint64(stor7.field_0)):
        if stor5 <= stor6:
            return 0
        if stor5 < stor6:
            revert with 'NH{q', 17
        return (stor5 - stor6)
    if uint64(block.timestamp) < uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))):
        revert with 'NH{q', 17
    if stor5 and uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) > -1 / stor5:
        revert with 'NH{q', 17
    if not uint64(stor7.field_0):
        revert with 'NH{q', 18
    if stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) / uint64(stor7.field_0) <= stor6:
        return 0
    if stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) / uint64(stor7.field_0) < stor6:
        revert with 'NH{q', 17
    return ((stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) / uint64(stor7.field_0)) - stor6)
}

function claim() payable {
    if address(stor3) != msg.sender:
        if not stor2[address(msg.sender)]:
            if stor0 != msg.sender:
                revert with 0, 'access denied'
    mem[128] = uint64(stor7.field_64)
    mem[160] = uint64(stor7.field_128)
    mem[192] = uint64(stor7.field_192)
    if not uint64(stor7.field_128):
        if uint64(stor7.field_64) > -uint64(stor7.field_0) + test266151307():
            revert with 'NH{q', 17
        if uint64(block.timestamp) <= uint64(uint64(stor7.field_64) + uint64(stor7.field_0)):
            if 0 <= stor6:
                revert with 0, 'no funds available'
            if 0 < stor6:
                revert with 'NH{q', 17
            if -stor6 <= 0:
                revert with 0, 'no funds available'
            mem[260] = address(stor3)
            mem[292] = -stor6
            mem[224] = 68
            mem[260 len 28] = Mask(224, 0, stor3)
            mem[256 len 4] = unknown_0xa9059cbb(?????)
            mem[324] = 32
            mem[356] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(stor4) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), -stor6, 0
            mem[456] = 0
            call stor4 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), -stor6, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), -stor6, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if uint64(stor7.field_0) > 0:
                        revert with memory
                          from 128
                           len uint64(stor7.field_0)
                    revert with 0, 'SafeERC20: low-level call failed'
                if uint64(stor7.field_0) > 0:
                    require uint64(stor7.field_0) >= 32
                    require uint64(stor7.field_64) == bool(uint64(stor7.field_64))
                    if not uint64(stor7.field_64):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[420] == bool(mem[420])
                    if not mem[420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if stor6 > stor6 - 1:
                revert with 'NH{q', 17
            stor6 = 0
            emit Claim(-stor6);
        else:
            if uint64(uint64(stor7.field_0) + uint64(stor7.field_0)) > -uint64(stor7.field_0) + test266151307():
                revert with 'NH{q', 17
            if uint64(block.timestamp) >= uint64(uint64(uint64(stor7.field_0) + uint64(stor7.field_0)) + uint64(stor7.field_0)):
                if stor5 <= stor6:
                    revert with 0, 'no funds available'
                if stor5 < stor6:
                    revert with 'NH{q', 17
                if stor5 - stor6 <= 0:
                    revert with 0, 'no funds available'
                mem[260] = address(stor3)
                mem[292] = stor5 - stor6
                mem[224] = 68
                mem[260 len 28] = Mask(224, 0, stor3)
                mem[256 len 4] = unknown_0xa9059cbb(?????)
                mem[324] = 32
                mem[356] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(stor4) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), stor5 - stor6, 0
                mem[456] = 0
                call stor4 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), stor5 - stor6, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), stor5 - stor6, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if uint64(stor7.field_0) > 0:
                            revert with memory
                              from 128
                               len uint64(stor7.field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if uint64(stor7.field_0) > 0:
                        require uint64(stor7.field_0) >= 32
                        require uint64(stor7.field_64) == bool(uint64(stor7.field_64))
                        if not uint64(stor7.field_64):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[420] == bool(mem[420])
                        if not mem[420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor6 > -stor5 + stor6 - 1:
                    revert with 'NH{q', 17
                stor6 = stor5
                emit Claim((stor5 - stor6));
            else:
                if uint64(block.timestamp) < uint64(uint64(stor7.field_64) + uint64(stor7.field_0)):
                    revert with 'NH{q', 17
                if stor5 and uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_0))) > -1 / stor5:
                    revert with 'NH{q', 17
                if not uint64(stor7.field_0):
                    revert with 'NH{q', 18
                if stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(stor7.field_0))) / uint64(stor7.field_0) <= stor6:
                    revert with 0, 'no funds available'
                if stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(stor7.field_0))) / uint64(stor7.field_0) < stor6:
                    revert with 'NH{q', 17
                if (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(stor7.field_0))) / uint64(stor7.field_0)) - stor6 <= 0:
                    revert with 0, 'no funds available'
                mem[260] = address(stor3)
                mem[292] = (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_192))) / uint64(stor7.field_0)) - stor6
                mem[224] = 68
                mem[260 len 28] = Mask(224, 0, stor3)
                mem[256 len 4] = unknown_0xa9059cbb(?????)
                mem[324] = 32
                mem[356] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(stor4) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_192))) / uint64(stor7.field_0)) - stor6, 0
                mem[456] = 0
                call stor4 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_192))) / uint64(stor7.field_0)) - stor6, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_192))) / uint64(stor7.field_0)) - stor6, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if uint64(stor7.field_0) > 0:
                            revert with memory
                              from 128
                               len uint64(stor7.field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if uint64(stor7.field_0) > 0:
                        require uint64(stor7.field_0) >= 32
                        require uint64(stor7.field_64) == bool(uint64(stor7.field_64))
                        if not uint64(stor7.field_64):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[420] == bool(mem[420])
                        if not mem[420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor6 > -(stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_192))) / uint64(stor7.field_0)) + stor6 - 1:
                    revert with 'NH{q', 17
                stor6 = stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_192))) / uint64(stor7.field_0)
                emit Claim(((stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(stor7.field_192))) / uint64(stor7.field_0)) - stor6));
    else:
        if uint64(block.timestamp) < uint64(stor7.field_128):
            revert with 'NH{q', 17
        if uint64(stor7.field_0) > -uint64(uint64(block.timestamp) - uint64(stor7.field_128)) + test266151307():
            revert with 'NH{q', 17
        if uint64(stor7.field_64) > -uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))) + test266151307():
            revert with 'NH{q', 17
        if uint64(block.timestamp) <= uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))):
            if 0 <= stor6:
                revert with 0, 'no funds available'
            if 0 < stor6:
                revert with 'NH{q', 17
            if -stor6 <= 0:
                revert with 0, 'no funds available'
            mem[260] = address(stor3)
            mem[292] = -stor6
            mem[224] = 68
            mem[260 len 28] = Mask(224, 0, stor3)
            mem[256 len 4] = unknown_0xa9059cbb(?????)
            mem[324] = 32
            mem[356] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(stor4) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), -stor6, 0
            mem[456] = 0
            call stor4 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), -stor6, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), -stor6, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if uint64(stor7.field_0) > 0:
                        revert with memory
                          from 128
                           len uint64(stor7.field_0)
                    revert with 0, 'SafeERC20: low-level call failed'
                if uint64(stor7.field_0) > 0:
                    require uint64(stor7.field_0) >= 32
                    require uint64(stor7.field_64) == bool(uint64(stor7.field_64))
                    if not uint64(stor7.field_64):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[420] == bool(mem[420])
                    if not mem[420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if stor6 > stor6 - 1:
                revert with 'NH{q', 17
            stor6 = 0
            emit Claim(-stor6);
        else:
            if uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))) > -uint64(stor7.field_0) + test266151307():
                revert with 'NH{q', 17
            if uint64(block.timestamp) >= uint64(uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))) + uint64(stor7.field_0)):
                if stor5 <= stor6:
                    revert with 0, 'no funds available'
                if stor5 < stor6:
                    revert with 'NH{q', 17
                if stor5 - stor6 <= 0:
                    revert with 0, 'no funds available'
                mem[260] = address(stor3)
                mem[292] = stor5 - stor6
                mem[224] = 68
                mem[260 len 28] = Mask(224, 0, stor3)
                mem[256 len 4] = unknown_0xa9059cbb(?????)
                mem[324] = 32
                mem[356] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(stor4) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), stor5 - stor6, 0
                mem[456] = 0
                call stor4 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), stor5 - stor6, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), stor5 - stor6, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if uint64(stor7.field_0) > 0:
                            revert with memory
                              from 128
                               len uint64(stor7.field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if uint64(stor7.field_0) > 0:
                        require uint64(stor7.field_0) >= 32
                        require uint64(stor7.field_64) == bool(uint64(stor7.field_64))
                        if not uint64(stor7.field_64):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[420] == bool(mem[420])
                        if not mem[420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor6 > -stor5 + stor6 - 1:
                    revert with 'NH{q', 17
                stor6 = stor5
                emit Claim((stor5 - stor6));
            else:
                if uint64(block.timestamp) < uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0)))):
                    revert with 'NH{q', 17
                if stor5 and uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) > -1 / stor5:
                    revert with 'NH{q', 17
                if not uint64(stor7.field_0):
                    revert with 'NH{q', 18
                if stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) / uint64(stor7.field_0) <= stor6:
                    revert with 0, 'no funds available'
                if stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) / uint64(stor7.field_0) < stor6:
                    revert with 'NH{q', 17
                if (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_0) + uint64(uint64(stor7.field_0) + uint64(uint64(block.timestamp) - uint64(stor7.field_0))))) / uint64(stor7.field_0)) - stor6 <= 0:
                    revert with 0, 'no funds available'
                mem[260] = address(stor3)
                mem[292] = (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_192) + uint64(uint64(block.timestamp) - uint64(stor7.field_128))))) / uint64(stor7.field_0)) - stor6
                mem[224] = 68
                mem[260 len 28] = Mask(224, 0, stor3)
                mem[256 len 4] = unknown_0xa9059cbb(?????)
                mem[324] = 32
                mem[356] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(stor4) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_192) + uint64(uint64(block.timestamp) - uint64(stor7.field_128))))) / uint64(stor7.field_0)) - stor6, 0
                mem[456] = 0
                call stor4 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_192) + uint64(uint64(block.timestamp) - uint64(stor7.field_128))))) / uint64(stor7.field_0)) - stor6, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), (stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_192) + uint64(uint64(block.timestamp) - uint64(stor7.field_128))))) / uint64(stor7.field_0)) - stor6, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if uint64(stor7.field_0) > 0:
                            revert with memory
                              from 128
                               len uint64(stor7.field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if uint64(stor7.field_0) > 0:
                        require uint64(stor7.field_0) >= 32
                        require uint64(stor7.field_64) == bool(uint64(stor7.field_64))
                        if not uint64(stor7.field_64):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[420] == bool(mem[420])
                        if not mem[420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor6 > -(stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_192) + uint64(uint64(block.timestamp) - uint64(stor7.field_128))))) / uint64(stor7.field_0)) + stor6 - 1:
                    revert with 'NH{q', 17
                stor6 = stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_192) + uint64(uint64(block.timestamp) - uint64(stor7.field_128))))) / uint64(stor7.field_0)
                emit Claim(((stor5 * uint64(uint64(block.timestamp) - uint64(uint64(stor7.field_64) + uint64(uint64(stor7.field_192) + uint64(uint64(block.timestamp) - uint64(stor7.field_128))))) / uint64(stor7.field_0)) - stor6));
}



}
