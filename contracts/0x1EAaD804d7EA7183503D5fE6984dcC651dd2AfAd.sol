contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
address claimTokenAddress;
address sub_717cfb57Address;
uint256 tokensPerUSD;
uint256 minContribution;
uint256 maxContribution;
uint256 softCap;
uint256 hardCap;
uint256 startTime;
uint256 endTime;
uint256 usdRaised;
uint256 tokenAllocation;
uint8 stor12;
mapping of struct participants;

function participants(address arg1) payable {
    require calldata.size - 4 >= 32
    return participants[arg1].field_0, participants[arg1].field_256, participants[arg1].field_512
}

function tokensPerUSD() payable {
    return tokensPerUSD
}

function endTime() payable {
    return endTime
}

function claimToken() payable {
    return claimTokenAddress
}

function tokenAllocation() payable {
    return tokenAllocation
}

function sub_717cfb57(?) payable {
    return sub_717cfb57Address
}

function startTime() payable {
    return startTime
}

function maxContribution() payable {
    return maxContribution
}

function owner() payable {
    return address(owner)
}

function softCap() payable {
    return softCap
}

function minContribution() payable {
    return minContribution
}

function finalized() payable {
    return bool(stor12)
}

function usdRaised() payable {
    return usdRaised
}

function hardCap() payable {
    return hardCap
}

function _fallback() payable {
    revert
}

function softCapReached() payable {
    return usdRaised >= softCap
}

function hasEnded() payable {
    if not stor12:
        return bool(stor12)
    return block.timestamp >= endTime
}

function isOpen() payable {
    if block.timestamp < startTime:
        return block.timestamp >= startTime
    return block.timestamp <= endTime
}

function sub_2c00e7b9(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor12 = uint8(arg1)
}

function setEndTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    endTime = arg1
}

function setHardCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    hardCap = arg1
}

function setSoftCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    softCap = arg1
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    startTime = arg1
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function setMaxContribution(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    maxContribution = arg1
}

function setMinContribution(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minContribution = arg1
}

function sub_bf19d002(?) payable {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b7b80853(?) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(owner), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function refund() payable {
    if not stor12:
        revert with 0, 'refund: presale is not over'
    if block.timestamp < endTime:
        revert with 0, 'refund: presale is not over'
    if usdRaised >= softCap:
        revert with 0, 'refund: soft cap not reached'
    if not participants[msg.sender].field_0:
        revert with 0, 'refund: nothing to claim'
    participants[msg.sender].field_0 = 0
    participants[msg.sender].field_512 = participants[msg.sender].field_0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_717cfb57Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, participants[msg.sender].field_32
    mem[324 len 0] = 0
    call sub_717cfb57Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args participants[msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, participants[msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x655361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x655361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Refund(participants[msg.sender].field_0, msg.sender);
}

function endPresale() payable {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor12 = 1
    if softCap > usdRaised:
        emit PresaleFinalized(0);
    else:
        require ext_code.size(sub_717cfb57Address)
        staticcall sub_717cfb57Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_717cfb57Address):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call sub_717cfb57Address with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                revert with 0, 32, 42, 0x655361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x655361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit PresaleFinalized(ext_call.return_data[0]);
}

function sub_bca7e0d8(?) payable {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor12:
        revert with 0, 'Presale: presale is not over'
    if block.timestamp < endTime:
        revert with 0, 'Presale: presale is not over'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(owner), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, msg.sender, Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, msg.sender, arg3
        if not unknown_0x23b872dd(?????), address(arg2) << 64:
            revert with 0, 
                        32,
                        42,
                        0x655361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x655361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
}

function claimTokens() payable {
    if not stor12:
        revert with 0, 'claim: presale is not over'
    if block.timestamp < endTime:
        revert with 0, 'claim: presale is not over'
    if usdRaised < softCap:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74636c61696d3a20736f667420636170206e6f7420726561636865642c20726566756e6420697320617661696c61626c,
                    mem[212 len 16]
    if not participants[msg.sender].field_0:
        if participants[msg.sender].field_256 >= 0:
            revert with 0, 32, 38, 0x72636c61696d3a20796f75206861766520616c726561647920636c61696d656420746f6b656e, mem[266 len 26]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(claimTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
        call claimTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args 0, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x655361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        participants[msg.sender].field_256 = 0
        emit TokenClaim(0, msg.sender);
    else:
        if tokensPerUSD * participants[msg.sender].field_0 / participants[msg.sender].field_0 != tokensPerUSD:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if participants[msg.sender].field_256 >= tokensPerUSD * participants[msg.sender].field_0 / 10^18:
            revert with 0, 32, 38, 0x72636c61696d3a20796f75206861766520616c726561647920636c61696d656420746f6b656e, mem[266 len 26]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(claimTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, tokensPerUSD * participants[msg.sender].field_0 / 10^18) >> 32
        call claimTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, tokensPerUSD * participants[msg.sender].field_0 / 10^18) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x655361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        participants[msg.sender].field_256 = tokensPerUSD * participants[msg.sender].field_0 / 10^18
        emit TokenClaim((tokensPerUSD * participants[msg.sender].field_0 / 10^18), msg.sender);
}

function sub_dc18bae3(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < startTime:
        revert with 0, 'joinPresale: sale is not open'
    if block.timestamp > endTime:
        revert with 0, 'joinPresale: sale is not open'
    if stor12:
        if block.timestamp >= endTime:
            revert with 0, 'joinPresale: sale is over'
    if usdRaised > hardCap:
        revert with 0, 'SafeMath: subtraction overflow'
    if hardCap - usdRaised >= arg1:
        if arg1 < minContribution:
            revert with 0, 
                        32,
                        46,
                        0xfe6a6f696e50726573616c653a206d696e20636f6e747269627574696f6e206372697465726961206e6f74206d65,
                        mem[274 len 18]
        if arg1 + participants[msg.sender].field_0 < participants[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 + participants[msg.sender].field_0 > maxContribution:
            revert with 0, 
                        32,
                        46,
                        0x216a6f696e50726573616c653a206d617820636f6e747269627574696f6e206372697465726961206e6f74206d65,
                        mem[274 len 18]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if not ext_code.size(sub_717cfb57Address):
            revert with 0, 'Address: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[480 len 4] = 0
        call sub_717cfb57Address with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x655361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
        if arg1 + participants[msg.sender].field_0 < participants[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        participants[msg.sender].field_0 += arg1
        if arg1 + usdRaised < usdRaised:
            revert with 0, 'SafeMath: addition overflow'
        usdRaised += arg1
        emit 0x1eff73ed: arg1, msg.sender
    else:
        if hardCap - usdRaised < minContribution:
            revert with 0, 
                        32,
                        46,
                        0xfe6a6f696e50726573616c653a206d696e20636f6e747269627574696f6e206372697465726961206e6f74206d65,
                        mem[274 len 18]
        if hardCap - usdRaised + participants[msg.sender].field_0 < participants[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if hardCap - usdRaised + participants[msg.sender].field_0 > maxContribution:
            revert with 0, 
                        32,
                        46,
                        0x216a6f696e50726573616c653a206d617820636f6e747269627574696f6e206372697465726961206e6f74206d65,
                        mem[274 len 18]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if not ext_code.size(sub_717cfb57Address):
            revert with 0, 'Address: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, hardCap - usdRaised) >> 32
        mem[480 len 4] = 0
        mem[452 len 0] = 0
        call sub_717cfb57Address with:
             gas gas_remaining wei
            args Mask(224, 32, hardCap - usdRaised) << 480, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x655361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
        if hardCap - usdRaised + participants[msg.sender].field_0 < participants[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        participants[msg.sender].field_0 = hardCap - usdRaised + participants[msg.sender].field_0
        if hardCap < usdRaised:
            revert with 0, 'SafeMath: addition overflow'
        usdRaised = hardCap
        emit 0x1eff73ed: (hardCap - usdRaised), msg.sender
}



}
