contract main {




// =====================  Runtime code  =====================


const sub_00487b56(?) = 0x9dab4a72f4d01957d5a728361b58dfb9da5e3320

const name = 'wrapped bones #3'

const cakeVault = 0x55e8046339730992022776cdc1d4c7426def05e4

const decimals = 18

const governance = 0x7ce91cea92e6934ec2aaa577c94a13e27c8a4f21

const sub_5e43c9dc(?) = 0x57d3ac2c209d9de02a80700c1d1c2ca4bc029b04

const symbol = ''

const sub_d88ad887(?) = 0x8426874d46f90e5e527604fa5e3e30486770eb3


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address stor3;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function unwrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(0x8426874d46f90e5e527604fa5e3e30486770eb3)
        call 0x08426874d46f90e5e527604fa5e3e30486770eb3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[260 len arg3.length] = arg3[all]
    mem[arg3.length + 260] = 0
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, this.address, 128, arg3.length, arg3[all], mem[arg3.length + 260 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function deposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8426874d46f90e5e527604fa5e3e30486770eb3)
    call 0x08426874d46f90e5e527604fa5e3e30486770eb3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8426874d46f90e5e527604fa5e3e30486770eb3)
    staticcall 0x8426874d46f90e5e527604fa5e3e30486770eb3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalSupply <= ext_call.return_data[0]
    require ext_call.return_data[0] - totalSupply + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] = ext_call.return_data[0] - totalSupply + balanceOf[address(arg2)]
    require ext_call.return_data[0] >= totalSupply
    totalSupply = ext_call.return_data[0]
    emit Transfer((ext_call.return_data[0] - totalSupply), 0, arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 0x55e8046339730992022776cdc1d4c7426def05e4 == msg.sender:
        require arg2 <= totalSupply
        totalSupply -= arg2
        require arg2 <= balanceOf[0x55e8046339730992022776cdc1d4c7426def05e4]
        balanceOf[0x55e8046339730992022776cdc1d4c7426def05e4] -= arg2
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      arg2,
        emit 0x55e80463: arg2
        emit 0x0: arg2
        require ext_code.size(0x57d3ac2c209d9de02a80700c1d1c2ca4bc029b04)
        call 0x57d3ac2c209d9de02a80700c1d1c2ca4bc029b04.depositFor(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender != 0x9dab4a72f4d01957d5a728361b58dfb9da5e3320:
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require arg2 <= totalSupply
            totalSupply -= arg2
            require arg2 <= balanceOf[0x9dab4a72f4d01957d5a728361b58dfb9da5e3320]
            balanceOf[0x9dab4a72f4d01957d5a728361b58dfb9da5e3320] -= arg2
            emit Transfer(address arg1, address arg2, uint256 arg3):
                          arg2,
            emit 0x9dab4a72: arg2
            emit 0x0: arg2
            require ext_code.size(0x57d3ac2c209d9de02a80700c1d1c2ca4bc029b04)
            call 0x57d3ac2c209d9de02a80700c1d1c2ca4bc029b04.depositFor(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_8ea2b9d9(?) payable {
    require msg.sender == stor3
    require ext_code.size(0x7ce91cea92e6934ec2aaa577c94a13e27c8a4f21)
    call 0x7ce91cea92e6934ec2aaa577c94a13e27c8a4f21.0xdfcabf65 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8426874d46f90e5e527604fa5e3e30486770eb3)
    staticcall 0x8426874d46f90e5e527604fa5e3e30486770eb3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalSupply <= ext_call.return_data[0]
    require (ext_call.return_data[0] - totalSupply / 2) + balanceOf[0x55e8046339730992022776cdc1d4c7426def05e4] >= balanceOf[0x55e8046339730992022776cdc1d4c7426def05e4]
    balanceOf[0x55e8046339730992022776cdc1d4c7426def05e4] += ext_call.return_data[0] - totalSupply / 2
    require (ext_call.return_data[0] - totalSupply / 2) + totalSupply >= totalSupply
    totalSupply += ext_call.return_data[0] - totalSupply / 2
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  (ext_call.return_data[0] - totalSupply / 2),
    emit 0x0: (ext_call.return_data[0] - totalSupply / 2)
    emit 0x55e80463: (ext_call.return_data[0] - totalSupply / 2)
    require (ext_call.return_data[0] - totalSupply / 2) + balanceOf[0x9dab4a72f4d01957d5a728361b58dfb9da5e3320] >= balanceOf[0x9dab4a72f4d01957d5a728361b58dfb9da5e3320]
    balanceOf[0x9dab4a72f4d01957d5a728361b58dfb9da5e3320] += ext_call.return_data[0] - totalSupply / 2
    require (ext_call.return_data[0] - totalSupply / 2) + totalSupply >= totalSupply
    totalSupply += ext_call.return_data[0] - totalSupply / 2
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  (ext_call.return_data[0] - totalSupply / 2),
    emit 0x0: (ext_call.return_data[0] - totalSupply / 2)
    emit 0x9dab4a72: (ext_call.return_data[0] - totalSupply / 2)
}



}
