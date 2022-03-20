contract main {




// =====================  Runtime code  =====================


mapping of struct weight;
mapping of uint256 proposals;
address governorAddress;
address proposerAddress;
uint256 value;
uint256 endBlockNumber;
uint8 stor6;
array of uint256 subject;
array of uint256 content;
uint256 total;
uint256 createTime;
address factoryAddress;
uint256 storD9D1;

function proposals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return proposals[arg1]
}

function subject() payable {
    return subject[0 len subject.length]
}

function governor() payable {
    return governorAddress
}

function ended() payable {
    return bool(stor6)
}

function total() payable {
    return total
}

function value() payable {
    return value
}

function createTime() payable {
    return createTime
}

function content() payable {
    return content[0 len content.length]
}

function proposer() payable {
    return proposerAddress
}

function endBlockNumber() payable {
    return endBlockNumber
}

function factory() payable {
    return factoryAddress
}

function weight(address arg1) payable {
    require calldata.size - 4 >= 32
    return weight[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function result() payable {
    if proposals[1] > storD9D1:
        return 1
    else:
        return 0
}

function winningProposal() payable {
    if proposals[1] > storD9D1:
        return 1
    if proposals[1] >= storD9D1:
        return 0
    return 2
}

function voters(address arg1) payable {
    require calldata.size - 4 >= 32
    return weight[arg1].field_0, bool(weight[arg1].field_256), weight[arg1].field_256, weight[arg1].field_512
}

function end() payable {
    if governorAddress != msg.sender:
        revert with 0, 'DemaxBallot: FORBIDDEN'
    if block.number < endBlockNumber:
        revert with 0, 'ballot not yet ended'
    if stor6:
        revert with 0, 'end has already been called'
    stor6 = 1
    if proposals[1] > storD9D1:
        return 1
    else:
        return 0
}

function sub_80619b61(?) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    if factoryAddress != msg.sender:
        revert with 0, 'DemaxBallot: FORBIDDEN'
    proposerAddress = arg1
    value = arg2
    endBlockNumber = arg3
    governorAddress = arg4
    subject[] = Array(len=arg5.length, data=arg5[all])
    content[] = Array(len=arg6.length, data=arg6[all])
}

function vote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number >= endBlockNumber:
        revert with 0, 'Ballot is ended'
    if weight[address(msg.sender)].field_256:
        revert with 0, 'You already voted'
    require ext_code.size(governorAddress)
    staticcall governorAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    weight[address(msg.sender)].field_0 += ext_call.return_data[0]
    if not weight[address(msg.sender)].field_0 + ext_call.return_data[0]:
        revert with 0, 'Has no right to vote'
    if arg1 != 1:
        if arg1 != 2:
            revert with 0, 'Only vote 1 or 2'
    weight[address(msg.sender)].field_256 = 1
    weight[address(msg.sender)].field_512 = arg1
    proposals[arg1] += weight[address(msg.sender)].field_0
    total += weight[address(msg.sender)].field_0
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number >= endBlockNumber:
        revert with 0, 'Ballot is ended'
    if weight[address(msg.sender)].field_256:
        revert with 0, 'You already voted'
    require ext_code.size(governorAddress)
    staticcall governorAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    weight[address(msg.sender)].field_0 += ext_call.return_data[0]
    if not weight[address(msg.sender)].field_0 + ext_call.return_data[0]:
        revert with 0, 'Has no right to vote'
    if msg.sender == arg1:
        revert with 0, 'Self-delegation is disallowed'
    s = arg1
    while weight[address(arg1)].field_264:
        if weight[address(s)].field_264 == msg.sender:
            revert with 0, 'Found loop in delegation'
        mem[0] = weight[address(s)].field_264
        mem[32] = 0
        s = weight[address(s)].field_264
        continue 
    weight[address(msg.sender)].field_256 = 1
    weight[address(msg.sender)].field_264 = address(s)
    weight[address(msg.sender)].field_512 = 0
    weight[address(msg.sender)].field_0 = 0
    if not weight[address(s)].field_256:
        weight[address(s)].field_0 += weight[address(msg.sender)].field_0
    else:
        proposals[stor0[address(s)].field_512] += weight[address(msg.sender)].field_0
        total += weight[address(msg.sender)].field_0
}



}
