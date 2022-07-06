contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 amount;
uint256 sub_671c8292;
uint256 numCampaigns;

function numCampaigns() {
    return numCampaigns
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_671c8292(?) {
    return sub_671c8292
}

function amount() {
    return amount
}

function _fallback() payable {
    revert
}

function contribute() payable {
    amount = msg.value
    sub_671c8292 = amount / 3
}



}
