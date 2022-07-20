contract main {




// =====================  Runtime code  =====================


const BNBBalance = eth.balance(this.address)


address owner;
uint256 stor1;
uint256 sub_96bd5fce;
uint256 sub_9295142a;
uint256 totalDepositedBNB;
address operatorAddress;

function sub_2996e6ba(?) {
    return sub_9295142a
}

function sub_475d61b2(?) {
    return sub_96bd5fce
}

function operator() {
    return operatorAddress
}

function sub_80820446(?) {
    return totalDepositedBNB
}

function owner() {
    return owner
}

function sub_9295142a(?) {
    return sub_9295142a
}

function sub_96bd5fce(?) {
    return sub_96bd5fce
}

function totalDepositedBNB() {
    return totalDepositedBNB
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function TokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function depositBNB() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if eth.balance(msg.sender) < msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x73596f7520646f6e2774206861766520656e6f75676820424e4220746f206465706f7369,
                    mem[200 len 28]
    totalDepositedBNB += msg.value
    stor1 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x745472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[214 len 14]
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function withdrawBNB(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x74547279696e6720746f207769746864726177206d6f7265207468616e20636f6e747261637420706f7373657365,
                    mem[210 len 18]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73596f7520646f6e2774206861766520656e6f75676820746f6b656e7320746f206465706f7369,
                    mem[203 len 25]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0x8c8c1bee8428c11426baebfbb17dc2166214654a == arg1:
        sub_96bd5fce += arg2
    stor1 = 1
}

function withdrawToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x72436f6e747261637420686173206e6f7420656e6f75676820746f6b656e2062616c616e63,
                    mem[201 len 27]
    if arg1 == arg2:
        revert with 0, 'Invalid address'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Retrieve failed'
    emit 0xd4f88a19: arg1, arg2, arg3
    if 0x8c8c1bee8428c11426baebfbb17dc2166214654a == arg1:
        sub_9295142a += arg3
}



}
