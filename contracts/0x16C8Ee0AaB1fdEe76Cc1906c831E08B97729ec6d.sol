contract main {




// =====================  Runtime code  =====================


const getBlockNumber = block.number

const venusInitialIndex = 1000000000000000000 * 10^18

const getVAIAddress = 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7


address adminAddress;
address pendingAdminAddress;
address sub_003b5884Address;
address sub_b06bb426Address;
address comptrollerAddress;
uint32 stor5;
uint32 stor5; offset 224
uint128 stor5; offset 32
uint128 stor5; offset 120
uint256 stor5;
uint8 sub_60c954ef;
mapping of uint256 sub_24650602;

function sub_003b5884(?) payable {
    return sub_003b5884Address
}

function sub_24650602(?) payable {
    require calldata.size - 4 >= 32
    return sub_24650602[arg1]
}

function pendingAdmin() payable {
    return pendingAdminAddress
}

function comptroller() payable {
    return comptrollerAddress
}

function sub_60c954ef(?) payable {
    return bool(sub_60c954ef)
}

function sub_b06bb426(?) payable {
    return sub_b06bb426Address
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_e44e6168(?) payable {
    return Mask(224, 0, stor5.field_0), uint32(stor5.field_224)
}

function _setComptroller(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 2, 0);
        return 1
    comptrollerAddress = arg1
    emit NewComptroller(comptrollerAddress, arg1);
    return 0
}

function _initializeVenusVAIState(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 2, 0);
        return 1
    if not sub_60c954ef:
        sub_60c954ef = 1
        if not arg1:
            if block.number >= 4294967296:
                revert with 0, 'block number overflows'
            uint32(stor5.field_0) = 0
            Mask(88, 0, stor5.field_32) = 232830643653869628906250000
            Mask(104, 0, stor5.field_120) = 0
            uint32(stor5.field_224) = uint32(block.number)
        else:
            if arg1 >= 4294967296:
                revert with 0, 'block number overflows'
            uint32(stor5.field_0) = 0
            Mask(88, 0, stor5.field_32) = 232830643653869628906250000
            Mask(104, 0, stor5.field_120) = 0
            uint32(stor5.field_224) = uint32(arg1)
        return 0
    else:
        return 0
}

function _become(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x446f6e6c7920756e6974726f6c6c65722061646d696e2063616e206368616e676520627261696e,
                    mem[203 len 25]
    require ext_code.size(arg1)
    call arg1._acceptImplementation() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'change not authorized'
}

function updateVenusVAIMintIndex() payable {
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.venusVAIRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint32(stor5.field_224) > block.number:
        revert with 0, 'subtraction underflow'
    if block.number - uint32(stor5.field_224) <= 0:
        if block.number - uint32(stor5.field_224):
            if block.number >= 4294967296:
                revert with 0, 'block number overflows'
            uint32(stor5.field_224) = uint32(block.number)
    else:
        if ext_call.return_data[0] <= 0:
            if block.number - uint32(stor5.field_224):
                if block.number >= 4294967296:
                    revert with 0, 'block number overflows'
                uint32(stor5.field_224) = uint32(block.number)
        else:
            require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
            staticcall 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not block.number - uint32(stor5.field_224):
                if ext_call.return_data[0] <= 0:
                    if Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                        revert with 0, 'addition overflow'
                    if Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'new index overflows'
                    if block.number >= 4294967296:
                        revert with 0, 'block number overflows'
                    Mask(224, 0, stor5.field_0) = Mask(224, 0, stor5.field_0)
                else:
                    if not ext_call.return_data[0]:
                        revert with 0, 'divide by zero'
                    if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                        revert with 0, 'addition overflow'
                    if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'new index overflows'
                    if block.number >= 4294967296:
                        revert with 0, 'block number overflows'
                    Mask(224, 0, stor5.field_0) = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
            else:
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        if Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                            revert with 0, 'addition overflow'
                        if Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index overflows'
                        if block.number >= 4294967296:
                            revert with 0, 'block number overflows'
                        Mask(224, 0, stor5.field_0) = Mask(224, 0, stor5.field_0)
                    else:
                        if not ext_call.return_data[0]:
                            revert with 0, 'divide by zero'
                        if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                            revert with 0, 'addition overflow'
                        if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index overflows'
                        if block.number >= 4294967296:
                            revert with 0, 'block number overflows'
                        Mask(224, 0, stor5.field_0) = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                else:
                    require block.number - uint32(stor5.field_224)
                    if (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0]) / block.number - uint32(stor5.field_224) != ext_call.return_data[0]:
                        revert with 0, 'multiplication overflow'
                    if ext_call.return_data[0] <= 0:
                        if Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                            revert with 0, 'addition overflow'
                        if Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index overflows'
                        if block.number >= 4294967296:
                            revert with 0, 'block number overflows'
                        Mask(224, 0, stor5.field_0) = Mask(224, 0, stor5.field_0)
                    else:
                        if not (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0]):
                            if not ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                revert with 0, 'addition overflow'
                            if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index overflows'
                            if block.number >= 4294967296:
                                revert with 0, 'block number overflows'
                            Mask(224, 0, stor5.field_0) = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                        else:
                            require (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0])
                            if (1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0]) != 1000000000000000000 * 10^18:
                                revert with 0, 'multiplication overflow'
                            if not ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                revert with 0, 'addition overflow'
                            if ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index overflows'
                            if block.number >= 4294967296:
                                revert with 0, 'block number overflows'
                            Mask(224, 0, stor5.field_0) = Mask(224, 0, ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
            uint32(stor5.field_224) = uint32(block.number)
    return 0
}

function calcDistributeVAIMinterVenus(address arg1) payable {
    require calldata.size - 4 >= 32
    if comptrollerAddress != msg.sender:
        emit Failure(1, 2, 0);
        return 1, 0, 0, 0
    sub_24650602[address(arg1)] = Mask(224, 0, stor5.field_0)
    if sub_24650602[address(arg1)]:
        if sub_24650602[address(arg1)] > Mask(224, 0, stor5.field_0):
            revert with 0, 'subtraction underflow'
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(comptrollerAddress)
            staticcall comptrollerAddress.venusAccrued(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            return 0, ext_call.return_data[0], 0, Mask(224, 0, stor5.field_0)
        if not Mask(224, 0, stor5.field_0) - sub_24650602[address(arg1)]:
            require ext_code.size(comptrollerAddress)
            staticcall comptrollerAddress.venusAccrued(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            return 0, ext_call.return_data[0], 0, Mask(224, 0, stor5.field_0)
        require ext_call.return_data[0]
        if (Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) - (sub_24650602[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != Mask(224, 0, stor5.field_0) - sub_24650602[address(arg1)]:
            revert with 0, 'multiplication overflow'
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.venusAccrued(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ((Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) - (sub_24650602[address(arg1)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        return 0, 
               ((Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) - (sub_24650602[address(arg1)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + ext_call.return_data[0],
               (Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) - (sub_24650602[address(arg1)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18,
               Mask(224, 0, stor5.field_0)
    if not Mask(224, 0, stor5.field_0):
        if sub_24650602[address(arg1)] > Mask(224, 0, stor5.field_0):
            revert with 0, 'subtraction underflow'
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(comptrollerAddress)
            staticcall comptrollerAddress.venusAccrued(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            return 0, ext_call.return_data[0], 0, Mask(224, 0, stor5.field_0)
        if not Mask(224, 0, stor5.field_0) - sub_24650602[address(arg1)]:
            require ext_code.size(comptrollerAddress)
            staticcall comptrollerAddress.venusAccrued(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            return 0, ext_call.return_data[0], 0, Mask(224, 0, stor5.field_0)
        require ext_call.return_data[0]
        if (Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) - (sub_24650602[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != Mask(224, 0, stor5.field_0) - sub_24650602[address(arg1)]:
            revert with 0, 'multiplication overflow'
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.venusAccrued(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ((Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) - (sub_24650602[address(arg1)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        return 0, 
               ((Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) - (sub_24650602[address(arg1)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + ext_call.return_data[0],
               (Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) - (sub_24650602[address(arg1)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18,
               Mask(224, 0, stor5.field_0)
    if 1000000000000000000 * 10^18 > Mask(224, 0, stor5.field_0):
        revert with 0, 'subtraction underflow'
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.mintedVAIs(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.venusAccrued(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        return 0, ext_call.return_data[0], 0, Mask(224, 0, stor5.field_0)
    if not Mask(224, 0, stor5.field_0) - 1000000000000000000 * 10^18:
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.venusAccrued(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        return 0, ext_call.return_data[0], 0, Mask(224, 0, stor5.field_0)
    require ext_call.return_data[0]
    if (-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) / ext_call.return_data[0] != Mask(224, 0, stor5.field_0) - 1000000000000000000 * 10^18:
        revert with 0, 'multiplication overflow'
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.venusAccrued(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'addition overflow'
    return 0, 
           ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + ext_call.return_data[0],
           (-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (Mask(224, 0, stor5.field_0) * ext_call.return_data[0]) / 1000000000000000000 * 10^18,
           Mask(224, 0, stor5.field_0)
}

function repayVAI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if comptrollerAddress:
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.protocolPaused() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'protocol is paused'
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.venusVAIRate() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint32(stor5.field_224) > block.number:
            revert with 0, 'subtraction underflow'
        if block.number - uint32(stor5.field_224) <= 0:
            if block.number - uint32(stor5.field_224):
                if block.number >= 4294967296:
                    revert with 0, 'block number overflows'
                uint32(stor5.field_224) = uint32(block.number)
        else:
            if ext_call.return_data[0] <= 0:
                if block.number - uint32(stor5.field_224):
                    if block.number >= 4294967296:
                        revert with 0, 'block number overflows'
                    uint32(stor5.field_224) = uint32(block.number)
            else:
                require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
                staticcall 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not block.number - uint32(stor5.field_224):
                    if ext_call.return_data[0] <= 0:
                        if Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                            revert with 0, 'addition overflow'
                        if Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index overflows'
                        if block.number >= 4294967296:
                            revert with 0, 'block number overflows'
                        Mask(224, 0, stor5.field_0) = Mask(224, 0, stor5.field_0)
                    else:
                        if not ext_call.return_data[0]:
                            revert with 0, 'divide by zero'
                        if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                            revert with 0, 'addition overflow'
                        if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index overflows'
                        if block.number >= 4294967296:
                            revert with 0, 'block number overflows'
                        Mask(224, 0, stor5.field_0) = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                else:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            if Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                revert with 0, 'addition overflow'
                            if Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index overflows'
                            if block.number >= 4294967296:
                                revert with 0, 'block number overflows'
                            Mask(224, 0, stor5.field_0) = Mask(224, 0, stor5.field_0)
                        else:
                            if not ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                revert with 0, 'addition overflow'
                            if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index overflows'
                            if block.number >= 4294967296:
                                revert with 0, 'block number overflows'
                            Mask(224, 0, stor5.field_0) = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                    else:
                        require block.number - uint32(stor5.field_224)
                        if (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0]) / block.number - uint32(stor5.field_224) != ext_call.return_data[0]:
                            revert with 0, 'multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            if Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                revert with 0, 'addition overflow'
                            if Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index overflows'
                            if block.number >= 4294967296:
                                revert with 0, 'block number overflows'
                            Mask(224, 0, stor5.field_0) = Mask(224, 0, stor5.field_0)
                        else:
                            if not (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                    revert with 0, 'addition overflow'
                                if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index overflows'
                                if block.number >= 4294967296:
                                    revert with 0, 'block number overflows'
                                Mask(224, 0, stor5.field_0) = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                            else:
                                require (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0])
                                if (1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0]) != 1000000000000000000 * 10^18:
                                    revert with 0, 'multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                    revert with 0, 'addition overflow'
                                if ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index overflows'
                                if block.number >= 4294967296:
                                    revert with 0, 'block number overflows'
                                Mask(224, 0, stor5.field_0) = Mask(224, 0, ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                uint32(stor5.field_224) = uint32(block.number)
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(comptrollerAddress)
        if ext_call.return_data[0] <= arg1:
            call comptrollerAddress.setMintedVAIOf(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return ext_call.return_data[0]
            require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
            call 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.burn(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit RepayVAI(msg.sender, ext_call.return_data[0]);
        else:
            call comptrollerAddress.setMintedVAIOf(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return ext_call.return_data[0]
            require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
            call 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.burn(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit RepayVAI(msg.sender, arg1);
        return 0
    else:
        return 0
}

function getMintableVAI(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    mem[(32 * _11) + ceil32(return_data.size) + 128] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 160] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 192] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 224] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 256] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 288] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 320] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 480] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 352] = (32 * _11) + ceil32(return_data.size) + 480
    mem[(32 * _11) + ceil32(return_data.size) + 512] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 384] = (32 * _11) + ceil32(return_data.size) + 512
    mem[(32 * _11) + ceil32(return_data.size) + 544] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 416] = (32 * _11) + ceil32(return_data.size) + 544
    mem[64] = (32 * _11) + ceil32(return_data.size) + 608
    mem[(32 * _11) + ceil32(return_data.size) + 576] = 0
    mem[(32 * _11) + ceil32(return_data.size) + 448] = (32 * _11) + ceil32(return_data.size) + 576
    _348 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _348:
        require idx < mem[ceil32(return_data.size) + 96]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getAccountSnapshot(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[(32 * _11) + ceil32(return_data.size) + 288] = ext_call.return_data[96]
        mem[(32 * _11) + ceil32(return_data.size) + 256] = ext_call.return_data[64]
        mem[(32 * _11) + ceil32(return_data.size) + 224] = ext_call.return_data[32]
        if ext_call.return_data[0]:
            return 3, 0
        _363 = mem[64]
        mem[64] = mem[64] + 32
        mem[_363] = ext_call.return_data[96]
        mem[(32 * _11) + ceil32(return_data.size) + 384] = _363
        require idx < mem[ceil32(return_data.size) + 96]
        _366 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(_366)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _11) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            return 4, 0
        _376 = mem[64]
        mem[64] = mem[64] + 32
        mem[_376] = ext_call.return_data[0]
        mem[(32 * _11) + ceil32(return_data.size) + 416] = _376
        _383 = mem[64]
        mem[64] = mem[64] + 32
        mem[_383] = 0
        if not ext_call.return_data[96]:
            _396 = mem[64]
            mem[64] = mem[64] + 32
            mem[_396] = 0
            mem[(32 * _11) + ceil32(return_data.size) + 448] = _396
            _410 = mem[(32 * _11) + ceil32(return_data.size) + 160]
            _414 = mem[64]
            mem[64] = mem[64] + 32
            mem[_414] = 0
            _416 = mem[64]
            mem[64] = mem[64] + 32
            mem[_416] = 0
            _420 = mem[64]
            mem[64] = mem[64] + 32
            mem[_420] = 0
            if _410 + (0 / 10^18) < 0 / 10^18:
                return 5, 0
            mem[(32 * _11) + ceil32(return_data.size) + 160] = _410 + (0 / 10^18)
            _434 = mem[(32 * _11) + ceil32(return_data.size) + 192]
            _443 = mem[64]
            mem[64] = mem[64] + 32
            mem[_443] = 0
            _455 = mem[64]
            mem[64] = mem[64] + 32
            mem[_455] = 0
            if not ext_call.return_data[0]:
                _466 = mem[64]
                mem[64] = mem[64] + 32
                mem[_466] = 0
                if _434 + (0 / 10^18) < 0 / 10^18:
                    return 5, 0
                mem[(32 * _11) + ceil32(return_data.size) + 192] = _434 + (0 / 10^18)
            else:
                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                    return 5, 0
                _469 = mem[64]
                mem[64] = mem[64] + 32
                mem[_469] = ext_call.return_data[64] * ext_call.return_data[0]
                if _434 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                    return 5, 0
                mem[(32 * _11) + ceil32(return_data.size) + 192] = _434 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
        else:
            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                return 5, 0
            if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                return 5, 0
            _401 = mem[64]
            mem[64] = mem[64] + 32
            mem[_401] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
            mem[(32 * _11) + ceil32(return_data.size) + 448] = _401
            _413 = mem[(32 * _11) + ceil32(return_data.size) + 160]
            _415 = mem[64]
            mem[64] = mem[64] + 32
            mem[_415] = 0
            _418 = mem[64]
            mem[64] = mem[64] + 32
            mem[_418] = 0
            if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                _421 = mem[64]
                mem[64] = mem[64] + 32
                mem[_421] = 0
                if _413 + (0 / 10^18) < 0 / 10^18:
                    return 5, 0
                mem[(32 * _11) + ceil32(return_data.size) + 160] = _413 + (0 / 10^18)
                _439 = mem[(32 * _11) + ceil32(return_data.size) + 192]
                _449 = mem[64]
                mem[64] = mem[64] + 32
                mem[_449] = 0
                _460 = mem[64]
                mem[64] = mem[64] + 32
                mem[_460] = 0
                if not ext_call.return_data[0]:
                    _467 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_467] = 0
                    if _439 + (0 / 10^18) < 0 / 10^18:
                        return 5, 0
                    mem[(32 * _11) + ceil32(return_data.size) + 192] = _439 + (0 / 10^18)
                else:
                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                        return 5, 0
                    _472 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_472] = ext_call.return_data[64] * ext_call.return_data[0]
                    if _439 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                        return 5, 0
                    mem[(32 * _11) + ceil32(return_data.size) + 192] = _439 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
            else:
                if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                    return 5, 0
                _424 = mem[64]
                mem[64] = mem[64] + 32
                mem[_424] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                if _413 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                    return 5, 0
                mem[(32 * _11) + ceil32(return_data.size) + 160] = _413 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                _448 = mem[(32 * _11) + ceil32(return_data.size) + 192]
                _456 = mem[64]
                mem[64] = mem[64] + 32
                mem[_456] = 0
                _464 = mem[64]
                mem[64] = mem[64] + 32
                mem[_464] = 0
                if not ext_call.return_data[0]:
                    _471 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_471] = 0
                    if _448 + (0 / 10^18) < 0 / 10^18:
                        return 5, 0
                    mem[(32 * _11) + ceil32(return_data.size) + 192] = _448 + (0 / 10^18)
                else:
                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                        return 5, 0
                    _477 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_477] = ext_call.return_data[64] * ext_call.return_data[0]
                    if _448 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                        return 5, 0
                    mem[(32 * _11) + ceil32(return_data.size) + 192] = _448 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    _349 = mem[(32 * _11) + ceil32(return_data.size) + 192]
    mem[mem[64] + 4] = arg1
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.mintedVAIs(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + _349 < _349:
        return 5, 0
    mem[(32 * _11) + ceil32(return_data.size) + 192] = ext_call.return_data[0] + _349
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.vaiMintRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not mem[(32 * _11) + ceil32(return_data.size) + 160]:
        if ext_call.return_data[0] + _349 > 0:
            return 2, 0
        return 0, -ext_call.return_data[0] - _349
    if ext_call.return_data[0] * mem[(32 * _11) + ceil32(return_data.size) + 160] / mem[(32 * _11) + ceil32(return_data.size) + 160] != ext_call.return_data[0]:
        revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
    if ext_call.return_data[0] + _349 > ext_call.return_data[0] * mem[(32 * _11) + ceil32(return_data.size) + 160] / 10000:
        return 2, 0
    return 0, 
           (ext_call.return_data[0] * mem[(32 * _11) + ceil32(return_data.size) + 160] / 10000) - ext_call.return_data[0] - _349
}

function mintVAI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if comptrollerAddress:
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.protocolPaused() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'protocol is paused'
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.venusVAIRate() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 21
        mem[128] = 'subtraction underflow' << 88
        if uint32(stor5.field_224) > block.number:
            revert with 0, 'subtraction underflow'
        if block.number - uint32(stor5.field_224) <= 0:
            if not block.number - uint32(stor5.field_224):
                mem[196] = 0
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(comptrollerAddress)
                staticcall comptrollerAddress.oracle() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[160] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                mem[164] = msg.sender
                require ext_code.size(comptrollerAddress)
                staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 32
                _71 = mem[160 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[160 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                require mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                require mem[mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 160]
                _88 = mem[_71 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[_71 + 160])] = mem[_71 + 192 len floor32(mem[_71 + 160])]
                mem[(32 * _88) + ceil32(return_data.size) + 192] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 224] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 256] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 288] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 320] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 352] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 384] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 544] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 416] = (32 * _88) + ceil32(return_data.size) + 544
                mem[(32 * _88) + ceil32(return_data.size) + 576] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 448] = (32 * _88) + ceil32(return_data.size) + 576
                mem[(32 * _88) + ceil32(return_data.size) + 608] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 480] = (32 * _88) + ceil32(return_data.size) + 608
                mem[64] = (32 * _88) + ceil32(return_data.size) + 672
                mem[(32 * _88) + ceil32(return_data.size) + 640] = 0
                mem[(32 * _88) + ceil32(return_data.size) + 512] = (32 * _88) + ceil32(return_data.size) + 640
                _5264 = mem[ceil32(return_data.size) + 160]
                idx = 0
                s = 0
                while idx < _5264:
                    require idx < mem[ceil32(return_data.size) + 160]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 204 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 204 len 20].getAccountSnapshot(address rg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    mem[(32 * _88) + ceil32(return_data.size) + 352] = ext_call.return_data[96]
                    mem[(32 * _88) + ceil32(return_data.size) + 320] = ext_call.return_data[64]
                    mem[(32 * _88) + ceil32(return_data.size) + 288] = ext_call.return_data[32]
                    if ext_call.return_data[0]:
                        return 2
                    _5429 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5429] = ext_call.return_data[96]
                    mem[(32 * _88) + ceil32(return_data.size) + 448] = _5429
                    require idx < mem[ceil32(return_data.size) + 160]
                    _5462 = mem[(32 * idx) + ceil32(return_data.size) + 192]
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 204 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(_5462)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _88) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        return 2
                    _5550 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5550] = ext_call.return_data[0]
                    mem[(32 * _88) + ceil32(return_data.size) + 480] = _5550
                    _5595 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5595] = 0
                    if not ext_call.return_data[96]:
                        _5770 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5770] = 0
                        mem[(32 * _88) + ceil32(return_data.size) + 512] = _5770
                        _5838 = mem[(32 * _88) + ceil32(return_data.size) + 224]
                        _5910 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5910] = 0
                        _6100 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6100] = 0
                        _6299 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6299] = 0
                        if _5838 + (0 / 10^18) < 0 / 10^18:
                            return 2
                        mem[(32 * _88) + ceil32(return_data.size) + 224] = _5838 + (0 / 10^18)
                        _6608 = mem[(32 * _88) + ceil32(return_data.size) + 256]
                        _6645 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6645] = 0
                        _6793 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6793] = 0
                        if not ext_call.return_data[0]:
                            _7002 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_7002] = 0
                            if _6608 + (0 / 10^18) < 0 / 10^18:
                                return 2
                            mem[(32 * _88) + ceil32(return_data.size) + 256] = _6608 + (0 / 10^18)
                        else:
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                return 2
                            _7015 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_7015] = ext_call.return_data[64] * ext_call.return_data[0]
                            if _6608 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                return 2
                            mem[(32 * _88) + ceil32(return_data.size) + 256] = _6608 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            return 2
                        if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                            return 2
                        _5803 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5803] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                        mem[(32 * _88) + ceil32(return_data.size) + 512] = _5803
                        _5909 = mem[(32 * _88) + ceil32(return_data.size) + 224]
                        _6039 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6039] = 0
                        _6144 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6144] = 0
                        if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                            _6335 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6335] = 0
                            if _5909 + (0 / 10^18) < 0 / 10^18:
                                return 2
                            mem[(32 * _88) + ceil32(return_data.size) + 224] = _5909 + (0 / 10^18)
                            _6641 = mem[(32 * _88) + ceil32(return_data.size) + 256]
                            _6719 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6719] = 0
                            _6848 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6848] = 0
                            if not ext_call.return_data[0]:
                                _7013 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7013] = 0
                                if _6641 + (0 / 10^18) < 0 / 10^18:
                                    return 2
                                mem[(32 * _88) + ceil32(return_data.size) + 256] = _6641 + (0 / 10^18)
                            else:
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                    return 2
                                _7058 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7058] = ext_call.return_data[64] * ext_call.return_data[0]
                                if _6641 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                    return 2
                                mem[(32 * _88) + ceil32(return_data.size) + 256] = _6641 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                        else:
                            if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                return 2
                            _6414 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6414] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                            if _5909 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                return 2
                            mem[(32 * _88) + ceil32(return_data.size) + 224] = _5909 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                            _6718 = mem[(32 * _88) + ceil32(return_data.size) + 256]
                            _6804 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6804] = 0
                            _6914 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6914] = 0
                            if not ext_call.return_data[0]:
                                _7057 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7057] = 0
                                if _6718 + (0 / 10^18) < 0 / 10^18:
                                    return 2
                                mem[(32 * _88) + ceil32(return_data.size) + 256] = _6718 + (0 / 10^18)
                            else:
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                    return 2
                                _7123 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7123] = ext_call.return_data[64] * ext_call.return_data[0]
                                if _6718 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                    return 2
                                mem[(32 * _88) + ceil32(return_data.size) + 256] = _6718 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                _5275 = mem[(32 * _88) + ceil32(return_data.size) + 256]
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(comptrollerAddress)
                staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + _5275 < _5275:
                    return 2
                mem[(32 * _88) + ceil32(return_data.size) + 256] = ext_call.return_data[0] + _5275
                require ext_code.size(comptrollerAddress)
                staticcall comptrollerAddress.vaiMintRate() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[(32 * _88) + ceil32(return_data.size) + 224]:
                    if ext_call.return_data[0] + _5275 > 0:
                        return 2
                    if arg1 > -ext_call.return_data[0] - _5275:
                        emit Failure(2, 5, 0);
                        return 2
                else:
                    if ext_call.return_data[0] * mem[(32 * _88) + ceil32(return_data.size) + 224] / mem[(32 * _88) + ceil32(return_data.size) + 224] != ext_call.return_data[0]:
                        revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                    if ext_call.return_data[0] + _5275 > ext_call.return_data[0] * mem[(32 * _88) + ceil32(return_data.size) + 224] / 10000:
                        return 2
                    if arg1 > (ext_call.return_data[0] * mem[(32 * _88) + ceil32(return_data.size) + 224] / 10000) - ext_call.return_data[0] - _5275:
                        emit Failure(2, 5, 0);
                        return 2
            else:
                mem[160] = 22
                mem[192] = 'block number overflows' << 80
                if block.number >= 4294967296:
                    revert with 0, 'block number overflows'
                uint32(stor5.field_224) = uint32(block.number)
                mem[260] = 0
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(comptrollerAddress)
                staticcall comptrollerAddress.oracle() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                mem[228] = msg.sender
                require ext_code.size(comptrollerAddress)
                staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _93 = mem[224 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[224 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                require mem[224 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                require mem[mem[224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, msg.sender) >> 32 + 224]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, msg.sender) >> 32 + 224]
                _114 = mem[_93 + 224]
                mem[ceil32(return_data.size) + 256 len floor32(mem[_93 + 224])] = mem[_93 + 256 len floor32(mem[_93 + 224])]
                mem[(32 * _114) + ceil32(return_data.size) + 256] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 288] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 320] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 352] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 384] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 416] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 448] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 608] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 480] = (32 * _114) + ceil32(return_data.size) + 608
                mem[(32 * _114) + ceil32(return_data.size) + 640] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 512] = (32 * _114) + ceil32(return_data.size) + 640
                mem[(32 * _114) + ceil32(return_data.size) + 672] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 544] = (32 * _114) + ceil32(return_data.size) + 672
                mem[64] = (32 * _114) + ceil32(return_data.size) + 736
                mem[(32 * _114) + ceil32(return_data.size) + 704] = 0
                mem[(32 * _114) + ceil32(return_data.size) + 576] = (32 * _114) + ceil32(return_data.size) + 704
                _5265 = mem[ceil32(return_data.size) + 224]
                idx = 0
                s = 0
                while idx < _5265:
                    require idx < mem[ceil32(return_data.size) + 224]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 268 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 268 len 20].getAccountSnapshot(address rg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    mem[(32 * _114) + ceil32(return_data.size) + 416] = ext_call.return_data[96]
                    mem[(32 * _114) + ceil32(return_data.size) + 384] = ext_call.return_data[64]
                    mem[(32 * _114) + ceil32(return_data.size) + 352] = ext_call.return_data[32]
                    if ext_call.return_data[0]:
                        return 2
                    _5432 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5432] = ext_call.return_data[96]
                    mem[(32 * _114) + ceil32(return_data.size) + 512] = _5432
                    require idx < mem[ceil32(return_data.size) + 224]
                    _5465 = mem[(32 * idx) + ceil32(return_data.size) + 256]
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 268 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(_5465)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _114) + ceil32(return_data.size) + 448] = ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        return 2
                    _5553 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5553] = ext_call.return_data[0]
                    mem[(32 * _114) + ceil32(return_data.size) + 544] = _5553
                    _5599 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5599] = 0
                    if not ext_call.return_data[96]:
                        _5771 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5771] = 0
                        mem[(32 * _114) + ceil32(return_data.size) + 576] = _5771
                        _5841 = mem[(32 * _114) + ceil32(return_data.size) + 288]
                        _5919 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5919] = 0
                        _6101 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6101] = 0
                        _6301 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6301] = 0
                        if _5841 + (0 / 10^18) < 0 / 10^18:
                            return 2
                        mem[(32 * _114) + ceil32(return_data.size) + 288] = _5841 + (0 / 10^18)
                        _6611 = mem[(32 * _114) + ceil32(return_data.size) + 320]
                        _6652 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6652] = 0
                        _6794 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6794] = 0
                        if not ext_call.return_data[0]:
                            _7003 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_7003] = 0
                            if _6611 + (0 / 10^18) < 0 / 10^18:
                                return 2
                            mem[(32 * _114) + ceil32(return_data.size) + 320] = _6611 + (0 / 10^18)
                        else:
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                return 2
                            _7019 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_7019] = ext_call.return_data[64] * ext_call.return_data[0]
                            if _6611 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                return 2
                            mem[(32 * _114) + ceil32(return_data.size) + 320] = _6611 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            return 2
                        if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                            return 2
                        _5804 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5804] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                        mem[(32 * _114) + ceil32(return_data.size) + 576] = _5804
                        _5918 = mem[(32 * _114) + ceil32(return_data.size) + 288]
                        _6045 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6045] = 0
                        _6145 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6145] = 0
                        if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                            _6342 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6342] = 0
                            if _5918 + (0 / 10^18) < 0 / 10^18:
                                return 2
                            mem[(32 * _114) + ceil32(return_data.size) + 288] = _5918 + (0 / 10^18)
                            _6648 = mem[(32 * _114) + ceil32(return_data.size) + 320]
                            _6726 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6726] = 0
                            _6852 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6852] = 0
                            if not ext_call.return_data[0]:
                                _7017 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7017] = 0
                                if _6648 + (0 / 10^18) < 0 / 10^18:
                                    return 2
                                mem[(32 * _114) + ceil32(return_data.size) + 320] = _6648 + (0 / 10^18)
                            else:
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                    return 2
                                _7064 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7064] = ext_call.return_data[64] * ext_call.return_data[0]
                                if _6648 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                    return 2
                                mem[(32 * _114) + ceil32(return_data.size) + 320] = _6648 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                        else:
                            if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                return 2
                            _6423 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6423] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                            if _5918 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                return 2
                            mem[(32 * _114) + ceil32(return_data.size) + 288] = _5918 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                            _6725 = mem[(32 * _114) + ceil32(return_data.size) + 320]
                            _6808 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6808] = 0
                            _6919 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6919] = 0
                            if not ext_call.return_data[0]:
                                _7063 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7063] = 0
                                if _6725 + (0 / 10^18) < 0 / 10^18:
                                    return 2
                                mem[(32 * _114) + ceil32(return_data.size) + 320] = _6725 + (0 / 10^18)
                            else:
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                    return 2
                                _7128 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7128] = ext_call.return_data[64] * ext_call.return_data[0]
                                if _6725 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                    return 2
                                mem[(32 * _114) + ceil32(return_data.size) + 320] = _6725 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                _5279 = mem[(32 * _114) + ceil32(return_data.size) + 320]
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(comptrollerAddress)
                staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + _5279 < _5279:
                    return 2
                mem[(32 * _114) + ceil32(return_data.size) + 320] = ext_call.return_data[0] + _5279
                require ext_code.size(comptrollerAddress)
                staticcall comptrollerAddress.vaiMintRate() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[(32 * _114) + ceil32(return_data.size) + 288]:
                    if ext_call.return_data[0] + _5279 > 0:
                        return 2
                    if arg1 > -ext_call.return_data[0] - _5279:
                        emit Failure(2, 5, 0);
                        return 2
                else:
                    if ext_call.return_data[0] * mem[(32 * _114) + ceil32(return_data.size) + 288] / mem[(32 * _114) + ceil32(return_data.size) + 288] != ext_call.return_data[0]:
                        revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                    if ext_call.return_data[0] + _5279 > ext_call.return_data[0] * mem[(32 * _114) + ceil32(return_data.size) + 288] / 10000:
                        return 2
                    if arg1 > (ext_call.return_data[0] * mem[(32 * _114) + ceil32(return_data.size) + 288] / 10000) - ext_call.return_data[0] - _5279:
                        emit Failure(2, 5, 0);
                        return 2
        else:
            if ext_call.return_data[0] <= 0:
                if not block.number - uint32(stor5.field_224):
                    mem[196] = 0
                    require ext_code.size(comptrollerAddress)
                    call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(comptrollerAddress)
                    staticcall comptrollerAddress.oracle() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                    mem[164] = msg.sender
                    require ext_code.size(comptrollerAddress)
                    staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    _78 = mem[160 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[160 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                    require mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                    require mem[mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 160]
                    _95 = mem[_78 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[_78 + 160])] = mem[_78 + 192 len floor32(mem[_78 + 160])]
                    mem[(32 * _95) + ceil32(return_data.size) + 192] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 224] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 256] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 288] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 320] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 352] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 384] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 544] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 416] = (32 * _95) + ceil32(return_data.size) + 544
                    mem[(32 * _95) + ceil32(return_data.size) + 576] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 448] = (32 * _95) + ceil32(return_data.size) + 576
                    mem[(32 * _95) + ceil32(return_data.size) + 608] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 480] = (32 * _95) + ceil32(return_data.size) + 608
                    mem[64] = (32 * _95) + ceil32(return_data.size) + 672
                    mem[(32 * _95) + ceil32(return_data.size) + 640] = 0
                    mem[(32 * _95) + ceil32(return_data.size) + 512] = (32 * _95) + ceil32(return_data.size) + 640
                    _5266 = mem[ceil32(return_data.size) + 160]
                    idx = 0
                    s = 0
                    while idx < _5266:
                        require idx < mem[ceil32(return_data.size) + 160]
                        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 204 len 20])
                        staticcall mem[(32 * idx) + ceil32(return_data.size) + 204 len 20].getAccountSnapshot(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        mem[(32 * _95) + ceil32(return_data.size) + 352] = ext_call.return_data[96]
                        mem[(32 * _95) + ceil32(return_data.size) + 320] = ext_call.return_data[64]
                        mem[(32 * _95) + ceil32(return_data.size) + 288] = ext_call.return_data[32]
                        if ext_call.return_data[0]:
                            return 2
                        _5435 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5435] = ext_call.return_data[96]
                        mem[(32 * _95) + ceil32(return_data.size) + 448] = _5435
                        require idx < mem[ceil32(return_data.size) + 160]
                        _5468 = mem[(32 * idx) + ceil32(return_data.size) + 192]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 204 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(_5468)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _95) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 2
                        _5556 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5556] = ext_call.return_data[0]
                        mem[(32 * _95) + ceil32(return_data.size) + 480] = _5556
                        _5603 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5603] = 0
                        if not ext_call.return_data[96]:
                            _5772 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5772] = 0
                            mem[(32 * _95) + ceil32(return_data.size) + 512] = _5772
                            _5844 = mem[(32 * _95) + ceil32(return_data.size) + 224]
                            _5928 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5928] = 0
                            _6102 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6102] = 0
                            _6303 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6303] = 0
                            if _5844 + (0 / 10^18) < 0 / 10^18:
                                return 2
                            mem[(32 * _95) + ceil32(return_data.size) + 224] = _5844 + (0 / 10^18)
                            _6614 = mem[(32 * _95) + ceil32(return_data.size) + 256]
                            _6659 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6659] = 0
                            _6795 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6795] = 0
                            if not ext_call.return_data[0]:
                                _7004 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7004] = 0
                                if _6614 + (0 / 10^18) < 0 / 10^18:
                                    return 2
                                mem[(32 * _95) + ceil32(return_data.size) + 256] = _6614 + (0 / 10^18)
                            else:
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                    return 2
                                _7023 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7023] = ext_call.return_data[64] * ext_call.return_data[0]
                                if _6614 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                    return 2
                                mem[(32 * _95) + ceil32(return_data.size) + 256] = _6614 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                return 2
                            if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                                return 2
                            _5805 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5805] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                            mem[(32 * _95) + ceil32(return_data.size) + 512] = _5805
                            _5927 = mem[(32 * _95) + ceil32(return_data.size) + 224]
                            _6051 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6051] = 0
                            _6146 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6146] = 0
                            if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                                _6349 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6349] = 0
                                if _5927 + (0 / 10^18) < 0 / 10^18:
                                    return 2
                                mem[(32 * _95) + ceil32(return_data.size) + 224] = _5927 + (0 / 10^18)
                                _6655 = mem[(32 * _95) + ceil32(return_data.size) + 256]
                                _6733 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6733] = 0
                                _6856 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6856] = 0
                                if not ext_call.return_data[0]:
                                    _7021 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7021] = 0
                                    if _6655 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _95) + ceil32(return_data.size) + 256] = _6655 + (0 / 10^18)
                                else:
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                        return 2
                                    _7070 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7070] = ext_call.return_data[64] * ext_call.return_data[0]
                                    if _6655 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                        return 2
                                    mem[(32 * _95) + ceil32(return_data.size) + 256] = _6655 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                            else:
                                if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                    return 2
                                _6432 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6432] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                if _5927 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                    return 2
                                mem[(32 * _95) + ceil32(return_data.size) + 224] = _5927 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                                _6732 = mem[(32 * _95) + ceil32(return_data.size) + 256]
                                _6812 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6812] = 0
                                _6924 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6924] = 0
                                if not ext_call.return_data[0]:
                                    _7069 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7069] = 0
                                    if _6732 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _95) + ceil32(return_data.size) + 256] = _6732 + (0 / 10^18)
                                else:
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                        return 2
                                    _7133 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7133] = ext_call.return_data[64] * ext_call.return_data[0]
                                    if _6732 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                        return 2
                                    mem[(32 * _95) + ceil32(return_data.size) + 256] = _6732 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    _5283 = mem[(32 * _95) + ceil32(return_data.size) + 256]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(comptrollerAddress)
                    staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + _5283 < _5283:
                        return 2
                    mem[(32 * _95) + ceil32(return_data.size) + 256] = ext_call.return_data[0] + _5283
                    require ext_code.size(comptrollerAddress)
                    staticcall comptrollerAddress.vaiMintRate() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not mem[(32 * _95) + ceil32(return_data.size) + 224]:
                        if ext_call.return_data[0] + _5283 > 0:
                            return 2
                        if arg1 > -ext_call.return_data[0] - _5283:
                            emit Failure(2, 5, 0);
                            return 2
                    else:
                        if ext_call.return_data[0] * mem[(32 * _95) + ceil32(return_data.size) + 224] / mem[(32 * _95) + ceil32(return_data.size) + 224] != ext_call.return_data[0]:
                            revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                        if ext_call.return_data[0] + _5283 > ext_call.return_data[0] * mem[(32 * _95) + ceil32(return_data.size) + 224] / 10000:
                            return 2
                        if arg1 > (ext_call.return_data[0] * mem[(32 * _95) + ceil32(return_data.size) + 224] / 10000) - ext_call.return_data[0] - _5283:
                            emit Failure(2, 5, 0);
                            return 2
                else:
                    mem[160] = 22
                    mem[192] = 'block number overflows' << 80
                    if block.number >= 4294967296:
                        revert with 0, 'block number overflows'
                    uint32(stor5.field_224) = uint32(block.number)
                    mem[260] = 0
                    require ext_code.size(comptrollerAddress)
                    call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(comptrollerAddress)
                    staticcall comptrollerAddress.oracle() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[224] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                    mem[228] = msg.sender
                    require ext_code.size(comptrollerAddress)
                    staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _101 = mem[224 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[224 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                    require mem[224 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                    require mem[mem[224 len 4], Mask(224, 32, msg.sender) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, msg.sender) >> 32 + 224]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, msg.sender) >> 32 + 224]
                    _122 = mem[_101 + 224]
                    mem[ceil32(return_data.size) + 256 len floor32(mem[_101 + 224])] = mem[_101 + 256 len floor32(mem[_101 + 224])]
                    mem[(32 * _122) + ceil32(return_data.size) + 256] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 288] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 320] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 352] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 384] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 416] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 448] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 608] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 480] = (32 * _122) + ceil32(return_data.size) + 608
                    mem[(32 * _122) + ceil32(return_data.size) + 640] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 512] = (32 * _122) + ceil32(return_data.size) + 640
                    mem[(32 * _122) + ceil32(return_data.size) + 672] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 544] = (32 * _122) + ceil32(return_data.size) + 672
                    mem[64] = (32 * _122) + ceil32(return_data.size) + 736
                    mem[(32 * _122) + ceil32(return_data.size) + 704] = 0
                    mem[(32 * _122) + ceil32(return_data.size) + 576] = (32 * _122) + ceil32(return_data.size) + 704
                    _5267 = mem[ceil32(return_data.size) + 224]
                    idx = 0
                    s = 0
                    while idx < _5267:
                        require idx < mem[ceil32(return_data.size) + 224]
                        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 268 len 20])
                        staticcall mem[(32 * idx) + ceil32(return_data.size) + 268 len 20].getAccountSnapshot(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        mem[(32 * _122) + ceil32(return_data.size) + 416] = ext_call.return_data[96]
                        mem[(32 * _122) + ceil32(return_data.size) + 384] = ext_call.return_data[64]
                        mem[(32 * _122) + ceil32(return_data.size) + 352] = ext_call.return_data[32]
                        if ext_call.return_data[0]:
                            return 2
                        _5438 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5438] = ext_call.return_data[96]
                        mem[(32 * _122) + ceil32(return_data.size) + 512] = _5438
                        require idx < mem[ceil32(return_data.size) + 224]
                        _5471 = mem[(32 * idx) + ceil32(return_data.size) + 256]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 268 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(_5471)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _122) + ceil32(return_data.size) + 448] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            return 2
                        _5559 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5559] = ext_call.return_data[0]
                        mem[(32 * _122) + ceil32(return_data.size) + 544] = _5559
                        _5607 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5607] = 0
                        if not ext_call.return_data[96]:
                            _5773 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5773] = 0
                            mem[(32 * _122) + ceil32(return_data.size) + 576] = _5773
                            _5847 = mem[(32 * _122) + ceil32(return_data.size) + 288]
                            _5937 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5937] = 0
                            _6103 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6103] = 0
                            _6305 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6305] = 0
                            if _5847 + (0 / 10^18) < 0 / 10^18:
                                return 2
                            mem[(32 * _122) + ceil32(return_data.size) + 288] = _5847 + (0 / 10^18)
                            _6617 = mem[(32 * _122) + ceil32(return_data.size) + 320]
                            _6666 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6666] = 0
                            _6796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6796] = 0
                            if not ext_call.return_data[0]:
                                _7005 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7005] = 0
                                if _6617 + (0 / 10^18) < 0 / 10^18:
                                    return 2
                                mem[(32 * _122) + ceil32(return_data.size) + 320] = _6617 + (0 / 10^18)
                            else:
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                    return 2
                                _7027 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_7027] = ext_call.return_data[64] * ext_call.return_data[0]
                                if _6617 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                    return 2
                                mem[(32 * _122) + ceil32(return_data.size) + 320] = _6617 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                return 2
                            if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                                return 2
                            _5806 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5806] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                            mem[(32 * _122) + ceil32(return_data.size) + 576] = _5806
                            _5936 = mem[(32 * _122) + ceil32(return_data.size) + 288]
                            _6057 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6057] = 0
                            _6147 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6147] = 0
                            if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                                _6356 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6356] = 0
                                if _5936 + (0 / 10^18) < 0 / 10^18:
                                    return 2
                                mem[(32 * _122) + ceil32(return_data.size) + 288] = _5936 + (0 / 10^18)
                                _6662 = mem[(32 * _122) + ceil32(return_data.size) + 320]
                                _6740 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6740] = 0
                                _6860 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6860] = 0
                                if not ext_call.return_data[0]:
                                    _7025 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7025] = 0
                                    if _6662 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _122) + ceil32(return_data.size) + 320] = _6662 + (0 / 10^18)
                                else:
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                        return 2
                                    _7076 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7076] = ext_call.return_data[64] * ext_call.return_data[0]
                                    if _6662 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                        return 2
                                    mem[(32 * _122) + ceil32(return_data.size) + 320] = _6662 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                            else:
                                if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                    return 2
                                _6441 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6441] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                if _5936 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                    return 2
                                mem[(32 * _122) + ceil32(return_data.size) + 288] = _5936 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                                _6739 = mem[(32 * _122) + ceil32(return_data.size) + 320]
                                _6816 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6816] = 0
                                _6929 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6929] = 0
                                if not ext_call.return_data[0]:
                                    _7075 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7075] = 0
                                    if _6739 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _122) + ceil32(return_data.size) + 320] = _6739 + (0 / 10^18)
                                else:
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                        return 2
                                    _7138 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7138] = ext_call.return_data[64] * ext_call.return_data[0]
                                    if _6739 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                        return 2
                                    mem[(32 * _122) + ceil32(return_data.size) + 320] = _6739 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    _5287 = mem[(32 * _122) + ceil32(return_data.size) + 320]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(comptrollerAddress)
                    staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + _5287 < _5287:
                        return 2
                    mem[(32 * _122) + ceil32(return_data.size) + 320] = ext_call.return_data[0] + _5287
                    require ext_code.size(comptrollerAddress)
                    staticcall comptrollerAddress.vaiMintRate() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not mem[(32 * _122) + ceil32(return_data.size) + 288]:
                        if ext_call.return_data[0] + _5287 > 0:
                            return 2
                        if arg1 > -ext_call.return_data[0] - _5287:
                            emit Failure(2, 5, 0);
                            return 2
                    else:
                        if ext_call.return_data[0] * mem[(32 * _122) + ceil32(return_data.size) + 288] / mem[(32 * _122) + ceil32(return_data.size) + 288] != ext_call.return_data[0]:
                            revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                        if ext_call.return_data[0] + _5287 > ext_call.return_data[0] * mem[(32 * _122) + ceil32(return_data.size) + 288] / 10000:
                            return 2
                        if arg1 > (ext_call.return_data[0] * mem[(32 * _122) + ceil32(return_data.size) + 288] / 10000) - ext_call.return_data[0] - _5287:
                            emit Failure(2, 5, 0);
                            return 2
            else:
                require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
                staticcall 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[160] = 23
                mem[192] = 'multiplication overflow'
                if not block.number - uint32(stor5.field_224):
                    mem[224] = 0
                    mem[256] = 0
                    if ext_call.return_data[0] <= 0:
                        mem[288] = 0
                        mem[320] = Mask(224, 0, stor5.field_0)
                        mem[352] = 0
                        mem[416] = 17
                        mem[448] = 'addition overflow' << 120
                        if Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                            revert with 0, 'addition overflow'
                        mem[384] = Mask(224, 0, stor5.field_0)
                        mem[544] = 19
                        mem[576] = 'new index overflows' << 104
                        if Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index overflows'
                        mem[480] = Mask(224, 0, stor5.field_0)
                        mem[608] = 22
                        mem[640] = 'block number overflows' << 80
                        if block.number >= 4294967296:
                            revert with 0, 'block number overflows'
                        mem[512] = uint32(block.number)
                        Mask(224, 0, stor5.field_0) = Mask(224, 0, stor5.field_0)
                        uint32(stor5.field_224) = uint32(block.number)
                        mem[708] = 0
                        require ext_code.size(comptrollerAddress)
                        call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(comptrollerAddress)
                        staticcall comptrollerAddress.oracle() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[672] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                        mem[676] = msg.sender
                        require ext_code.size(comptrollerAddress)
                        staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 672
                        require return_data.size >= 32
                        _571 = mem[672 len 4], Mask(224, 32, msg.sender) >> 32
                        require mem[672 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                        require mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                        require mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296 and mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 672] = mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672]
                        _624 = mem[_571 + 672]
                        mem[ceil32(return_data.size) + 704 len floor32(mem[_571 + 672])] = mem[_571 + 704 len floor32(mem[_571 + 672])]
                        mem[(32 * _624) + ceil32(return_data.size) + 704] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 736] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 768] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 800] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 832] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 864] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 896] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 1056] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 928] = (32 * _624) + ceil32(return_data.size) + 1056
                        mem[(32 * _624) + ceil32(return_data.size) + 1088] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 960] = (32 * _624) + ceil32(return_data.size) + 1088
                        mem[(32 * _624) + ceil32(return_data.size) + 1120] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 992] = (32 * _624) + ceil32(return_data.size) + 1120
                        mem[64] = (32 * _624) + ceil32(return_data.size) + 1184
                        mem[(32 * _624) + ceil32(return_data.size) + 1152] = 0
                        mem[(32 * _624) + ceil32(return_data.size) + 1024] = (32 * _624) + ceil32(return_data.size) + 1152
                        _5269 = mem[ceil32(return_data.size) + 672]
                        idx = 0
                        s = 0
                        while idx < _5269:
                            require idx < mem[ceil32(return_data.size) + 672]
                            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 716 len 20])
                            staticcall mem[(32 * idx) + ceil32(return_data.size) + 716 len 20].getAccountSnapshot(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            mem[(32 * _624) + ceil32(return_data.size) + 864] = ext_call.return_data[96]
                            mem[(32 * _624) + ceil32(return_data.size) + 832] = ext_call.return_data[64]
                            mem[(32 * _624) + ceil32(return_data.size) + 800] = ext_call.return_data[32]
                            if ext_call.return_data[0]:
                                return 2
                            _5444 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5444] = ext_call.return_data[96]
                            mem[(32 * _624) + ceil32(return_data.size) + 960] = _5444
                            require idx < mem[ceil32(return_data.size) + 672]
                            _5477 = mem[(32 * idx) + ceil32(return_data.size) + 704]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 716 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_5477)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _624) + ceil32(return_data.size) + 896] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                return 2
                            _5565 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5565] = ext_call.return_data[0]
                            mem[(32 * _624) + ceil32(return_data.size) + 992] = _5565
                            _5615 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5615] = 0
                            if not ext_call.return_data[96]:
                                _5775 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5775] = 0
                                mem[(32 * _624) + ceil32(return_data.size) + 1024] = _5775
                                _5853 = mem[(32 * _624) + ceil32(return_data.size) + 736]
                                _5955 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5955] = 0
                                _6105 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6105] = 0
                                _6309 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6309] = 0
                                if _5853 + (0 / 10^18) < 0 / 10^18:
                                    return 2
                                mem[(32 * _624) + ceil32(return_data.size) + 736] = _5853 + (0 / 10^18)
                                _6623 = mem[(32 * _624) + ceil32(return_data.size) + 768]
                                _6680 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6680] = 0
                                _6798 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6798] = 0
                                if not ext_call.return_data[0]:
                                    _7007 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7007] = 0
                                    if _6623 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _624) + ceil32(return_data.size) + 768] = _6623 + (0 / 10^18)
                                else:
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                        return 2
                                    _7035 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7035] = ext_call.return_data[64] * ext_call.return_data[0]
                                    if _6623 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                        return 2
                                    mem[(32 * _624) + ceil32(return_data.size) + 768] = _6623 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                    return 2
                                if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                                    return 2
                                _5808 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5808] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                mem[(32 * _624) + ceil32(return_data.size) + 1024] = _5808
                                _5954 = mem[(32 * _624) + ceil32(return_data.size) + 736]
                                _6069 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6069] = 0
                                _6149 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6149] = 0
                                if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                                    _6370 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6370] = 0
                                    if _5954 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _624) + ceil32(return_data.size) + 736] = _5954 + (0 / 10^18)
                                    _6676 = mem[(32 * _624) + ceil32(return_data.size) + 768]
                                    _6754 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6754] = 0
                                    _6868 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6868] = 0
                                    if not ext_call.return_data[0]:
                                        _7033 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7033] = 0
                                        if _6676 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _624) + ceil32(return_data.size) + 768] = _6676 + (0 / 10^18)
                                    else:
                                        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                            return 2
                                        _7088 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7088] = ext_call.return_data[64] * ext_call.return_data[0]
                                        if _6676 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                            return 2
                                        mem[(32 * _624) + ceil32(return_data.size) + 768] = _6676 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                        return 2
                                    _6459 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6459] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                    if _5954 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                        return 2
                                    mem[(32 * _624) + ceil32(return_data.size) + 736] = _5954 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                                    _6753 = mem[(32 * _624) + ceil32(return_data.size) + 768]
                                    _6824 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6824] = 0
                                    _6939 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6939] = 0
                                    if not ext_call.return_data[0]:
                                        _7087 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7087] = 0
                                        if _6753 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _624) + ceil32(return_data.size) + 768] = _6753 + (0 / 10^18)
                                    else:
                                        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                            return 2
                                        _7148 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7148] = ext_call.return_data[64] * ext_call.return_data[0]
                                        if _6753 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                            return 2
                                        mem[(32 * _624) + ceil32(return_data.size) + 768] = _6753 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            continue 
                        _5295 = mem[(32 * _624) + ceil32(return_data.size) + 768]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(comptrollerAddress)
                        staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + _5295 < _5295:
                            return 2
                        mem[(32 * _624) + ceil32(return_data.size) + 768] = ext_call.return_data[0] + _5295
                        require ext_code.size(comptrollerAddress)
                        staticcall comptrollerAddress.vaiMintRate() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not mem[(32 * _624) + ceil32(return_data.size) + 736]:
                            if ext_call.return_data[0] + _5295 > 0:
                                return 2
                            if arg1 > -ext_call.return_data[0] - _5295:
                                emit Failure(2, 5, 0);
                                return 2
                        else:
                            if ext_call.return_data[0] * mem[(32 * _624) + ceil32(return_data.size) + 736] / mem[(32 * _624) + ceil32(return_data.size) + 736] != ext_call.return_data[0]:
                                revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                            if ext_call.return_data[0] + _5295 > ext_call.return_data[0] * mem[(32 * _624) + ceil32(return_data.size) + 736] / 10000:
                                return 2
                            if arg1 > (ext_call.return_data[0] * mem[(32 * _624) + ceil32(return_data.size) + 736] / 10000) - ext_call.return_data[0] - _5295:
                                emit Failure(2, 5, 0);
                                return 2
                    else:
                        mem[320] = 23
                        mem[352] = 'multiplication overflow'
                        mem[384] = 14
                        mem[416] = 'divide by zero' << 144
                        if not ext_call.return_data[0]:
                            revert with 0, 'divide by zero'
                        mem[288] = 0 / ext_call.return_data[0]
                        mem[448] = 0
                        mem[480] = Mask(224, 0, stor5.field_0)
                        mem[512] = 0
                        mem[576] = 17
                        mem[608] = 'addition overflow' << 120
                        if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                            revert with 0, 'addition overflow'
                        mem[544] = (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0)
                        mem[704] = 19
                        mem[736] = 'new index overflows' << 104
                        if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index overflows'
                        mem[640] = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                        mem[768] = 22
                        mem[800] = 'block number overflows' << 80
                        if block.number >= 4294967296:
                            revert with 0, 'block number overflows'
                        mem[672] = uint32(block.number)
                        Mask(224, 0, stor5.field_0) = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                        uint32(stor5.field_224) = uint32(block.number)
                        mem[868] = 0
                        require ext_code.size(comptrollerAddress)
                        call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(comptrollerAddress)
                        staticcall comptrollerAddress.oracle() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[832] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                        mem[836] = msg.sender
                        require ext_code.size(comptrollerAddress)
                        staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[832 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 832
                        require return_data.size >= 32
                        _774 = mem[832 len 4], Mask(224, 32, msg.sender) >> 32
                        require mem[832 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                        require mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                        require mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832] <= 4294967296 and mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 832] = mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832]
                        _806 = mem[_774 + 832]
                        mem[ceil32(return_data.size) + 864 len floor32(mem[_774 + 832])] = mem[_774 + 864 len floor32(mem[_774 + 832])]
                        mem[(32 * _806) + ceil32(return_data.size) + 864] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 896] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 928] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 960] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 992] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 1024] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 1056] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 1216] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 1088] = (32 * _806) + ceil32(return_data.size) + 1216
                        mem[(32 * _806) + ceil32(return_data.size) + 1248] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 1120] = (32 * _806) + ceil32(return_data.size) + 1248
                        mem[(32 * _806) + ceil32(return_data.size) + 1280] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 1152] = (32 * _806) + ceil32(return_data.size) + 1280
                        mem[64] = (32 * _806) + ceil32(return_data.size) + 1344
                        mem[(32 * _806) + ceil32(return_data.size) + 1312] = 0
                        mem[(32 * _806) + ceil32(return_data.size) + 1184] = (32 * _806) + ceil32(return_data.size) + 1312
                        _5268 = mem[ceil32(return_data.size) + 832]
                        idx = 0
                        s = 0
                        while idx < _5268:
                            require idx < mem[ceil32(return_data.size) + 832]
                            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 876 len 20])
                            staticcall mem[(32 * idx) + ceil32(return_data.size) + 876 len 20].getAccountSnapshot(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            mem[(32 * _806) + ceil32(return_data.size) + 1024] = ext_call.return_data[96]
                            mem[(32 * _806) + ceil32(return_data.size) + 992] = ext_call.return_data[64]
                            mem[(32 * _806) + ceil32(return_data.size) + 960] = ext_call.return_data[32]
                            if ext_call.return_data[0]:
                                return 2
                            _5441 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5441] = ext_call.return_data[96]
                            mem[(32 * _806) + ceil32(return_data.size) + 1120] = _5441
                            require idx < mem[ceil32(return_data.size) + 832]
                            _5474 = mem[(32 * idx) + ceil32(return_data.size) + 864]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 876 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_5474)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _806) + ceil32(return_data.size) + 1056] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                return 2
                            _5562 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5562] = ext_call.return_data[0]
                            mem[(32 * _806) + ceil32(return_data.size) + 1152] = _5562
                            _5611 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5611] = 0
                            if not ext_call.return_data[96]:
                                _5774 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5774] = 0
                                mem[(32 * _806) + ceil32(return_data.size) + 1184] = _5774
                                _5850 = mem[(32 * _806) + ceil32(return_data.size) + 896]
                                _5946 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5946] = 0
                                _6104 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6104] = 0
                                _6307 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6307] = 0
                                if _5850 + (0 / 10^18) < 0 / 10^18:
                                    return 2
                                mem[(32 * _806) + ceil32(return_data.size) + 896] = _5850 + (0 / 10^18)
                                _6620 = mem[(32 * _806) + ceil32(return_data.size) + 928]
                                _6673 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6673] = 0
                                _6797 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6797] = 0
                                if not ext_call.return_data[0]:
                                    _7006 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7006] = 0
                                    if _6620 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _806) + ceil32(return_data.size) + 928] = _6620 + (0 / 10^18)
                                else:
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                        return 2
                                    _7031 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7031] = ext_call.return_data[64] * ext_call.return_data[0]
                                    if _6620 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                        return 2
                                    mem[(32 * _806) + ceil32(return_data.size) + 928] = _6620 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                    return 2
                                if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                                    return 2
                                _5807 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5807] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                mem[(32 * _806) + ceil32(return_data.size) + 1184] = _5807
                                _5945 = mem[(32 * _806) + ceil32(return_data.size) + 896]
                                _6063 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6063] = 0
                                _6148 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6148] = 0
                                if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                                    _6363 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6363] = 0
                                    if _5945 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _806) + ceil32(return_data.size) + 896] = _5945 + (0 / 10^18)
                                    _6669 = mem[(32 * _806) + ceil32(return_data.size) + 928]
                                    _6747 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6747] = 0
                                    _6864 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6864] = 0
                                    if not ext_call.return_data[0]:
                                        _7029 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7029] = 0
                                        if _6669 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _806) + ceil32(return_data.size) + 928] = _6669 + (0 / 10^18)
                                    else:
                                        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                            return 2
                                        _7082 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7082] = ext_call.return_data[64] * ext_call.return_data[0]
                                        if _6669 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                            return 2
                                        mem[(32 * _806) + ceil32(return_data.size) + 928] = _6669 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                        return 2
                                    _6450 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6450] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                    if _5945 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                        return 2
                                    mem[(32 * _806) + ceil32(return_data.size) + 896] = _5945 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                                    _6746 = mem[(32 * _806) + ceil32(return_data.size) + 928]
                                    _6820 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6820] = 0
                                    _6934 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6934] = 0
                                    if not ext_call.return_data[0]:
                                        _7081 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7081] = 0
                                        if _6746 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _806) + ceil32(return_data.size) + 928] = _6746 + (0 / 10^18)
                                    else:
                                        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                            return 2
                                        _7143 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7143] = ext_call.return_data[64] * ext_call.return_data[0]
                                        if _6746 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                            return 2
                                        mem[(32 * _806) + ceil32(return_data.size) + 928] = _6746 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            continue 
                        _5291 = mem[(32 * _806) + ceil32(return_data.size) + 928]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(comptrollerAddress)
                        staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + _5291 < _5291:
                            return 2
                        mem[(32 * _806) + ceil32(return_data.size) + 928] = ext_call.return_data[0] + _5291
                        require ext_code.size(comptrollerAddress)
                        staticcall comptrollerAddress.vaiMintRate() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not mem[(32 * _806) + ceil32(return_data.size) + 896]:
                            if ext_call.return_data[0] + _5291 > 0:
                                return 2
                            if arg1 > -ext_call.return_data[0] - _5291:
                                emit Failure(2, 5, 0);
                                return 2
                        else:
                            if ext_call.return_data[0] * mem[(32 * _806) + ceil32(return_data.size) + 896] / mem[(32 * _806) + ceil32(return_data.size) + 896] != ext_call.return_data[0]:
                                revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                            if ext_call.return_data[0] + _5291 > ext_call.return_data[0] * mem[(32 * _806) + ceil32(return_data.size) + 896] / 10000:
                                return 2
                            if arg1 > (ext_call.return_data[0] * mem[(32 * _806) + ceil32(return_data.size) + 896] / 10000) - ext_call.return_data[0] - _5291:
                                emit Failure(2, 5, 0);
                                return 2
                else:
                    if not ext_call.return_data[0]:
                        mem[224] = 0
                        mem[256] = 0
                        if ext_call.return_data[0] <= 0:
                            mem[288] = 0
                            mem[320] = Mask(224, 0, stor5.field_0)
                            mem[352] = 0
                            mem[416] = 17
                            mem[448] = 'addition overflow' << 120
                            if Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                revert with 0, 'addition overflow'
                            mem[384] = Mask(224, 0, stor5.field_0)
                            mem[544] = 19
                            mem[576] = 'new index overflows' << 104
                            if Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index overflows'
                            mem[480] = Mask(224, 0, stor5.field_0)
                            mem[608] = 22
                            mem[640] = 'block number overflows' << 80
                            if block.number >= 4294967296:
                                revert with 0, 'block number overflows'
                            mem[512] = uint32(block.number)
                            Mask(224, 0, stor5.field_0) = Mask(224, 0, stor5.field_0)
                            uint32(stor5.field_224) = uint32(block.number)
                            mem[708] = 0
                            require ext_code.size(comptrollerAddress)
                            call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.oracle() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[672] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                            mem[676] = msg.sender
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 672
                            require return_data.size >= 32
                            _597 = mem[672 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[672 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                            require mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                            require mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296 and mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 672] = mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672]
                            _655 = mem[_597 + 672]
                            mem[ceil32(return_data.size) + 704 len floor32(mem[_597 + 672])] = mem[_597 + 704 len floor32(mem[_597 + 672])]
                            mem[(32 * _655) + ceil32(return_data.size) + 704] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 736] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 768] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 800] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 832] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 864] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 896] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 1056] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 928] = (32 * _655) + ceil32(return_data.size) + 1056
                            mem[(32 * _655) + ceil32(return_data.size) + 1088] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 960] = (32 * _655) + ceil32(return_data.size) + 1088
                            mem[(32 * _655) + ceil32(return_data.size) + 1120] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 992] = (32 * _655) + ceil32(return_data.size) + 1120
                            mem[64] = (32 * _655) + ceil32(return_data.size) + 1184
                            mem[(32 * _655) + ceil32(return_data.size) + 1152] = 0
                            mem[(32 * _655) + ceil32(return_data.size) + 1024] = (32 * _655) + ceil32(return_data.size) + 1152
                            _5274 = mem[ceil32(return_data.size) + 672]
                            idx = 0
                            s = 0
                            while idx < _5274:
                                require idx < mem[ceil32(return_data.size) + 672]
                                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 716 len 20])
                                staticcall mem[(32 * idx) + ceil32(return_data.size) + 716 len 20].getAccountSnapshot(address rg1) with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 128
                                mem[(32 * _655) + ceil32(return_data.size) + 864] = ext_call.return_data[96]
                                mem[(32 * _655) + ceil32(return_data.size) + 832] = ext_call.return_data[64]
                                mem[(32 * _655) + ceil32(return_data.size) + 800] = ext_call.return_data[32]
                                if ext_call.return_data[0]:
                                    return 2
                                _5459 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5459] = ext_call.return_data[96]
                                mem[(32 * _655) + ceil32(return_data.size) + 960] = _5459
                                require idx < mem[ceil32(return_data.size) + 672]
                                _5492 = mem[(32 * idx) + ceil32(return_data.size) + 704]
                                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 716 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_5492)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _655) + ceil32(return_data.size) + 896] = ext_call.return_data[0]
                                if not ext_call.return_data[0]:
                                    return 2
                                _5580 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5580] = ext_call.return_data[0]
                                mem[(32 * _655) + ceil32(return_data.size) + 992] = _5580
                                _5635 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5635] = 0
                                if not ext_call.return_data[96]:
                                    _5780 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5780] = 0
                                    mem[(32 * _655) + ceil32(return_data.size) + 1024] = _5780
                                    _5868 = mem[(32 * _655) + ceil32(return_data.size) + 736]
                                    _6000 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6000] = 0
                                    _6110 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6110] = 0
                                    _6319 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6319] = 0
                                    if _5868 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _655) + ceil32(return_data.size) + 736] = _5868 + (0 / 10^18)
                                    _6638 = mem[(32 * _655) + ceil32(return_data.size) + 768]
                                    _6715 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6715] = 0
                                    _6803 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6803] = 0
                                    if not ext_call.return_data[0]:
                                        _7012 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7012] = 0
                                        if _6638 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _655) + ceil32(return_data.size) + 768] = _6638 + (0 / 10^18)
                                    else:
                                        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                            return 2
                                        _7055 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7055] = ext_call.return_data[64] * ext_call.return_data[0]
                                        if _6638 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                            return 2
                                        mem[(32 * _655) + ceil32(return_data.size) + 768] = _6638 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                        return 2
                                    if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                                        return 2
                                    _5813 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5813] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                    mem[(32 * _655) + ceil32(return_data.size) + 1024] = _5813
                                    _5999 = mem[(32 * _655) + ceil32(return_data.size) + 736]
                                    _6099 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6099] = 0
                                    _6154 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6154] = 0
                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                                        _6405 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6405] = 0
                                        if _5999 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _655) + ceil32(return_data.size) + 736] = _5999 + (0 / 10^18)
                                        _6711 = mem[(32 * _655) + ceil32(return_data.size) + 768]
                                        _6789 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6789] = 0
                                        _6888 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6888] = 0
                                        if not ext_call.return_data[0]:
                                            _7053 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7053] = 0
                                            if _6711 + (0 / 10^18) < 0 / 10^18:
                                                return 2
                                            mem[(32 * _655) + ceil32(return_data.size) + 768] = _6711 + (0 / 10^18)
                                        else:
                                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                return 2
                                            _7118 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7118] = ext_call.return_data[64] * ext_call.return_data[0]
                                            if _6711 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                return 2
                                            mem[(32 * _655) + ceil32(return_data.size) + 768] = _6711 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                            return 2
                                        _6504 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6504] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                        if _5999 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                            return 2
                                        mem[(32 * _655) + ceil32(return_data.size) + 736] = _5999 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                                        _6788 = mem[(32 * _655) + ceil32(return_data.size) + 768]
                                        _6844 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6844] = 0
                                        _6964 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6964] = 0
                                        if not ext_call.return_data[0]:
                                            _7117 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7117] = 0
                                            if _6788 + (0 / 10^18) < 0 / 10^18:
                                                return 2
                                            mem[(32 * _655) + ceil32(return_data.size) + 768] = _6788 + (0 / 10^18)
                                        else:
                                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                return 2
                                            _7173 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7173] = ext_call.return_data[64] * ext_call.return_data[0]
                                            if _6788 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                return 2
                                            mem[(32 * _655) + ceil32(return_data.size) + 768] = _6788 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                idx = idx + 1
                                s = ext_call.return_data[0]
                                continue 
                            _5315 = mem[(32 * _655) + ceil32(return_data.size) + 768]
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + _5315 < _5315:
                                return 2
                            mem[(32 * _655) + ceil32(return_data.size) + 768] = ext_call.return_data[0] + _5315
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.vaiMintRate() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not mem[(32 * _655) + ceil32(return_data.size) + 736]:
                                if ext_call.return_data[0] + _5315 > 0:
                                    return 2
                                if arg1 > -ext_call.return_data[0] - _5315:
                                    emit Failure(2, 5, 0);
                                    return 2
                            else:
                                if ext_call.return_data[0] * mem[(32 * _655) + ceil32(return_data.size) + 736] / mem[(32 * _655) + ceil32(return_data.size) + 736] != ext_call.return_data[0]:
                                    revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                                if ext_call.return_data[0] + _5315 > ext_call.return_data[0] * mem[(32 * _655) + ceil32(return_data.size) + 736] / 10000:
                                    return 2
                                if arg1 > (ext_call.return_data[0] * mem[(32 * _655) + ceil32(return_data.size) + 736] / 10000) - ext_call.return_data[0] - _5315:
                                    emit Failure(2, 5, 0);
                                    return 2
                        else:
                            mem[320] = 23
                            mem[352] = 'multiplication overflow'
                            mem[384] = 14
                            mem[416] = 'divide by zero' << 144
                            if not ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            mem[288] = 0 / ext_call.return_data[0]
                            mem[448] = 0
                            mem[480] = Mask(224, 0, stor5.field_0)
                            mem[512] = 0
                            mem[576] = 17
                            mem[608] = 'addition overflow' << 120
                            if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                revert with 0, 'addition overflow'
                            mem[544] = (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0)
                            mem[704] = 19
                            mem[736] = 'new index overflows' << 104
                            if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index overflows'
                            mem[640] = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                            mem[768] = 22
                            mem[800] = 'block number overflows' << 80
                            if block.number >= 4294967296:
                                revert with 0, 'block number overflows'
                            mem[672] = uint32(block.number)
                            Mask(224, 0, stor5.field_0) = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                            uint32(stor5.field_224) = uint32(block.number)
                            mem[868] = 0
                            require ext_code.size(comptrollerAddress)
                            call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.oracle() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[832] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                            mem[836] = msg.sender
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[832 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 832
                            require return_data.size >= 32
                            _787 = mem[832 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[832 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                            require mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                            require mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832] <= 4294967296 and mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 832] = mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832]
                            _834 = mem[_787 + 832]
                            mem[ceil32(return_data.size) + 864 len floor32(mem[_787 + 832])] = mem[_787 + 864 len floor32(mem[_787 + 832])]
                            mem[(32 * _834) + ceil32(return_data.size) + 864] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 896] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 928] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 960] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 992] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 1024] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 1056] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 1216] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 1088] = (32 * _834) + ceil32(return_data.size) + 1216
                            mem[(32 * _834) + ceil32(return_data.size) + 1248] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 1120] = (32 * _834) + ceil32(return_data.size) + 1248
                            mem[(32 * _834) + ceil32(return_data.size) + 1280] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 1152] = (32 * _834) + ceil32(return_data.size) + 1280
                            mem[64] = (32 * _834) + ceil32(return_data.size) + 1344
                            mem[(32 * _834) + ceil32(return_data.size) + 1312] = 0
                            mem[(32 * _834) + ceil32(return_data.size) + 1184] = (32 * _834) + ceil32(return_data.size) + 1312
                            _5273 = mem[ceil32(return_data.size) + 832]
                            idx = 0
                            s = 0
                            while idx < _5273:
                                require idx < mem[ceil32(return_data.size) + 832]
                                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 876 len 20])
                                staticcall mem[(32 * idx) + ceil32(return_data.size) + 876 len 20].getAccountSnapshot(address rg1) with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 128
                                mem[(32 * _834) + ceil32(return_data.size) + 1024] = ext_call.return_data[96]
                                mem[(32 * _834) + ceil32(return_data.size) + 992] = ext_call.return_data[64]
                                mem[(32 * _834) + ceil32(return_data.size) + 960] = ext_call.return_data[32]
                                if ext_call.return_data[0]:
                                    return 2
                                _5456 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5456] = ext_call.return_data[96]
                                mem[(32 * _834) + ceil32(return_data.size) + 1120] = _5456
                                require idx < mem[ceil32(return_data.size) + 832]
                                _5489 = mem[(32 * idx) + ceil32(return_data.size) + 864]
                                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 876 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_5489)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _834) + ceil32(return_data.size) + 1056] = ext_call.return_data[0]
                                if not ext_call.return_data[0]:
                                    return 2
                                _5577 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5577] = ext_call.return_data[0]
                                mem[(32 * _834) + ceil32(return_data.size) + 1152] = _5577
                                _5631 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5631] = 0
                                if not ext_call.return_data[96]:
                                    _5779 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5779] = 0
                                    mem[(32 * _834) + ceil32(return_data.size) + 1184] = _5779
                                    _5865 = mem[(32 * _834) + ceil32(return_data.size) + 896]
                                    _5991 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5991] = 0
                                    _6109 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6109] = 0
                                    _6317 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6317] = 0
                                    if _5865 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _834) + ceil32(return_data.size) + 896] = _5865 + (0 / 10^18)
                                    _6635 = mem[(32 * _834) + ceil32(return_data.size) + 928]
                                    _6708 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6708] = 0
                                    _6802 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6802] = 0
                                    if not ext_call.return_data[0]:
                                        _7011 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7011] = 0
                                        if _6635 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _834) + ceil32(return_data.size) + 928] = _6635 + (0 / 10^18)
                                    else:
                                        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                            return 2
                                        _7051 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7051] = ext_call.return_data[64] * ext_call.return_data[0]
                                        if _6635 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                            return 2
                                        mem[(32 * _834) + ceil32(return_data.size) + 928] = _6635 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                        return 2
                                    if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                                        return 2
                                    _5812 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5812] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                    mem[(32 * _834) + ceil32(return_data.size) + 1184] = _5812
                                    _5990 = mem[(32 * _834) + ceil32(return_data.size) + 896]
                                    _6093 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6093] = 0
                                    _6153 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6153] = 0
                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                                        _6398 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6398] = 0
                                        if _5990 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _834) + ceil32(return_data.size) + 896] = _5990 + (0 / 10^18)
                                        _6704 = mem[(32 * _834) + ceil32(return_data.size) + 928]
                                        _6782 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6782] = 0
                                        _6884 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6884] = 0
                                        if not ext_call.return_data[0]:
                                            _7049 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7049] = 0
                                            if _6704 + (0 / 10^18) < 0 / 10^18:
                                                return 2
                                            mem[(32 * _834) + ceil32(return_data.size) + 928] = _6704 + (0 / 10^18)
                                        else:
                                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                return 2
                                            _7112 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7112] = ext_call.return_data[64] * ext_call.return_data[0]
                                            if _6704 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                return 2
                                            mem[(32 * _834) + ceil32(return_data.size) + 928] = _6704 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                            return 2
                                        _6495 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6495] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                        if _5990 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                            return 2
                                        mem[(32 * _834) + ceil32(return_data.size) + 896] = _5990 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                                        _6781 = mem[(32 * _834) + ceil32(return_data.size) + 928]
                                        _6840 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6840] = 0
                                        _6959 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6959] = 0
                                        if not ext_call.return_data[0]:
                                            _7111 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7111] = 0
                                            if _6781 + (0 / 10^18) < 0 / 10^18:
                                                return 2
                                            mem[(32 * _834) + ceil32(return_data.size) + 928] = _6781 + (0 / 10^18)
                                        else:
                                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                return 2
                                            _7168 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7168] = ext_call.return_data[64] * ext_call.return_data[0]
                                            if _6781 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                return 2
                                            mem[(32 * _834) + ceil32(return_data.size) + 928] = _6781 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                idx = idx + 1
                                s = ext_call.return_data[0]
                                continue 
                            _5311 = mem[(32 * _834) + ceil32(return_data.size) + 928]
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + _5311 < _5311:
                                return 2
                            mem[(32 * _834) + ceil32(return_data.size) + 928] = ext_call.return_data[0] + _5311
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.vaiMintRate() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not mem[(32 * _834) + ceil32(return_data.size) + 896]:
                                if ext_call.return_data[0] + _5311 > 0:
                                    return 2
                                if arg1 > -ext_call.return_data[0] - _5311:
                                    emit Failure(2, 5, 0);
                                    return 2
                            else:
                                if ext_call.return_data[0] * mem[(32 * _834) + ceil32(return_data.size) + 896] / mem[(32 * _834) + ceil32(return_data.size) + 896] != ext_call.return_data[0]:
                                    revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                                if ext_call.return_data[0] + _5311 > ext_call.return_data[0] * mem[(32 * _834) + ceil32(return_data.size) + 896] / 10000:
                                    return 2
                                if arg1 > (ext_call.return_data[0] * mem[(32 * _834) + ceil32(return_data.size) + 896] / 10000) - ext_call.return_data[0] - _5311:
                                    emit Failure(2, 5, 0);
                                    return 2
                    else:
                        require block.number - uint32(stor5.field_224)
                        if (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0]) / block.number - uint32(stor5.field_224) != ext_call.return_data[0]:
                            revert with 0, 'multiplication overflow'
                        mem[224] = 0
                        mem[256] = 0
                        if ext_call.return_data[0] <= 0:
                            mem[288] = 0
                            mem[320] = Mask(224, 0, stor5.field_0)
                            mem[352] = 0
                            mem[416] = 17
                            mem[448] = 'addition overflow' << 120
                            if Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                revert with 0, 'addition overflow'
                            mem[384] = Mask(224, 0, stor5.field_0)
                            mem[544] = 19
                            mem[576] = 'new index overflows' << 104
                            if Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index overflows'
                            mem[480] = Mask(224, 0, stor5.field_0)
                            mem[608] = 22
                            mem[640] = 'block number overflows' << 80
                            if block.number >= 4294967296:
                                revert with 0, 'block number overflows'
                            mem[512] = uint32(block.number)
                            Mask(224, 0, stor5.field_0) = Mask(224, 0, stor5.field_0)
                            uint32(stor5.field_224) = uint32(block.number)
                            mem[708] = 0
                            require ext_code.size(comptrollerAddress)
                            call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.oracle() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[672] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                            mem[676] = msg.sender
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 672
                            require return_data.size >= 32
                            _611 = mem[672 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[672 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                            require mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                            require mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296 and mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 672] = mem[mem[672 len 4], Mask(224, 32, msg.sender) >> 32 + 672]
                            _669 = mem[_611 + 672]
                            mem[ceil32(return_data.size) + 704 len floor32(mem[_611 + 672])] = mem[_611 + 704 len floor32(mem[_611 + 672])]
                            mem[(32 * _669) + ceil32(return_data.size) + 704] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 736] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 768] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 800] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 832] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 864] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 896] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 1056] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 928] = (32 * _669) + ceil32(return_data.size) + 1056
                            mem[(32 * _669) + ceil32(return_data.size) + 1088] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 960] = (32 * _669) + ceil32(return_data.size) + 1088
                            mem[(32 * _669) + ceil32(return_data.size) + 1120] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 992] = (32 * _669) + ceil32(return_data.size) + 1120
                            mem[64] = (32 * _669) + ceil32(return_data.size) + 1184
                            mem[(32 * _669) + ceil32(return_data.size) + 1152] = 0
                            mem[(32 * _669) + ceil32(return_data.size) + 1024] = (32 * _669) + ceil32(return_data.size) + 1152
                            _5272 = mem[ceil32(return_data.size) + 672]
                            idx = 0
                            s = 0
                            while idx < _5272:
                                require idx < mem[ceil32(return_data.size) + 672]
                                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 716 len 20])
                                staticcall mem[(32 * idx) + ceil32(return_data.size) + 716 len 20].getAccountSnapshot(address rg1) with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 128
                                mem[(32 * _669) + ceil32(return_data.size) + 864] = ext_call.return_data[96]
                                mem[(32 * _669) + ceil32(return_data.size) + 832] = ext_call.return_data[64]
                                mem[(32 * _669) + ceil32(return_data.size) + 800] = ext_call.return_data[32]
                                if ext_call.return_data[0]:
                                    return 2
                                _5453 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5453] = ext_call.return_data[96]
                                mem[(32 * _669) + ceil32(return_data.size) + 960] = _5453
                                require idx < mem[ceil32(return_data.size) + 672]
                                _5486 = mem[(32 * idx) + ceil32(return_data.size) + 704]
                                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 716 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_5486)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _669) + ceil32(return_data.size) + 896] = ext_call.return_data[0]
                                if not ext_call.return_data[0]:
                                    return 2
                                _5574 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5574] = ext_call.return_data[0]
                                mem[(32 * _669) + ceil32(return_data.size) + 992] = _5574
                                _5627 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5627] = 0
                                if not ext_call.return_data[96]:
                                    _5778 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5778] = 0
                                    mem[(32 * _669) + ceil32(return_data.size) + 1024] = _5778
                                    _5862 = mem[(32 * _669) + ceil32(return_data.size) + 736]
                                    _5982 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5982] = 0
                                    _6108 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6108] = 0
                                    _6315 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6315] = 0
                                    if _5862 + (0 / 10^18) < 0 / 10^18:
                                        return 2
                                    mem[(32 * _669) + ceil32(return_data.size) + 736] = _5862 + (0 / 10^18)
                                    _6632 = mem[(32 * _669) + ceil32(return_data.size) + 768]
                                    _6701 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6701] = 0
                                    _6801 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6801] = 0
                                    if not ext_call.return_data[0]:
                                        _7010 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7010] = 0
                                        if _6632 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _669) + ceil32(return_data.size) + 768] = _6632 + (0 / 10^18)
                                    else:
                                        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                            return 2
                                        _7047 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7047] = ext_call.return_data[64] * ext_call.return_data[0]
                                        if _6632 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                            return 2
                                        mem[(32 * _669) + ceil32(return_data.size) + 768] = _6632 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                        return 2
                                    if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                                        return 2
                                    _5811 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5811] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                    mem[(32 * _669) + ceil32(return_data.size) + 1024] = _5811
                                    _5981 = mem[(32 * _669) + ceil32(return_data.size) + 736]
                                    _6087 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6087] = 0
                                    _6152 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6152] = 0
                                    if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                                        _6391 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6391] = 0
                                        if _5981 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _669) + ceil32(return_data.size) + 736] = _5981 + (0 / 10^18)
                                        _6697 = mem[(32 * _669) + ceil32(return_data.size) + 768]
                                        _6775 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6775] = 0
                                        _6880 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6880] = 0
                                        if not ext_call.return_data[0]:
                                            _7045 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7045] = 0
                                            if _6697 + (0 / 10^18) < 0 / 10^18:
                                                return 2
                                            mem[(32 * _669) + ceil32(return_data.size) + 768] = _6697 + (0 / 10^18)
                                        else:
                                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                return 2
                                            _7106 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7106] = ext_call.return_data[64] * ext_call.return_data[0]
                                            if _6697 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                return 2
                                            mem[(32 * _669) + ceil32(return_data.size) + 768] = _6697 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                            return 2
                                        _6486 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6486] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                        if _5981 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                            return 2
                                        mem[(32 * _669) + ceil32(return_data.size) + 736] = _5981 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                                        _6774 = mem[(32 * _669) + ceil32(return_data.size) + 768]
                                        _6836 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6836] = 0
                                        _6954 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6954] = 0
                                        if not ext_call.return_data[0]:
                                            _7105 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7105] = 0
                                            if _6774 + (0 / 10^18) < 0 / 10^18:
                                                return 2
                                            mem[(32 * _669) + ceil32(return_data.size) + 768] = _6774 + (0 / 10^18)
                                        else:
                                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                return 2
                                            _7163 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7163] = ext_call.return_data[64] * ext_call.return_data[0]
                                            if _6774 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                return 2
                                            mem[(32 * _669) + ceil32(return_data.size) + 768] = _6774 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                idx = idx + 1
                                s = ext_call.return_data[0]
                                continue 
                            _5307 = mem[(32 * _669) + ceil32(return_data.size) + 768]
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + _5307 < _5307:
                                return 2
                            mem[(32 * _669) + ceil32(return_data.size) + 768] = ext_call.return_data[0] + _5307
                            require ext_code.size(comptrollerAddress)
                            staticcall comptrollerAddress.vaiMintRate() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not mem[(32 * _669) + ceil32(return_data.size) + 736]:
                                if ext_call.return_data[0] + _5307 > 0:
                                    return 2
                                if arg1 > -ext_call.return_data[0] - _5307:
                                    emit Failure(2, 5, 0);
                                    return 2
                            else:
                                if ext_call.return_data[0] * mem[(32 * _669) + ceil32(return_data.size) + 736] / mem[(32 * _669) + ceil32(return_data.size) + 736] != ext_call.return_data[0]:
                                    revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                                if ext_call.return_data[0] + _5307 > ext_call.return_data[0] * mem[(32 * _669) + ceil32(return_data.size) + 736] / 10000:
                                    return 2
                                if arg1 > (ext_call.return_data[0] * mem[(32 * _669) + ceil32(return_data.size) + 736] / 10000) - ext_call.return_data[0] - _5307:
                                    emit Failure(2, 5, 0);
                                    return 2
                        else:
                            mem[320] = 23
                            mem[352] = 'multiplication overflow'
                            if not (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0]):
                                mem[384] = 14
                                mem[416] = 'divide by zero' << 144
                                if not ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                mem[288] = 0 / ext_call.return_data[0]
                                mem[448] = 0
                                mem[480] = Mask(224, 0, stor5.field_0)
                                mem[512] = 0
                                mem[576] = 17
                                mem[608] = 'addition overflow' << 120
                                if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                    revert with 0, 'addition overflow'
                                mem[544] = (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0)
                                mem[704] = 19
                                mem[736] = 'new index overflows' << 104
                                if (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index overflows'
                                mem[640] = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                                mem[768] = 22
                                mem[800] = 'block number overflows' << 80
                                if block.number >= 4294967296:
                                    revert with 0, 'block number overflows'
                                mem[672] = uint32(block.number)
                                Mask(224, 0, stor5.field_0) = Mask(224, 0, (0 / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                                uint32(stor5.field_224) = uint32(block.number)
                                mem[868] = 0
                                require ext_code.size(comptrollerAddress)
                                call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(comptrollerAddress)
                                staticcall comptrollerAddress.oracle() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[832] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                                mem[836] = msg.sender
                                require ext_code.size(comptrollerAddress)
                                staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[832 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 832
                                require return_data.size >= 32
                                _797 = mem[832 len 4], Mask(224, 32, msg.sender) >> 32
                                require mem[832 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                                require mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                                require mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832] <= 4294967296 and mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 832] = mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832]
                                _856 = mem[_797 + 832]
                                mem[ceil32(return_data.size) + 864 len floor32(mem[_797 + 832])] = mem[_797 + 864 len floor32(mem[_797 + 832])]
                                mem[(32 * _856) + ceil32(return_data.size) + 864] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 896] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 928] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 960] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 992] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 1024] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 1056] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 1216] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 1088] = (32 * _856) + ceil32(return_data.size) + 1216
                                mem[(32 * _856) + ceil32(return_data.size) + 1248] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 1120] = (32 * _856) + ceil32(return_data.size) + 1248
                                mem[(32 * _856) + ceil32(return_data.size) + 1280] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 1152] = (32 * _856) + ceil32(return_data.size) + 1280
                                mem[64] = (32 * _856) + ceil32(return_data.size) + 1344
                                mem[(32 * _856) + ceil32(return_data.size) + 1312] = 0
                                mem[(32 * _856) + ceil32(return_data.size) + 1184] = (32 * _856) + ceil32(return_data.size) + 1312
                                _5270 = mem[ceil32(return_data.size) + 832]
                                idx = 0
                                s = 0
                                while idx < _5270:
                                    require idx < mem[ceil32(return_data.size) + 832]
                                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 876 len 20])
                                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 876 len 20].getAccountSnapshot(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 128
                                    mem[(32 * _856) + ceil32(return_data.size) + 1024] = ext_call.return_data[96]
                                    mem[(32 * _856) + ceil32(return_data.size) + 992] = ext_call.return_data[64]
                                    mem[(32 * _856) + ceil32(return_data.size) + 960] = ext_call.return_data[32]
                                    if ext_call.return_data[0]:
                                        return 2
                                    _5447 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5447] = ext_call.return_data[96]
                                    mem[(32 * _856) + ceil32(return_data.size) + 1120] = _5447
                                    require idx < mem[ceil32(return_data.size) + 832]
                                    _5480 = mem[(32 * idx) + ceil32(return_data.size) + 864]
                                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 876 len 20]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_5480)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _856) + ceil32(return_data.size) + 1056] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 2
                                    _5568 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5568] = ext_call.return_data[0]
                                    mem[(32 * _856) + ceil32(return_data.size) + 1152] = _5568
                                    _5619 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5619] = 0
                                    if not ext_call.return_data[96]:
                                        _5776 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5776] = 0
                                        mem[(32 * _856) + ceil32(return_data.size) + 1184] = _5776
                                        _5856 = mem[(32 * _856) + ceil32(return_data.size) + 896]
                                        _5964 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5964] = 0
                                        _6106 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6106] = 0
                                        _6311 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6311] = 0
                                        if _5856 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _856) + ceil32(return_data.size) + 896] = _5856 + (0 / 10^18)
                                        _6626 = mem[(32 * _856) + ceil32(return_data.size) + 928]
                                        _6687 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6687] = 0
                                        _6799 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6799] = 0
                                        if not ext_call.return_data[0]:
                                            _7008 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7008] = 0
                                            if _6626 + (0 / 10^18) < 0 / 10^18:
                                                return 2
                                            mem[(32 * _856) + ceil32(return_data.size) + 928] = _6626 + (0 / 10^18)
                                        else:
                                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                return 2
                                            _7039 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7039] = ext_call.return_data[64] * ext_call.return_data[0]
                                            if _6626 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                return 2
                                            mem[(32 * _856) + ceil32(return_data.size) + 928] = _6626 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                            return 2
                                        if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                                            return 2
                                        _5809 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5809] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                        mem[(32 * _856) + ceil32(return_data.size) + 1184] = _5809
                                        _5963 = mem[(32 * _856) + ceil32(return_data.size) + 896]
                                        _6075 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6075] = 0
                                        _6150 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6150] = 0
                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                                            _6377 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6377] = 0
                                            if _5963 + (0 / 10^18) < 0 / 10^18:
                                                return 2
                                            mem[(32 * _856) + ceil32(return_data.size) + 896] = _5963 + (0 / 10^18)
                                            _6683 = mem[(32 * _856) + ceil32(return_data.size) + 928]
                                            _6761 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6761] = 0
                                            _6872 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6872] = 0
                                            if not ext_call.return_data[0]:
                                                _7037 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7037] = 0
                                                if _6683 + (0 / 10^18) < 0 / 10^18:
                                                    return 2
                                                mem[(32 * _856) + ceil32(return_data.size) + 928] = _6683 + (0 / 10^18)
                                            else:
                                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                    return 2
                                                _7094 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7094] = ext_call.return_data[64] * ext_call.return_data[0]
                                                if _6683 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                    return 2
                                                mem[(32 * _856) + ceil32(return_data.size) + 928] = _6683 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                                return 2
                                            _6468 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6468] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                            if _5963 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                                return 2
                                            mem[(32 * _856) + ceil32(return_data.size) + 896] = _5963 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                                            _6760 = mem[(32 * _856) + ceil32(return_data.size) + 928]
                                            _6828 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6828] = 0
                                            _6944 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6944] = 0
                                            if not ext_call.return_data[0]:
                                                _7093 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7093] = 0
                                                if _6760 + (0 / 10^18) < 0 / 10^18:
                                                    return 2
                                                mem[(32 * _856) + ceil32(return_data.size) + 928] = _6760 + (0 / 10^18)
                                            else:
                                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                    return 2
                                                _7153 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7153] = ext_call.return_data[64] * ext_call.return_data[0]
                                                if _6760 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                    return 2
                                                mem[(32 * _856) + ceil32(return_data.size) + 928] = _6760 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                    idx = idx + 1
                                    s = ext_call.return_data[0]
                                    continue 
                                _5299 = mem[(32 * _856) + ceil32(return_data.size) + 928]
                                mem[mem[64] + 4] = msg.sender
                                require ext_code.size(comptrollerAddress)
                                staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + _5299 < _5299:
                                    return 2
                                mem[(32 * _856) + ceil32(return_data.size) + 928] = ext_call.return_data[0] + _5299
                                require ext_code.size(comptrollerAddress)
                                staticcall comptrollerAddress.vaiMintRate() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not mem[(32 * _856) + ceil32(return_data.size) + 896]:
                                    if ext_call.return_data[0] + _5299 > 0:
                                        return 2
                                    if arg1 > -ext_call.return_data[0] - _5299:
                                        emit Failure(2, 5, 0);
                                        return 2
                                else:
                                    if ext_call.return_data[0] * mem[(32 * _856) + ceil32(return_data.size) + 896] / mem[(32 * _856) + ceil32(return_data.size) + 896] != ext_call.return_data[0]:
                                        revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                                    if ext_call.return_data[0] + _5299 > ext_call.return_data[0] * mem[(32 * _856) + ceil32(return_data.size) + 896] / 10000:
                                        return 2
                                    if arg1 > (ext_call.return_data[0] * mem[(32 * _856) + ceil32(return_data.size) + 896] / 10000) - ext_call.return_data[0] - _5299:
                                        emit Failure(2, 5, 0);
                                        return 2
                            else:
                                require (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0])
                                if (1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / (block.number * ext_call.return_data[0]) - (uint32(stor5.field_224) * ext_call.return_data[0]) != 1000000000000000000 * 10^18:
                                    revert with 0, 'multiplication overflow'
                                mem[384] = 14
                                mem[416] = 'divide by zero' << 144
                                if not ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                mem[288] = (1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]
                                mem[448] = 0
                                mem[480] = Mask(224, 0, stor5.field_0)
                                mem[512] = 0
                                mem[576] = 17
                                mem[608] = 'addition overflow' << 120
                                if ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) < Mask(224, 0, stor5.field_0):
                                    revert with 0, 'addition overflow'
                                mem[544] = ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0)
                                mem[704] = 19
                                mem[736] = 'new index overflows' << 104
                                if ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0) >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index overflows'
                                mem[640] = Mask(224, 0, ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                                mem[768] = 22
                                mem[800] = 'block number overflows' << 80
                                if block.number >= 4294967296:
                                    revert with 0, 'block number overflows'
                                mem[672] = uint32(block.number)
                                Mask(224, 0, stor5.field_0) = Mask(224, 0, ((1000000000000000000 * 10^18 * block.number * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * uint32(stor5.field_224) * ext_call.return_data[0]) / ext_call.return_data[0]) + Mask(224, 0, stor5.field_0))
                                uint32(stor5.field_224) = uint32(block.number)
                                mem[868] = 0
                                require ext_code.size(comptrollerAddress)
                                call comptrollerAddress.distributeVAIMinterVenus(address rg1, bool rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(comptrollerAddress)
                                staticcall comptrollerAddress.oracle() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[832] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                                mem[836] = msg.sender
                                require ext_code.size(comptrollerAddress)
                                staticcall comptrollerAddress.getAssetsIn(address rg1) with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[832 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 832
                                require return_data.size >= 32
                                _828 = mem[832 len 4], Mask(224, 32, msg.sender) >> 32
                                require mem[832 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                                require mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                                require mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832] <= 4294967296 and mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 832] = mem[mem[832 len 4], Mask(224, 32, msg.sender) >> 32 + 832]
                                _905 = mem[_828 + 832]
                                mem[ceil32(return_data.size) + 864 len floor32(mem[_828 + 832])] = mem[_828 + 864 len floor32(mem[_828 + 832])]
                                mem[(32 * _905) + ceil32(return_data.size) + 864] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 896] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 928] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 960] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 992] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 1024] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 1056] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 1216] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 1088] = (32 * _905) + ceil32(return_data.size) + 1216
                                mem[(32 * _905) + ceil32(return_data.size) + 1248] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 1120] = (32 * _905) + ceil32(return_data.size) + 1248
                                mem[(32 * _905) + ceil32(return_data.size) + 1280] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 1152] = (32 * _905) + ceil32(return_data.size) + 1280
                                mem[64] = (32 * _905) + ceil32(return_data.size) + 1344
                                mem[(32 * _905) + ceil32(return_data.size) + 1312] = 0
                                mem[(32 * _905) + ceil32(return_data.size) + 1184] = (32 * _905) + ceil32(return_data.size) + 1312
                                _5271 = mem[ceil32(return_data.size) + 832]
                                idx = 0
                                s = 0
                                while idx < _5271:
                                    require idx < mem[ceil32(return_data.size) + 832]
                                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 876 len 20])
                                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 876 len 20].getAccountSnapshot(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 128
                                    mem[(32 * _905) + ceil32(return_data.size) + 1024] = ext_call.return_data[96]
                                    mem[(32 * _905) + ceil32(return_data.size) + 992] = ext_call.return_data[64]
                                    mem[(32 * _905) + ceil32(return_data.size) + 960] = ext_call.return_data[32]
                                    if ext_call.return_data[0]:
                                        return 2
                                    _5450 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5450] = ext_call.return_data[96]
                                    mem[(32 * _905) + ceil32(return_data.size) + 1120] = _5450
                                    require idx < mem[ceil32(return_data.size) + 832]
                                    _5483 = mem[(32 * idx) + ceil32(return_data.size) + 864]
                                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 876 len 20]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_5483)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _905) + ceil32(return_data.size) + 1056] = ext_call.return_data[0]
                                    if not ext_call.return_data[0]:
                                        return 2
                                    _5571 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5571] = ext_call.return_data[0]
                                    mem[(32 * _905) + ceil32(return_data.size) + 1152] = _5571
                                    _5623 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5623] = 0
                                    if not ext_call.return_data[96]:
                                        _5777 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5777] = 0
                                        mem[(32 * _905) + ceil32(return_data.size) + 1184] = _5777
                                        _5859 = mem[(32 * _905) + ceil32(return_data.size) + 896]
                                        _5973 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5973] = 0
                                        _6107 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6107] = 0
                                        _6313 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6313] = 0
                                        if _5859 + (0 / 10^18) < 0 / 10^18:
                                            return 2
                                        mem[(32 * _905) + ceil32(return_data.size) + 896] = _5859 + (0 / 10^18)
                                        _6629 = mem[(32 * _905) + ceil32(return_data.size) + 928]
                                        _6694 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6694] = 0
                                        _6800 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6800] = 0
                                        if not ext_call.return_data[0]:
                                            _7009 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7009] = 0
                                            if _6629 + (0 / 10^18) < 0 / 10^18:
                                                return 2
                                            mem[(32 * _905) + ceil32(return_data.size) + 928] = _6629 + (0 / 10^18)
                                        else:
                                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                return 2
                                            _7043 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7043] = ext_call.return_data[64] * ext_call.return_data[0]
                                            if _6629 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                return 2
                                            mem[(32 * _905) + ceil32(return_data.size) + 928] = _6629 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                            return 2
                                        if (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 < 5 * 10^17:
                                            return 2
                                        _5810 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5810] = (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                        mem[(32 * _905) + ceil32(return_data.size) + 1184] = _5810
                                        _5972 = mem[(32 * _905) + ceil32(return_data.size) + 896]
                                        _6081 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6081] = 0
                                        _6151 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6151] = 0
                                        if not (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18:
                                            _6384 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6384] = 0
                                            if _5972 + (0 / 10^18) < 0 / 10^18:
                                                return 2
                                            mem[(32 * _905) + ceil32(return_data.size) + 896] = _5972 + (0 / 10^18)
                                            _6690 = mem[(32 * _905) + ceil32(return_data.size) + 928]
                                            _6768 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6768] = 0
                                            _6876 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6876] = 0
                                            if not ext_call.return_data[0]:
                                                _7041 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7041] = 0
                                                if _6690 + (0 / 10^18) < 0 / 10^18:
                                                    return 2
                                                mem[(32 * _905) + ceil32(return_data.size) + 928] = _6690 + (0 / 10^18)
                                            else:
                                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                    return 2
                                                _7100 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7100] = ext_call.return_data[64] * ext_call.return_data[0]
                                                if _6690 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                    return 2
                                                mem[(32 * _905) + ceil32(return_data.size) + 928] = _6690 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 != ext_call.return_data[32]:
                                                return 2
                                            _6477 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6477] = ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18
                                            if _5972 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18) < ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18:
                                                return 2
                                            mem[(32 * _905) + ceil32(return_data.size) + 896] = _5972 + (ext_call.return_data[32] * (ext_call.return_data[0] * ext_call.return_data[96]) + 5 * 10^17 / 10^18 / 10^18)
                                            _6767 = mem[(32 * _905) + ceil32(return_data.size) + 928]
                                            _6832 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6832] = 0
                                            _6949 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6949] = 0
                                            if not ext_call.return_data[0]:
                                                _7099 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7099] = 0
                                                if _6767 + (0 / 10^18) < 0 / 10^18:
                                                    return 2
                                                mem[(32 * _905) + ceil32(return_data.size) + 928] = _6767 + (0 / 10^18)
                                            else:
                                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[64]:
                                                    return 2
                                                _7158 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7158] = ext_call.return_data[64] * ext_call.return_data[0]
                                                if _6767 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18) < ext_call.return_data[64] * ext_call.return_data[0] / 10^18:
                                                    return 2
                                                mem[(32 * _905) + ceil32(return_data.size) + 928] = _6767 + (ext_call.return_data[64] * ext_call.return_data[0] / 10^18)
                                    idx = idx + 1
                                    s = ext_call.return_data[0]
                                    continue 
                                _5303 = mem[(32 * _905) + ceil32(return_data.size) + 928]
                                mem[mem[64] + 4] = msg.sender
                                require ext_code.size(comptrollerAddress)
                                staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + _5303 < _5303:
                                    return 2
                                mem[(32 * _905) + ceil32(return_data.size) + 928] = ext_call.return_data[0] + _5303
                                require ext_code.size(comptrollerAddress)
                                staticcall comptrollerAddress.vaiMintRate() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not mem[(32 * _905) + ceil32(return_data.size) + 896]:
                                    if ext_call.return_data[0] + _5303 > 0:
                                        return 2
                                    if arg1 > -ext_call.return_data[0] - _5303:
                                        emit Failure(2, 5, 0);
                                        return 2
                                else:
                                    if ext_call.return_data[0] * mem[(32 * _905) + ceil32(return_data.size) + 896] / mem[(32 * _905) + ceil32(return_data.size) + 896] != ext_call.return_data[0]:
                                        revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
                                    if ext_call.return_data[0] + _5303 > ext_call.return_data[0] * mem[(32 * _905) + ceil32(return_data.size) + 896] / 10000:
                                        return 2
                                    if arg1 > (ext_call.return_data[0] * mem[(32 * _905) + ceil32(return_data.size) + 896] / 10000) - ext_call.return_data[0] - _5303:
                                        emit Failure(2, 5, 0);
                                        return 2
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.mintedVAIs(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 32, 34, 0xfe5641495f4d494e545f414d4f554e545f43414c43554c4154494f4e5f4641494c45, mem[mem[64] + 102 len 30]
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.setMintedVAIOf(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg1 + ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return ext_call.return_data[0]
        require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
        call 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit MintVAI(msg.sender, arg1);
        return 0
    else:
        return 0
}



}
