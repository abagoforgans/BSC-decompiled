contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor1;
uint8 _saleStarted; offset 160
address stor2;
mapping of struct cardBasePrice;
mapping of uint256 earning;
mapping of uint8 stor5;

function getCardBasePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return cardBasePrice[arg1].field_1536
}

function getCardContract(uint256 arg1) {
    require calldata.size - 4 >= 32
    return cardBasePrice[arg1].field_256
}

function isCardCompleted(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(cardBasePrice[arg1].field_2048)
}

function getCardTokenId(uint256 arg1) {
    require calldata.size - 4 >= 32
    return cardBasePrice[arg1].field_512
}

function getCardRequirement(uint256 arg1) {
    require calldata.size - 4 >= 32
    return cardBasePrice[arg1].field_1792
}

function _saleStarted() {
    return bool(_saleStarted)
}

function owner() {
    return address(owner)
}

function getCardTotalAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    return cardBasePrice[arg1].field_768
}

function getCardCurrentAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    return cardBasePrice[arg1].field_1024
}

function getEarning(uint256 arg1) {
    require calldata.size - 4 >= 32
    return earning[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == address(owner))
}

function isCardFree(uint256 arg1) {
    require calldata.size - 4 >= 32
    if cardBasePrice[arg1].field_1536:
        return 0
    return 1
}

function stopSale() {
    if address(owner) != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    _saleStarted = 0
    return 0
}

function startSale() {
    if address(owner) != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    _saleStarted = 1
    return 1
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function setSalesPerson(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor2 = arg1
    return 1
}

function cancelCard(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    cardBasePrice[arg1].field_2048 = 1
    return 1
}

function setCardPaymentToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    cardBasePrice[arg1].field_1280 = arg2
    return 1
}

function setCardPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    cardBasePrice[arg1].field_1536 = arg2
    cardBasePrice[arg1].field_1792 = arg3
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function getCardURL(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0xe89341c00000000000000000000000000000000000000000000000000000000
    mem[100] = cardBasePrice[arg1].field_512
    require ext_code.size(cardBasePrice[arg1].field_256)
    staticcall cardBasePrice[arg1].field_256.uri(uint256 rg1) with:
            gas gas_remaining wei
           args cardBasePrice[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96 len 4], cardBasePrice[arg1].field_544
    require mem[96 len 4], cardBasePrice[arg1].field_544 <= 4294967296
    require mem[96 len 4], cardBasePrice[arg1].field_544 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], cardBasePrice[arg1].field_544 + 96] + mem[96 len 4], cardBasePrice[arg1].field_544 + 32 and mem[mem[96 len 4], cardBasePrice[arg1].field_544 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_5 + 96]
    _9 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_5 + 96])] = mem[_5 + 128 len ceil32(mem[_5 + 96])]
    if not _9 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _9 + 32]
    mem[floor32(_9) + ceil32(return_data.size) + 160] = mem[floor32(_9) + ceil32(return_data.size) + -(_9 % 32) + 192 len _9 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_9) + 64]
}

function createCard(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if address(owner) != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Initial supply cannot be more than available supply'
    require ext_code.size(arg1)
    staticcall arg1.isApprovedForAll(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract must be whitelisted by owner'
    if stor1 + 1 < stor1:
        revert with 0, 'SafeMath#add: OVERFLOW'
    stor1++
    cardBasePrice[stor1 + 1].field_0 = stor1 + 1
    cardBasePrice[stor1 + 1].field_256 = arg1
    cardBasePrice[stor1 + 1].field_512 = arg2
    cardBasePrice[stor1 + 1].field_768 = arg3
    cardBasePrice[stor1 + 1].field_1024 = arg3
    cardBasePrice[stor1 + 1].field_1280 = arg4
    cardBasePrice[stor1 + 1].field_1536 = arg5
    cardBasePrice[stor1 + 1].field_1792 = arg6
    cardBasePrice[stor1 + 1].field_2048 = 0
    earning[stor1 + 1] = 0
    emit CreateCard(stor1 + 1, arg2, arg3, address(arg4), arg5, msg.sender, arg1);
    return (stor1 + 1)
}

function purchaseNFT(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if bool(_saleStarted) != 1:
        revert with 0, 'Sale stopped'
    if cardBasePrice[arg1].field_2048:
        revert with 0, 'Card is finished'
    if arg2 > cardBasePrice[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Order exceeds the max number of available NFTs'
    if arg2 != 1:
        revert with 0, 'Only one per purchase'
    if stor5[arg1][msg.sender]:
        revert with 0, 'Only one per purchase'
    if not cardBasePrice[arg1].field_1536:
        require ext_code.size(cardBasePrice[arg1].field_1280)
        staticcall cardBasePrice[arg1].field_1280.balanceOf(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(msg.sender) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        if eth.balance(msg.sender) + ext_call.return_data[0] < cardBasePrice[arg1].field_1792:
            revert with 0, 'Do not have enough funds'
    else:
        if not cardBasePrice[arg1].field_1536:
            require ext_code.size(cardBasePrice[arg1].field_1280)
            staticcall cardBasePrice[arg1].field_1280.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'Do not have enough funds'
            require ext_code.size(cardBasePrice[arg1].field_1280)
            staticcall cardBasePrice[arg1].field_1280.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'Must be approved for purchase'
            require ext_code.size(cardBasePrice[arg1].field_1280)
            call cardBasePrice[arg1].field_1280.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, stor2, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if earning[arg1] < earning[arg1]:
                revert with 0, 'SafeMath#add: OVERFLOW'
        else:
            if arg2 * cardBasePrice[arg1].field_1536 / cardBasePrice[arg1].field_1536 != arg2:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            require ext_code.size(cardBasePrice[arg1].field_1280)
            staticcall cardBasePrice[arg1].field_1280.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2 * cardBasePrice[arg1].field_1536:
                revert with 0, 'Do not have enough funds'
            require ext_code.size(cardBasePrice[arg1].field_1280)
            staticcall cardBasePrice[arg1].field_1280.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2 * cardBasePrice[arg1].field_1536:
                revert with 0, 'Must be approved for purchase'
            require ext_code.size(cardBasePrice[arg1].field_1280)
            call cardBasePrice[arg1].field_1280.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, stor2, arg2 * cardBasePrice[arg1].field_1536
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (arg2 * cardBasePrice[arg1].field_1536) + earning[arg1] < earning[arg1]:
                revert with 0, 'SafeMath#add: OVERFLOW'
            earning[arg1] += arg2 * cardBasePrice[arg1].field_1536
    require ext_code.size(cardBasePrice[arg1].field_256)
    call cardBasePrice[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args 0, uint32(stor0), msg.sender, cardBasePrice[arg1].field_512, arg2, 160, 0, mem[292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 > cardBasePrice[arg1].field_1024:
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    cardBasePrice[arg1].field_1024 -= arg2
    stor5[arg1][msg.sender] = 1
    emit PurchaseCard(arg1, arg2, msg.sender);
    return 1
}



}
