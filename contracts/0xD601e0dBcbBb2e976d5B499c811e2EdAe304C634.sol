contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const balanceOfPool = ext_call.return_data[0]

const want = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09

const eth_address = 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb

const weth = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09

const fortube = 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672

const max = 1000

const balanceOf = (2 * ext_call.return_data[0])

const balanceOfWant = ext_call.return_data[0]

const yfii = 0x7f70642d88cf1c4a3a7abb072b53b929b653eda5

const withdrawalMax = 10000

const output = 0x658a109c5900bc6d2357c87549b651670e5b0539


uint32 stor0;
address unirouterAddress;
uint256 stor0;
address fortube_rewardAddress;
uint256 strategyfee;
uint256 fee;
uint256 burnfee;
uint256 callfee;
uint256 withdrawalFee;
address governanceAddress;
address strategyDevAddress;
uint32 stor9;
address controllerAddress;
uint256 stor9;
address burnAddress;
array of uint256 name;
array of address swap2YFIIRouting;
array of address swap2TokenRouting;

function burnfee() {
    return burnfee
}

function swap2TokenRouting(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < swap2TokenRouting.length
    return swap2TokenRouting[arg1]
}

function swap2YFIIRouting(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < swap2YFIIRouting.length
    return swap2YFIIRouting[arg1]
}

function getName() {
    return name[0 len name.length]
}

function unirouter() {
    return address(unirouterAddress)
}

function governance() {
    return governanceAddress
}

function fortube_reward() {
    return fortube_rewardAddress
}

function burnAddress() {
    return burnAddress
}

function withdrawalFee() {
    return withdrawalFee
}

function strategyfee() {
    return strategyfee
}

function strategyDev() {
    return strategyDevAddress
}

function callfee() {
    return callfee
}

function fee() {
    return fee
}

function controller() {
    return address(controllerAddress)
}

function _fallback() payable {
  stop
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    fee = arg1
}

function setCallFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    callfee = arg1
}

function setBurnFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    burnfee = arg1
}

function sub_5c6c1e4e(?) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    fortube_rewardAddress = arg1
}

function setBurnAddress(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    burnAddress = arg1
}

function setStrategyFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategyfee = arg1
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setUnirouter(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(unirouterAddress) = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(controllerAddress) = arg1
}

function setWithdrawalFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    if arg1 > 100:
        revert with 0, 'fee >= 1%'
    withdrawalFee = arg1
}

function deposit() {
    require ext_code.size(0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09)
    staticcall 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09)
        call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
        call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.deposit(address rg1, uint256 rg2) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if arg1 == 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09:
        revert with 0, 'want'
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getFTokeAddress(address rg1) with:
            gas gas_remaining wei
           args 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        revert with 0, 'fToken'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor9)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor9):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    return ext_call.return_data[0]
}

function withdrawAll() {
    if address(controllerAddress) != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!governance'
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getFTokeAddress(address rg1) with:
            gas gas_remaining wei
           args 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).calcBalanceOfUnderlying(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.withdrawUnderlying(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09)
    call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09)
    staticcall 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).vaults(address rg1) with:
            gas gas_remaining wei
           args 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!vault'
    if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
    call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    return ext_call.return_data[0]
}

function doApprove() {
    if not ext_code.hash(0x658a109c5900bc6d2357c87549b651670e5b0539):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(0x658a109c5900bc6d2357c87549b651670e5b0539) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor0), uint32(stor0), 0
    call 0x658a109c5900bc6d2357c87549b651670e5b0539 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor0), uint32(stor0), 0) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        require ext_code.size(0x658a109c5900bc6d2357c87549b651670e5b0539)
        staticcall 0x658a109c5900bc6d2357c87549b651670e5b0539.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[318 len 10]
        if not ext_code.hash(0x658a109c5900bc6d2357c87549b651670e5b0539):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(0x658a109c5900bc6d2357c87549b651670e5b0539) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[296 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0x658a109c5900bc6d2357c87549b651670e5b0539 with:
           funct uint32(stor0)
             gas gas_remaining wei
            args -1, Mask(224, 32, 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[360 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor0):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
        else:
            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[328]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
        require ext_code.size(0x658a109c5900bc6d2357c87549b651670e5b0539)
        staticcall 0x658a109c5900bc6d2357c87549b651670e5b0539.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 319 len 10]
        if not ext_code.hash(0x658a109c5900bc6d2357c87549b651670e5b0539):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(0x658a109c5900bc6d2357c87549b651670e5b0539) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 297 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0x658a109c5900bc6d2357c87549b651670e5b0539 with:
           funct uint32(stor0)
             gas gas_remaining wei
            args -1, Mask(224, 32, 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[ceil32(return_data.size) + 361 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor0):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 407 len 22]
        else:
            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 329]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 408 len 22]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09)
    staticcall 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not withdrawalFee:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
            call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        else:
            if not arg1:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x9ec5a894 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0) << 256, mem[324 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    revert with 0, '!vault'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, arg1) >> 32
                call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                     gas gas_remaining wei
                    args arg1, Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, arg1) >> 32) >> 32, mem[ceil32(return_data.size) + 489 len 4]
            else:
                if withdrawalFee * arg1 / arg1 != withdrawalFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x9ec5a894 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
                call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                     gas gas_remaining wei
                    args Mask(224, 32, withdrawalFee * arg1 / 10000) << 224, mem[324 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    revert with 0, '!vault'
                if withdrawalFee * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                     gas gas_remaining wei
                    args arg1 - (withdrawalFee * arg1 / 10000), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32) >> 32, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
        call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.withdrawUnderlying(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09)
        call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 < arg1 - ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not withdrawalFee:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
            call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if not arg1:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x9ec5a894 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
                call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if withdrawalFee * arg1 / arg1 != withdrawalFee:
                    revert with 0, 32, 33, 0x5c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x9ec5a894 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
                call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                     gas gas_remaining wei
                    args Mask(224, 32, withdrawalFee * arg1 / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if withdrawalFee * arg1 / 10000 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                    call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if withdrawalFee * arg1 / 10000 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                    call 0x00bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len 22]
}



}
