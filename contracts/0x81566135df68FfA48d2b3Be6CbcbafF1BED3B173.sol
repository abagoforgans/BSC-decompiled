contract main {




// =====================  Runtime code  =====================


const name = 'bDollar Vote Power'

const symbol = 'sBDO VP'


address voteProxyAddress;
address operatorAddress;

function voteProxy() payable {
    return voteProxyAddress
}

function operator() payable {
    return operatorAddress
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    if not voteProxyAddress:
        return 0
    require ext_code.size(voteProxyAddress)
    staticcall voteProxyAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function decimals() payable {
    if not voteProxyAddress:
        return 0
    require ext_code.size(voteProxyAddress)
    staticcall voteProxyAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe446f6c6c6172566f746550726f78793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    operatorAddress = arg1
}

function setVoteProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe446f6c6c6172566f746550726f78793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    voteProxyAddress = arg1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not voteProxyAddress:
        return 0
    require ext_code.size(voteProxyAddress)
    staticcall voteProxyAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe446f6c6c6172566f746550726f78793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
