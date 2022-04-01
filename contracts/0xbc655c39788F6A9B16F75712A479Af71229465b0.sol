contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 sub_a52f8c64;
uint8 stor2;
uint8 currentCrowdsaleStage; offset 160
address sub_a3f38bb4Address;
uint256 sub_8c531893;
uint256 totalBNBRaised;
mapping of uint256 sub_0fe8c8d3;
mapping of uint256 sub_7a3028a4;
address owner;

function sub_0fe8c8d3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_0fe8c8d3[arg1]
}

function totalBNBRaised() {
    return totalBNBRaised
}

function sub_7a3028a4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_7a3028a4[arg1]
}

function sub_8c531893(?) {
    return sub_8c531893
}

function owner() {
    return owner
}

function sub_a3f38bb4(?) {
    return sub_a3f38bb4Address
}

function isEnded() {
    return bool(uint8(stor0.field_160))
}

function sub_a52f8c64(?) {
    return sub_a52f8c64
}

function currentCrowdsaleStage() {
    return currentCrowdsaleStage
}

function _fallback() payable {
    revert
}

function sub_c7fc51e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    require ext_code.size(sub_a3f38bb4Address)
    call sub_a3f38bb4Address.0xf2fde38b with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawFunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient Funds'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BNBTransferred('Funds Withdrawn to Owner Account');
}

function sub_4724930b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_a3f38bb4Address)
    staticcall sub_a3f38bb4Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getLatestBNBPrice() {
    require ext_code.size(address(stor0.field_0))
    staticcall address(stor0.field_0).getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 'BNB', 3, 'USD'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    return ext_call.return_data[0]
}

function endCrowdsale() {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0, 'Crowdsale already finalized'
    require ext_code.size(sub_a3f38bb4Address)
    staticcall sub_a3f38bb4Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_a3f38bb4Address)
        call sub_a3f38bb4Address.0x42966c68 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 1
    while uint8(idx) <= 5:
        mem[0] = uint8(idx)
        mem[32] = 5
        sub_0fe8c8d3[idx << 248] = 0
        idx = idx + 1
        continue 
    currentCrowdsaleStage = 0
    emit Ended(totalBNBRaised, ext_call.return_data[0]);
    Mask(96, 0, stor0.field_160) = 1
}

function switchToNextStage() {
    require msg.sender == owner
    currentCrowdsaleStage = uint8(currentCrowdsaleStage + 1)
    if currentCrowdsaleStage == 6:
        require msg.sender == owner
        if uint8(stor0.field_160):
            revert with 0, 'Crowdsale already finalized'
        require ext_code.size(sub_a3f38bb4Address)
        staticcall sub_a3f38bb4Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            require ext_code.size(sub_a3f38bb4Address)
            call sub_a3f38bb4Address.0x42966c68 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while uint8(idx) <= 5:
            mem[0] = uint8(idx)
            mem[32] = 5
            sub_0fe8c8d3[idx << 248] = 0
            idx = idx + 1
            continue 
        currentCrowdsaleStage = 0
        emit Ended(totalBNBRaised, ext_call.return_data[0]);
        Mask(96, 0, stor0.field_160) = 1
    else:
        if not currentCrowdsaleStage:
            require msg.sender == owner
            if uint8(stor0.field_160):
                revert with 0, 'Crowdsale already finalized'
            require ext_code.size(sub_a3f38bb4Address)
            staticcall sub_a3f38bb4Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                require ext_code.size(sub_a3f38bb4Address)
                call sub_a3f38bb4Address.0x42966c68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 1
            while uint8(idx) <= 5:
                mem[0] = uint8(idx)
                mem[32] = 5
                sub_0fe8c8d3[idx << 248] = 0
                idx = idx + 1
                continue 
            currentCrowdsaleStage = 0
            emit Ended(totalBNBRaised, ext_call.return_data[0]);
            Mask(96, 0, stor0.field_160) = 1
    sub_a52f8c64 = sub_7a3028a4[stor2]
}

function sub_9e14aff5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.value <= 0:
        revert with 0, 'Please Send some BNB'
    require not uint8(stor0.field_160)
    require address(arg1)
    require ext_code.size(address(stor0.field_0))
    staticcall address(stor0.field_0).getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 'BNB', 3, 'USD'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if not msg.value:
        if sub_a52f8c64 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require sub_a52f8c64
        require 0 / sub_a52f8c64 <= sub_0fe8c8d3[stor2]
        require ext_code.size(sub_a3f38bb4Address)
        call sub_a3f38bb4Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0 / sub_a52f8c64
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TokenPurchase(msg.value, 0 / sub_a52f8c64, msg.sender, address(arg1));
        if totalBNBRaised + msg.value < totalBNBRaised:
            revert with 0, 'SafeMath: addition overflow'
        totalBNBRaised += msg.value
        if 0 / sub_a52f8c64 > sub_0fe8c8d3[stor2]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        sub_0fe8c8d3[stor2] -= 0 / sub_a52f8c64
    else:
        require msg.value
        if msg.value * ext_call.return_data[0] / msg.value != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_a52f8c64 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require sub_a52f8c64
        require msg.value * ext_call.return_data[0] / sub_a52f8c64 <= sub_0fe8c8d3[stor2]
        require ext_code.size(sub_a3f38bb4Address)
        call sub_a3f38bb4Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), msg.value * ext_call.return_data[0] / sub_a52f8c64
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / sub_a52f8c64, msg.sender, address(arg1));
        if totalBNBRaised + msg.value < totalBNBRaised:
            revert with 0, 'SafeMath: addition overflow'
        totalBNBRaised += msg.value
        if msg.value * ext_call.return_data[0] / sub_a52f8c64 > sub_0fe8c8d3[stor2]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        sub_0fe8c8d3[stor2] -= msg.value * ext_call.return_data[0] / sub_a52f8c64
    if not sub_0fe8c8d3[stor2]:
        require msg.sender == owner
        currentCrowdsaleStage = uint8(currentCrowdsaleStage + 1)
        if currentCrowdsaleStage == 6:
            require msg.sender == owner
            if uint8(stor0.field_160):
                revert with 0, 'Crowdsale already finalized'
            require ext_code.size(sub_a3f38bb4Address)
            staticcall sub_a3f38bb4Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                require ext_code.size(sub_a3f38bb4Address)
                call sub_a3f38bb4Address.0x42966c68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 1
            while uint8(idx) <= 5:
                mem[0] = uint8(idx)
                mem[32] = 5
                sub_0fe8c8d3[idx << 248] = 0
                idx = idx + 1
                continue 
            currentCrowdsaleStage = 0
            emit Ended(totalBNBRaised, ext_call.return_data[0]);
            Mask(96, 0, stor0.field_160) = 1
        else:
            if not currentCrowdsaleStage:
                require msg.sender == owner
                if uint8(stor0.field_160):
                    revert with 0, 'Crowdsale already finalized'
                require ext_code.size(sub_a3f38bb4Address)
                staticcall sub_a3f38bb4Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_a3f38bb4Address)
                    call sub_a3f38bb4Address.0x42966c68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 1
                while uint8(idx) <= 5:
                    mem[0] = uint8(idx)
                    mem[32] = 5
                    sub_0fe8c8d3[idx << 248] = 0
                    idx = idx + 1
                    continue 
                currentCrowdsaleStage = 0
                emit Ended(totalBNBRaised, ext_call.return_data[0]);
                Mask(96, 0, stor0.field_160) = 1
        sub_a52f8c64 = sub_7a3028a4[stor2]
}



}
