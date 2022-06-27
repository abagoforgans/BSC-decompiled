contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function foo() payable {
    call 0x1119a89a0df4cfa01da6fca5a2979f2de0fab9a1 with:
       value 10^18 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
