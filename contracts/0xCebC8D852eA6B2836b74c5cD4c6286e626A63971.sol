contract main {




// =====================  Runtime code  =====================


const sub_6ae76d4f(?) = 0x73feaa1ee314f8c655e354234017be2193c9e24e

const mc = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82

const getAdd = address(sha3(0, address(this.address), tx.origin << 96, sha3(code.data[3102 len 3987])))

const sb = 0x9cf7bc57584b7998236eff51b98a168dcea9b0


address exAddress;
uint256 key;
address owner;

function key() payable {
    return key
}

function owner() payable {
    return owner
}

function ex() payable {
    return exAddress
}

function _fallback() payable {
    revert
}

function sub_ccd8cbaf(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only factory'
    exAddress = arg1
}

function run(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    call arg1 with:
       funct uint32(arg3)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
}

function add() payable {
    if not uint32(ext_code.size(address(sha3(0, this.address, msg.sender, sha3(code.data[3102 len 3987]))))):
        create2 contract with 0 wei
                        salt: msg.sender
                        code: code.data[3102 len 3987]
        call address(create2.new_address).0x1 with:
             gas gas_remaining wei
            args Mask(1504, -1280, 310925036, 0xe09fabb73bd3ade0a17ecc3, 2659307138, 0x73feaa1ee314f8c655e354234017be2193c9e24e, 0x9cf7bc57584b7998236eff51b98a168dcea9b0, key, 1, 0) << 1280, mem[4665 len 4]
}

function remove() payable {
    if owner != msg.sender:
        revert with 0, 'only factory'
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    call 0x73feaa1ee314f8c655e354234017be2193c9e24e.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
