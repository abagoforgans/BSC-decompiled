contract main {




// =====================  Runtime code  =====================


#
#  - claimTreasury()
#  - sub_3ae9f17e(?)
#  - claim(uint256[] arg1)
#  - recoverToken(address arg1, uint256 arg2)
#
const MAX_TREASURY_FEE = 3000


uint8 stor0; offset 160
address owner;
uint256 stor1;
address adminAddress;
mapping of uint8 stor3;
address stor5;
mapping of uint8 stor6;
uint256 stor7;
address tokenAddress;
uint256 treasuryFee;
uint256 treasuryAmount;
uint256 sub_caa682eb;
uint256 premiumFee;
array of uint256 stor13;
mapping of struct sub_71cde294;
mapping of struct sub_fcb9cab0;
mapping of uint8 stor17;
mapping of address stor18;

function premiumFee() payable {
    return premiumFee
}

function treasuryAmount() payable {
    return treasuryAmount
}

function paused() payable {
    return bool(stor0)
}

function sub_71cde294(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    return sub_71cde294[arg1].field_256
}

function sub_8306354a(?) payable {
    require calldata.size - 4 >= 32
    return sub_71cde294[arg1].field_0, 
           sub_71cde294[arg1].field_256,
           sub_71cde294[arg1].field_512,
           sub_71cde294[arg1].field_768,
           sub_71cde294[arg1].field_1024,
           bool(sub_71cde294[arg1].field_1280),
           sub_71cde294[arg1].field_1536
}

function owner() payable {
    return owner
}

function sub_caa682eb(?) payable {
    return sub_caa682eb
}

function treasuryFee() payable {
    return treasuryFee
}

function token() payable {
    return tokenAddress
}

function adminAddress() payable {
    return adminAddress
}

function sub_fcb9cab0(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    return sub_fcb9cab0[arg1][address(arg2)].field_0, 
           sub_fcb9cab0[arg1][address(arg2)].field_256,
           sub_fcb9cab0[arg1][address(arg2)].field_512,
           bool(sub_fcb9cab0[arg1][address(arg2)].field_768)
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

function addOperationsAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    stor3[address(arg1)] = 1
    emit 0xe9c16c66: address(arg1), 1
}

function removeOperationsAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    stor3[address(arg1)] = 0
    emit 0xe9c16c66: address(arg1), 0
}

function sub_e045ae32(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    premiumFee = arg1
    emit PremiumFeeUpdated(arg1);
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    adminAddress = arg1
    emit NewAdminAddress(arg1);
}

function sub_5a9b25d3(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_512:
        return sub_71cde294[arg1].field_512
    else:
        return 0
}

function sub_a5975b20(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        return sub_71cde294[arg1].field_768
    else:
        return 0
}

function unpause() payable {
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    emit Unpause(stor7);
}

function pause() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if adminAddress != msg.sender:
        if not stor3[msg.sender]:
            revert with 0, 'Not operator/admin'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    emit Pause(stor7);
}

function setTreasuryFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if arg1 > 3000:
        revert with 0, 'Treasury fee too high'
    treasuryFee = arg1
    emit 0xfdc6c17f: arg1
}

function setSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    stor5 = arg1
    emit 0xee8162df: arg1
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

function refundable(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if sub_71cde294[arg1].field_1024 != 3:
        return 0
    if sub_71cde294[arg1].field_1024 != 3:
        return (3 == sub_71cde294[arg1].field_1024)
    if not sub_fcb9cab0[arg1][address(arg2)].field_512:
        return bool(sub_fcb9cab0[arg1][address(arg2)].field_512)
    return not bool(sub_fcb9cab0[arg1][address(arg2)].field_768)
}

function sub_c57bcedd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if adminAddress != msg.sender:
        if not stor3[msg.sender]:
            revert with 0, 'Not operator/admin'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor7++
    sub_71cde294[stor7].field_0 = stor7
    sub_71cde294[stor7].field_256 = treasuryFee
    if arg1:
        sub_71cde294[stor7].field_1280 = uint8(bool(arg1))
        sub_71cde294[stor7].field_1536 = premiumFee
    emit 0x447943be: treasuryFee, bool(arg1), stor7
}

function claimable(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if sub_71cde294[arg1].field_1024 != sub_fcb9cab0[arg1][address(arg2)].field_256:
        return 0
    if not sub_71cde294[arg1].field_1024:
        return bool(sub_71cde294[arg1].field_1024)
    if not sub_fcb9cab0[arg1][address(arg2)].field_512:
        return bool(sub_fcb9cab0[arg1][address(arg2)].field_512)
    if sub_fcb9cab0[arg1][address(arg2)].field_768:
        return not bool(sub_fcb9cab0[arg1][address(arg2)].field_768)
    return (sub_71cde294[arg1].field_1024 == sub_fcb9cab0[arg1][address(arg2)].field_256)
}

function sub_cd2c1723(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            return (sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768)
        if 0 > !sub_71cde294[arg1].field_768:
            revert with 0, 17
        return sub_71cde294[arg1].field_768
    if not sub_71cde294[arg1].field_512:
        return 0
    if sub_71cde294[arg1].field_512 > -1:
        revert with 0, 17
    return sub_71cde294[arg1].field_512
}

function sub_4440b70d(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                revert with 0, 'no bets placed'
        else:
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                revert with 0, 'no bets placed'
    else:
        if not sub_71cde294[arg1].field_512:
            revert with 0, 'no bets placed'
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            revert with 0, 'no bets placed'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                revert with 0, 17
            return ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256))
        if 0 > !sub_71cde294[arg1].field_768:
            revert with 0, 17
        if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
            revert with 0, 17
        return (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256)
    if not sub_71cde294[arg1].field_512:
        if False and sub_71cde294[arg1].field_256 > 0:
            revert with 0, 17
        else:
            return 0
    if sub_71cde294[arg1].field_512 > -1:
        revert with 0, 17
    if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
        revert with 0, 17
    return (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256)
}

function sub_6aa8dded(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    mem[ceil32(ceil32(arg5.length)) + 129] = arg1
    mem[ceil32(ceil32(arg5.length)) + 161] = 2
    mem[ceil32(ceil32(arg5.length)) + 97] = 148
    if arg5.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, 2, arg2, address(arg3), arg4)), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor5:
        revert with 0, 'Invalid signer'
    if address(arg3):
        if not stor18[msg.sender]:
            stor18[msg.sender] = address(arg3)
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_1024:
        revert with 0, 'betting already closed'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_fcb9cab0[arg1][address(msg.sender)].field_512:
        revert with 0, 'user already placed bet'
    if stor6[arg4]:
        revert with 0, 'Nonce already used'
    stor6[arg4] = 1
    if sub_71cde294[arg1].field_1280:
        if not stor17[arg1][msg.sender]:
            revert with 0, 'premium sub required'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(arg5.length)) + 853 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if arg5.length:
                revert with arg5[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg5.length:
            require arg5.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(ceil32(arg5.length)) + 885 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg5.length)) + 885] == bool(mem[ceil32(ceil32(arg5.length)) + 885])
            if not mem[ceil32(ceil32(arg5.length)) + 885]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor16[msg.sender]++
    stor16[msg.sender][stor16[msg.sender]] = arg1
    stor13[arg1]++
    stor13[arg1][stor13[arg1]] = msg.sender or Mask(96, 160, stor13[arg1][stor13[arg1]])
    if sub_71cde294[arg1].field_768 > !arg2:
        revert with 0, 17
    sub_71cde294[arg1].field_768 += arg2
    emit 0xa4e90a73: arg2, arg1, msg.sender
    sub_fcb9cab0[arg1][msg.sender].field_0 = arg1
    sub_fcb9cab0[arg1][msg.sender].field_256 = 2
    sub_fcb9cab0[arg1][msg.sender].field_512 = arg2
    stor1 = 1
}

function sub_9a9e8877(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    mem[ceil32(ceil32(arg5.length)) + 129] = arg1
    mem[ceil32(ceil32(arg5.length)) + 161] = 1
    mem[ceil32(ceil32(arg5.length)) + 97] = 148
    if arg5.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, 1, arg2, address(arg3), arg4)), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor5:
        revert with 0, 'Invalid signer'
    if address(arg3):
        if not stor18[msg.sender]:
            stor18[msg.sender] = address(arg3)
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_1024:
        revert with 0, 'betting already closed'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_fcb9cab0[arg1][address(msg.sender)].field_512:
        revert with 0, 'user already placed bet'
    if stor6[arg4]:
        revert with 0, 'Nonce already used'
    stor6[arg4] = 1
    if sub_71cde294[arg1].field_1280:
        if not stor17[arg1][msg.sender]:
            revert with 0, 'premium sub required'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(arg5.length)) + 853 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if arg5.length:
                revert with arg5[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg5.length:
            require arg5.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(ceil32(arg5.length)) + 885 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg5.length)) + 885] == bool(mem[ceil32(ceil32(arg5.length)) + 885])
            if not mem[ceil32(ceil32(arg5.length)) + 885]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor16[msg.sender]++
    stor16[msg.sender][stor16[msg.sender]] = arg1
    stor13[arg1]++
    stor13[arg1][stor13[arg1]] = msg.sender or Mask(96, 160, stor13[arg1][stor13[arg1]])
    if sub_71cde294[arg1].field_512 > !arg2:
        revert with 0, 17
    sub_71cde294[arg1].field_512 += arg2
    emit 0xb58bf0a2: arg2, arg1, msg.sender
    sub_fcb9cab0[arg1][msg.sender].field_0 = arg1
    sub_fcb9cab0[arg1][msg.sender].field_256 = 1
    sub_fcb9cab0[arg1][msg.sender].field_512 = arg2
    stor1 = 1
}

function sub_9dc819c5(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    if adminAddress != msg.sender:
        if not stor3[msg.sender]:
            revert with 0, 'Not operator/admin'
    if stor0:
        revert with 0, 'Pausable: paused'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_1024:
        revert with 0, 'winner already decided'
    mem[ceil32(ceil32(arg3.length)) + 129] = arg1
    mem[ceil32(ceil32(arg3.length)) + 161] = arg2
    mem[ceil32(ceil32(arg3.length)) + 97] = 64
    if arg3.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2)), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor5:
        revert with 0, 'Invalid signer'
    sub_71cde294[arg1].field_1024 = arg2
    if arg2 != 3:
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if sub_71cde294[arg1].field_768:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                    revert with 0, 'no bets placed'
            else:
                if 0 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if not sub_71cde294[arg1].field_768:
                    revert with 0, 'no bets placed'
        else:
            if not sub_71cde294[arg1].field_512:
                revert with 0, 'no bets placed'
            if sub_71cde294[arg1].field_512 > -1:
                revert with 0, 17
            if not sub_71cde294[arg1].field_512:
                revert with 0, 'no bets placed'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if sub_71cde294[arg1].field_768:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if treasuryAmount > !((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                    revert with 0, 17
                treasuryAmount += (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000
            else:
                if 0 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if treasuryAmount > !(sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                    revert with 0, 17
                treasuryAmount += sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000
        else:
            if not sub_71cde294[arg1].field_512:
                if False and sub_71cde294[arg1].field_256 > 0:
                    revert with 0, 17
                if treasuryAmount > -1:
                    revert with 0, 17
            else:
                if sub_71cde294[arg1].field_512 > -1:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
                    revert with 0, 17
                if treasuryAmount > !(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                    revert with 0, 17
                treasuryAmount += sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000
    emit 0x202506ea: arg2, arg1
}

function sub_256b2290(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                return 0
        else:
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                return 0
    else:
        if not sub_71cde294[arg1].field_512:
            return 0
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            return 0
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                revert with 0, 'no bets placed'
        else:
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                revert with 0, 'no bets placed'
    else:
        if not sub_71cde294[arg1].field_512:
            revert with 0, 'no bets placed'
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            revert with 0, 'no bets placed'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                revert with 0, 17
            if arg1 <= 0:
                revert with 0, 'Invalid betId'
            if arg1 > stor7:
                revert with 0, 'Invalid betId'
            if arg1 <= 0:
                revert with 0, 'Invalid betId'
            if arg1 > stor7:
                revert with 0, 'Invalid betId'
            if arg1 <= 0:
                revert with 0, 'Invalid betId'
            if arg1 > stor7:
                revert with 0, 'Invalid betId'
            if sub_71cde294[arg1].field_768:
                if sub_71cde294[arg1].field_512:
                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                        revert with 0, 17
                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                        revert with 0, 17
                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                        revert with 0, 17
                    return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) - (10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000))
                if 0 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                    revert with 0, 17
                if sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                    revert with 0, 17
                return ((10000 * sub_71cde294[arg1].field_768) - (10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000))
            if not sub_71cde294[arg1].field_512:
                if 0 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                    revert with 0, 17
                if -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 and 10000 > -1 / -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                    revert with 0, 17
                return (-10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000)
            if sub_71cde294[arg1].field_512 > -1:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                revert with 0, 17
            return ((10000 * sub_71cde294[arg1].field_512) - (10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000))
        if 0 > !sub_71cde294[arg1].field_768:
            revert with 0, 17
        if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
            revert with 0, 17
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if sub_71cde294[arg1].field_768:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                    revert with 0, 17
                return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000))
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                revert with 0, 17
            return ((10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000))
        if not sub_71cde294[arg1].field_512:
            if 0 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            return (-10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000)
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
            revert with 0, 17
        return ((10000 * sub_71cde294[arg1].field_512) - (10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000))
    if not sub_71cde294[arg1].field_512:
        if False and sub_71cde294[arg1].field_256 > 0:
            revert with 0, 17
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if sub_71cde294[arg1].field_768:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < 0:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                    revert with 0, 17
                return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768))
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 < 0:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_768:
                revert with 0, 17
            return (10000 * sub_71cde294[arg1].field_768)
        if not sub_71cde294[arg1].field_512:
            return 0
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 < 0:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 and 10000 > -1 / sub_71cde294[arg1].field_512:
            revert with 0, 17
        return (10000 * sub_71cde294[arg1].field_512)
    if sub_71cde294[arg1].field_512 > -1:
        revert with 0, 17
    if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
        revert with 0, 17
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                revert with 0, 17
            return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000))
        if 0 > !sub_71cde294[arg1].field_768:
            revert with 0, 17
        if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
            revert with 0, 17
        return ((10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000))
    if not sub_71cde294[arg1].field_512:
        if 0 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        return (-10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000)
    if sub_71cde294[arg1].field_512 > -1:
        revert with 0, 17
    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
        revert with 0, 17
    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
        revert with 0, 17
    return ((10000 * sub_71cde294[arg1].field_512) - (10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000))
}

function sub_04b0484c(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if not sub_71cde294[arg1].field_512:
        return 0
    if not sub_71cde294[arg1].field_512:
        return 0
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if not sub_71cde294[arg1].field_512:
        if sub_71cde294[arg1].field_768:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                    else:
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                        if sub_71cde294[arg1].field_512 > -1:
                            revert with 0, 17
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 and 10000 > -1 / -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                    else:
                        if not sub_71cde294[arg1].field_512:
                            if False and sub_71cde294[arg1].field_256 > 0:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                            else:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 and 10000 > -1 / sub_71cde294[arg1].field_512:
                                        revert with 0, 17
                        else:
                            if sub_71cde294[arg1].field_512 > -1:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
            else:
                if 0 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_768:
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                    else:
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                        if sub_71cde294[arg1].field_512 > -1:
                            revert with 0, 17
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 and 10000 > -1 / -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                    else:
                        if not sub_71cde294[arg1].field_512:
                            if False and sub_71cde294[arg1].field_256 > 0:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                            else:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 and 10000 > -1 / sub_71cde294[arg1].field_512:
                                        revert with 0, 17
                        else:
                            if sub_71cde294[arg1].field_512 > -1:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
        else:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > -1:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512:
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                    else:
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                        if sub_71cde294[arg1].field_512 > -1:
                            revert with 0, 17
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 and 10000 > -1 / -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                    else:
                        if not sub_71cde294[arg1].field_512:
                            if False and sub_71cde294[arg1].field_256 > 0:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                            else:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 and 10000 > -1 / sub_71cde294[arg1].field_512:
                                        revert with 0, 17
                        else:
                            if sub_71cde294[arg1].field_512 > -1:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
        revert with 0, 18
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                if not sub_71cde294[arg1].field_512:
                    revert with 0, 18
                return (0 / sub_71cde294[arg1].field_512)
        else:
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                if not sub_71cde294[arg1].field_512:
                    revert with 0, 18
                return (0 / sub_71cde294[arg1].field_512)
    else:
        if not sub_71cde294[arg1].field_512:
            if not sub_71cde294[arg1].field_512:
                revert with 0, 18
            return (0 / sub_71cde294[arg1].field_512)
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            if not sub_71cde294[arg1].field_512:
                revert with 0, 18
            return (0 / sub_71cde294[arg1].field_512)
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                revert with 0, 'no bets placed'
        else:
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                revert with 0, 'no bets placed'
    else:
        if not sub_71cde294[arg1].field_512:
            revert with 0, 'no bets placed'
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            revert with 0, 'no bets placed'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                revert with 0, 17
            if arg1 <= 0:
                revert with 0, 'Invalid betId'
            if arg1 > stor7:
                revert with 0, 'Invalid betId'
            if arg1 <= 0:
                revert with 0, 'Invalid betId'
            if arg1 > stor7:
                revert with 0, 'Invalid betId'
            if arg1 <= 0:
                revert with 0, 'Invalid betId'
            if arg1 > stor7:
                revert with 0, 'Invalid betId'
            if sub_71cde294[arg1].field_768:
                if sub_71cde294[arg1].field_512:
                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                        revert with 0, 17
                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                        revert with 0, 17
                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                        revert with 0, 17
                    if not sub_71cde294[arg1].field_512:
                        revert with 0, 18
                    return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) - (10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) / sub_71cde294[arg1].field_512)
                if 0 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                    revert with 0, 17
                if sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                    revert with 0, 17
                if not sub_71cde294[arg1].field_512:
                    revert with 0, 18
                return ((10000 * sub_71cde294[arg1].field_768) - (10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) / sub_71cde294[arg1].field_512)
            if not sub_71cde294[arg1].field_512:
                if 0 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                    revert with 0, 17
                if -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 and 10000 > -1 / -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                    revert with 0, 17
                if not sub_71cde294[arg1].field_512:
                    revert with 0, 18
                return (-10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 / sub_71cde294[arg1].field_512)
            if sub_71cde294[arg1].field_512 > -1:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                revert with 0, 17
            if not sub_71cde294[arg1].field_512:
                revert with 0, 18
            return ((10000 * sub_71cde294[arg1].field_512) - (10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) / sub_71cde294[arg1].field_512)
        if 0 > !sub_71cde294[arg1].field_768:
            revert with 0, 17
        if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
            revert with 0, 17
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if sub_71cde294[arg1].field_768:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                    revert with 0, 17
                if not sub_71cde294[arg1].field_512:
                    revert with 0, 18
                return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_512)
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                revert with 0, 17
            if not sub_71cde294[arg1].field_512:
                revert with 0, 18
            return ((10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_512)
        if not sub_71cde294[arg1].field_512:
            if 0 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if not sub_71cde294[arg1].field_512:
                revert with 0, 18
            return (-10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 / sub_71cde294[arg1].field_512)
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            revert with 0, 18
        return ((10000 * sub_71cde294[arg1].field_512) - (10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_512)
    if not sub_71cde294[arg1].field_512:
        if False and sub_71cde294[arg1].field_256 > 0:
            revert with 0, 17
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if sub_71cde294[arg1].field_768:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < 0:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if not sub_71cde294[arg1].field_512:
                    revert with 0, 18
                return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) / sub_71cde294[arg1].field_512)
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 < 0:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_512:
                revert with 0, 18
            return (10000 * sub_71cde294[arg1].field_768 / sub_71cde294[arg1].field_512)
        if not sub_71cde294[arg1].field_512:
            if not sub_71cde294[arg1].field_512:
                revert with 0, 18
            return (0 / sub_71cde294[arg1].field_512)
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 < 0:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 and 10000 > -1 / sub_71cde294[arg1].field_512:
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            revert with 0, 18
        return (10000 * sub_71cde294[arg1].field_512 / sub_71cde294[arg1].field_512)
    if sub_71cde294[arg1].field_512 > -1:
        revert with 0, 17
    if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
        revert with 0, 17
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                revert with 0, 17
            if not sub_71cde294[arg1].field_512:
                revert with 0, 18
            return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_512)
        if 0 > !sub_71cde294[arg1].field_768:
            revert with 0, 17
        if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            revert with 0, 18
        return ((10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_512)
    if not sub_71cde294[arg1].field_512:
        if 0 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            revert with 0, 18
        return (-10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 / sub_71cde294[arg1].field_512)
    if sub_71cde294[arg1].field_512 > -1:
        revert with 0, 17
    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
        revert with 0, 17
    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
        revert with 0, 17
    if not sub_71cde294[arg1].field_512:
        revert with 0, 18
    return ((10000 * sub_71cde294[arg1].field_512) - (10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_512)
}

function sub_b979334e(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if not sub_71cde294[arg1].field_768:
        return 0
    if not sub_71cde294[arg1].field_768:
        return 0
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if not sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_768:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                    else:
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                        if sub_71cde294[arg1].field_512 > -1:
                            revert with 0, 17
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 and 10000 > -1 / -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                    else:
                        if not sub_71cde294[arg1].field_512:
                            if False and sub_71cde294[arg1].field_256 > 0:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                            else:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 and 10000 > -1 / sub_71cde294[arg1].field_512:
                                        revert with 0, 17
                        else:
                            if sub_71cde294[arg1].field_512 > -1:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
            else:
                if 0 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_768:
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                    else:
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                        if sub_71cde294[arg1].field_512 > -1:
                            revert with 0, 17
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 and 10000 > -1 / -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                    else:
                        if not sub_71cde294[arg1].field_512:
                            if False and sub_71cde294[arg1].field_256 > 0:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                            else:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 and 10000 > -1 / sub_71cde294[arg1].field_512:
                                        revert with 0, 17
                        else:
                            if sub_71cde294[arg1].field_512 > -1:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
        else:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > -1:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512:
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if not sub_71cde294[arg1].field_768:
                                revert with 0, 'no bets placed'
                    else:
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                        if sub_71cde294[arg1].field_512 > -1:
                            revert with 0, 17
                        if not sub_71cde294[arg1].field_512:
                            revert with 0, 'no bets placed'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if arg1 <= 0:
                        revert with 0, 'Invalid betId'
                    if arg1 > stor7:
                        revert with 0, 'Invalid betId'
                    if sub_71cde294[arg1].field_768:
                        if sub_71cde294[arg1].field_512:
                            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 and 10000 > -1 / -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                                        revert with 0, 17
                        else:
                            if 0 > !sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                    else:
                        if not sub_71cde294[arg1].field_512:
                            if False and sub_71cde294[arg1].field_256 > 0:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                            else:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < 0:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 and 10000 > -1 / sub_71cde294[arg1].field_512:
                                        revert with 0, 17
                        else:
                            if sub_71cde294[arg1].field_512 > -1:
                                revert with 0, 17
                            if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
                                revert with 0, 17
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if arg1 <= 0:
                                revert with 0, 'Invalid betId'
                            if arg1 > stor7:
                                revert with 0, 'Invalid betId'
                            if sub_71cde294[arg1].field_768:
                                if sub_71cde294[arg1].field_512:
                                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                                else:
                                    if 0 > !sub_71cde294[arg1].field_768:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
                            else:
                                if not sub_71cde294[arg1].field_512:
                                    if 0 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                else:
                                    if sub_71cde294[arg1].field_512 > -1:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                                        revert with 0, 17
                                    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                                        revert with 0, 17
        revert with 0, 18
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                if not sub_71cde294[arg1].field_768:
                    revert with 0, 18
                return (0 / sub_71cde294[arg1].field_768)
        else:
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                if not sub_71cde294[arg1].field_768:
                    revert with 0, 18
                return (0 / sub_71cde294[arg1].field_768)
    else:
        if not sub_71cde294[arg1].field_512:
            if not sub_71cde294[arg1].field_768:
                revert with 0, 18
            return (0 / sub_71cde294[arg1].field_768)
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            if not sub_71cde294[arg1].field_768:
                revert with 0, 18
            return (0 / sub_71cde294[arg1].field_768)
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                revert with 0, 'no bets placed'
        else:
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                revert with 0, 'no bets placed'
    else:
        if not sub_71cde294[arg1].field_512:
            revert with 0, 'no bets placed'
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if not sub_71cde294[arg1].field_512:
            revert with 0, 'no bets placed'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                revert with 0, 17
            if arg1 <= 0:
                revert with 0, 'Invalid betId'
            if arg1 > stor7:
                revert with 0, 'Invalid betId'
            if arg1 <= 0:
                revert with 0, 'Invalid betId'
            if arg1 > stor7:
                revert with 0, 'Invalid betId'
            if arg1 <= 0:
                revert with 0, 'Invalid betId'
            if arg1 > stor7:
                revert with 0, 'Invalid betId'
            if sub_71cde294[arg1].field_768:
                if sub_71cde294[arg1].field_512:
                    if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                        revert with 0, 17
                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                        revert with 0, 17
                    if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                        revert with 0, 17
                    if not sub_71cde294[arg1].field_768:
                        revert with 0, 18
                    return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) - (10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) / sub_71cde294[arg1].field_768)
                if 0 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_768 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                    revert with 0, 17
                if sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                    revert with 0, 17
                if not sub_71cde294[arg1].field_768:
                    revert with 0, 18
                return ((10000 * sub_71cde294[arg1].field_768) - (10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) / sub_71cde294[arg1].field_768)
            if not sub_71cde294[arg1].field_512:
                if 0 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                    revert with 0, 17
                if -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 and 10000 > -1 / -(sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                    revert with 0, 17
                if not sub_71cde294[arg1].field_768:
                    revert with 0, 18
                return (-10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000 / sub_71cde294[arg1].field_768)
            if sub_71cde294[arg1].field_512 > -1:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 < (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - ((sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000):
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                revert with 0, 18
            return ((10000 * sub_71cde294[arg1].field_512) - (10000 * (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256) + (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256) / 10000) / sub_71cde294[arg1].field_768)
        if 0 > !sub_71cde294[arg1].field_768:
            revert with 0, 17
        if sub_71cde294[arg1].field_768 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_768:
            revert with 0, 17
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if sub_71cde294[arg1].field_768:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                    revert with 0, 17
                if not sub_71cde294[arg1].field_768:
                    revert with 0, 18
                return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_768)
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                revert with 0, 18
            return ((10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_768)
        if not sub_71cde294[arg1].field_512:
            if 0 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                revert with 0, 18
            return (-10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000 / sub_71cde294[arg1].field_768)
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000):
            revert with 0, 17
        if not sub_71cde294[arg1].field_768:
            revert with 0, 18
        return ((10000 * sub_71cde294[arg1].field_512) - (10000 * sub_71cde294[arg1].field_768 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_768)
    if not sub_71cde294[arg1].field_512:
        if False and sub_71cde294[arg1].field_256 > 0:
            revert with 0, 17
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if arg1 <= 0:
            revert with 0, 'Invalid betId'
        if arg1 > stor7:
            revert with 0, 'Invalid betId'
        if sub_71cde294[arg1].field_768:
            if sub_71cde294[arg1].field_512:
                if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < 0:
                    revert with 0, 17
                if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768:
                    revert with 0, 17
                if not sub_71cde294[arg1].field_768:
                    revert with 0, 18
                return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) / sub_71cde294[arg1].field_768)
            if 0 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 < 0:
                revert with 0, 17
            if sub_71cde294[arg1].field_768 and 10000 > -1 / sub_71cde294[arg1].field_768:
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                revert with 0, 18
            return (10000 * sub_71cde294[arg1].field_768 / sub_71cde294[arg1].field_768)
        if not sub_71cde294[arg1].field_512:
            if not sub_71cde294[arg1].field_768:
                revert with 0, 18
            return (0 / sub_71cde294[arg1].field_768)
        if sub_71cde294[arg1].field_512 > -1:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 < 0:
            revert with 0, 17
        if sub_71cde294[arg1].field_512 and 10000 > -1 / sub_71cde294[arg1].field_512:
            revert with 0, 17
        if not sub_71cde294[arg1].field_768:
            revert with 0, 18
        return (10000 * sub_71cde294[arg1].field_512 / sub_71cde294[arg1].field_768)
    if sub_71cde294[arg1].field_512 > -1:
        revert with 0, 17
    if sub_71cde294[arg1].field_512 and sub_71cde294[arg1].field_256 > -1 / sub_71cde294[arg1].field_512:
        revert with 0, 17
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if arg1 <= 0:
        revert with 0, 'Invalid betId'
    if arg1 > stor7:
        revert with 0, 'Invalid betId'
    if sub_71cde294[arg1].field_768:
        if sub_71cde294[arg1].field_512:
            if sub_71cde294[arg1].field_512 > !sub_71cde294[arg1].field_768:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
                revert with 0, 17
            if sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 + sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
                revert with 0, 17
            if not sub_71cde294[arg1].field_768:
                revert with 0, 18
            return ((10000 * sub_71cde294[arg1].field_512) + (10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_768)
        if 0 > !sub_71cde294[arg1].field_768:
            revert with 0, 17
        if sub_71cde294[arg1].field_768 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_768 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
            revert with 0, 17
        if not sub_71cde294[arg1].field_768:
            revert with 0, 18
        return ((10000 * sub_71cde294[arg1].field_768) - (10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_768)
    if not sub_71cde294[arg1].field_512:
        if 0 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 and 10000 > -1 / -sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
            revert with 0, 17
        if not sub_71cde294[arg1].field_768:
            revert with 0, 18
        return (-10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000 / sub_71cde294[arg1].field_768)
    if sub_71cde294[arg1].field_512 > -1:
        revert with 0, 17
    if sub_71cde294[arg1].field_512 < sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000:
        revert with 0, 17
    if sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) and 10000 > -1 / sub_71cde294[arg1].field_512 - (sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000):
        revert with 0, 17
    if not sub_71cde294[arg1].field_768:
        revert with 0, 18
    return ((10000 * sub_71cde294[arg1].field_512) - (10000 * sub_71cde294[arg1].field_512 * sub_71cde294[arg1].field_256 / 10000) / sub_71cde294[arg1].field_768)
}

function sub_9050bbb2(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 16
    if stor16[address(arg1)] < arg2:
        revert with 0, 17
    if arg3 <= stor16[address(arg1)] - arg2:
        if arg3 > test266151307():
            revert with 0, 65
        mem[96] = arg3
        if not arg3:
            if arg3 > test266151307():
                revert with 0, 65
            mem[(32 * arg3) + 128] = arg3
            mem[64] = (64 * arg3) + 160
            if not arg3:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _204 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_204] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_204 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_204 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_204 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _204
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _177 = mem[64]
                mem[mem[64]] = 96
                _193 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_177 + 32] = (32 * _193) + 128
                _325 = mem[(32 * arg3) + 128]
                mem[_177 + (32 * _193) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _177 + (32 * _193) + 160
                t = (32 * arg3) + 160
                while idx < _325:
                    _517 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_517 + 32]
                    mem[s + 64] = mem[_517 + 64]
                    mem[s + 96] = bool(mem[_517 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_177 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _177 + (32 * _193) + (128 * _325) + -mem[64] + 160
            mem[64] = (64 * arg3) + 288
            mem[(64 * arg3) + 160] = 0
            mem[(64 * arg3) + 192] = 0
            mem[(64 * arg3) + 224] = 0
            mem[(64 * arg3) + 256] = 0
            mem[var21002] = var21001
            if not var21003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _576 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_576] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_576 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_576 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_576 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _576
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _550 = mem[64]
                mem[mem[64]] = 96
                _565 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_550 + 32] = (32 * _565) + 128
                _698 = mem[(32 * arg3) + 128]
                mem[_550 + (32 * _565) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _550 + (32 * _565) + 160
                t = (32 * arg3) + 160
                while idx < _698:
                    _890 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_890 + 32]
                    mem[s + 64] = mem[_890 + 64]
                    mem[s + 96] = bool(mem[_890 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_550 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _550 + (32 * _565) + (128 * _698) + -mem[64] + 160
            mem[64] = (64 * arg3) + 416
            mem[(64 * arg3) + 288] = 0
            mem[(64 * arg3) + 320] = 0
            mem[(64 * arg3) + 352] = 0
            mem[(64 * arg3) + 384] = 0
            mem[var25002] = var25001
            if not var25003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _948 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_948] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_948 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_948 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_948 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _948
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _922 = mem[64]
                mem[mem[64]] = 96
                _937 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _937) + 128
                _1070 = mem[(32 * arg3) + 128]
                mem[_922 + (32 * _937) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _922 + (32 * _937) + 160
                t = (32 * arg3) + 160
                while idx < _1070:
                    _1262 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_1262 + 32]
                    mem[s + 64] = mem[_1262 + 64]
                    mem[s + 96] = bool(mem[_1262 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_922 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _922 + (32 * _937) + (128 * _1070) + -mem[64] + 160
            mem[64] = (64 * arg3) + 544
            mem[(64 * arg3) + 416] = 0
            mem[(64 * arg3) + 448] = 0
            mem[(64 * arg3) + 480] = 0
            mem[(64 * arg3) + 512] = 0
            mem[var29002] = var29001
            if not var29003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _1320 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1320] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1320 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1320 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_1320 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _1320
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _1294 = mem[64]
                mem[mem[64]] = 96
                _1309 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_1294 + 32] = (32 * _1309) + 128
                _1442 = mem[(32 * arg3) + 128]
                mem[_1294 + (32 * _1309) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _1294 + (32 * _1309) + 160
                t = (32 * arg3) + 160
                while idx < _1442:
                    _1634 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_1634 + 32]
                    mem[s + 64] = mem[_1634 + 64]
                    mem[s + 96] = bool(mem[_1634 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_1294 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _1294 + (32 * _1309) + (128 * _1442) + -mem[64] + 160
            mem[64] = (64 * arg3) + 672
            mem[(64 * arg3) + 544] = 0
            mem[(64 * arg3) + 576] = 0
            mem[(64 * arg3) + 608] = 0
            mem[(64 * arg3) + 640] = 0
            mem[var33002] = var33001
            if not var33003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _1692 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1692] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1692 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1692 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_1692 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _1692
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _1666 = mem[64]
                mem[mem[64]] = 96
                _1681 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1681) + 128
                _1814 = mem[(32 * arg3) + 128]
                mem[_1666 + (32 * _1681) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _1666 + (32 * _1681) + 160
                t = (32 * arg3) + 160
                while idx < _1814:
                    _2006 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2006 + 32]
                    mem[s + 64] = mem[_2006 + 64]
                    mem[s + 96] = bool(mem[_2006 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_1666 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _1666 + (32 * _1681) + (128 * _1814) + -mem[64] + 160
            mem[64] = (64 * arg3) + 800
            mem[(64 * arg3) + 672] = 0
            mem[(64 * arg3) + 704] = 0
            mem[(64 * arg3) + 736] = 0
            mem[(64 * arg3) + 768] = 0
            mem[var37002] = var37001
            if not var37003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2064 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2064] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2064 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2064 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2064 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _2064
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _2038 = mem[64]
                mem[mem[64]] = 96
                _2053 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_2038 + 32] = (32 * _2053) + 128
                _2186 = mem[(32 * arg3) + 128]
                mem[_2038 + (32 * _2053) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _2038 + (32 * _2053) + 160
                t = (32 * arg3) + 160
                while idx < _2186:
                    _2378 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2378 + 32]
                    mem[s + 64] = mem[_2378 + 64]
                    mem[s + 96] = bool(mem[_2378 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2038 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _2038 + (32 * _2053) + (128 * _2186) + -mem[64] + 160
            mem[64] = (64 * arg3) + 928
            mem[(64 * arg3) + 800] = 0
            mem[(64 * arg3) + 832] = 0
            mem[(64 * arg3) + 864] = 0
            mem[(64 * arg3) + 896] = 0
            mem[var41002] = var41001
            if not var41003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2436 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2436] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2436 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2436 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2436 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _2436
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _2410 = mem[64]
                mem[mem[64]] = 96
                _2425 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_2410 + 32] = (32 * _2425) + 128
                _2558 = mem[(32 * arg3) + 128]
                mem[_2410 + (32 * _2425) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _2410 + (32 * _2425) + 160
                t = (32 * arg3) + 160
                while idx < _2558:
                    _2750 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2750 + 32]
                    mem[s + 64] = mem[_2750 + 64]
                    mem[s + 96] = bool(mem[_2750 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2410 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _2410 + (32 * _2425) + (128 * _2558) + -mem[64] + 160
            mem[64] = (64 * arg3) + 1056
            mem[(64 * arg3) + 928] = 0
            mem[(64 * arg3) + 960] = 0
            mem[(64 * arg3) + 992] = 0
            mem[(64 * arg3) + 1024] = 0
            mem[var45002] = var45001
            if not var45003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2808 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2808] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2808 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2808 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2808 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _2808
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _2782 = mem[64]
                mem[mem[64]] = 96
                _2797 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_2782 + 32] = (32 * _2797) + 128
                _2930 = mem[(32 * arg3) + 128]
                mem[_2782 + (32 * _2797) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _2782 + (32 * _2797) + 160
                t = (32 * arg3) + 160
                while idx < _2930:
                    _3122 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_3122 + 32]
                    mem[s + 64] = mem[_3122 + 64]
                    mem[s + 96] = bool(mem[_3122 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2782 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _2782 + (32 * _2797) + (128 * _2930) + -mem[64] + 160
            mem[64] = (64 * arg3) + 1184
            mem[(64 * arg3) + 1056] = 0
            mem[(64 * arg3) + 1088] = 0
            mem[(64 * arg3) + 1120] = 0
            mem[(64 * arg3) + 1152] = 0
            mem[var49002] = var49001
            if var49003 - 1:
                mem[64] = (64 * arg3) + 1312
                mem[var53002] = var53001
                if var53003 - 1:
                    # nil
                else:
                    idx = 0
                    while idx < arg3:
                        if arg2 > !idx:
                            revert with 0, 17
                        if arg2 + idx >= stor16[address(arg1)]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = address(arg1)
                        mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                        _3552 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3552] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                        mem[_3552 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                        mem[_3552 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                        mem[_3552 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                        if idx >= mem[(32 * arg3) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg3) + 160] = _3552
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if arg2 > !arg3:
                        revert with 0, 17
                    # nil
            else:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _3180 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3180] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_3180 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_3180 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_3180 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _3180
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _3154 = mem[64]
                mem[mem[64]] = 96
                _3169 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _3169) + 128
                _3302 = mem[(32 * arg3) + 128]
                mem[_3154 + (32 * _3169) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _3154 + (32 * _3169) + 160
                t = (32 * arg3) + 160
                while idx < _3302:
                    _3494 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_3494 + 32]
                    mem[s + 64] = mem[_3494 + 64]
                    mem[s + 96] = bool(mem[_3494 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_3154 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _3154 + (32 * _3169) + (128 * _3302) + -mem[64] + 160
        else:
            mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            if arg3 > test266151307():
                revert with 0, 65
            mem[(32 * arg3) + 128] = arg3
            mem[64] = (64 * arg3) + 160
            if not arg3:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _209 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_209] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_209 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_209 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_209 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _209
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _181 = mem[64]
                mem[mem[64]] = 96
                _195 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_181 + 32] = (32 * _195) + 128
                _328 = mem[(32 * arg3) + 128]
                mem[_181 + (32 * _195) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _181 + (32 * _195) + 160
                t = (32 * arg3) + 160
                while idx < _328:
                    _523 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_523 + 32]
                    mem[s + 64] = mem[_523 + 64]
                    mem[s + 96] = bool(mem[_523 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_181 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _181 + (32 * _195) + (128 * _328) + -mem[64] + 160
            mem[64] = (64 * arg3) + 288
            mem[(64 * arg3) + 160] = 0
            mem[(64 * arg3) + 192] = 0
            mem[(64 * arg3) + 224] = 0
            mem[(64 * arg3) + 256] = 0
            mem[var22002] = var22001
            if not var22003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _581 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_581] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_581 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_581 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_581 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _581
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _554 = mem[64]
                mem[mem[64]] = 96
                _567 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _567) + 128
                _701 = mem[(32 * arg3) + 128]
                mem[_554 + (32 * _567) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _554 + (32 * _567) + 160
                t = (32 * arg3) + 160
                while idx < _701:
                    _896 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_896 + 32]
                    mem[s + 64] = mem[_896 + 64]
                    mem[s + 96] = bool(mem[_896 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_554 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _554 + (32 * _567) + (128 * _701) + -mem[64] + 160
            mem[64] = (64 * arg3) + 416
            mem[(64 * arg3) + 288] = 0
            mem[(64 * arg3) + 320] = 0
            mem[(64 * arg3) + 352] = 0
            mem[(64 * arg3) + 384] = 0
            mem[var26002] = var26001
            if not var26003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _953 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_953] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_953 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_953 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_953 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _953
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _926 = mem[64]
                mem[mem[64]] = 96
                _939 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _939) + 128
                _1073 = mem[(32 * arg3) + 128]
                mem[_926 + (32 * _939) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _926 + (32 * _939) + 160
                t = (32 * arg3) + 160
                while idx < _1073:
                    _1268 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_1268 + 32]
                    mem[s + 64] = mem[_1268 + 64]
                    mem[s + 96] = bool(mem[_1268 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_926 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _926 + (32 * _939) + (128 * _1073) + -mem[64] + 160
            mem[64] = (64 * arg3) + 544
            mem[(64 * arg3) + 416] = 0
            mem[(64 * arg3) + 448] = 0
            mem[(64 * arg3) + 480] = 0
            mem[(64 * arg3) + 512] = 0
            mem[var30002] = var30001
            if not var30003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _1325 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1325] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1325 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1325 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_1325 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _1325
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _1298 = mem[64]
                mem[mem[64]] = 96
                _1311 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_1298 + 32] = (32 * _1311) + 128
                _1445 = mem[(32 * arg3) + 128]
                mem[_1298 + (32 * _1311) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _1298 + (32 * _1311) + 160
                t = (32 * arg3) + 160
                while idx < _1445:
                    _1640 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_1640 + 32]
                    mem[s + 64] = mem[_1640 + 64]
                    mem[s + 96] = bool(mem[_1640 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_1298 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _1298 + (32 * _1311) + (128 * _1445) + -mem[64] + 160
            mem[64] = (64 * arg3) + 672
            mem[(64 * arg3) + 544] = 0
            mem[(64 * arg3) + 576] = 0
            mem[(64 * arg3) + 608] = 0
            mem[(64 * arg3) + 640] = 0
            mem[var34002] = var34001
            if not var34003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _1697 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1697] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1697 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1697 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_1697 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _1697
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _1670 = mem[64]
                mem[mem[64]] = 96
                _1683 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_1670 + 32] = (32 * _1683) + 128
                _1817 = mem[(32 * arg3) + 128]
                mem[_1670 + (32 * _1683) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _1670 + (32 * _1683) + 160
                t = (32 * arg3) + 160
                while idx < _1817:
                    _2012 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2012 + 32]
                    mem[s + 64] = mem[_2012 + 64]
                    mem[s + 96] = bool(mem[_2012 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_1670 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _1670 + (32 * _1683) + (128 * _1817) + -mem[64] + 160
            mem[64] = (64 * arg3) + 800
            mem[(64 * arg3) + 672] = 0
            mem[(64 * arg3) + 704] = 0
            mem[(64 * arg3) + 736] = 0
            mem[(64 * arg3) + 768] = 0
            mem[var38002] = var38001
            if not var38003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2069 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2069] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2069 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2069 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2069 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _2069
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _2042 = mem[64]
                mem[mem[64]] = 96
                _2055 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_2042 + 32] = (32 * _2055) + 128
                _2189 = mem[(32 * arg3) + 128]
                mem[_2042 + (32 * _2055) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _2042 + (32 * _2055) + 160
                t = (32 * arg3) + 160
                while idx < _2189:
                    _2384 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2384 + 32]
                    mem[s + 64] = mem[_2384 + 64]
                    mem[s + 96] = bool(mem[_2384 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2042 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _2042 + (32 * _2055) + (128 * _2189) + -mem[64] + 160
            mem[64] = (64 * arg3) + 928
            mem[(64 * arg3) + 800] = 0
            mem[(64 * arg3) + 832] = 0
            mem[(64 * arg3) + 864] = 0
            mem[(64 * arg3) + 896] = 0
            mem[var42002] = var42001
            if not var42003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2441 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2441] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2441 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2441 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2441 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _2441
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _2414 = mem[64]
                mem[mem[64]] = 96
                _2427 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_2414 + 32] = (32 * _2427) + 128
                _2561 = mem[(32 * arg3) + 128]
                mem[_2414 + (32 * _2427) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _2414 + (32 * _2427) + 160
                t = (32 * arg3) + 160
                while idx < _2561:
                    _2756 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2756 + 32]
                    mem[s + 64] = mem[_2756 + 64]
                    mem[s + 96] = bool(mem[_2756 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2414 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _2414 + (32 * _2427) + (128 * _2561) + -mem[64] + 160
            mem[64] = (64 * arg3) + 1056
            mem[(64 * arg3) + 928] = 0
            mem[(64 * arg3) + 960] = 0
            mem[(64 * arg3) + 992] = 0
            mem[(64 * arg3) + 1024] = 0
            mem[var46002] = var46001
            if not var46003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2813 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2813] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2813 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2813 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2813 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _2813
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _2786 = mem[64]
                mem[mem[64]] = 96
                _2799 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _2799) + 128
                _2933 = mem[(32 * arg3) + 128]
                mem[_2786 + (32 * _2799) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _2786 + (32 * _2799) + 160
                t = (32 * arg3) + 160
                while idx < _2933:
                    _3128 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_3128 + 32]
                    mem[s + 64] = mem[_3128 + 64]
                    mem[s + 96] = bool(mem[_3128 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2786 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _2786 + (32 * _2799) + (128 * _2933) + -mem[64] + 160
            mem[64] = (64 * arg3) + 1184
            mem[(64 * arg3) + 1056] = 0
            mem[(64 * arg3) + 1088] = 0
            mem[(64 * arg3) + 1120] = 0
            mem[(64 * arg3) + 1152] = 0
            mem[var50002] = var50001
            if var50003 - 1:
                mem[64] = (64 * arg3) + 1312
                mem[var54002] = var54001
                if var54003 - 1:
                    # nil
                else:
                    idx = 0
                    while idx < arg3:
                        if arg2 > !idx:
                            revert with 0, 17
                        if arg2 + idx >= stor16[address(arg1)]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = address(arg1)
                        mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                        _3557 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3557] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                        mem[_3557 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                        mem[_3557 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                        mem[_3557 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                        if idx >= mem[(32 * arg3) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg3) + 160] = _3557
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if arg2 > !arg3:
                        revert with 0, 17
                    # nil
            else:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _3185 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3185] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_3185 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_3185 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_3185 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _3185
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 0, 17
                _3158 = mem[64]
                mem[mem[64]] = 96
                _3171 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_3158 + 32] = (32 * _3171) + 128
                _3305 = mem[(32 * arg3) + 128]
                mem[_3158 + (32 * _3171) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _3158 + (32 * _3171) + 160
                t = (32 * arg3) + 160
                while idx < _3305:
                    _3500 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_3500 + 32]
                    mem[s + 64] = mem[_3500 + 64]
                    mem[s + 96] = bool(mem[_3500 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_3158 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _3158 + (32 * _3171) + (128 * _3305) + -mem[64] + 160
    else:
        mem[0] = address(arg1)
        mem[32] = 16
        if stor16[address(arg1)] < arg2:
            revert with 0, 17
        if stor16[address(arg1)] - arg2 > test266151307():
            revert with 0, 65
        mem[96] = stor16[address(arg1)] - arg2
        if not stor16[address(arg1)] - arg2:
            if stor16[address(arg1)] - arg2 > test266151307():
                revert with 0, 65
            mem[(32 * stor16[address(arg1)] - arg2) + 128] = stor16[address(arg1)] - arg2
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 160
            if not stor16[address(arg1)] - arg2:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _214 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_214] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_214 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_214 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_214 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _214
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _185 = mem[64]
                mem[mem[64]] = 96
                _197 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _197) + 128
                _331 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_185 + (32 * _197) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _185 + (32 * _197) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _331:
                    _529 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_529 + 32]
                    mem[s + 64] = mem[_529 + 64]
                    mem[s + 96] = bool(mem[_529 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_185 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _185 + (32 * _197) + (128 * _331) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 288
            mem[(64 * stor16[address(arg1)] - arg2) + 160] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 192] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 224] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 256] = 0
            mem[var25002] = var25001
            if not var25003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _586 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_586] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_586 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_586 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_586 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _586
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _558 = mem[64]
                mem[mem[64]] = 96
                _569 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_558 + 32] = (32 * _569) + 128
                _704 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_558 + (32 * _569) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _558 + (32 * _569) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _704:
                    _902 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_902 + 32]
                    mem[s + 64] = mem[_902 + 64]
                    mem[s + 96] = bool(mem[_902 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_558 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _558 + (32 * _569) + (128 * _704) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 416
            mem[(64 * stor16[address(arg1)] - arg2) + 288] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 320] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 352] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 384] = 0
            mem[var29002] = var29001
            if not var29003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _958 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_958] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_958 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_958 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_958 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _958
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _930 = mem[64]
                mem[mem[64]] = 96
                _941 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_930 + 32] = (32 * _941) + 128
                _1076 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_930 + (32 * _941) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _930 + (32 * _941) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _1076:
                    _1274 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_1274 + 32]
                    mem[s + 64] = mem[_1274 + 64]
                    mem[s + 96] = bool(mem[_1274 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_930 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _930 + (32 * _941) + (128 * _1076) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 544
            mem[(64 * stor16[address(arg1)] - arg2) + 416] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 448] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 480] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 512] = 0
            mem[var33002] = var33001
            if not var33003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _1330 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1330] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1330 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1330 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_1330 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _1330
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _1302 = mem[64]
                mem[mem[64]] = 96
                _1313 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_1302 + 32] = (32 * _1313) + 128
                _1448 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_1302 + (32 * _1313) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _1302 + (32 * _1313) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _1448:
                    _1646 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_1646 + 32]
                    mem[s + 64] = mem[_1646 + 64]
                    mem[s + 96] = bool(mem[_1646 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_1302 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _1302 + (32 * _1313) + (128 * _1448) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 672
            mem[(64 * stor16[address(arg1)] - arg2) + 544] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 576] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 608] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 640] = 0
            mem[var37002] = var37001
            if not var37003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _1702 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1702] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1702 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1702 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_1702 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _1702
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _1674 = mem[64]
                mem[mem[64]] = 96
                _1685 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1685) + 128
                _1820 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_1674 + (32 * _1685) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _1674 + (32 * _1685) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _1820:
                    _2018 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2018 + 32]
                    mem[s + 64] = mem[_2018 + 64]
                    mem[s + 96] = bool(mem[_2018 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_1674 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _1674 + (32 * _1685) + (128 * _1820) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 800
            mem[(64 * stor16[address(arg1)] - arg2) + 672] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 704] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 736] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 768] = 0
            mem[var41002] = var41001
            if not var41003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2074 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2074] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2074 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2074 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2074 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _2074
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _2046 = mem[64]
                mem[mem[64]] = 96
                _2057 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _2057) + 128
                _2192 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_2046 + (32 * _2057) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _2046 + (32 * _2057) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _2192:
                    _2390 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2390 + 32]
                    mem[s + 64] = mem[_2390 + 64]
                    mem[s + 96] = bool(mem[_2390 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2046 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _2046 + (32 * _2057) + (128 * _2192) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 928
            mem[(64 * stor16[address(arg1)] - arg2) + 800] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 832] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 864] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 896] = 0
            mem[var45002] = var45001
            if not var45003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2446 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2446] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2446 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2446 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2446 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _2446
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _2418 = mem[64]
                mem[mem[64]] = 96
                _2429 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_2418 + 32] = (32 * _2429) + 128
                _2564 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_2418 + (32 * _2429) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _2418 + (32 * _2429) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _2564:
                    _2762 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2762 + 32]
                    mem[s + 64] = mem[_2762 + 64]
                    mem[s + 96] = bool(mem[_2762 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2418 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _2418 + (32 * _2429) + (128 * _2564) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 1056
            mem[(64 * stor16[address(arg1)] - arg2) + 928] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 960] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 992] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 1024] = 0
            mem[var49002] = var49001
            if not var49003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2818 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2818] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2818 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2818 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2818 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _2818
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _2790 = mem[64]
                mem[mem[64]] = 96
                _2801 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_2790 + 32] = (32 * _2801) + 128
                _2936 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_2790 + (32 * _2801) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _2790 + (32 * _2801) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _2936:
                    _3134 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_3134 + 32]
                    mem[s + 64] = mem[_3134 + 64]
                    mem[s + 96] = bool(mem[_3134 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2790 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _2790 + (32 * _2801) + (128 * _2936) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 1184
            mem[(64 * stor16[address(arg1)] - arg2) + 1056] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 1088] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 1120] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 1152] = 0
            mem[var53002] = var53001
            if var53003 - 1:
                mem[64] = (64 * stor16[address(arg1)] - arg2) + 1312
                mem[(64 * stor16[address(arg1)] - arg2) + 1184] = 0
                mem[(64 * stor16[address(arg1)] - arg2) + 1216] = 0
                mem[(64 * stor16[address(arg1)] - arg2) + 1248] = 0
                mem[(64 * stor16[address(arg1)] - arg2) + 1280] = 0
                mem[var57002] = var57001
                if var57003 - 1:
                    # nil
                else:
                    idx = 0
                    while idx < stor16[address(arg1)] - arg2:
                        if arg2 > !idx:
                            revert with 0, 17
                        if arg2 + idx >= stor16[address(arg1)]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = address(arg1)
                        mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                        _3562 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3562] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                        mem[_3562 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                        mem[_3562 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                        mem[_3562 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                        if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _3562
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if arg2 > !(stor16[address(arg1)] - arg2):
                        revert with 0, 17
                    # nil
            else:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _3190 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3190] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_3190 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_3190 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_3190 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _3190
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _3162 = mem[64]
                mem[mem[64]] = 96
                _3173 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_3162 + 32] = (32 * _3173) + 128
                _3308 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_3162 + (32 * _3173) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _3162 + (32 * _3173) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _3308:
                    _3506 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_3506 + 32]
                    mem[s + 64] = mem[_3506 + 64]
                    mem[s + 96] = bool(mem[_3506 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_3162 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _3162 + (32 * _3173) + (128 * _3308) + -mem[64] + 160
        else:
            mem[128 len 32 * stor16[address(arg1)] - arg2] = call.data[calldata.size len 32 * stor16[address(arg1)] - arg2]
            if stor16[address(arg1)] - arg2 > test266151307():
                revert with 0, 65
            mem[(32 * stor16[address(arg1)] - arg2) + 128] = stor16[address(arg1)] - arg2
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 160
            if not stor16[address(arg1)] - arg2:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _219 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_219] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_219 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_219 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_219 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _219
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _189 = mem[64]
                mem[mem[64]] = 96
                _199 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_189 + 32] = (32 * _199) + 128
                _334 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_189 + (32 * _199) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _189 + (32 * _199) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _334:
                    _535 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_535 + 32]
                    mem[s + 64] = mem[_535 + 64]
                    mem[s + 96] = bool(mem[_535 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_189 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _189 + (32 * _199) + (128 * _334) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 288
            mem[(64 * stor16[address(arg1)] - arg2) + 160] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 192] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 224] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 256] = 0
            mem[var26002] = var26001
            if not var26003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _591 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_591] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_591 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_591 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_591 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _591
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _562 = mem[64]
                mem[mem[64]] = 96
                _571 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _571) + 128
                _707 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_562 + (32 * _571) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _562 + (32 * _571) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _707:
                    _908 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_908 + 32]
                    mem[s + 64] = mem[_908 + 64]
                    mem[s + 96] = bool(mem[_908 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_562 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _562 + (32 * _571) + (128 * _707) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 416
            mem[(64 * stor16[address(arg1)] - arg2) + 288] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 320] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 352] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 384] = 0
            mem[var30002] = var30001
            if not var30003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _963 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_963] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_963 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_963 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_963 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _963
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _934 = mem[64]
                mem[mem[64]] = 96
                _943 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_934 + 32] = (32 * _943) + 128
                _1079 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_934 + (32 * _943) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _934 + (32 * _943) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _1079:
                    _1280 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_1280 + 32]
                    mem[s + 64] = mem[_1280 + 64]
                    mem[s + 96] = bool(mem[_1280 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_934 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _934 + (32 * _943) + (128 * _1079) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 544
            mem[(64 * stor16[address(arg1)] - arg2) + 416] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 448] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 480] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 512] = 0
            mem[var34002] = var34001
            if not var34003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _1335 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1335] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1335 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1335 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_1335 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _1335
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _1306 = mem[64]
                mem[mem[64]] = 96
                _1315 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1315) + 128
                _1451 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_1306 + (32 * _1315) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _1306 + (32 * _1315) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _1451:
                    _1652 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_1652 + 32]
                    mem[s + 64] = mem[_1652 + 64]
                    mem[s + 96] = bool(mem[_1652 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_1306 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _1306 + (32 * _1315) + (128 * _1451) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 672
            mem[(64 * stor16[address(arg1)] - arg2) + 544] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 576] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 608] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 640] = 0
            mem[var38002] = var38001
            if not var38003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _1707 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1707] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1707 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1707 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_1707 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _1707
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _1678 = mem[64]
                mem[mem[64]] = 96
                _1687 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_1678 + 32] = (32 * _1687) + 128
                _1823 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_1678 + (32 * _1687) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _1678 + (32 * _1687) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _1823:
                    _2024 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2024 + 32]
                    mem[s + 64] = mem[_2024 + 64]
                    mem[s + 96] = bool(mem[_2024 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_1678 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _1678 + (32 * _1687) + (128 * _1823) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 800
            mem[(64 * stor16[address(arg1)] - arg2) + 672] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 704] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 736] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 768] = 0
            mem[var42002] = var42001
            if not var42003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2079 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2079] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2079 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2079 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2079 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _2079
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _2050 = mem[64]
                mem[mem[64]] = 96
                _2059 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _2059) + 128
                _2195 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_2050 + (32 * _2059) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _2050 + (32 * _2059) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _2195:
                    _2396 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2396 + 32]
                    mem[s + 64] = mem[_2396 + 64]
                    mem[s + 96] = bool(mem[_2396 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2050 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _2050 + (32 * _2059) + (128 * _2195) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 928
            mem[(64 * stor16[address(arg1)] - arg2) + 800] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 832] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 864] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 896] = 0
            mem[var46002] = var46001
            if not var46003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2451 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2451] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2451 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2451 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2451 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _2451
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _2422 = mem[64]
                mem[mem[64]] = 96
                _2431 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_2422 + 32] = (32 * _2431) + 128
                _2567 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_2422 + (32 * _2431) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _2422 + (32 * _2431) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _2567:
                    _2768 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_2768 + 32]
                    mem[s + 64] = mem[_2768 + 64]
                    mem[s + 96] = bool(mem[_2768 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2422 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _2422 + (32 * _2431) + (128 * _2567) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 1056
            mem[(64 * stor16[address(arg1)] - arg2) + 928] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 960] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 992] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 1024] = 0
            mem[var50002] = var50001
            if not var50003 - 1:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _2823 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2823] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2823 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2823 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_2823 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _2823
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _2794 = mem[64]
                mem[mem[64]] = 96
                _2803 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_2794 + 32] = (32 * _2803) + 128
                _2939 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_2794 + (32 * _2803) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _2794 + (32 * _2803) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _2939:
                    _3140 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_3140 + 32]
                    mem[s + 64] = mem[_3140 + 64]
                    mem[s + 96] = bool(mem[_3140 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_2794 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _2794 + (32 * _2803) + (128 * _2939) + -mem[64] + 160
            mem[64] = (64 * stor16[address(arg1)] - arg2) + 1184
            mem[(64 * stor16[address(arg1)] - arg2) + 1056] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 1088] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 1120] = 0
            mem[(64 * stor16[address(arg1)] - arg2) + 1152] = 0
            mem[var54002] = var54001
            if var54003 - 1:
                mem[64] = (64 * stor16[address(arg1)] - arg2) + 1312
                mem[(64 * stor16[address(arg1)] - arg2) + 1184] = 0
                mem[(64 * stor16[address(arg1)] - arg2) + 1216] = 0
                mem[(64 * stor16[address(arg1)] - arg2) + 1248] = 0
                mem[(64 * stor16[address(arg1)] - arg2) + 1280] = 0
                mem[var58002] = var58001
                if var58003 - 1:
                    # nil
                else:
                    idx = 0
                    while idx < stor16[address(arg1)] - arg2:
                        if arg2 > !idx:
                            revert with 0, 17
                        if arg2 + idx >= stor16[address(arg1)]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = address(arg1)
                        mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                        _3567 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3567] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                        mem[_3567 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                        mem[_3567 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                        mem[_3567 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                        if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _3567
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if arg2 > !(stor16[address(arg1)] - arg2):
                        revert with 0, 17
                    # nil
            else:
                idx = 0
                while idx < stor16[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if arg2 + idx >= stor16[address(arg1)]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx], 15)
                    _3195 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3195] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_0
                    mem[_3195 + 32] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_256
                    mem[_3195 + 64] = sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_512
                    mem[_3195 + 96] = bool(sub_fcb9cab0[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)) + arg2 + idx]][address(arg1)].field_768)
                    if idx >= mem[(32 * stor16[address(arg1)] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor16[address(arg1)] - arg2) + 160] = _3195
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 > !(stor16[address(arg1)] - arg2):
                    revert with 0, 17
                _3166 = mem[64]
                mem[mem[64]] = 96
                _3175 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _3175) + 128
                _3311 = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                mem[_3166 + (32 * _3175) + 128] = mem[(32 * stor16[address(arg1)] - arg2) + 128]
                idx = 0
                s = _3166 + (32 * _3175) + 160
                t = (32 * stor16[address(arg1)] - arg2) + 160
                while idx < _3311:
                    _3512 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_3512 + 32]
                    mem[s + 64] = mem[_3512 + 64]
                    mem[s + 96] = bool(mem[_3512 + 96])
                    idx = idx + 1
                    s = s + 128
                    t = t + 32
                    continue 
                mem[_3166 + 64] = stor16[address(arg1)]
                return memory
                  from mem[64]
                   len _3166 + (32 * _3175) + (128 * _3311) + -mem[64] + 160
}



}
