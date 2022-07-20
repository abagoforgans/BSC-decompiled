contract main {




// =====================  Runtime code  =====================


const depositAddress = 0xd5ce6c6808cc67dbff6c1274da4e16f67ef65fae

const fromAddress = 0x58d16473f5cfbd3970e624e9aeab5528af2d9a40

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c


function _fallback() payable {
    revert
}

function send() payable {
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args 0x58d16473f5cfbd3970e624e9aeab5528af2d9a40
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
         gas gas_remaining wei
        args 0x58d16473f5cfbd3970e624e9aeab5528af2d9a40, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0xd5ce6c6808cc67dbff6c1274da4e16f67ef65fae with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
}



}
