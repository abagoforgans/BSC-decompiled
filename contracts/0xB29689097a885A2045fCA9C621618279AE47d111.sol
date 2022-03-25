contract main {




// =====================  Runtime code  =====================


const sub_886d24a9(?) = 0x1092e4f72a9d7a28418351d029e273906af247

const UNI = 0x5ff2b0db69458a0750badebc4f9e13add608c7f

const WETH = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c


function _fallback() payable {
  stop
}

function withdraw() {
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    call ????????????????????????????????????????.0x51cff8d9 with:
         gas gas_remaining wei
        args 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    call ????????????????????????????????????????.unbond(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x1092e4f72a9d7a28418351d029e273906af247, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unbond() {
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.unbondings(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= block.timestamp:
        revert with 0, 'MetaKeep3rb::unbond: unbonding'
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    call ????????????????????????????????????????.unbond(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x1092e4f72a9d7a28418351d029e273906af247, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function work(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    call ????????????????????????????????????????.isMinKeeper(address rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), 100 * 10^18, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x974d6574614b6565703372623a3a69734b65657065723a206b6565706572206973206e6f7420726567697374657265,
                    0
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.jobs(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'MetaKeep3rb::work: invalid job'
    require ext_code.size(arg1)
    call arg1.0x322e9f04 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 6
    mem[128] = 0x7375623a202d0000000000000000000000000000000000000000000000000000
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, ''
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 0:
        require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
        call ????????????????????????????????????????.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0x5ff2b0db69458a0750badebc4f9e13add608c7f, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[224] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        if block.timestamp + 1800 < block.timestamp:
            revert with 0, 'add: +'
        mem[256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[260] = 0
        mem[292] = 0
        mem[356] = this.address
        mem[388] = block.timestamp + 1800
        mem[324] = 160
        mem[420] = 2
        mem[452 len 0] = None
        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(this.address), block.timestamp + 1800, 2, mem[452 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 256
        require return_data.size >= 32
        _131 = mem[256 len 4], 0
        require mem[256 len 4], 0 <= 4294967296
        require mem[256 len 4], 0 + 32 <= return_data.size
        require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
        _137 = mem[_131 + 256]
        mem[ceil32(return_data.size) + 288 len floor32(mem[_131 + 256])] = mem[_131 + 288 len floor32(mem[_131 + 256])]
        require 1 < mem[ceil32(return_data.size) + 256]
        _159 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _137) + ceil32(return_data.size) + 288] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[(32 * _137) + ceil32(return_data.size) + 292] = _159
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
             gas gas_remaining wei
            args _159
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 1 < mem[ceil32(return_data.size) + 256]
        call msg.sender with:
           value mem[ceil32(return_data.size) + 320] wei
             gas 2300 * is_zero(value) wei
    else:
        if ext_call.return_data[0] > 0:
            revert with 0, ''
        require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
        call ????????????????????????????????????????.receipt(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args 0x1092e4f72a9d7a28418351d029e273906af247, address(this.address), -ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
        call ????????????????????????????????????????.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0x5ff2b0db69458a0750badebc4f9e13add608c7f, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        if block.timestamp + 1800 < block.timestamp:
            revert with 0, 'add: +'
        mem[320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[324] = 0
        mem[356] = 0
        mem[420] = this.address
        mem[452] = block.timestamp + 1800
        mem[388] = 160
        mem[484] = 2
        mem[516 len 0] = None
        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(this.address), block.timestamp + 1800, 2, mem[516 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _133 = mem[320 len 4], 0
        require mem[320 len 4], 0 <= 4294967296
        require mem[320 len 4], 0 + 32 <= return_data.size
        require mem[mem[320 len 4], 0 + 320] <= 4294967296 and mem[320 len 4], 0 + (32 * mem[mem[320 len 4], 0 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 0 + 320]
        _138 = mem[_133 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_133 + 320])] = mem[_133 + 352 len floor32(mem[_133 + 320])]
        require 1 < mem[ceil32(return_data.size) + 320]
        _162 = mem[ceil32(return_data.size) + 384]
        mem[(32 * _138) + ceil32(return_data.size) + 352] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[(32 * _138) + ceil32(return_data.size) + 356] = _162
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
             gas gas_remaining wei
            args _162
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 1 < mem[ceil32(return_data.size) + 320]
        call msg.sender with:
           value mem[ceil32(return_data.size) + 384] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function task(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[164] = 0
    mem[196] = 0
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    call ????????????????????????????????????????.isMinKeeper(address rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), 100 * 10^18, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x974d6574614b6565703372623a3a69734b65657065723a206b6565706572206973206e6f7420726567697374657265,
                    0
    mem[132] = 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = arg1
    require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
    staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.jobs(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'MetaKeep3rb::work: invalid job'
    mem[96 len arg2.length] = arg2[all]
    call arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'MetaKeep3rb::work: job failure'
        require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
        staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args this.address, 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 6
        mem[128] = 0x7375623a202d0000000000000000000000000000000000000000000000000000
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, ''
        require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
        staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0:
            require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
            call ????????????????????????????????????????.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x5ff2b0db69458a0750badebc4f9e13add608c7f, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[224] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'add: +'
            mem[256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[260] = 0
            mem[292] = 0
            mem[356] = this.address
            mem[388] = block.timestamp + 1800
            mem[324] = 160
            mem[420] = 2
            mem[452 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(this.address), block.timestamp + 1800, 2, mem[452 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 256
            require return_data.size >= 32
            _242 = mem[256 len 4], 0
            require mem[256 len 4], 0 <= 4294967296
            require mem[256 len 4], 0 + 32 <= return_data.size
            require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
            _254 = mem[_242 + 256]
            mem[ceil32(return_data.size) + 288 len floor32(mem[_242 + 256])] = mem[_242 + 288 len floor32(mem[_242 + 256])]
            require 1 < mem[ceil32(return_data.size) + 256]
            _298 = mem[ceil32(return_data.size) + 320]
            mem[(32 * _254) + ceil32(return_data.size) + 288] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[(32 * _254) + ceil32(return_data.size) + 292] = _298
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _298
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 1 < mem[ceil32(return_data.size) + 256]
            call msg.sender with:
               value mem[ceil32(return_data.size) + 320] wei
                 gas 2300 * is_zero(value) wei
        else:
            if ext_call.return_data[0] > 0:
                revert with 0, ''
            require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
            call ????????????????????????????????????????.receipt(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args 0x1092e4f72a9d7a28418351d029e273906af247, address(this.address), -ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
            call ????????????????????????????????????????.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x5ff2b0db69458a0750badebc4f9e13add608c7f, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[288] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'add: +'
            mem[320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[324] = 0
            mem[356] = 0
            mem[420] = this.address
            mem[452] = block.timestamp + 1800
            mem[388] = 160
            mem[484] = 2
            mem[516 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(this.address), block.timestamp + 1800, 2, mem[516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _244 = mem[320 len 4], 0
            require mem[320 len 4], 0 <= 4294967296
            require mem[320 len 4], 0 + 32 <= return_data.size
            require mem[mem[320 len 4], 0 + 320] <= 4294967296 and mem[320 len 4], 0 + (32 * mem[mem[320 len 4], 0 + 320]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 0 + 320]
            _255 = mem[_244 + 320]
            mem[ceil32(return_data.size) + 352 len floor32(mem[_244 + 320])] = mem[_244 + 352 len floor32(mem[_244 + 320])]
            require 1 < mem[ceil32(return_data.size) + 320]
            _301 = mem[ceil32(return_data.size) + 384]
            mem[(32 * _255) + ceil32(return_data.size) + 352] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[(32 * _255) + ceil32(return_data.size) + 356] = _301
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _301
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 1 < mem[ceil32(return_data.size) + 320]
            call msg.sender with:
               value mem[ceil32(return_data.size) + 384] wei
                 gas 2300 * is_zero(value) wei
    else:
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'MetaKeep3rb::work: job failure'
        require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
        staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args this.address, 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 97] = 6
        mem[ceil32(return_data.size) + 129] = 0x7375623a202d0000000000000000000000000000000000000000000000000000
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, ''
        require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
        staticcall 0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0:
            require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
            call ????????????????????????????????????????.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x5ff2b0db69458a0750badebc4f9e13add608c7f, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 225] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'add: +'
            mem[ceil32(return_data.size) + 257] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 261] = 0
            mem[ceil32(return_data.size) + 293] = 0
            mem[ceil32(return_data.size) + 357] = this.address
            mem[ceil32(return_data.size) + 389] = block.timestamp + 1800
            mem[ceil32(return_data.size) + 325] = 160
            mem[ceil32(return_data.size) + 421] = 2
            mem[ceil32(return_data.size) + 453 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(this.address), block.timestamp + 1800, 2, mem[ceil32(return_data.size) + 453 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 257 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 257
            require return_data.size >= 32
            _246 = mem[ceil32(return_data.size) + 257 len 4], 0
            require mem[ceil32(return_data.size) + 257 len 4], 0 <= 4294967296
            require mem[ceil32(return_data.size) + 257 len 4], 0 + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 257 len 4], 0 + 257] <= 4294967296 and mem[ceil32(return_data.size) + 257 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 257 len 4], 0 + 257]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 257] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 257 len 4], 0 + 257]
            _256 = mem[ceil32(return_data.size) + _246 + 257]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 289 len floor32(mem[ceil32(return_data.size) + _246 + 257])] = mem[ceil32(return_data.size) + _246 + 289 len floor32(mem[ceil32(return_data.size) + _246 + 257])]
            require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 257]
            _304 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 321]
            mem[(32 * _256) + ceil32(return_data.size) + ceil32(return_data.size) + 289] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[(32 * _256) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _304
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _304
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 257]
            call msg.sender with:
               value mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] wei
                 gas 2300 * is_zero(value) wei
        else:
            if ext_call.return_data[0] > 0:
                revert with 0, ''
            require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
            call ????????????????????????????????????????.receipt(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args 0x1092e4f72a9d7a28418351d029e273906af247, address(this.address), -ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xfe0000000000000000000000001092e4f72a9d7a28418351d029e273906af247)
            call ????????????????????????????????????????.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x5ff2b0db69458a0750badebc4f9e13add608c7f, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 289] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'add: +'
            mem[ceil32(return_data.size) + 321] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 325] = 0
            mem[ceil32(return_data.size) + 357] = 0
            mem[ceil32(return_data.size) + 421] = this.address
            mem[ceil32(return_data.size) + 453] = block.timestamp + 1800
            mem[ceil32(return_data.size) + 389] = 160
            mem[ceil32(return_data.size) + 485] = 2
            mem[ceil32(return_data.size) + 517 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(this.address), block.timestamp + 1800, 2, mem[ceil32(return_data.size) + 517 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
            require return_data.size >= 32
            _248 = mem[ceil32(return_data.size) + 321 len 4], 0
            require mem[ceil32(return_data.size) + 321 len 4], 0 <= 4294967296
            require mem[ceil32(return_data.size) + 321 len 4], 0 + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], 0 + 321] <= 4294967296 and mem[ceil32(return_data.size) + 321 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], 0 + 321]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], 0 + 321]
            _257 = mem[ceil32(return_data.size) + _248 + 321]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len floor32(mem[ceil32(return_data.size) + _248 + 321])] = mem[ceil32(return_data.size) + _248 + 353 len floor32(mem[ceil32(return_data.size) + _248 + 321])]
            require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 321]
            _307 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 385]
            mem[(32 * _257) + ceil32(return_data.size) + ceil32(return_data.size) + 353] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[(32 * _257) + ceil32(return_data.size) + ceil32(return_data.size) + 357] = _307
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args _307
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 321]
            call msg.sender with:
               value mem[ceil32(return_data.size) + ceil32(return_data.size) + 385] wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
