contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 userInfo;

function userInfo(address arg1, address arg2) {
    return userInfo[arg1][arg2]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_f849f379(?) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function addUser(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function withdraw(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    if arg2 > 0:
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userInfo[address(arg1)][address(msg.sender)] -= arg2
}

function deposit(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    if arg2 > 0:
        require ext_code.size(arg1)
        call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userInfo[address(arg1)][address(msg.sender)] += arg2
}



}
