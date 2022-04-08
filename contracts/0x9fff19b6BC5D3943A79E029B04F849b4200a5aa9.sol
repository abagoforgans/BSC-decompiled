contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address stor1;

function _fallback() payable {
    revert
}

function checkWinninProposalWithReturnValue() payable {
    require ext_code.size(stor1)
    staticcall stor1.winningProposal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not ext_call.return_data[0]
}

function beforeAll() payable {
    stor0.length++
    stor0[stor0.length].field_0 = 'candidate1'
    if not stor0.length:
        create contract with 0 wei
                        code: code.data[1413 len 3572], 32, stor0.length
    else:
        mem[3732] = uint256(stor0.field_0)
        idx = 3732
        s = 0
        while (32 * stor0.length) + 3732 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        create contract with 0 wei
                        code: code.data[1413 len 3572], 32, stor0.length, mem[3732 len 32 * stor0.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = address(create.new_address)
}

function checkWinningProposal() payable {
    require ext_code.size(stor1)
    call stor1.vote(uint256 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.winningProposal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe2f3b5a737438953a5846fccdf30b5f43b397bea)
    delegate 0xe2f3b5a737438953a5846fccdf30b5f43b397bea.equal(uint256 rg1, uint256 rg2, string rg3) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], 0, 96, 50, code.data[4985 len 50], mem[278 len 14]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.winnerName() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe2f3b5a737438953a5846fccdf30b5f43b397bea)
    delegate 0xe2f3b5a737438953a5846fccdf30b5f43b397bea.equal(bytes32 rg1, bytes32 rg2, string rg3) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], 'candidate1', 96, 36, code.data[5035 len 36], code.data[5021 len 14], mem[278 len 14]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
