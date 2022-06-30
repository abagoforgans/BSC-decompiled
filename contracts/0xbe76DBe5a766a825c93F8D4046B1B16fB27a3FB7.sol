contract main {




// =====================  Runtime code  =====================


const name = 'Dua Lipa Fan Token'

const decimals = 18

const initialSupply = 21000000 * 10^18

const symbol = 'DUALIPA'


uint256 totalSupply;
uint256 buyPrice;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transferEthers() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require buyPrice
    require msg.sender
    require 10^18 * msg.value / buyPrice <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * 10^18 * msg.value / buyPrice
    balanceOf[msg.sender] += 10^18 * msg.value / buyPrice
    emit Transfer((10^18 * msg.value / buyPrice), this.address, msg.sender);
    emit Transfer((10^18 * msg.value / buyPrice), this.address, msg.sender);
}

function _fallback() payable {
    require buyPrice
    require msg.sender
    require 10^18 * msg.value / buyPrice <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * 10^18 * msg.value / buyPrice
    balanceOf[msg.sender] += 10^18 * msg.value / buyPrice
    emit Transfer((10^18 * msg.value / buyPrice), this.address, msg.sender);
    emit Transfer((10^18 * msg.value / buyPrice), this.address, msg.sender);
}



}
