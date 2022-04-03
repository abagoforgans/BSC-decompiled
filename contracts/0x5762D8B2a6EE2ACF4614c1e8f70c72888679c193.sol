contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address shareAddress; offset 8
address daibacLPPoolAddress;
uint256 daibacInitialBalance;
address daibasLPPoolAddress;
uint256 daibasInitialBalance;

function daibacLPPool() payable {
    return daibacLPPoolAddress
}

function once() payable {
    return bool(stor0)
}

function daibacInitialBalance() payable {
    return daibacInitialBalance
}

function share() payable {
    return shareAddress
}

function daibasLPPool() payable {
    return daibasLPPoolAddress
}

function daibasInitialBalance() payable {
    return daibasInitialBalance
}

function _fallback() payable {
    revert
}

function distribute() payable {
    if not stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0xfe496e697469616c53686172654469737472696275746f723a20796f752063616e6e6f742072756e20746869732066756e6374696f6e2074776963,
                    mem[223 len 5]
    require ext_code.size(shareAddress)
    call shareAddress.0xa9059cbb with:
         gas gas_remaining wei
        args daibacLPPoolAddress, daibacInitialBalance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(daibacLPPoolAddress)
    call daibacLPPoolAddress.notifyRewardAmount(uint256 rg1) with:
         gas gas_remaining wei
        args daibacInitialBalance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Distributed(daibacLPPoolAddress, daibacInitialBalance);
    require ext_code.size(shareAddress)
    call shareAddress.0xa9059cbb with:
         gas gas_remaining wei
        args daibasLPPoolAddress, daibasInitialBalance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(daibasLPPoolAddress)
    call daibasLPPoolAddress.notifyRewardAmount(uint256 rg1) with:
         gas gas_remaining wei
        args daibasInitialBalance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Distributed(daibasLPPoolAddress, daibasInitialBalance);
    stor0 = 0
}



}
