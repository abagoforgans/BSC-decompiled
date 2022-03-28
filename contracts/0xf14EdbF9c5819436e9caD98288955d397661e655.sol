contract main {




// =====================  Runtime code  =====================


#
#  - fixFailedMessage(bytes32 arg1)
#  - transferToken(address arg1, uint256 arg2)
#  - initialize(address arg1, address arg2, address arg3, uint256 arg4, address arg5)
#
const getBridgeMode = Mask(32, 224, sha3(Mask(112, 32, 'nft-to-nft-amb') >> 32))

const getBridgeInterfacesVersion = 1, 0, 0


mapping of uint256 deployedAtBlock;
mapping of address mediatorContractOnOtherSide;
mapping of uint8 stor4;

function isInitialized() {
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}

function mediatorContractOnOtherSide() {
    return mediatorContractOnOtherSide[uint128('mediatorContract', 0)]
}

function owner() {
    return mediatorContractOnOtherSide['owner']
}

function sub_947236d5(?) {
    return mediatorContractOnOtherSide['erc1155token']
}

function messageHashFixed(bytes32 arg1) {
    return bool(stor4['messageHashFixed'][uint128(arg1)][uint128(arg1)])
}

function deployedAtBlock() {
    return deployedAtBlock[Mask(120, 0, 'deployedAtBlock', 0)]
}

function requestGasLimit() {
    return deployedAtBlock['requestGasLimit']
}

function bridgeContract() {
    return mediatorContractOnOtherSide['bridgeContract']
}

function _fallback() payable {
    revert
}

function setMediatorContractOnOtherSide(address arg1) {
    require msg.sender == mediatorContractOnOtherSide['owner']
    mediatorContractOnOtherSide['mediatorContract'] = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == mediatorContractOnOtherSide['owner']
    require arg1
    emit OwnershipTransferred(mediatorContractOnOtherSide['owner'], address(arg1));
    mediatorContractOnOtherSide['owner'] = arg1
}

function setBridgeContract(address arg1) {
    require msg.sender == mediatorContractOnOtherSide['owner']
    if ext_code.size(arg1) <= 0:
        revert with 0, 'AMBMediator: _bridgeContract is not contract.'
    mediatorContractOnOtherSide[Mask(112, 0, 'bridgeContract', 0)] = arg1
}

function setRequestGasLimit(uint256 arg1) {
    require msg.sender == mediatorContractOnOtherSide['owner']
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].maxGasPerTx() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'AMBMediator: _requestGasLimit is greater than maxGasPerTx of bridgeContract'
    deployedAtBlock[Mask(120, 0, 'requestGasLimit', 0)] = arg1
}

function handleBridgedTokens(address arg1, uint256 arg2, bytes arg3, bytes32 arg4) {
    if mediatorContractOnOtherSide['bridgeContract'] != msg.sender:
        revert with 0, 'HomeMediator1155:: msg.sender is not equal bridgeContract'
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].messageSender() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != mediatorContractOnOtherSide[uint128('mediatorContract', 0)]:
        revert with 0, 'HomeMediator1155:: messageSender is not equal mediatorContractOnOtherSide'
    require ext_code.size(mediatorContractOnOtherSide['erc1155token'])
    call mediatorContractOnOtherSide['erc1155token'].mint(uint256 rg1, address rg2) with:
         gas gas_remaining wei
        args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimTokens(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.0x6fde8202 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            create contract with ('balance', 'address') wei
                            code: code.data[11354 len 33], arg2
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[132] = arg2
        mem[164] = ext_call.return_data[0]
        mem[96] = 68
        mem[64] = 196
        mem[132 len 28] = address(arg2) << 64
        mem[128 len 4] = unknown_0xa9059cbb(?????)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2) << 64, 0, ext_call.return_data[0]
        mem[0] = ext_call.return_data[0]
        require ext_call.success
        if mem[ext_call.return_data[0]] > 0:
            require ext_call.return_data[0]
}

function requestFailedMessageFix(bytes32 arg1) {
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].messageCallStatus(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'BasicMediator1155: messageCallStatus of bridgeConrtact is true.'
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].failedMessageReceiver(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'BasicMediator1155: failedMessageReceiver should be same as this address.'
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].failedMessageSender(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != mediatorContractOnOtherSide[uint128('mediatorContract', 0)]:
        revert with 0, 'BasicMediator1155: failedMessageSender of bridgeContract should be same as mediatorContractOnOtherSide.'
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].failedMessageDataHash(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mediatorContractOnOtherSide['bridgeContract'])
    call mediatorContractOnOtherSide['bridgeContract'].requireToPassMessage(address rg1, bytes rg2, uint256 rg3) with:
         gas gas_remaining wei
        args mediatorContractOnOtherSide[uint128('mediatorContract', 0)], 96, deployedAtBlock['requestGasLimit'], 36, fixFailedMessage(bytes32 rg1), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0, Mask(32, -256, fixFailedMessage(bytes32 rg1), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0) << 256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
