contract main {




// =====================  Runtime code  =====================


const maxSwingMantissa = 10^17

const numBlocksPerPeriod = 1200


uint8 stor0;
mapping of address readers;
mapping of uint256 _assetPrices;
address anchorAdminAddress;
address pendingAnchorAdminAddress;
address posterAddress;
uint256 maxSwing;
mapping of struct anchors;
mapping of uint256 pendingAnchors;

function anchorAdmin() {
    return anchorAdminAddress
}

function _assetPrices(address arg1) {
    return _assetPrices[arg1]
}

function pendingAnchorAdmin() {
    return pendingAnchorAdminAddress
}

function readers(address arg1) {
    return readers[arg1]
}

function paused() {
    return bool(stor0)
}

function anchors(address arg1) {
    return anchors[arg1].field_0, anchors[arg1].field_256
}

function poster() {
    return posterAddress
}

function pendingAnchors(address arg1) {
    return pendingAnchors[arg1]
}

function maxSwing() {
    return maxSwing
}

function _fallback() payable {
    revert
}

function _setPaused(bool arg1) {
    if anchorAdminAddress != msg.sender:
        emit OracleFailure(address(msg.sender), 0, 1, 1, 0);
        return 1
    stor0 = uint8(arg1)
    emit SetPaused(arg1);
    return 0
}

function _setPendingAnchorAdmin(address arg1) {
    if anchorAdminAddress != msg.sender:
        emit OracleFailure(address(msg.sender), 0, 1, 2, 0);
        return 1
    pendingAnchorAdminAddress = arg1
    emit NewPendingAnchorAdmin(pendingAnchorAdminAddress, arg1);
    return 0
}

function _acceptAnchorAdmin() {
    if pendingAnchorAdminAddress != msg.sender:
        emit OracleFailure(address(msg.sender), 0, 1, 0, 0);
        return 1
    anchorAdminAddress = pendingAnchorAdminAddress
    pendingAnchorAdminAddress = 0
    emit NewAnchorAdmin(anchorAdminAddress, msg.sender);
    return 0
}

function _setPendingAnchor(address arg1, uint256 arg2) {
    if anchorAdminAddress != msg.sender:
        emit OracleFailure(address(msg.sender), address(arg1), 1, 3, 0);
        return 1
    pendingAnchors[address(arg1)] = arg2
    emit NewPendingAnchor(msg.sender, address(arg1), pendingAnchors[address(arg1)], arg2);
    return 0
}

function getPrice(address arg1) {
    if not stor0:
        if not readers[address(arg1)]:
            return _assetPrices[address(arg1)]
        require ext_code.size(readers[address(arg1)])
        call readers[address(arg1)].peek() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32]:
            if ext_call.return_data[0]:
                return (1000000000000000000 * 10^18 / ext_call.return_data[0])
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function assetPrices(address arg1) {
    if not stor0:
        if not readers[address(arg1)]:
            return _assetPrices[address(arg1)]
        require ext_code.size(readers[address(arg1)])
        call readers[address(arg1)].peek() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32]:
            if ext_call.return_data[0]:
                return (1000000000000000000 * 10^18 / ext_call.return_data[0])
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function setPrice(address arg1, uint256 arg2) {
    if posterAddress != msg.sender:
        emit OracleFailure(address(msg.sender), address(arg1), 1, 8, 0);
        return 1
    if readers[address(arg1)]:
        emit OracleFailure(msg.sender, address(arg1), 2, 11, 0);
        return 2
    if pendingAnchors[address(arg1)]:
        if pendingAnchors[address(arg1)] <= arg2:
            require pendingAnchors[address(arg1)] <= arg2
            if not arg2 - pendingAnchors[address(arg1)]:
                if not pendingAnchors[address(arg1)]:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 5);
                    return 2
                if 0 / pendingAnchors[address(arg1)] > maxSwing:
                    emit OracleFailure(msg.sender, address(arg1), 2, 6, 0 / pendingAnchors[address(arg1)]);
                    return 2
            else:
                if (10^18 * arg2) - (10^18 * pendingAnchors[address(arg1)]) / arg2 - pendingAnchors[address(arg1)] != 10^18:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 3);
                    return 2
                if not pendingAnchors[address(arg1)]:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 5);
                    return 2
                if (10^18 * arg2) - (10^18 * pendingAnchors[address(arg1)]) / pendingAnchors[address(arg1)] > maxSwing:
                    emit OracleFailure(msg.sender, address(arg1), 2, 6, (10^18 * arg2) - (10^18 * pendingAnchors[address(arg1)]) / pendingAnchors[address(arg1)]);
                    return 2
        else:
            require arg2 <= pendingAnchors[address(arg1)]
            if not pendingAnchors[address(arg1)] - arg2:
                if not pendingAnchors[address(arg1)]:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 5);
                    return 2
                if 0 / pendingAnchors[address(arg1)] > maxSwing:
                    emit OracleFailure(msg.sender, address(arg1), 2, 6, 0 / pendingAnchors[address(arg1)]);
                    return 2
            else:
                if (10^18 * pendingAnchors[address(arg1)]) - (10^18 * arg2) / pendingAnchors[address(arg1)] - arg2 != 10^18:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 3);
                    return 2
                if not pendingAnchors[address(arg1)]:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 5);
                    return 2
                if (10^18 * pendingAnchors[address(arg1)]) - (10^18 * arg2) / pendingAnchors[address(arg1)] > maxSwing:
                    emit OracleFailure(msg.sender, address(arg1), 2, 6, (10^18 * pendingAnchors[address(arg1)]) - (10^18 * arg2) / pendingAnchors[address(arg1)]);
                    return 2
        if not pendingAnchors[address(arg1)]:
            emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
            return 2
        if not arg2:
            emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
            return 2
        if pendingAnchors[address(arg1)]:
            pendingAnchors[address(arg1)] = 0
        if (block.number / 1200) + 1 > 0:
            anchors[address(arg1)].field_0 = (block.number / 1200) + 1
            anchors[address(arg1)].field_256 = arg2
        _assetPrices[address(arg1)] = arg2
        emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
    else:
        if not anchors[address(arg1)].field_0:
            if not arg2:
                emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                return 2
            if not arg2:
                emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                return 2
            if pendingAnchors[address(arg1)]:
                pendingAnchors[address(arg1)] = 0
            if (block.number / 1200) + 1 > anchors[address(arg1)].field_0:
                anchors[address(arg1)].field_0 = (block.number / 1200) + 1
                anchors[address(arg1)].field_256 = arg2
            _assetPrices[address(arg1)] = arg2
            emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
        else:
            if maxSwing + 10^18 < 10^18:
                emit OracleFailure(msg.sender, address(arg1), 2, 5, 3);
                return 2
            if not anchors[address(arg1)].field_256:
                if arg2 > 0:
                    if anchors[address(arg1)].field_256:
                        emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                    else:
                        emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                    return 2
                if maxSwing > 10^18:
                    emit OracleFailure(msg.sender, address(arg1), 2, 5, 4);
                    return 2
                if not anchors[address(arg1)].field_256:
                    if arg2 < 0:
                        if anchors[address(arg1)].field_256:
                            emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                        else:
                            emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                        return 2
                    if not anchors[address(arg1)].field_256:
                        emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                        return 2
                    if not arg2:
                        emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                        return 2
                    if pendingAnchors[address(arg1)]:
                        pendingAnchors[address(arg1)] = 0
                    if (block.number / 1200) + 1 > anchors[address(arg1)].field_0:
                        anchors[address(arg1)].field_0 = (block.number / 1200) + 1
                        anchors[address(arg1)].field_256 = arg2
                    _assetPrices[address(arg1)] = arg2
                    emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
                else:
                    require (10^18 * anchors[address(arg1)].field_256) - (maxSwing * anchors[address(arg1)].field_256) / anchors[address(arg1)].field_256 == -maxSwing + 10^18
                    require (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 >= 5 * 10^17
                    if not anchors[address(arg1)].field_256:
                        emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                        return 2
                    if arg2 >= (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                        if not arg2:
                            emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                            return 2
                        if pendingAnchors[address(arg1)]:
                            pendingAnchors[address(arg1)] = 0
                        if (block.number / 1200) + 1 > anchors[address(arg1)].field_0:
                            anchors[address(arg1)].field_0 = (block.number / 1200) + 1
                            anchors[address(arg1)].field_256 = arg2
                        _assetPrices[address(arg1)] = arg2
                        emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
                    else:
                        if not (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                            emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                            return 2
                        if pendingAnchors[address(arg1)]:
                            pendingAnchors[address(arg1)] = 0
                        if (block.number / 1200) + 1 > anchors[address(arg1)].field_0:
                            anchors[address(arg1)].field_0 = (block.number / 1200) + 1
                            anchors[address(arg1)].field_256 = (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                        _assetPrices[address(arg1)] = (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                        emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
                        emit CappedPricePosted(address(arg1), arg2, anchors[address(arg1)].field_256, (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
            else:
                if (maxSwing * anchors[address(arg1)].field_256) + (10^18 * anchors[address(arg1)].field_256) / anchors[address(arg1)].field_256 != maxSwing + 10^18:
                    emit OracleFailure(msg.sender, address(arg1), 2, 5, 3);
                    return 2
                if (maxSwing * anchors[address(arg1)].field_256) + (10^18 * anchors[address(arg1)].field_256) + 5 * 10^17 < 5 * 10^17:
                    emit OracleFailure(msg.sender, address(arg1), 2, 5, 3);
                    return 2
                if arg2 > (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                    if not anchors[address(arg1)].field_256:
                        emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                        return 2
                    if not (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                        emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                        return 2
                    if pendingAnchors[address(arg1)]:
                        pendingAnchors[address(arg1)] = 0
                    if (block.number / 1200) + 1 > anchors[address(arg1)].field_0:
                        anchors[address(arg1)].field_0 = (block.number / 1200) + 1
                        anchors[address(arg1)].field_256 = (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                    _assetPrices[address(arg1)] = (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                    emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
                    emit CappedPricePosted(address(arg1), arg2, anchors[address(arg1)].field_256, (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
                else:
                    if maxSwing > 10^18:
                        emit OracleFailure(msg.sender, address(arg1), 2, 5, 4);
                        return 2
                    if not anchors[address(arg1)].field_256:
                        if arg2 < 0:
                            if anchors[address(arg1)].field_256:
                                emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                            else:
                                emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                            return 2
                        if not anchors[address(arg1)].field_256:
                            emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                            return 2
                        if not arg2:
                            emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                            return 2
                        if pendingAnchors[address(arg1)]:
                            pendingAnchors[address(arg1)] = 0
                        if (block.number / 1200) + 1 > anchors[address(arg1)].field_0:
                            anchors[address(arg1)].field_0 = (block.number / 1200) + 1
                            anchors[address(arg1)].field_256 = arg2
                        _assetPrices[address(arg1)] = arg2
                        emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
                    else:
                        require (10^18 * anchors[address(arg1)].field_256) - (maxSwing * anchors[address(arg1)].field_256) / anchors[address(arg1)].field_256 == -maxSwing + 10^18
                        require (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 >= 5 * 10^17
                        if not anchors[address(arg1)].field_256:
                            emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                            return 2
                        if arg2 >= (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                            if not arg2:
                                emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                                return 2
                            if pendingAnchors[address(arg1)]:
                                pendingAnchors[address(arg1)] = 0
                            if (block.number / 1200) + 1 > anchors[address(arg1)].field_0:
                                anchors[address(arg1)].field_0 = (block.number / 1200) + 1
                                anchors[address(arg1)].field_256 = arg2
                            _assetPrices[address(arg1)] = arg2
                            emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
                        else:
                            if not (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                                emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                                return 2
                            if pendingAnchors[address(arg1)]:
                                pendingAnchors[address(arg1)] = 0
                            if (block.number / 1200) + 1 > anchors[address(arg1)].field_0:
                                anchors[address(arg1)].field_0 = (block.number / 1200) + 1
                                anchors[address(arg1)].field_256 = (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                            _assetPrices[address(arg1)] = (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                            emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
                            emit CappedPricePosted(address(arg1), arg2, anchors[address(arg1)].field_256, (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
    return 0
}

function setPrices(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if posterAddress != msg.sender:
        emit OracleFailure(msg.sender, 0, 1, 8, 0);
        return Array(len=1, data=1)
    if not arg1.length:
        emit OracleFailure(msg.sender, 0, 2, 10, 0);
        return Array(len=1, data=2)
    if arg2.length != arg1.length:
        emit OracleFailure(msg.sender, 0, 2, 10, 0);
        return Array(len=1, data=2)
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg1.length
    mem[64] = (32 * arg2.length) + (64 * arg1.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _5587 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _5594 = mem[(32 * idx) + (32 * arg1.length) + 160]
            _5601 = mem[64]
            mem[64] = mem[64] + 256
            _5605 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5605] = 0
            mem[_5601] = _5605
            _5607 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5607] = 0
            mem[_5601 + 32] = _5607
            _5609 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5609] = 0
            mem[_5601 + 64] = _5609
            mem[_5601 + 96] = 0
            mem[_5601 + 160] = 0
            mem[_5601 + 192] = 0
            mem[_5601 + 128] = (block.number / 1200) + 1
            mem[0] = address(_5587)
            mem[_5601 + 224] = pendingAnchors[address(_5587)]
            _5612 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5612] = _5594
            mem[_5601] = _5612
            mem[0] = address(_5587)
            mem[32] = 1
            if readers[address(_5587)]:
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = address(_5587)
                mem[mem[64] + 64] = 2
                mem[mem[64] + 96] = 11
                mem[mem[64] + 128] = 0
                emit OracleFailure(msg.sender, address(_5587), 2, 11, 0);
                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
            else:
                if pendingAnchors[address(_5587)]:
                    mem[_5601 + 96] = 0
                    _5622 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5622] = pendingAnchors[address(_5587)]
                    mem[_5601 + 64] = _5622
                    _5638 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5638] = 0
                    _5649 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5649] = 0
                    if pendingAnchors[address(_5587)] <= _5594:
                        _5691 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5691] = 0
                        require pendingAnchors[address(_5587)] <= _5594
                        _5863 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5863] = _5594 - pendingAnchors[address(_5587)]
                        _5897 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5897] = 0
                        _5913 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5913] = 0
                        if not _5594 - pendingAnchors[address(_5587)]:
                            if not pendingAnchors[address(_5587)]:
                                _5936 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5936] = 0
                                mem[_5601 + 32] = _5936
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 4
                                mem[mem[64] + 128] = 5
                                emit OracleFailure(msg.sender, address(_5587), 2, 4, 5);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                _5939 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5939] = 0 / pendingAnchors[address(_5587)]
                                mem[_5601 + 32] = _5939
                                _5962 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5962] = maxSwing
                                if 0 / pendingAnchors[address(_5587)] > maxSwing:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5587)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 6
                                    mem[mem[64] + 128] = 0 / pendingAnchors[address(_5587)]
                                    emit OracleFailure(msg.sender, address(_5587), 2, 6, 0 / pendingAnchors[address(_5587)]);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    if not pendingAnchors[address(_5587)]:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 7
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                    else:
                                        if not _5594:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5587)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 9
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                        else:
                                            mem[0] = address(_5587)
                                            mem[32] = 8
                                            if not pendingAnchors[address(_5587)]:
                                                if (block.number / 1200) + 1 <= 0:
                                                    mem[0] = address(_5587)
                                                    _6184 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6184] = _5594
                                                else:
                                                    _6146 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6146] = (block.number / 1200) + 1
                                                    mem[_6146 + 32] = _5594
                                                    anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                    anchors[address(_5587)].field_256 = _5594
                                                    mem[0] = address(_5587)
                                                    _6277 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6277] = _5594
                                            else:
                                                mem[0] = address(_5587)
                                                mem[32] = 8
                                                pendingAnchors[address(_5587)] = 0
                                                if (block.number / 1200) + 1 <= 0:
                                                    mem[0] = address(_5587)
                                                    _6280 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6280] = _5594
                                                else:
                                                    _6193 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6193] = (block.number / 1200) + 1
                                                    mem[_6193 + 32] = _5594
                                                    anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                    anchors[address(_5587)].field_256 = _5594
                                                    mem[0] = address(_5587)
                                                    _6396 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6396] = _5594
                                            mem[0] = address(_5587)
                                            mem[32] = 2
                                            _assetPrices[address(_5587)] = _5594
                                            mem[mem[64]] = address(_5587)
                                            mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                            mem[mem[64] + 64] = _5594
                                            mem[mem[64] + 96] = _5594
                                            emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, _5594);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                        else:
                            if (10^18 * _5594) - (10^18 * pendingAnchors[address(_5587)]) / _5594 - pendingAnchors[address(_5587)] != 10^18:
                                _5927 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5927] = 0
                                mem[_5601 + 32] = _5927
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 4
                                mem[mem[64] + 128] = 3
                                emit OracleFailure(msg.sender, address(_5587), 2, 4, 3);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                if not pendingAnchors[address(_5587)]:
                                    _5943 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5943] = 0
                                    mem[_5601 + 32] = _5943
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5587)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 4
                                    mem[mem[64] + 128] = 5
                                    emit OracleFailure(msg.sender, address(_5587), 2, 4, 5);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    _5948 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5948] = (10^18 * _5594) - (10^18 * pendingAnchors[address(_5587)]) / pendingAnchors[address(_5587)]
                                    mem[_5601 + 32] = _5948
                                    _5979 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5979] = maxSwing
                                    if (10^18 * _5594) - (10^18 * pendingAnchors[address(_5587)]) / pendingAnchors[address(_5587)] > maxSwing:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 6
                                        mem[mem[64] + 128] = (10^18 * _5594) - (10^18 * pendingAnchors[address(_5587)]) / pendingAnchors[address(_5587)]
                                        emit OracleFailure(msg.sender, address(_5587), 2, 6, (10^18 * _5594) - (10^18 * pendingAnchors[address(_5587)]) / pendingAnchors[address(_5587)]);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                    else:
                                        if not pendingAnchors[address(_5587)]:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5587)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 7
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                        else:
                                            if not _5594:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5587)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 9
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                            else:
                                                mem[0] = address(_5587)
                                                mem[32] = 8
                                                if not pendingAnchors[address(_5587)]:
                                                    if (block.number / 1200) + 1 <= 0:
                                                        mem[0] = address(_5587)
                                                        _6363 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_6363] = _5594
                                                    else:
                                                        _6263 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_6263] = (block.number / 1200) + 1
                                                        mem[_6263 + 32] = _5594
                                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                        anchors[address(_5587)].field_256 = _5594
                                                        mem[0] = address(_5587)
                                                        _6501 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_6501] = _5594
                                                else:
                                                    mem[0] = address(_5587)
                                                    mem[32] = 8
                                                    pendingAnchors[address(_5587)] = 0
                                                    if (block.number / 1200) + 1 <= 0:
                                                        mem[0] = address(_5587)
                                                        _6504 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_6504] = _5594
                                                    else:
                                                        _6372 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_6372] = (block.number / 1200) + 1
                                                        mem[_6372 + 32] = _5594
                                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                        anchors[address(_5587)].field_256 = _5594
                                                        mem[0] = address(_5587)
                                                        _6652 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_6652] = _5594
                                                mem[0] = address(_5587)
                                                mem[32] = 2
                                                _assetPrices[address(_5587)] = _5594
                                                mem[mem[64]] = address(_5587)
                                                mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                                mem[mem[64] + 64] = _5594
                                                mem[mem[64] + 96] = _5594
                                                emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, _5594);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                    else:
                        _5692 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5692] = 0
                        require _5594 <= pendingAnchors[address(_5587)]
                        _5865 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5865] = pendingAnchors[address(_5587)] - _5594
                        _5903 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5903] = 0
                        _5916 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5916] = 0
                        if not pendingAnchors[address(_5587)] - _5594:
                            if not pendingAnchors[address(_5587)]:
                                _5940 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5940] = 0
                                mem[_5601 + 32] = _5940
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 4
                                mem[mem[64] + 128] = 5
                                emit OracleFailure(msg.sender, address(_5587), 2, 4, 5);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                _5944 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5944] = 0 / pendingAnchors[address(_5587)]
                                mem[_5601 + 32] = _5944
                                _5972 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5972] = maxSwing
                                if 0 / pendingAnchors[address(_5587)] > maxSwing:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5587)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 6
                                    mem[mem[64] + 128] = 0 / pendingAnchors[address(_5587)]
                                    emit OracleFailure(msg.sender, address(_5587), 2, 6, 0 / pendingAnchors[address(_5587)]);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    if not pendingAnchors[address(_5587)]:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 7
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                    else:
                                        if not _5594:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5587)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 9
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                        else:
                                            mem[0] = address(_5587)
                                            mem[32] = 8
                                            if not pendingAnchors[address(_5587)]:
                                                if (block.number / 1200) + 1 <= 0:
                                                    mem[0] = address(_5587)
                                                    _6290 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6290] = _5594
                                                else:
                                                    _6209 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6209] = (block.number / 1200) + 1
                                                    mem[_6209 + 32] = _5594
                                                    anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                    anchors[address(_5587)].field_256 = _5594
                                                    mem[0] = address(_5587)
                                                    _6416 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6416] = _5594
                                            else:
                                                mem[0] = address(_5587)
                                                mem[32] = 8
                                                pendingAnchors[address(_5587)] = 0
                                                if (block.number / 1200) + 1 <= 0:
                                                    mem[0] = address(_5587)
                                                    _6419 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6419] = _5594
                                                else:
                                                    _6299 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6299] = (block.number / 1200) + 1
                                                    mem[_6299 + 32] = _5594
                                                    anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                    anchors[address(_5587)].field_256 = _5594
                                                    mem[0] = address(_5587)
                                                    _6559 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6559] = _5594
                                            mem[0] = address(_5587)
                                            mem[32] = 2
                                            _assetPrices[address(_5587)] = _5594
                                            mem[mem[64]] = address(_5587)
                                            mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                            mem[mem[64] + 64] = _5594
                                            mem[mem[64] + 96] = _5594
                                            emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, _5594);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                        else:
                            if (10^18 * pendingAnchors[address(_5587)]) - (10^18 * _5594) / pendingAnchors[address(_5587)] - _5594 != 10^18:
                                _5931 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5931] = 0
                                mem[_5601 + 32] = _5931
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 4
                                mem[mem[64] + 128] = 3
                                emit OracleFailure(msg.sender, address(_5587), 2, 4, 3);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                if not pendingAnchors[address(_5587)]:
                                    _5949 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5949] = 0
                                    mem[_5601 + 32] = _5949
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5587)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 4
                                    mem[mem[64] + 128] = 5
                                    emit OracleFailure(msg.sender, address(_5587), 2, 4, 5);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    _5953 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5953] = (10^18 * pendingAnchors[address(_5587)]) - (10^18 * _5594) / pendingAnchors[address(_5587)]
                                    mem[_5601 + 32] = _5953
                                    _5996 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5996] = maxSwing
                                    if (10^18 * pendingAnchors[address(_5587)]) - (10^18 * _5594) / pendingAnchors[address(_5587)] > maxSwing:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 6
                                        mem[mem[64] + 128] = (10^18 * pendingAnchors[address(_5587)]) - (10^18 * _5594) / pendingAnchors[address(_5587)]
                                        emit OracleFailure(msg.sender, address(_5587), 2, 6, (10^18 * pendingAnchors[address(_5587)]) - (10^18 * _5594) / pendingAnchors[address(_5587)]);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                    else:
                                        if not pendingAnchors[address(_5587)]:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5587)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 7
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                        else:
                                            if not _5594:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5587)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 9
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                            else:
                                                mem[0] = address(_5587)
                                                mem[32] = 8
                                                if not pendingAnchors[address(_5587)]:
                                                    if (block.number / 1200) + 1 <= 0:
                                                        mem[0] = address(_5587)
                                                        _6526 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_6526] = _5594
                                                    else:
                                                        _6402 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_6402] = (block.number / 1200) + 1
                                                        mem[_6402 + 32] = _5594
                                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                        anchors[address(_5587)].field_256 = _5594
                                                        mem[0] = address(_5587)
                                                        _6667 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_6667] = _5594
                                                else:
                                                    mem[0] = address(_5587)
                                                    mem[32] = 8
                                                    pendingAnchors[address(_5587)] = 0
                                                    if (block.number / 1200) + 1 <= 0:
                                                        mem[0] = address(_5587)
                                                        _6670 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_6670] = _5594
                                                    else:
                                                        _6535 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_6535] = (block.number / 1200) + 1
                                                        mem[_6535 + 32] = _5594
                                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                        anchors[address(_5587)].field_256 = _5594
                                                        mem[0] = address(_5587)
                                                        _6788 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_6788] = _5594
                                                mem[0] = address(_5587)
                                                mem[32] = 2
                                                _assetPrices[address(_5587)] = _5594
                                                mem[mem[64]] = address(_5587)
                                                mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                                mem[mem[64] + 64] = _5594
                                                mem[mem[64] + 96] = _5594
                                                emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, _5594);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                else:
                    mem[_5601 + 96] = anchors[address(_5587)].field_0
                    _5620 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[0] = address(_5587)
                    mem[32] = 7
                    mem[_5620] = anchors[address(_5587)].field_256
                    mem[_5601 + 64] = _5620
                    if not anchors[address(_5587)].field_0:
                        _5631 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5631] = _5594
                        mem[_5601 + 64] = _5631
                        if not _5594:
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5587)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 7
                            mem[mem[64] + 128] = 0
                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                        else:
                            if not _5594:
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 9
                                mem[mem[64] + 128] = 0
                                emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                mem[0] = address(_5587)
                                mem[32] = 8
                                if not pendingAnchors[address(_5587)]:
                                    if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                        mem[0] = address(_5587)
                                        _5707 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5707] = _5594
                                    else:
                                        _5682 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5682] = (block.number / 1200) + 1
                                        mem[_5682 + 32] = _5594
                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                        anchors[address(_5587)].field_256 = _5594
                                        mem[0] = address(_5587)
                                        _5758 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5758] = _5594
                                else:
                                    mem[0] = address(_5587)
                                    mem[32] = 8
                                    pendingAnchors[address(_5587)] = 0
                                    if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                        mem[0] = address(_5587)
                                        _5761 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5761] = _5594
                                    else:
                                        _5716 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5716] = (block.number / 1200) + 1
                                        mem[_5716 + 32] = _5594
                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                        anchors[address(_5587)].field_256 = _5594
                                        mem[0] = address(_5587)
                                        _5798 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5798] = _5594
                                mem[0] = address(_5587)
                                mem[32] = 2
                                _assetPrices[address(_5587)] = _5594
                                mem[mem[64]] = address(_5587)
                                mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                mem[mem[64] + 64] = _5594
                                mem[mem[64] + 96] = _5594
                                emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, _5594);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                    else:
                        _5646 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5646] = 0
                        _5652 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5652] = 0
                        _5663 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5663] = 0
                        _5674 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5674] = 0
                        _5725 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5725] = 0
                        _5801 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5801] = 0
                        _5836 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5836] = 10^18
                        _5837 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5837] = maxSwing
                        _5880 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5880] = 0
                        if maxSwing + 10^18 < 10^18:
                            _5899 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5899] = 0
                            _5915 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5915] = 0
                            mem[_5601] = _5915
                            mem[_5601 + 160] = 0
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5587)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 5
                            mem[mem[64] + 128] = 3
                            emit OracleFailure(msg.sender, address(_5587), 2, 5, 3);
                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                        else:
                            _5900 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5900] = maxSwing + 10^18
                            _5919 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5919] = 0
                            if not anchors[address(_5587)].field_256:
                                _5987 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5987] = 0
                                if _5594 > 0:
                                    mem[_5601] = _5987
                                    mem[_5601 + 160] = 1
                                    mem[_5601 + 192] = anchors[address(_5587)].field_256
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5587)
                                    mem[mem[64] + 64] = 2
                                    if anchors[address(_5587)].field_256:
                                        mem[mem[64] + 96] = 9
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                    else:
                                        mem[mem[64] + 96] = 7
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    _6101 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6101] = maxSwing
                                    _6138 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6138] = 0
                                    if maxSwing > 10^18:
                                        _6633 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6633] = 0
                                        _6911 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6911] = 0
                                        mem[_5601] = _6911
                                        mem[_5601 + 160] = 0
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 5
                                        mem[mem[64] + 128] = 4
                                        emit OracleFailure(msg.sender, address(_5587), 2, 5, 4);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                    else:
                                        _6634 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6634] = -maxSwing + 10^18
                                        _6966 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6966] = 0
                                        if not anchors[address(_5587)].field_256:
                                            _7795 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7795] = 0
                                            if _5594 < 0:
                                                mem[_5601] = _7795
                                                mem[_5601 + 160] = 1
                                                mem[_5601 + 192] = anchors[address(_5587)].field_256
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5587)
                                                mem[mem[64] + 64] = 2
                                                if anchors[address(_5587)].field_256:
                                                    mem[mem[64] + 96] = 9
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                else:
                                                    mem[mem[64] + 96] = 7
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                            else:
                                                mem[_5601] = _5612
                                                mem[_5601 + 160] = 0
                                                if not anchors[address(_5587)].field_256:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5587)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 7
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                else:
                                                    if not _5594:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5587)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 9
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                    else:
                                                        mem[0] = address(_5587)
                                                        mem[32] = 8
                                                        if not pendingAnchors[address(_5587)]:
                                                            if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _8211 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_8211] = _5594
                                                            else:
                                                                _8066 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8066] = (block.number / 1200) + 1
                                                                mem[_8066 + 32] = _5594
                                                                anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                anchors[address(_5587)].field_256 = _5594
                                                                mem[0] = address(_5587)
                                                                _8492 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_8492] = _5594
                                                        else:
                                                            mem[0] = address(_5587)
                                                            mem[32] = 8
                                                            pendingAnchors[address(_5587)] = 0
                                                            if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _8495 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_8495] = _5594
                                                            else:
                                                                _8220 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8220] = (block.number / 1200) + 1
                                                                mem[_8220 + 32] = _5594
                                                                anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                anchors[address(_5587)].field_256 = _5594
                                                                mem[0] = address(_5587)
                                                                _8886 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_8886] = _5594
                                                        mem[0] = address(_5587)
                                                        mem[32] = 2
                                                        _assetPrices[address(_5587)] = _5594
                                                        mem[mem[64]] = address(_5587)
                                                        mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                                        mem[mem[64] + 64] = _5594
                                                        mem[mem[64] + 96] = _5594
                                                        emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, _5594);
                                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                                        else:
                                            require (10^18 * anchors[address(_5587)].field_256) - (maxSwing * anchors[address(_5587)].field_256) / anchors[address(_5587)].field_256 == -maxSwing + 10^18
                                            require (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 >= 5 * 10^17
                                            _7798 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7798] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                            if _5594 >= (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                                mem[_5601] = _5612
                                                mem[_5601 + 160] = 0
                                                if not anchors[address(_5587)].field_256:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5587)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 7
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                else:
                                                    if not _5594:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5587)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 9
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                    else:
                                                        mem[0] = address(_5587)
                                                        mem[32] = 8
                                                        if not pendingAnchors[address(_5587)]:
                                                            if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _8799 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_8799] = _5594
                                                            else:
                                                                _8442 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8442] = (block.number / 1200) + 1
                                                                mem[_8442 + 32] = _5594
                                                                anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                anchors[address(_5587)].field_256 = _5594
                                                                mem[0] = address(_5587)
                                                                _9284 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9284] = _5594
                                                        else:
                                                            mem[0] = address(_5587)
                                                            mem[32] = 8
                                                            pendingAnchors[address(_5587)] = 0
                                                            if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _9287 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9287] = _5594
                                                            else:
                                                                _8808 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8808] = (block.number / 1200) + 1
                                                                mem[_8808 + 32] = _5594
                                                                anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                anchors[address(_5587)].field_256 = _5594
                                                                mem[0] = address(_5587)
                                                                _9786 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9786] = _5594
                                                        mem[0] = address(_5587)
                                                        mem[32] = 2
                                                        _assetPrices[address(_5587)] = _5594
                                                        mem[mem[64]] = address(_5587)
                                                        mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                                        mem[mem[64] + 64] = _5594
                                                        mem[mem[64] + 96] = _5594
                                                        emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, _5594);
                                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                                            else:
                                                mem[_5601] = _7798
                                                mem[_5601 + 160] = 1
                                                mem[_5601 + 192] = anchors[address(_5587)].field_256
                                                if not anchors[address(_5587)].field_256:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5587)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 7
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                else:
                                                    if not (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5587)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 9
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                    else:
                                                        mem[0] = address(_5587)
                                                        mem[32] = 8
                                                        if not pendingAnchors[address(_5587)]:
                                                            if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _8853 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_8853] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                            else:
                                                                _8478 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8478] = (block.number / 1200) + 1
                                                                mem[_8478 + 32] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                mem[0] = address(_5587)
                                                                _9329 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9329] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        else:
                                                            mem[0] = address(_5587)
                                                            mem[32] = 8
                                                            pendingAnchors[address(_5587)] = 0
                                                            if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _9332 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9332] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                            else:
                                                                _8862 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8862] = (block.number / 1200) + 1
                                                                mem[_8862 + 32] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                mem[0] = address(_5587)
                                                                _9840 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9840] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        mem[0] = address(_5587)
                                                        mem[32] = 2
                                                        _assetPrices[address(_5587)] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                                        mem[mem[64]] = address(_5587)
                                                        mem[mem[64] + 32] = _5594
                                                        mem[mem[64] + 64] = anchors[address(_5587)].field_256
                                                        mem[mem[64] + 96] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        emit CappedPricePosted(address(_5587), _5594, anchors[address(_5587)].field_256, (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                            else:
                                if (maxSwing * anchors[address(_5587)].field_256) + (10^18 * anchors[address(_5587)].field_256) / anchors[address(_5587)].field_256 != maxSwing + 10^18:
                                    _5933 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5933] = 0
                                    _5947 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5947] = 0
                                    mem[_5601] = _5947
                                    mem[_5601 + 160] = 0
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5587)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 5
                                    mem[mem[64] + 128] = 3
                                    emit OracleFailure(msg.sender, address(_5587), 2, 5, 3);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    if (maxSwing * anchors[address(_5587)].field_256) + (10^18 * anchors[address(_5587)].field_256) + 5 * 10^17 < 5 * 10^17:
                                        _5955 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5955] = 0
                                        _5977 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5977] = 0
                                        mem[_5601] = _5977
                                        mem[_5601 + 160] = 0
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 5
                                        mem[mem[64] + 128] = 3
                                        emit OracleFailure(msg.sender, address(_5587), 2, 5, 3);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                    else:
                                        _6027 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6027] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                        if _5594 > (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                            mem[_5601] = _6027
                                            mem[_5601 + 160] = 1
                                            mem[_5601 + 192] = anchors[address(_5587)].field_256
                                            if not anchors[address(_5587)].field_256:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5587)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 7
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                            else:
                                                if not (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5587)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 9
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                else:
                                                    mem[0] = address(_5587)
                                                    mem[32] = 8
                                                    if not pendingAnchors[address(_5587)]:
                                                        if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                            mem[0] = address(_5587)
                                                            _7285 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_7285] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        else:
                                                            _7174 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_7174] = (block.number / 1200) + 1
                                                            mem[_7174 + 32] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                            anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                            anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                            mem[0] = address(_5587)
                                                            _7431 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_7431] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    else:
                                                        mem[0] = address(_5587)
                                                        mem[32] = 8
                                                        pendingAnchors[address(_5587)] = 0
                                                        if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                            mem[0] = address(_5587)
                                                            _7434 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_7434] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        else:
                                                            _7294 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_7294] = (block.number / 1200) + 1
                                                            mem[_7294 + 32] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                            anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                            anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                            mem[0] = address(_5587)
                                                            _7568 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_7568] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    mem[0] = address(_5587)
                                                    mem[32] = 2
                                                    _assetPrices[address(_5587)] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                                    mem[mem[64]] = address(_5587)
                                                    mem[mem[64] + 32] = _5594
                                                    mem[mem[64] + 64] = anchors[address(_5587)].field_256
                                                    mem[mem[64] + 96] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    emit CappedPricePosted(address(_5587), _5594, anchors[address(_5587)].field_256, (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                                        else:
                                            _6137 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6137] = maxSwing
                                            _6258 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6258] = 0
                                            if maxSwing > 10^18:
                                                _6843 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6843] = 0
                                                _6963 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6963] = 0
                                                mem[_5601] = _6963
                                                mem[_5601 + 160] = 0
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5587)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 5
                                                mem[mem[64] + 128] = 4
                                                emit OracleFailure(msg.sender, address(_5587), 2, 5, 4);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                            else:
                                                _6844 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6844] = -maxSwing + 10^18
                                                _7009 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7009] = 0
                                                if not anchors[address(_5587)].field_256:
                                                    _7797 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_7797] = 0
                                                    if _5594 < 0:
                                                        mem[_5601] = _7797
                                                        mem[_5601 + 160] = 1
                                                        mem[_5601 + 192] = anchors[address(_5587)].field_256
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5587)
                                                        mem[mem[64] + 64] = 2
                                                        if anchors[address(_5587)].field_256:
                                                            mem[mem[64] + 96] = 9
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                        else:
                                                            mem[mem[64] + 96] = 7
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                    else:
                                                        mem[_5601] = _5612
                                                        mem[_5601 + 160] = 0
                                                        if not anchors[address(_5587)].field_256:
                                                            mem[mem[64]] = msg.sender
                                                            mem[mem[64] + 32] = address(_5587)
                                                            mem[mem[64] + 64] = 2
                                                            mem[mem[64] + 96] = 7
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                        else:
                                                            if not _5594:
                                                                mem[mem[64]] = msg.sender
                                                                mem[mem[64] + 32] = address(_5587)
                                                                mem[mem[64] + 64] = 2
                                                                mem[mem[64] + 96] = 9
                                                                mem[mem[64] + 128] = 0
                                                                emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                            else:
                                                                mem[0] = address(_5587)
                                                                mem[32] = 8
                                                                if not pendingAnchors[address(_5587)]:
                                                                    if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                        mem[0] = address(_5587)
                                                                        _8727 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_8727] = _5594
                                                                    else:
                                                                        _8394 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_8394] = (block.number / 1200) + 1
                                                                        mem[_8394 + 32] = _5594
                                                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                        anchors[address(_5587)].field_256 = _5594
                                                                        mem[0] = address(_5587)
                                                                        _9224 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_9224] = _5594
                                                                else:
                                                                    mem[0] = address(_5587)
                                                                    mem[32] = 8
                                                                    pendingAnchors[address(_5587)] = 0
                                                                    if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                        mem[0] = address(_5587)
                                                                        _9227 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_9227] = _5594
                                                                    else:
                                                                        _8736 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_8736] = (block.number / 1200) + 1
                                                                        mem[_8736 + 32] = _5594
                                                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                        anchors[address(_5587)].field_256 = _5594
                                                                        mem[0] = address(_5587)
                                                                        _9714 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_9714] = _5594
                                                                mem[0] = address(_5587)
                                                                mem[32] = 2
                                                                _assetPrices[address(_5587)] = _5594
                                                                mem[mem[64]] = address(_5587)
                                                                mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                                                mem[mem[64] + 64] = _5594
                                                                mem[mem[64] + 96] = _5594
                                                                emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, _5594);
                                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                                                else:
                                                    require (10^18 * anchors[address(_5587)].field_256) - (maxSwing * anchors[address(_5587)].field_256) / anchors[address(_5587)].field_256 == -maxSwing + 10^18
                                                    require (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 >= 5 * 10^17
                                                    _7801 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_7801] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    if _5594 >= (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                                        mem[_5601] = _5612
                                                        mem[_5601 + 160] = 0
                                                        if not anchors[address(_5587)].field_256:
                                                            mem[mem[64]] = msg.sender
                                                            mem[mem[64] + 32] = address(_5587)
                                                            mem[mem[64] + 64] = 2
                                                            mem[mem[64] + 96] = 7
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                        else:
                                                            if not _5594:
                                                                mem[mem[64]] = msg.sender
                                                                mem[mem[64] + 32] = address(_5587)
                                                                mem[mem[64] + 64] = 2
                                                                mem[mem[64] + 96] = 9
                                                                mem[mem[64] + 128] = 0
                                                                emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                            else:
                                                                mem[0] = address(_5587)
                                                                mem[32] = 8
                                                                if not pendingAnchors[address(_5587)]:
                                                                    if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                        mem[0] = address(_5587)
                                                                        _9627 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_9627] = _5594
                                                                    else:
                                                                        _9174 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_9174] = (block.number / 1200) + 1
                                                                        mem[_9174 + 32] = _5594
                                                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                        anchors[address(_5587)].field_256 = _5594
                                                                        mem[0] = address(_5587)
                                                                        _10120 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_10120] = _5594
                                                                else:
                                                                    mem[0] = address(_5587)
                                                                    mem[32] = 8
                                                                    pendingAnchors[address(_5587)] = 0
                                                                    if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                        mem[0] = address(_5587)
                                                                        _10123 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_10123] = _5594
                                                                    else:
                                                                        _9636 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_9636] = (block.number / 1200) + 1
                                                                        mem[_9636 + 32] = _5594
                                                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                        anchors[address(_5587)].field_256 = _5594
                                                                        mem[0] = address(_5587)
                                                                        _10514 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_10514] = _5594
                                                                mem[0] = address(_5587)
                                                                mem[32] = 2
                                                                _assetPrices[address(_5587)] = _5594
                                                                mem[mem[64]] = address(_5587)
                                                                mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                                                mem[mem[64] + 64] = _5594
                                                                mem[mem[64] + 96] = _5594
                                                                emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, _5594);
                                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                                                    else:
                                                        mem[_5601] = _7801
                                                        mem[_5601 + 160] = 1
                                                        mem[_5601 + 192] = anchors[address(_5587)].field_256
                                                        if not anchors[address(_5587)].field_256:
                                                            mem[mem[64]] = msg.sender
                                                            mem[mem[64] + 32] = address(_5587)
                                                            mem[mem[64] + 64] = 2
                                                            mem[mem[64] + 96] = 7
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                        else:
                                                            if not (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                                                mem[mem[64]] = msg.sender
                                                                mem[mem[64] + 32] = address(_5587)
                                                                mem[mem[64] + 64] = 2
                                                                mem[mem[64] + 96] = 9
                                                                mem[mem[64] + 128] = 0
                                                                emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                            else:
                                                                mem[0] = address(_5587)
                                                                mem[32] = 8
                                                                if not pendingAnchors[address(_5587)]:
                                                                    if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                        mem[0] = address(_5587)
                                                                        _9681 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_9681] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                    else:
                                                                        _9210 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_9210] = (block.number / 1200) + 1
                                                                        mem[_9210 + 32] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                        anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                        mem[0] = address(_5587)
                                                                        _10165 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_10165] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                else:
                                                                    mem[0] = address(_5587)
                                                                    mem[32] = 8
                                                                    pendingAnchors[address(_5587)] = 0
                                                                    if (block.number / 1200) + 1 <= anchors[address(_5587)].field_0:
                                                                        mem[0] = address(_5587)
                                                                        _10168 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_10168] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                    else:
                                                                        _9690 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_9690] = (block.number / 1200) + 1
                                                                        mem[_9690 + 32] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                        anchors[address(_5587)].field_0 = (block.number / 1200) + 1
                                                                        anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                        mem[0] = address(_5587)
                                                                        _10568 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_10568] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                mem[0] = address(_5587)
                                                                mem[32] = 2
                                                                _assetPrices[address(_5587)] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5594, (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                                                mem[mem[64]] = address(_5587)
                                                                mem[mem[64] + 32] = _5594
                                                                mem[mem[64] + 64] = anchors[address(_5587)].field_256
                                                                mem[mem[64] + 96] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                emit CappedPricePosted(address(_5587), _5594, anchors[address(_5587)].field_256, (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _5593 = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])] = mem[(32 * arg2.length) + (32 * arg1.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _5593) + 32]
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg1.length] = code.data[5428 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _5589 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _5598 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _5604 = mem[64]
        mem[64] = mem[64] + 256
        _5606 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5606] = 0
        mem[_5604] = _5606
        _5608 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5608] = 0
        mem[_5604 + 32] = _5608
        _5610 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5610] = 0
        mem[_5604 + 64] = _5610
        mem[_5604 + 96] = 0
        mem[_5604 + 160] = 0
        mem[_5604 + 192] = 0
        mem[_5604 + 128] = (block.number / 1200) + 1
        mem[0] = address(_5589)
        mem[_5604 + 224] = pendingAnchors[address(_5589)]
        _5615 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5615] = _5598
        mem[_5604] = _5615
        mem[0] = address(_5589)
        mem[32] = 1
        if readers[address(_5589)]:
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = address(_5589)
            mem[mem[64] + 64] = 2
            mem[mem[64] + 96] = 11
            mem[mem[64] + 128] = 0
            emit OracleFailure(msg.sender, address(_5589), 2, 11, 0);
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
        else:
            if pendingAnchors[address(_5589)]:
                mem[_5604 + 96] = 0
                _5628 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5628] = pendingAnchors[address(_5589)]
                mem[_5604 + 64] = _5628
                _5642 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5642] = 0
                _5650 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5650] = 0
                if pendingAnchors[address(_5589)] <= _5598:
                    _5705 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5705] = 0
                    require pendingAnchors[address(_5589)] <= _5598
                    _5874 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5874] = _5598 - pendingAnchors[address(_5589)]
                    _5898 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5898] = 0
                    _5914 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5914] = 0
                    if not _5598 - pendingAnchors[address(_5589)]:
                        if not pendingAnchors[address(_5589)]:
                            _5938 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5938] = 0
                            mem[_5604 + 32] = _5938
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5589)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 4
                            mem[mem[64] + 128] = 5
                            emit OracleFailure(msg.sender, address(_5589), 2, 4, 5);
                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                        else:
                            _5941 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5941] = 0 / pendingAnchors[address(_5589)]
                            mem[_5604 + 32] = _5941
                            _5966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5966] = maxSwing
                            if 0 / pendingAnchors[address(_5589)] > maxSwing:
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5589)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 6
                                mem[mem[64] + 128] = 0 / pendingAnchors[address(_5589)]
                                emit OracleFailure(msg.sender, address(_5589), 2, 6, 0 / pendingAnchors[address(_5589)]);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                if not pendingAnchors[address(_5589)]:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5589)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 7
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    if not _5598:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5589)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 9
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                    else:
                                        mem[0] = address(_5589)
                                        mem[32] = 8
                                        if not pendingAnchors[address(_5589)]:
                                            if (block.number / 1200) + 1 <= 0:
                                                mem[0] = address(_5589)
                                                _6223 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6223] = _5598
                                            else:
                                                _6167 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6167] = (block.number / 1200) + 1
                                                mem[_6167 + 32] = _5598
                                                anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                anchors[address(_5589)].field_256 = _5598
                                                mem[0] = address(_5589)
                                                _6328 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6328] = _5598
                                        else:
                                            mem[0] = address(_5589)
                                            mem[32] = 8
                                            pendingAnchors[address(_5589)] = 0
                                            if (block.number / 1200) + 1 <= 0:
                                                mem[0] = address(_5589)
                                                _6331 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6331] = _5598
                                            else:
                                                _6232 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6232] = (block.number / 1200) + 1
                                                mem[_6232 + 32] = _5598
                                                anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                anchors[address(_5589)].field_256 = _5598
                                                mem[0] = address(_5589)
                                                _6463 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6463] = _5598
                                        mem[0] = address(_5589)
                                        mem[32] = 2
                                        _assetPrices[address(_5589)] = _5598
                                        mem[mem[64]] = address(_5589)
                                        mem[mem[64] + 32] = _assetPrices[address(_5589)]
                                        mem[mem[64] + 64] = _5598
                                        mem[mem[64] + 96] = _5598
                                        emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, _5598);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                    else:
                        if (10^18 * _5598) - (10^18 * pendingAnchors[address(_5589)]) / _5598 - pendingAnchors[address(_5589)] != 10^18:
                            _5930 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5930] = 0
                            mem[_5604 + 32] = _5930
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5589)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 4
                            mem[mem[64] + 128] = 3
                            emit OracleFailure(msg.sender, address(_5589), 2, 4, 3);
                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                        else:
                            if not pendingAnchors[address(_5589)]:
                                _5945 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5945] = 0
                                mem[_5604 + 32] = _5945
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5589)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 4
                                mem[mem[64] + 128] = 5
                                emit OracleFailure(msg.sender, address(_5589), 2, 4, 5);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                _5951 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5951] = (10^18 * _5598) - (10^18 * pendingAnchors[address(_5589)]) / pendingAnchors[address(_5589)]
                                mem[_5604 + 32] = _5951
                                _5984 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5984] = maxSwing
                                if (10^18 * _5598) - (10^18 * pendingAnchors[address(_5589)]) / pendingAnchors[address(_5589)] > maxSwing:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5589)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 6
                                    mem[mem[64] + 128] = (10^18 * _5598) - (10^18 * pendingAnchors[address(_5589)]) / pendingAnchors[address(_5589)]
                                    emit OracleFailure(msg.sender, address(_5589), 2, 6, (10^18 * _5598) - (10^18 * pendingAnchors[address(_5589)]) / pendingAnchors[address(_5589)]);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    if not pendingAnchors[address(_5589)]:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5589)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 7
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                    else:
                                        if not _5598:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5589)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 9
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                        else:
                                            mem[0] = address(_5589)
                                            mem[32] = 8
                                            if not pendingAnchors[address(_5589)]:
                                                if (block.number / 1200) + 1 <= 0:
                                                    mem[0] = address(_5589)
                                                    _6430 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6430] = _5598
                                                else:
                                                    _6314 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6314] = (block.number / 1200) + 1
                                                    mem[_6314 + 32] = _5598
                                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                    anchors[address(_5589)].field_256 = _5598
                                                    mem[0] = address(_5589)
                                                    _6570 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6570] = _5598
                                            else:
                                                mem[0] = address(_5589)
                                                mem[32] = 8
                                                pendingAnchors[address(_5589)] = 0
                                                if (block.number / 1200) + 1 <= 0:
                                                    mem[0] = address(_5589)
                                                    _6573 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6573] = _5598
                                                else:
                                                    _6439 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6439] = (block.number / 1200) + 1
                                                    mem[_6439 + 32] = _5598
                                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                    anchors[address(_5589)].field_256 = _5598
                                                    mem[0] = address(_5589)
                                                    _6713 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6713] = _5598
                                            mem[0] = address(_5589)
                                            mem[32] = 2
                                            _assetPrices[address(_5589)] = _5598
                                            mem[mem[64]] = address(_5589)
                                            mem[mem[64] + 32] = _assetPrices[address(_5589)]
                                            mem[mem[64] + 64] = _5598
                                            mem[mem[64] + 96] = _5598
                                            emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, _5598);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                else:
                    _5706 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5706] = 0
                    require _5598 <= pendingAnchors[address(_5589)]
                    _5876 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5876] = pendingAnchors[address(_5589)] - _5598
                    _5908 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5908] = 0
                    _5918 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5918] = 0
                    if not pendingAnchors[address(_5589)] - _5598:
                        if not pendingAnchors[address(_5589)]:
                            _5942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5942] = 0
                            mem[_5604 + 32] = _5942
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5589)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 4
                            mem[mem[64] + 128] = 5
                            emit OracleFailure(msg.sender, address(_5589), 2, 4, 5);
                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                        else:
                            _5946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5946] = 0 / pendingAnchors[address(_5589)]
                            mem[_5604 + 32] = _5946
                            _5976 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5976] = maxSwing
                            if 0 / pendingAnchors[address(_5589)] > maxSwing:
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5589)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 6
                                mem[mem[64] + 128] = 0 / pendingAnchors[address(_5589)]
                                emit OracleFailure(msg.sender, address(_5589), 2, 6, 0 / pendingAnchors[address(_5589)]);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                if not pendingAnchors[address(_5589)]:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5589)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 7
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    if not _5598:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5589)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 9
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                    else:
                                        mem[0] = address(_5589)
                                        mem[32] = 8
                                        if not pendingAnchors[address(_5589)]:
                                            if (block.number / 1200) + 1 <= 0:
                                                mem[0] = address(_5589)
                                                _6341 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6341] = _5598
                                            else:
                                                _6248 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6248] = (block.number / 1200) + 1
                                                mem[_6248 + 32] = _5598
                                                anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                anchors[address(_5589)].field_256 = _5598
                                                mem[0] = address(_5589)
                                                _6483 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6483] = _5598
                                        else:
                                            mem[0] = address(_5589)
                                            mem[32] = 8
                                            pendingAnchors[address(_5589)] = 0
                                            if (block.number / 1200) + 1 <= 0:
                                                mem[0] = address(_5589)
                                                _6486 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6486] = _5598
                                            else:
                                                _6350 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6350] = (block.number / 1200) + 1
                                                mem[_6350 + 32] = _5598
                                                anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                anchors[address(_5589)].field_256 = _5598
                                                mem[0] = address(_5589)
                                                _6628 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6628] = _5598
                                        mem[0] = address(_5589)
                                        mem[32] = 2
                                        _assetPrices[address(_5589)] = _5598
                                        mem[mem[64]] = address(_5589)
                                        mem[mem[64] + 32] = _assetPrices[address(_5589)]
                                        mem[mem[64] + 64] = _5598
                                        mem[mem[64] + 96] = _5598
                                        emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, _5598);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                    else:
                        if (10^18 * pendingAnchors[address(_5589)]) - (10^18 * _5598) / pendingAnchors[address(_5589)] - _5598 != 10^18:
                            _5932 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5932] = 0
                            mem[_5604 + 32] = _5932
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5589)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 4
                            mem[mem[64] + 128] = 3
                            emit OracleFailure(msg.sender, address(_5589), 2, 4, 3);
                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                        else:
                            if not pendingAnchors[address(_5589)]:
                                _5952 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5952] = 0
                                mem[_5604 + 32] = _5952
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5589)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 4
                                mem[mem[64] + 128] = 5
                                emit OracleFailure(msg.sender, address(_5589), 2, 4, 5);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                _5954 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5954] = (10^18 * pendingAnchors[address(_5589)]) - (10^18 * _5598) / pendingAnchors[address(_5589)]
                                mem[_5604 + 32] = _5954
                                _6006 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6006] = maxSwing
                                if (10^18 * pendingAnchors[address(_5589)]) - (10^18 * _5598) / pendingAnchors[address(_5589)] > maxSwing:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5589)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 6
                                    mem[mem[64] + 128] = (10^18 * pendingAnchors[address(_5589)]) - (10^18 * _5598) / pendingAnchors[address(_5589)]
                                    emit OracleFailure(msg.sender, address(_5589), 2, 6, (10^18 * pendingAnchors[address(_5589)]) - (10^18 * _5598) / pendingAnchors[address(_5589)]);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    if not pendingAnchors[address(_5589)]:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5589)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 7
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                    else:
                                        if not _5598:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5589)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 9
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                        else:
                                            mem[0] = address(_5589)
                                            mem[32] = 8
                                            if not pendingAnchors[address(_5589)]:
                                                if (block.number / 1200) + 1 <= 0:
                                                    mem[0] = address(_5589)
                                                    _6595 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6595] = _5598
                                                else:
                                                    _6469 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6469] = (block.number / 1200) + 1
                                                    mem[_6469 + 32] = _5598
                                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                    anchors[address(_5589)].field_256 = _5598
                                                    mem[0] = address(_5589)
                                                    _6728 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6728] = _5598
                                            else:
                                                mem[0] = address(_5589)
                                                mem[32] = 8
                                                pendingAnchors[address(_5589)] = 0
                                                if (block.number / 1200) + 1 <= 0:
                                                    mem[0] = address(_5589)
                                                    _6731 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6731] = _5598
                                                else:
                                                    _6604 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6604] = (block.number / 1200) + 1
                                                    mem[_6604 + 32] = _5598
                                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                    anchors[address(_5589)].field_256 = _5598
                                                    mem[0] = address(_5589)
                                                    _6833 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6833] = _5598
                                            mem[0] = address(_5589)
                                            mem[32] = 2
                                            _assetPrices[address(_5589)] = _5598
                                            mem[mem[64]] = address(_5589)
                                            mem[mem[64] + 32] = _assetPrices[address(_5589)]
                                            mem[mem[64] + 64] = _5598
                                            mem[mem[64] + 96] = _5598
                                            emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, _5598);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
            else:
                mem[_5604 + 96] = anchors[address(_5589)].field_0
                _5626 = mem[64]
                mem[64] = mem[64] + 32
                mem[0] = address(_5589)
                mem[32] = 7
                mem[_5626] = anchors[address(_5589)].field_256
                mem[_5604 + 64] = _5626
                if not anchors[address(_5589)].field_0:
                    _5634 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5634] = _5598
                    mem[_5604 + 64] = _5634
                    if not _5598:
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = address(_5589)
                        mem[mem[64] + 64] = 2
                        mem[mem[64] + 96] = 7
                        mem[mem[64] + 128] = 0
                        emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                    else:
                        if not _5598:
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5589)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 9
                            mem[mem[64] + 128] = 0
                            emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                        else:
                            mem[0] = address(_5589)
                            mem[32] = 8
                            if not pendingAnchors[address(_5589)]:
                                if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                    mem[0] = address(_5589)
                                    _5730 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5730] = _5598
                                else:
                                    _5696 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5696] = (block.number / 1200) + 1
                                    mem[_5696 + 32] = _5598
                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                    anchors[address(_5589)].field_256 = _5598
                                    mem[0] = address(_5589)
                                    _5773 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5773] = _5598
                            else:
                                mem[0] = address(_5589)
                                mem[32] = 8
                                pendingAnchors[address(_5589)] = 0
                                if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                    mem[0] = address(_5589)
                                    _5776 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5776] = _5598
                                else:
                                    _5739 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5739] = (block.number / 1200) + 1
                                    mem[_5739 + 32] = _5598
                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                    anchors[address(_5589)].field_256 = _5598
                                    mem[0] = address(_5589)
                                    _5817 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5817] = _5598
                            mem[0] = address(_5589)
                            mem[32] = 2
                            _assetPrices[address(_5589)] = _5598
                            mem[mem[64]] = address(_5589)
                            mem[mem[64] + 32] = _assetPrices[address(_5589)]
                            mem[mem[64] + 64] = _5598
                            mem[mem[64] + 96] = _5598
                            emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, _5598);
                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                else:
                    _5648 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5648] = 0
                    _5654 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5654] = 0
                    _5664 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5664] = 0
                    _5678 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5678] = 0
                    _5748 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5748] = 0
                    _5820 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5820] = 0
                    _5853 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5853] = 10^18
                    _5854 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5854] = maxSwing
                    _5884 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5884] = 0
                    if maxSwing + 10^18 < 10^18:
                        _5904 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5904] = 0
                        _5917 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5917] = 0
                        mem[_5604] = _5917
                        mem[_5604 + 160] = 0
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = address(_5589)
                        mem[mem[64] + 64] = 2
                        mem[mem[64] + 96] = 5
                        mem[mem[64] + 128] = 3
                        emit OracleFailure(msg.sender, address(_5589), 2, 5, 3);
                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                    else:
                        _5905 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5905] = maxSwing + 10^18
                        _5920 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5920] = 0
                        if not anchors[address(_5589)].field_256:
                            _5997 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5997] = 0
                            if _5598 > 0:
                                mem[_5604] = _5997
                                mem[_5604 + 160] = 1
                                mem[_5604 + 192] = anchors[address(_5589)].field_256
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5589)
                                mem[mem[64] + 64] = 2
                                if anchors[address(_5589)].field_256:
                                    mem[mem[64] + 96] = 9
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                else:
                                    mem[mem[64] + 96] = 7
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                _6113 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6113] = maxSwing
                                _6159 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6159] = 0
                                if maxSwing > 10^18:
                                    _6694 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6694] = 0
                                    _6928 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6928] = 0
                                    mem[_5604] = _6928
                                    mem[_5604 + 160] = 0
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5589)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 5
                                    mem[mem[64] + 128] = 4
                                    emit OracleFailure(msg.sender, address(_5589), 2, 5, 4);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    _6695 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6695] = -maxSwing + 10^18
                                    _6980 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6980] = 0
                                    if not anchors[address(_5589)].field_256:
                                        _7796 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7796] = 0
                                        if _5598 < 0:
                                            mem[_5604] = _7796
                                            mem[_5604 + 160] = 1
                                            mem[_5604 + 192] = anchors[address(_5589)].field_256
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5589)
                                            mem[mem[64] + 64] = 2
                                            if anchors[address(_5589)].field_256:
                                                mem[mem[64] + 96] = 9
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                            else:
                                                mem[mem[64] + 96] = 7
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                        else:
                                            mem[_5604] = _5615
                                            mem[_5604 + 160] = 0
                                            if not anchors[address(_5589)].field_256:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5589)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 7
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                            else:
                                                if not _5598:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5589)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 9
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                else:
                                                    mem[0] = address(_5589)
                                                    mem[32] = 8
                                                    if not pendingAnchors[address(_5589)]:
                                                        if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                            mem[0] = address(_5589)
                                                            _8307 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_8307] = _5598
                                                        else:
                                                            _8142 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8142] = (block.number / 1200) + 1
                                                            mem[_8142 + 32] = _5598
                                                            anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                            anchors[address(_5589)].field_256 = _5598
                                                            mem[0] = address(_5589)
                                                            _8660 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_8660] = _5598
                                                    else:
                                                        mem[0] = address(_5589)
                                                        mem[32] = 8
                                                        pendingAnchors[address(_5589)] = 0
                                                        if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                            mem[0] = address(_5589)
                                                            _8663 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_8663] = _5598
                                                        else:
                                                            _8316 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8316] = (block.number / 1200) + 1
                                                            mem[_8316 + 32] = _5598
                                                            anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                            anchors[address(_5589)].field_256 = _5598
                                                            mem[0] = address(_5589)
                                                            _9114 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9114] = _5598
                                                    mem[0] = address(_5589)
                                                    mem[32] = 2
                                                    _assetPrices[address(_5589)] = _5598
                                                    mem[mem[64]] = address(_5589)
                                                    mem[mem[64] + 32] = _assetPrices[address(_5589)]
                                                    mem[mem[64] + 64] = _5598
                                                    mem[mem[64] + 96] = _5598
                                                    emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, _5598);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                                    else:
                                        require (10^18 * anchors[address(_5589)].field_256) - (maxSwing * anchors[address(_5589)].field_256) / anchors[address(_5589)].field_256 == -maxSwing + 10^18
                                        require (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 >= 5 * 10^17
                                        _7800 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7800] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                        if _5598 >= (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18:
                                            mem[_5604] = _5615
                                            mem[_5604 + 160] = 0
                                            if not anchors[address(_5589)].field_256:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5589)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 7
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                            else:
                                                if not _5598:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5589)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 9
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                else:
                                                    mem[0] = address(_5589)
                                                    mem[32] = 8
                                                    if not pendingAnchors[address(_5589)]:
                                                        if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                            mem[0] = address(_5589)
                                                            _9027 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9027] = _5598
                                                        else:
                                                            _8610 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8610] = (block.number / 1200) + 1
                                                            mem[_8610 + 32] = _5598
                                                            anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                            anchors[address(_5589)].field_256 = _5598
                                                            mem[0] = address(_5589)
                                                            _9512 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9512] = _5598
                                                    else:
                                                        mem[0] = address(_5589)
                                                        mem[32] = 8
                                                        pendingAnchors[address(_5589)] = 0
                                                        if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                            mem[0] = address(_5589)
                                                            _9515 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9515] = _5598
                                                        else:
                                                            _9036 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_9036] = (block.number / 1200) + 1
                                                            mem[_9036 + 32] = _5598
                                                            anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                            anchors[address(_5589)].field_256 = _5598
                                                            mem[0] = address(_5589)
                                                            _10030 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_10030] = _5598
                                                    mem[0] = address(_5589)
                                                    mem[32] = 2
                                                    _assetPrices[address(_5589)] = _5598
                                                    mem[mem[64]] = address(_5589)
                                                    mem[mem[64] + 32] = _assetPrices[address(_5589)]
                                                    mem[mem[64] + 64] = _5598
                                                    mem[mem[64] + 96] = _5598
                                                    emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, _5598);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                                        else:
                                            mem[_5604] = _7800
                                            mem[_5604 + 160] = 1
                                            mem[_5604 + 192] = anchors[address(_5589)].field_256
                                            if not anchors[address(_5589)].field_256:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5589)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 7
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                            else:
                                                if not (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5589)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 9
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                else:
                                                    mem[0] = address(_5589)
                                                    mem[32] = 8
                                                    if not pendingAnchors[address(_5589)]:
                                                        if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                            mem[0] = address(_5589)
                                                            _9081 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9081] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                        else:
                                                            _8646 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8646] = (block.number / 1200) + 1
                                                            mem[_8646 + 32] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                            anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                            anchors[address(_5589)].field_256 = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                            mem[0] = address(_5589)
                                                            _9557 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9557] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                    else:
                                                        mem[0] = address(_5589)
                                                        mem[32] = 8
                                                        pendingAnchors[address(_5589)] = 0
                                                        if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                            mem[0] = address(_5589)
                                                            _9560 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9560] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                        else:
                                                            _9090 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_9090] = (block.number / 1200) + 1
                                                            mem[_9090 + 32] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                            anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                            anchors[address(_5589)].field_256 = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                            mem[0] = address(_5589)
                                                            _10084 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_10084] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                    mem[0] = address(_5589)
                                                    mem[32] = 2
                                                    _assetPrices[address(_5589)] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                    emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18);
                                                    mem[mem[64]] = address(_5589)
                                                    mem[mem[64] + 32] = _5598
                                                    mem[mem[64] + 64] = anchors[address(_5589)].field_256
                                                    mem[mem[64] + 96] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                    emit CappedPricePosted(address(_5589), _5598, anchors[address(_5589)].field_256, (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                        else:
                            if (maxSwing * anchors[address(_5589)].field_256) + (10^18 * anchors[address(_5589)].field_256) / anchors[address(_5589)].field_256 != maxSwing + 10^18:
                                _5934 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5934] = 0
                                _5950 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5950] = 0
                                mem[_5604] = _5950
                                mem[_5604 + 160] = 0
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5589)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 3
                                emit OracleFailure(msg.sender, address(_5589), 2, 5, 3);
                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                            else:
                                if (maxSwing * anchors[address(_5589)].field_256) + (10^18 * anchors[address(_5589)].field_256) + 5 * 10^17 < 5 * 10^17:
                                    _5956 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5956] = 0
                                    _5982 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5982] = 0
                                    mem[_5604] = _5982
                                    mem[_5604 + 160] = 0
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5589)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 5
                                    mem[mem[64] + 128] = 3
                                    emit OracleFailure(msg.sender, address(_5589), 2, 5, 3);
                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                else:
                                    _6034 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6034] = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                    if _5598 > (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18:
                                        mem[_5604] = _6034
                                        mem[_5604 + 160] = 1
                                        mem[_5604 + 192] = anchors[address(_5589)].field_256
                                        if not anchors[address(_5589)].field_256:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5589)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 7
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                        else:
                                            if not (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5589)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 9
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                            else:
                                                mem[0] = address(_5589)
                                                mem[32] = 8
                                                if not pendingAnchors[address(_5589)]:
                                                    if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                        mem[0] = address(_5589)
                                                        _7357 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_7357] = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                    else:
                                                        _7228 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7228] = (block.number / 1200) + 1
                                                        mem[_7228 + 32] = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                        anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                        anchors[address(_5589)].field_256 = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                        mem[0] = address(_5589)
                                                        _7493 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_7493] = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                else:
                                                    mem[0] = address(_5589)
                                                    mem[32] = 8
                                                    pendingAnchors[address(_5589)] = 0
                                                    if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                        mem[0] = address(_5589)
                                                        _7496 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_7496] = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                    else:
                                                        _7366 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7366] = (block.number / 1200) + 1
                                                        mem[_7366 + 32] = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                        anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                        anchors[address(_5589)].field_256 = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                        mem[0] = address(_5589)
                                                        _7618 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_7618] = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                mem[0] = address(_5589)
                                                mem[32] = 2
                                                _assetPrices[address(_5589)] = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18);
                                                mem[mem[64]] = address(_5589)
                                                mem[mem[64] + 32] = _5598
                                                mem[mem[64] + 64] = anchors[address(_5589)].field_256
                                                mem[mem[64] + 96] = (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                emit CappedPricePosted(address(_5589), _5598, anchors[address(_5589)].field_256, (10^18 * anchors[address(_5589)].field_256) + (maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18);
                                                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                                    else:
                                        _6158 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6158] = maxSwing
                                        _6309 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6309] = 0
                                        if maxSwing > 10^18:
                                            _6877 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6877] = 0
                                            _6977 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6977] = 0
                                            mem[_5604] = _6977
                                            mem[_5604 + 160] = 0
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5589)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 5
                                            mem[mem[64] + 128] = 4
                                            emit OracleFailure(msg.sender, address(_5589), 2, 5, 4);
                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                        else:
                                            _6878 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6878] = -maxSwing + 10^18
                                            _7040 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7040] = 0
                                            if not anchors[address(_5589)].field_256:
                                                _7799 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7799] = 0
                                                if _5598 < 0:
                                                    mem[_5604] = _7799
                                                    mem[_5604 + 160] = 1
                                                    mem[_5604 + 192] = anchors[address(_5589)].field_256
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5589)
                                                    mem[mem[64] + 64] = 2
                                                    if anchors[address(_5589)].field_256:
                                                        mem[mem[64] + 96] = 9
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                                    else:
                                                        mem[mem[64] + 96] = 7
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                                    require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                else:
                                                    mem[_5604] = _5615
                                                    mem[_5604 + 160] = 0
                                                    if not anchors[address(_5589)].field_256:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5589)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 7
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                    else:
                                                        if not _5598:
                                                            mem[mem[64]] = msg.sender
                                                            mem[mem[64] + 32] = address(_5589)
                                                            mem[mem[64] + 64] = 2
                                                            mem[mem[64] + 96] = 9
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                        else:
                                                            mem[0] = address(_5589)
                                                            mem[32] = 8
                                                            if not pendingAnchors[address(_5589)]:
                                                                if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                                    mem[0] = address(_5589)
                                                                    _8955 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_8955] = _5598
                                                                else:
                                                                    _8562 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_8562] = (block.number / 1200) + 1
                                                                    mem[_8562 + 32] = _5598
                                                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                                    anchors[address(_5589)].field_256 = _5598
                                                                    mem[0] = address(_5589)
                                                                    _9452 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_9452] = _5598
                                                            else:
                                                                mem[0] = address(_5589)
                                                                mem[32] = 8
                                                                pendingAnchors[address(_5589)] = 0
                                                                if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                                    mem[0] = address(_5589)
                                                                    _9455 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_9455] = _5598
                                                                else:
                                                                    _8964 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_8964] = (block.number / 1200) + 1
                                                                    mem[_8964 + 32] = _5598
                                                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                                    anchors[address(_5589)].field_256 = _5598
                                                                    mem[0] = address(_5589)
                                                                    _9958 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_9958] = _5598
                                                            mem[0] = address(_5589)
                                                            mem[32] = 2
                                                            _assetPrices[address(_5589)] = _5598
                                                            mem[mem[64]] = address(_5589)
                                                            mem[mem[64] + 32] = _assetPrices[address(_5589)]
                                                            mem[mem[64] + 64] = _5598
                                                            mem[mem[64] + 96] = _5598
                                                            emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, _5598);
                                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                                            else:
                                                require (10^18 * anchors[address(_5589)].field_256) - (maxSwing * anchors[address(_5589)].field_256) / anchors[address(_5589)].field_256 == -maxSwing + 10^18
                                                require (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 >= 5 * 10^17
                                                _7802 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7802] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                if _5598 >= (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18:
                                                    mem[_5604] = _5615
                                                    mem[_5604 + 160] = 0
                                                    if not anchors[address(_5589)].field_256:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5589)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 7
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                    else:
                                                        if not _5598:
                                                            mem[mem[64]] = msg.sender
                                                            mem[mem[64] + 32] = address(_5589)
                                                            mem[mem[64] + 64] = 2
                                                            mem[mem[64] + 96] = 9
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                        else:
                                                            mem[0] = address(_5589)
                                                            mem[32] = 8
                                                            if not pendingAnchors[address(_5589)]:
                                                                if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                                    mem[0] = address(_5589)
                                                                    _9871 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_9871] = _5598
                                                                else:
                                                                    _9402 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_9402] = (block.number / 1200) + 1
                                                                    mem[_9402 + 32] = _5598
                                                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                                    anchors[address(_5589)].field_256 = _5598
                                                                    mem[0] = address(_5589)
                                                                    _10312 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10312] = _5598
                                                            else:
                                                                mem[0] = address(_5589)
                                                                mem[32] = 8
                                                                pendingAnchors[address(_5589)] = 0
                                                                if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                                    mem[0] = address(_5589)
                                                                    _10315 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10315] = _5598
                                                                else:
                                                                    _9880 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_9880] = (block.number / 1200) + 1
                                                                    mem[_9880 + 32] = _5598
                                                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                                    anchors[address(_5589)].field_256 = _5598
                                                                    mem[0] = address(_5589)
                                                                    _10654 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10654] = _5598
                                                            mem[0] = address(_5589)
                                                            mem[32] = 2
                                                            _assetPrices[address(_5589)] = _5598
                                                            mem[mem[64]] = address(_5589)
                                                            mem[mem[64] + 32] = _assetPrices[address(_5589)]
                                                            mem[mem[64] + 64] = _5598
                                                            mem[mem[64] + 96] = _5598
                                                            emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, _5598);
                                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
                                                else:
                                                    mem[_5604] = _7802
                                                    mem[_5604 + 160] = 1
                                                    mem[_5604 + 192] = anchors[address(_5589)].field_256
                                                    if not anchors[address(_5589)].field_256:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5589)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 7
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5589), 2, 7, 0);
                                                        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                    else:
                                                        if not (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18:
                                                            mem[mem[64]] = msg.sender
                                                            mem[mem[64] + 32] = address(_5589)
                                                            mem[mem[64] + 64] = 2
                                                            mem[mem[64] + 96] = 9
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5589), 2, 9, 0);
                                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 2
                                                        else:
                                                            mem[0] = address(_5589)
                                                            mem[32] = 8
                                                            if not pendingAnchors[address(_5589)]:
                                                                if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                                    mem[0] = address(_5589)
                                                                    _9925 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_9925] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                                else:
                                                                    _9438 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_9438] = (block.number / 1200) + 1
                                                                    mem[_9438 + 32] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                                    anchors[address(_5589)].field_256 = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                                    mem[0] = address(_5589)
                                                                    _10357 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10357] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                            else:
                                                                mem[0] = address(_5589)
                                                                mem[32] = 8
                                                                pendingAnchors[address(_5589)] = 0
                                                                if (block.number / 1200) + 1 <= anchors[address(_5589)].field_0:
                                                                    mem[0] = address(_5589)
                                                                    _10360 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10360] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                                else:
                                                                    _9934 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_9934] = (block.number / 1200) + 1
                                                                    mem[_9934 + 32] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                                    anchors[address(_5589)].field_0 = (block.number / 1200) + 1
                                                                    anchors[address(_5589)].field_256 = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                                    mem[0] = address(_5589)
                                                                    _10708 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10708] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                            mem[0] = address(_5589)
                                                            mem[32] = 2
                                                            _assetPrices[address(_5589)] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                            emit PricePosted(address(_5589), _assetPrices[address(_5589)], _5598, (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18);
                                                            mem[mem[64]] = address(_5589)
                                                            mem[mem[64] + 32] = _5598
                                                            mem[mem[64] + 64] = anchors[address(_5589)].field_256
                                                            mem[mem[64] + 96] = (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18
                                                            emit CappedPricePosted(address(_5589), _5598, anchors[address(_5589)].field_256, (10^18 * anchors[address(_5589)].field_256) + (-1 * maxSwing * anchors[address(_5589)].field_256) + 5 * 10^17 / 10^18);
                                                            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                                                            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = 0
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
    _5597 = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])] = mem[(32 * arg2.length) + (32 * arg1.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _5597) + 32]
}



}
