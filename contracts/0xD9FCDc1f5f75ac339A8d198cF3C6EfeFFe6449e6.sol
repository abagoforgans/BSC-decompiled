contract main {




// =====================  Runtime code  =====================


const lotto = ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]))

const sub_b91e9058(?) = 0xe91db8abe66613571c05471bfc358f15dafbc4db

const sub_be6dca1b(?) = (100 * 10^18 * ext_call.return_data[0])

const sub_eeb86bb8(?) = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)

const sub_f70e18cd(?) = 100 * 10^18


uint256 stor0;

function _fallback() payable {
    revert
}

function init() payable {
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    call 0x55d398326f99059ff775485246999027b3197955.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfd5840cd36d94d7229439859c0112a4185bc0255, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function mint() payable {
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 100 * 10^18:
        revert with 0, 'No allowance'
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 100 * 10^18:
        revert with 0, 'Low balance'
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    call 0x55d398326f99059ff775485246999027b3197955.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xfd5840cd36d94d7229439859c0112a4185bc0255)
    call 0xfd5840cd36d94d7229439859c0112a4185bc0255.0xa0712d68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xe91db8abe66613571c05471bfc358f15dafbc4db)
    call 0xe91db8abe66613571c05471bfc358f15dafbc4db.mint(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Mint(msg.sender);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xe91db8abe66613571c05471bfc358f15dafbc4db)
    staticcall 0xe91db8abe66613571c05471bfc358f15dafbc4db.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You are not the owner, faggot!!'
    require ext_code.size(0xe91db8abe66613571c05471bfc358f15dafbc4db)
    call 0xe91db8abe66613571c05471bfc358f15dafbc4db.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NFT not burned.'
    require ext_code.size(0xfd5840cd36d94d7229439859c0112a4185bc0255)
    staticcall 0xfd5840cd36d94d7229439859c0112a4185bc0255.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xfd5840cd36d94d7229439859c0112a4185bc0255)
    call 0xfd5840cd36d94d7229439859c0112a4185bc0255.redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    call 0x55d398326f99059ff775485246999027b3197955.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xfd5840cd36d94d7229439859c0112a4185bc0255)
    call 0xfd5840cd36d94d7229439859c0112a4185bc0255.0xa0712d68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function run() payable {
    require ext_code.size(0x7b1d5e149f22d68a942eb29ddd7eac468848eb0c)
    staticcall 0x7b1d5e149f22d68a942eb29ddd7eac468848eb0c.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Prevent Random Number Attack'
    if stor0 == -1:
        revert with 'NH{q', 17
    stor0++
    require ext_code.size(0xe91db8abe66613571c05471bfc358f15dafbc4db)
    staticcall 0xe91db8abe66613571c05471bfc358f15dafbc4db.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    mem[(2 * ceil32(return_data.size)) + 260] = sha3(block.timestamp, block.difficulty, block.number, stor0) % ext_call.return_data[0]
    require ext_code.size(0xe91db8abe66613571c05471bfc358f15dafbc4db)
    staticcall 0xe91db8abe66613571c05471bfc358f15dafbc4db.tokenByIndex(uint256 arg1) with:
            gas gas_remaining wei
           args (sha3(block.timestamp, block.difficulty, block.number, stor0) % ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    require ext_code.size(0xe91db8abe66613571c05471bfc358f15dafbc4db)
    staticcall 0xe91db8abe66613571c05471bfc358f15dafbc4db.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args mem[(4 * ceil32(return_data.size)) + 260 len (5 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 256] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xe91db8abe66613571c05471bfc358f15dafbc4db)
    staticcall 0xe91db8abe66613571c05471bfc358f15dafbc4db.0x18160ddd with:
            gas gas_remaining wei
           args mem[(4 * ceil32(return_data.size)) + 260 len 7 * ceil32(return_data.size)]
    mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 100 * 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(8 * ceil32(return_data.size)) + 260] = this.address
    require ext_code.size(0xfd5840cd36d94d7229439859c0112a4185bc0255)
    staticcall 0xfd5840cd36d94d7229439859c0112a4185bc0255.0x70a08231 with:
            gas gas_remaining wei
           args mem[(8 * ceil32(return_data.size)) + 260 len (13 * ceil32(return_data.size)) + 32]
    mem[(8 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(9 * ceil32(return_data.size)) + 256] = 0x182df0f500000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xfd5840cd36d94d7229439859c0112a4185bc0255)
    staticcall 0xfd5840cd36d94d7229439859c0112a4185bc0255.exchangeRateStored() with:
            gas gas_remaining wei
           args mem[(9 * ceil32(return_data.size)) + 260 len 4 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 100 * 10^18 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) / 100 and 2 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) / 100:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) > 10000:
        mem[(10 * ceil32(return_data.size)) + 260] = this.address
        require ext_code.size(0xfd5840cd36d94d7229439859c0112a4185bc0255)
        staticcall 0xfd5840cd36d94d7229439859c0112a4185bc0255.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address), mem[(10 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(12 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(0xfd5840cd36d94d7229439859c0112a4185bc0255)
        call 0xfd5840cd36d94d7229439859c0112a4185bc0255.redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 292 len 20 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) / 100:
            revert with 'NH{q', 17
        mem[(13 * ceil32(return_data.size)) + 260] = address(ext_call.return_data[0])
        mem[(13 * ceil32(return_data.size)) + 292] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) - (2 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) / 100)
        require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
        call 0x55d398326f99059ff775485246999027b3197955.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) - (2 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) / 100), mem[(13 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(14 * ceil32(return_data.size)) + 256] = 0x8da5cb5b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(0x7b1d5e149f22d68a942eb29ddd7eac468848eb0c)
        staticcall 0x7b1d5e149f22d68a942eb29ddd7eac468848eb0c.0x8da5cb5b with:
                gas gas_remaining wei
               args mem[(14 * ceil32(return_data.size)) + 260 len 4 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(15 * ceil32(return_data.size)) + 260] = address(ext_call.return_data[0])
        mem[(15 * ceil32(return_data.size)) + 292] = 2 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) / 100
        require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
        call 0x55d398326f99059ff775485246999027b3197955.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 2 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) / 100, mem[(15 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
        mem[(15 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(16 * ceil32(return_data.size)) + 260] = this.address
        require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
        staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
                gas gas_remaining wei
               args mem[(16 * ceil32(return_data.size)) + 260 len (5 * ceil32(return_data.size)) + 32]
        mem[(16 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(17 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(0xfd5840cd36d94d7229439859c0112a4185bc0255)
        call 0xfd5840cd36d94d7229439859c0112a4185bc0255.0xa0712d68 with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(17 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) < 2 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) / 100:
            revert with 'NH{q', 17
        emit Winner(address arg1, uint256 arg2):
                    (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) - (2 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (100 * 10^18 * ext_call.return_data[0]) / 100),
                    mem[(18 * ceil32(return_data.size)) + 288 len 5 * ceil32(return_data.size)],
                    address(ext_call.return_data[0]),
}



}
