contract main {




// =====================  Runtime code  =====================


const sub_6ae76d4f(?) = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82

const mc = 0x73feaa1ee314f8c655e354234017be2193c9e24e

const getAdd = address(sha3(0, address(this.address), tx.origin << 96, sha3(code.data[4137 len 4245])))

const sb = 0x9cf7bc57584b7998236eff51b98a168dcea9b0


address exAddress;
uint256 key;
address stor2;
uint32 stor3;
uint256 stor3;

function key() payable {
    return key
}

function ex() payable {
    return exAddress
}

function _fallback() payable {
    revert
}

function sub_ccd8cbaf(?) payable {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'only factory'
    exAddress = arg1
}

function sub_fe9b9fa1(?) payable {
    require calldata.size - 4 >= 96
    call arg1 with:
       funct arg3
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
}

function sub_eb803e23(?) payable {
    require calldata.size - 4 >= 32
    call address(sha3(0, this.address, tx.origin, sha3(code.data[4137 len 4245]))) with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[4729 len 4]
    uint256(stor3)++
}

function add() payable {
    if not uint32(ext_code.size(address(sha3(0, this.address, msg.sender, sha3(code.data[4137 len 4245]))))):
        create2 contract with 0 wei
                        salt: msg.sender
                        code: code.data[4137 len 4245]
        call address(create2.new_address).0x1 with:
             gas gas_remaining wei
            args Mask(1504, -1280, 310925036, 0x73feaa1ee314f8c655e35423, 2479481422, 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82, 0x9cf7bc57584b7998236eff51b98a168dcea9b0, key, 1, 0) << 1280, mem[4921 len 4]
}

function remove() payable {
    if stor2 != msg.sender:
        revert with 0, 'only factory'
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function send(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'only factory'
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
