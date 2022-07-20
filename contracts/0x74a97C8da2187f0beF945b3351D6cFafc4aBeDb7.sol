contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint8 sub_cbb3d808; offset 160
address assetAddress;
uint256 maturity;
uint8 sub_57ca8740;
uint256 sub_0c98c9c1;
array of struct sub_74f1ca3a;

function sub_0c98c9c1(?) payable {
    return sub_0c98c9c1
}

function maturity() payable {
    return maturity
}

function asset() payable {
    return assetAddress
}

function sub_57ca8740(?) payable {
    return sub_57ca8740
}

function sub_74f1ca3a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_74f1ca3a[arg1].field_0
    return sub_74f1ca3a[arg1][arg2].field_0, 
           sub_74f1ca3a[arg1][arg2].field_256,
           sub_74f1ca3a[arg1][arg2].field_512,
           sub_74f1ca3a[arg1][arg2].field_768,
           sub_74f1ca3a[arg1][arg2].field_1024,
           bool(sub_74f1ca3a[arg1][arg2].field_1280)
}

function getOwner() payable {
    return owner
}

function sub_aa4c0dd9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_74f1ca3a[address(arg1)].field_0
}

function sub_cbb3d808(?) payable {
    return sub_cbb3d808
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_cb63dce8(?) payable {
    require calldata.size - 4 >= 128
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if uint8(arg4) > 100:
        revert with 0, 'Invalid value'
    sub_0c98c9c1 = arg1
    maturity = arg2
    sub_cbb3d808 = uint8(arg3)
    sub_57ca8740 = uint8(arg4)
}

function start(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < sub_0c98c9c1:
        revert with 0, 'Invalid value'
    require ext_code.size(assetAddress)
    call assetAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_74f1ca3a[msg.sender].field_0++
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_0 = block.timestamp
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_256 = arg1
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_512 = 0
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_768 = 0
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_1024 = 0
    sub_74f1ca3a[msg.sender][sub_74f1ca3a[msg.sender].field_0].field_1280 = 0
    if sub_74f1ca3a[msg.sender].field_0 < 1:
        revert with 0, 17
    emit 0x1030a236: arg1, sub_74f1ca3a[msg.sender].field_0 - 1, msg.sender
}

function sub_b7f8f9ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= sub_74f1ca3a[address(arg1)].field_0:
        revert with 0, 50
    if sub_74f1ca3a[address(arg1)][arg2].field_0 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < sub_74f1ca3a[address(arg1)][arg2].field_0:
        revert with 0, 17
    if arg2 >= sub_74f1ca3a[address(arg1)].field_0:
        revert with 0, 50
    if not sub_74f1ca3a[address(arg1)][arg2].field_256:
        if block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
            if block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0 and 0 > -1 / block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
                revert with 0, 17
            if not block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
                revert with 0, 18
            if 0 / block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            else:
                return 0
        else:
            return 0
    if sub_74f1ca3a[address(arg1)][arg2].field_256 and sub_cbb3d808 > -1 / sub_74f1ca3a[address(arg1)][arg2].field_256:
        revert with 0, 17
    if not sub_74f1ca3a[address(arg1)][arg2].field_256:
        revert with 0, 18
    if sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / sub_74f1ca3a[address(arg1)][arg2].field_256 != sub_cbb3d808:
        revert with 0, 'SafeMath: multiplication overflow'
    if not block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
        return 0
    if block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0 and sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100 > -1 / block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
        revert with 0, 17
    if not block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0:
        revert with 0, 18
    if (block.timestamp * sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100) - (sub_74f1ca3a[address(arg1)][arg2].field_0 * sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100) / block.timestamp - sub_74f1ca3a[address(arg1)][arg2].field_0 != sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((block.timestamp * sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100) - (sub_74f1ca3a[address(arg1)][arg2].field_0 * sub_74f1ca3a[address(arg1)][arg2].field_256 * sub_cbb3d808 / 100) / 8760 * 24 * 3600)
}

function end(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= sub_74f1ca3a[msg.sender].field_0:
        revert with 0, 'Invalid index'
    if arg1 >= sub_74f1ca3a[msg.sender].field_0:
        revert with 0, 50
    if sub_74f1ca3a[msg.sender][arg1].field_1280:
        revert with 0, 'Invalid stake'
    if arg1 >= sub_74f1ca3a[msg.sender].field_0:
        revert with 0, 50
    if sub_74f1ca3a[msg.sender][arg1].field_0 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < sub_74f1ca3a[msg.sender][arg1].field_0:
        revert with 0, 17
    if block.timestamp - sub_74f1ca3a[msg.sender][arg1].field_0 < maturity:
        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
            revert with 0, 50
        if not sub_74f1ca3a[msg.sender][arg1].field_256:
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            if 0 > sub_74f1ca3a[msg.sender][arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_74f1ca3a[msg.sender][arg1].field_256 < 0:
                revert with 0, 17
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_74f1ca3a[msg.sender][arg1].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            sub_74f1ca3a[msg.sender][arg1].field_768 = 0
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            sub_74f1ca3a[msg.sender][arg1].field_1024 = block.timestamp
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            sub_74f1ca3a[msg.sender][arg1].field_1280 = 1
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            emit StakeEnd(sub_74f1ca3a[msg.sender][arg1].field_256, 0, 0, arg1, msg.sender);
        else:
            if sub_74f1ca3a[msg.sender][arg1].field_256 and sub_57ca8740 > -1 / sub_74f1ca3a[msg.sender][arg1].field_256:
                revert with 0, 17
            if not sub_74f1ca3a[msg.sender][arg1].field_256:
                revert with 0, 18
            if sub_74f1ca3a[msg.sender][arg1].field_256 * sub_57ca8740 / sub_74f1ca3a[msg.sender][arg1].field_256 != sub_57ca8740:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            if sub_74f1ca3a[msg.sender][arg1].field_256 * sub_57ca8740 / 100 > sub_74f1ca3a[msg.sender][arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_74f1ca3a[msg.sender][arg1].field_256 < sub_74f1ca3a[msg.sender][arg1].field_256 * sub_57ca8740 / 100:
                revert with 0, 17
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_74f1ca3a[msg.sender][arg1].field_256 - (sub_74f1ca3a[msg.sender][arg1].field_256 * sub_57ca8740 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, sub_74f1ca3a[msg.sender][arg1].field_256 * sub_57ca8740 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            sub_74f1ca3a[msg.sender][arg1].field_768 = sub_74f1ca3a[msg.sender][arg1].field_256 * sub_57ca8740 / 100
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            sub_74f1ca3a[msg.sender][arg1].field_1024 = block.timestamp
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            sub_74f1ca3a[msg.sender][arg1].field_1280 = 1
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            emit StakeEnd(sub_74f1ca3a[msg.sender][arg1].field_256, sub_74f1ca3a[msg.sender][arg1].field_256 * sub_57ca8740 / 100, 0, arg1, msg.sender);
    else:
        if arg1 >= sub_74f1ca3a[address(msg.sender)].field_0:
            revert with 0, 50
        if sub_74f1ca3a[address(msg.sender)][arg1].field_0 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < sub_74f1ca3a[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if arg1 >= sub_74f1ca3a[address(msg.sender)].field_0:
            revert with 0, 50
        if not sub_74f1ca3a[address(msg.sender)][arg1].field_256:
            if block.timestamp - sub_74f1ca3a[address(msg.sender)][arg1].field_0:
                if block.timestamp - sub_74f1ca3a[address(msg.sender)][arg1].field_0 and 0 > -1 / block.timestamp - sub_74f1ca3a[address(msg.sender)][arg1].field_0:
                    revert with 0, 17
                if not block.timestamp - sub_74f1ca3a[address(msg.sender)][arg1].field_0:
                    revert with 0, 18
                if 0 / block.timestamp - sub_74f1ca3a[address(msg.sender)][arg1].field_0:
                    revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(assetAddress)
            staticcall assetAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args owner, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0:
                require ext_code.size(assetAddress)
                staticcall assetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0:
                    require ext_code.size(assetAddress)
                    call assetAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_74f1ca3a[msg.sender][arg1].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            sub_74f1ca3a[msg.sender][arg1].field_512 = 0
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            sub_74f1ca3a[msg.sender][arg1].field_1024 = block.timestamp
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            sub_74f1ca3a[msg.sender][arg1].field_1280 = 1
            if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                revert with 0, 50
            emit StakeEnd(sub_74f1ca3a[msg.sender][arg1].field_256, 0, 0, arg1, msg.sender);
        else:
            if sub_74f1ca3a[address(msg.sender)][arg1].field_256 and sub_cbb3d808 > -1 / sub_74f1ca3a[address(msg.sender)][arg1].field_256:
                revert with 0, 17
            if not sub_74f1ca3a[address(msg.sender)][arg1].field_256:
                revert with 0, 18
            if sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / sub_74f1ca3a[address(msg.sender)][arg1].field_256 != sub_cbb3d808:
                revert with 0, 'SafeMath: multiplication overflow'
            if not block.timestamp - sub_74f1ca3a[address(msg.sender)][arg1].field_0:
                require ext_code.size(assetAddress)
                staticcall assetAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args owner, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0:
                    require ext_code.size(assetAddress)
                    staticcall assetAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args owner
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        require ext_code.size(assetAddress)
                        call assetAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args owner, msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                    revert with 0, 50
                require ext_code.size(assetAddress)
                call assetAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_74f1ca3a[msg.sender][arg1].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                    revert with 0, 50
                sub_74f1ca3a[msg.sender][arg1].field_512 = 0
                if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                    revert with 0, 50
                sub_74f1ca3a[msg.sender][arg1].field_1024 = block.timestamp
                if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                    revert with 0, 50
                sub_74f1ca3a[msg.sender][arg1].field_1280 = 1
                if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                    revert with 0, 50
                emit StakeEnd(sub_74f1ca3a[msg.sender][arg1].field_256, 0, 0, arg1, msg.sender);
            else:
                if block.timestamp - sub_74f1ca3a[address(msg.sender)][arg1].field_0 and sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100 > -1 / block.timestamp - sub_74f1ca3a[address(msg.sender)][arg1].field_0:
                    revert with 0, 17
                if not block.timestamp - sub_74f1ca3a[address(msg.sender)][arg1].field_0:
                    revert with 0, 18
                if (block.timestamp * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) - (sub_74f1ca3a[address(msg.sender)][arg1].field_0 * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) / block.timestamp - sub_74f1ca3a[address(msg.sender)][arg1].field_0 != sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(assetAddress)
                staticcall assetAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args owner, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (block.timestamp * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) - (sub_74f1ca3a[address(msg.sender)][arg1].field_0 * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) / 8760 * 24 * 3600:
                    if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                        revert with 0, 50
                    require ext_code.size(assetAddress)
                    call assetAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_74f1ca3a[msg.sender][arg1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                        revert with 0, 50
                    sub_74f1ca3a[msg.sender][arg1].field_512 = 0
                    if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                        revert with 0, 50
                    sub_74f1ca3a[msg.sender][arg1].field_1024 = block.timestamp
                    if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                        revert with 0, 50
                    sub_74f1ca3a[msg.sender][arg1].field_1280 = 1
                    if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                        revert with 0, 50
                    emit StakeEnd(sub_74f1ca3a[msg.sender][arg1].field_256, 0, 0, arg1, msg.sender);
                else:
                    require ext_code.size(assetAddress)
                    staticcall assetAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args owner
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (block.timestamp * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) - (sub_74f1ca3a[address(msg.sender)][arg1].field_0 * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) / 8760 * 24 * 3600:
                        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                            revert with 0, 50
                        require ext_code.size(assetAddress)
                        call assetAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_74f1ca3a[msg.sender][arg1].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                            revert with 0, 50
                        sub_74f1ca3a[msg.sender][arg1].field_512 = 0
                        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                            revert with 0, 50
                        sub_74f1ca3a[msg.sender][arg1].field_1024 = block.timestamp
                        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                            revert with 0, 50
                        sub_74f1ca3a[msg.sender][arg1].field_1280 = 1
                        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                            revert with 0, 50
                        emit StakeEnd(sub_74f1ca3a[msg.sender][arg1].field_256, 0, 0, arg1, msg.sender);
                    else:
                        require ext_code.size(assetAddress)
                        call assetAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args owner, msg.sender, (block.timestamp * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) - (sub_74f1ca3a[address(msg.sender)][arg1].field_0 * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) / 8760 * 24 * 3600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                            revert with 0, 50
                        require ext_code.size(assetAddress)
                        call assetAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_74f1ca3a[msg.sender][arg1].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                            revert with 0, 50
                        sub_74f1ca3a[msg.sender][arg1].field_512 = (block.timestamp * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) - (sub_74f1ca3a[address(msg.sender)][arg1].field_0 * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) / 8760 * 24 * 3600
                        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                            revert with 0, 50
                        sub_74f1ca3a[msg.sender][arg1].field_1024 = block.timestamp
                        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                            revert with 0, 50
                        sub_74f1ca3a[msg.sender][arg1].field_1280 = 1
                        if arg1 >= sub_74f1ca3a[msg.sender].field_0:
                            revert with 0, 50
                        emit StakeEnd(sub_74f1ca3a[msg.sender][arg1].field_256, 0, (block.timestamp * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) - (sub_74f1ca3a[address(msg.sender)][arg1].field_0 * sub_74f1ca3a[address(msg.sender)][arg1].field_256 * sub_cbb3d808 / 100) / 8760 * 24 * 3600, arg1, msg.sender);
    stor1 = 1
}



}
