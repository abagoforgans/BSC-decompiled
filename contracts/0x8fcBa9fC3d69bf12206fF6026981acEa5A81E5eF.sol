contract main {




// =====================  Runtime code  =====================


address sub_d60f8424Address;
address recipientAddress;
uint256 vestingAmount;
uint256 vestingBegin;
uint256 vestingCliff;
uint256 vestingEnd;
uint256 lastUpdate;

function vestingAmount() payable {
    return vestingAmount
}

function recipient() payable {
    return recipientAddress
}

function vestingEnd() payable {
    return vestingEnd
}

function lastUpdate() payable {
    return lastUpdate
}

function sub_d60f8424(?) payable {
    return sub_d60f8424Address
}

function vestingBegin() payable {
    return vestingBegin
}

function vestingCliff() payable {
    return vestingCliff
}

function _fallback() payable {
    revert
}

function setRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if recipientAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe54696d656c6f636b3a3a736574526563697069656e743a20756e617574686f72697a65,
                    mem[200 len 28]
    recipientAddress = arg1
}

function claim() payable {
    if block.timestamp < vestingCliff:
        revert with 0, 'Timelock::claim: not time yet'
    if block.timestamp < vestingEnd:
        if not vestingAmount:
            if not vestingEnd - vestingBegin:
                revert with 0, 'SafeMath: division by zero'
            lastUpdate = block.timestamp
            require ext_code.size(sub_d60f8424Address)
            call sub_d60f8424Address.0xa9059cbb with:
                 gas gas_remaining wei
                args recipientAddress, 0 / vestingEnd - vestingBegin
        else:
            if (block.timestamp * vestingAmount) - (lastUpdate * vestingAmount) / vestingAmount != block.timestamp - lastUpdate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not vestingEnd - vestingBegin:
                revert with 0, 'SafeMath: division by zero'
            lastUpdate = block.timestamp
            require ext_code.size(sub_d60f8424Address)
            call sub_d60f8424Address.0xa9059cbb with:
                 gas gas_remaining wei
                args recipientAddress, (block.timestamp * vestingAmount) - (lastUpdate * vestingAmount) / vestingEnd - vestingBegin
    else:
        require ext_code.size(sub_d60f8424Address)
        staticcall sub_d60f8424Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d60f8424Address)
        call sub_d60f8424Address.0xa9059cbb with:
             gas gas_remaining wei
            args recipientAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
