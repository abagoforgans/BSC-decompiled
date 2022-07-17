contract main {




// =====================  Runtime code  =====================


const sub_3a3eb056(?) = 5 * 10^16

const isOpen = block.timestamp >= 1623767400

const sub_776b7911(?) = 50 * 10^18

const sub_aacbdee4(?) = 20000 * 10^18

const sub_e7486ce6(?) = 20 * 10^18

const CROWDSALE_START_TIME = 1623767400


uint32 stor0;
address owner;
uint256 stor0;
mapping of uint256 sub_25edd044;
mapping of uint256 sub_a6a52029;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 sub_c45689d7;
uint256 sub_f7f9ba9a;
uint8 canClaim;
uint8 sub_6cf306bd; offset 8
address sub_d0d3cf59Address; offset 16
uint256 sub_cb4d0a60;
uint256 sub_73f68835;
address busdTokenAddress;

function sub_25edd044(?) {
    require calldata.size - 4 >= 32
    return sub_25edd044[arg1]
}

function sub_6cf306bd(?) {
    return bool(sub_6cf306bd)
}

function canClaim() {
    return bool(canClaim)
}

function sub_73f68835(?) {
    return sub_73f68835
}

function owner() {
    return address(owner)
}

function sub_a6a52029(?) {
    require calldata.size - 4 >= 32
    return sub_a6a52029[arg1]
}

function sub_c45689d7(?) {
    return sub_c45689d7
}

function claimed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_cb4d0a60(?) {
    return sub_cb4d0a60
}

function sub_d0d3cf59(?) {
    return sub_d0d3cf59Address
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function busdToken() {
    return busdTokenAddress
}

function sub_f7f9ba9a(?) {
    return sub_f7f9ba9a
}

function _fallback() payable {
    revert
}

function activateClaim() {
    require msg.sender == address(owner)
    if canClaim:
        revert with 0, 'already activated'
    canClaim = 1
}

function addTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(owner)
    sub_d0d3cf59Address = arg1
}

function openSaleForAll() {
    require msg.sender == address(owner)
    if sub_6cf306bd:
        revert with 0, 'already open'
    sub_6cf306bd = 1
}

function sub_cfadbb09(?) {
    require calldata.size - 4 >= 32
    require msg.sender == address(owner)
    if not arg1:
        revert with 0, 'New Rate can't be 0'
    sub_cb4d0a60 = arg1
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(owner)
    require arg1
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function takeOutFundingRaised() {
    require msg.sender == address(owner)
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenCountForUser(address arg1) {
    require calldata.size - 4 >= 32
    if not sub_25edd044[address(arg1)]:
        return 0
    if sub_cb4d0a60 * sub_25edd044[address(arg1)] / sub_25edd044[address(arg1)] != sub_cb4d0a60:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x42536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sub_cb4d0a60 * sub_25edd044[address(arg1)])
}

function sub_84c3ff45(?) payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe46696e6f7343726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[211 len 17]
    if not sub_6cf306bd:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x42536f727279207468652073616c6520697320796574206e6f74206f70656e20666f722067656e6572616c207075626c69,
                    mem[213 len 15]
    if block.timestamp >= 1623767400 != 1:
        revert with 0, 'Crowdsale has not yet started'
    if canClaim:
        revert with 0, 'Sale is over'
    if msg.value < 5 * 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x7346494e4f43726f776473616c653a206d696e696d756d20636f6e747269627574696f6e20697320302e303520424e,
                    mem[211 len 17]
    if sub_25edd044[msg.sender] + msg.value > 50 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x2146494e4f43726f776473616c653a206d6178696d756d20636f6e747269627574696f6e20697320353020424e,
                    mem[209 len 19]
    if msg.value + sub_c45689d7 < sub_c45689d7:
        revert with 0, 'SafeMath: addition overflow'
    sub_c45689d7 += msg.value
    if msg.value + sub_25edd044[address(msg.sender)] < sub_25edd044[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_25edd044[address(msg.sender)] += msg.value
}

function takeOutRemainingTokens() {
    require msg.sender == address(owner)
    require ext_code.size(sub_d0d3cf59Address)
    staticcall sub_d0d3cf59Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_d0d3cf59Address):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(sub_d0d3cf59Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call sub_d0d3cf59Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_f6e8ed38(?) {
    require msg.sender == address(owner)
    require ext_code.size(busdTokenAddress)
    staticcall busdTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(busdTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(busdTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call busdTokenAddress with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_0306ed26(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe46696e6f7343726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[211 len 17]
    if not sub_6cf306bd:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x42536f727279207468652073616c6520697320796574206e6f74206f70656e20666f722067656e6572616c207075626c69,
                    mem[213 len 15]
    if block.timestamp >= 1623767400 != 1:
        revert with 0, 'Crowdsale has not yet started'
    if canClaim:
        revert with 0, 'Sale is over'
    if arg1 < 20 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6446494e4f43726f776473616c653a206d696e696d756d20636f6e747269627574696f6e20697320323020425553,
                    mem[210 len 18]
    if arg1 + sub_a6a52029[msg.sender] > 20000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x7346494e4f43726f776473616c653a206d6178696d756d20636f6e747269627574696f6e20697320323030303020425553,
                    mem[213 len 15]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(busdTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(busdTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call busdTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if arg1 + sub_f7f9ba9a < sub_f7f9ba9a:
        revert with 0, 'SafeMath: addition overflow'
    sub_f7f9ba9a += arg1
    if arg1 + sub_a6a52029[address(msg.sender)] < sub_a6a52029[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_a6a52029[address(msg.sender)] += arg1
}

function claimTokens() {
    if stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x77596f75206861766520616c726561647920636c61696d656420796f757220746f6b656e,
                    mem[200 len 28]
    if not canClaim:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x44436c61696d206f6620746f6b656e73206973206e6f74206163746976617465642c20706c656173652077616974,
                    mem[210 len 18]
    if sub_25edd044[msg.sender]:
        if sub_cb4d0a60 * sub_25edd044[msg.sender] / sub_25edd044[msg.sender] != sub_cb4d0a60:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x42536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not sub_a6a52029[msg.sender]:
            if sub_cb4d0a60 * sub_25edd044[msg.sender] < sub_cb4d0a60 * sub_25edd044[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            stor3[msg.sender] = 1
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_d0d3cf59Address):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_d0d3cf59Address):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_cb4d0a60 * sub_25edd044[msg.sender]) >> 32
            mem[324 len 0] = 0
            call sub_d0d3cf59Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, sub_cb4d0a60 * sub_25edd044[msg.sender]) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, sub_cb4d0a60 * sub_25edd044[msg.sender]
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit TokenTransfer(sub_25edd044[msg.sender], sub_cb4d0a60 * sub_25edd044[msg.sender], msg.sender);
            emit TokenTransfer(sub_a6a52029[msg.sender], 0, msg.sender);
        else:
            if sub_73f68835 * sub_a6a52029[msg.sender] / sub_a6a52029[msg.sender] != sub_73f68835:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x42536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (sub_73f68835 * sub_a6a52029[msg.sender]) + (sub_cb4d0a60 * sub_25edd044[msg.sender]) < sub_cb4d0a60 * sub_25edd044[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            stor3[msg.sender] = 1
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_d0d3cf59Address):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_d0d3cf59Address):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (sub_73f68835 * sub_a6a52029[msg.sender]) + (sub_cb4d0a60 * sub_25edd044[msg.sender])) >> 32
            mem[324 len 0] = 0
            call sub_d0d3cf59Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (sub_73f68835 * sub_a6a52029[msg.sender]) + (sub_cb4d0a60 * sub_25edd044[msg.sender])) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), 
                                msg.sender,
                                (sub_73f68835 * sub_a6a52029[msg.sender]) + (sub_cb4d0a60 * sub_25edd044[msg.sender])
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit TokenTransfer(sub_25edd044[msg.sender], sub_cb4d0a60 * sub_25edd044[msg.sender], msg.sender);
            emit TokenTransfer(sub_a6a52029[msg.sender], sub_73f68835 * sub_a6a52029[msg.sender], msg.sender);
    else:
        if sub_a6a52029[msg.sender] <= 0:
            revert with 0, 'You haven't contributed anything'
        if not sub_25edd044[msg.sender]:
            if not sub_a6a52029[msg.sender]:
                stor3[msg.sender] = 1
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_d0d3cf59Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_d0d3cf59Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call sub_d0d3cf59Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, 0
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit TokenTransfer(sub_25edd044[msg.sender], 0, msg.sender);
                emit TokenTransfer(sub_a6a52029[msg.sender], 0, msg.sender);
            else:
                if sub_73f68835 * sub_a6a52029[msg.sender] / sub_a6a52029[msg.sender] != sub_73f68835:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x42536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_73f68835 * sub_a6a52029[msg.sender] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                stor3[msg.sender] = 1
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_d0d3cf59Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_d0d3cf59Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_73f68835 * sub_a6a52029[msg.sender]) >> 32
                call sub_d0d3cf59Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, sub_73f68835 * sub_a6a52029[msg.sender]) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, sub_73f68835 * sub_a6a52029[msg.sender]
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit TokenTransfer(sub_25edd044[msg.sender], 0, msg.sender);
                emit TokenTransfer(sub_a6a52029[msg.sender], sub_73f68835 * sub_a6a52029[msg.sender], msg.sender);
        else:
            if sub_cb4d0a60 * sub_25edd044[msg.sender] / sub_25edd044[msg.sender] != sub_cb4d0a60:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x42536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_a6a52029[msg.sender]:
                if sub_cb4d0a60 * sub_25edd044[msg.sender] < sub_cb4d0a60 * sub_25edd044[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                stor3[msg.sender] = 1
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_d0d3cf59Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_d0d3cf59Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_cb4d0a60 * sub_25edd044[msg.sender]) >> 32
                mem[324 len 0] = 0
                call sub_d0d3cf59Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, sub_cb4d0a60 * sub_25edd044[msg.sender]) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, sub_cb4d0a60 * sub_25edd044[msg.sender]
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit TokenTransfer(sub_25edd044[msg.sender], sub_cb4d0a60 * sub_25edd044[msg.sender], msg.sender);
                emit TokenTransfer(sub_a6a52029[msg.sender], 0, msg.sender);
            else:
                if sub_73f68835 * sub_a6a52029[msg.sender] / sub_a6a52029[msg.sender] != sub_73f68835:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x42536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (sub_73f68835 * sub_a6a52029[msg.sender]) + (sub_cb4d0a60 * sub_25edd044[msg.sender]) < sub_cb4d0a60 * sub_25edd044[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                stor3[msg.sender] = 1
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_d0d3cf59Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_d0d3cf59Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (sub_73f68835 * sub_a6a52029[msg.sender]) + (sub_cb4d0a60 * sub_25edd044[msg.sender])) >> 32
                mem[324 len 0] = 0
                call sub_d0d3cf59Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (sub_73f68835 * sub_a6a52029[msg.sender]) + (sub_cb4d0a60 * sub_25edd044[msg.sender])) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    (sub_73f68835 * sub_a6a52029[msg.sender]) + (sub_cb4d0a60 * sub_25edd044[msg.sender])
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x635361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit TokenTransfer(sub_25edd044[msg.sender], sub_cb4d0a60 * sub_25edd044[msg.sender], msg.sender);
                emit TokenTransfer(sub_a6a52029[msg.sender], sub_73f68835 * sub_a6a52029[msg.sender], msg.sender);
}



}
