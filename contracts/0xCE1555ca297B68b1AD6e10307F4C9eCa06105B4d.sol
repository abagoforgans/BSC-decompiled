contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address uFragsAddress;
address cpiOracleAddress;
address marketOracleAddress;
uint256 stor105;
uint256 deviationThreshold;
uint256 rebaseLag;
uint256 minRebaseTimeIntervalSec;
uint256 lastRebaseTimestampSec;
uint256 rebaseWindowOffsetSec;
uint256 rebaseWindowLengthSec;
uint256 epoch;
address orchestratorAddress;

function minRebaseTimeIntervalSec() {
    return minRebaseTimeIntervalSec
}

function lastRebaseTimestampSec() {
    return lastRebaseTimestampSec
}

function marketOracle() {
    return marketOracleAddress
}

function rebaseLag() {
    return rebaseLag
}

function rebaseWindowOffsetSec() {
    return rebaseWindowOffsetSec
}

function owner() {
    return owner
}

function epoch() {
    return epoch
}

function rebaseWindowLengthSec() {
    return rebaseWindowLengthSec
}

function cpiOracle() {
    return cpiOracleAddress
}

function orchestrator() {
    return orchestratorAddress
}

function uFrags() {
    return uFragsAddress
}

function deviationThreshold() {
    return deviationThreshold
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setCpiOracle(address arg1) {
    require msg.sender == owner
    cpiOracleAddress = arg1
}

function setMarketOracle(address arg1) {
    require msg.sender == owner
    marketOracleAddress = arg1
}

function setOrchestrator(address arg1) {
    require msg.sender == owner
    orchestratorAddress = arg1
}

function setDeviationThreshold(uint256 arg1) {
    require msg.sender == owner
    deviationThreshold = arg1
}

function setRebaseLag(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    rebaseLag = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRebaseTimingParameters(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1 > 0
    require arg2 < arg1
    minRebaseTimeIntervalSec = arg1
    rebaseWindowOffsetSec = arg2
    rebaseWindowLengthSec = arg3
}

function initialize(address arg1) {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function inRebaseWindow() {
    require minRebaseTimeIntervalSec
    require minRebaseTimeIntervalSec
    if block.timestamp % minRebaseTimeIntervalSec < rebaseWindowOffsetSec:
        return block.timestamp % minRebaseTimeIntervalSec >= rebaseWindowOffsetSec
    require rebaseWindowOffsetSec + rebaseWindowLengthSec >= rebaseWindowOffsetSec
    require minRebaseTimeIntervalSec
    require minRebaseTimeIntervalSec
    return (block.timestamp % minRebaseTimeIntervalSec < rebaseWindowOffsetSec + rebaseWindowLengthSec)
}

function initialize(address arg1, address arg2, uint256 arg3) {
    if uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    deviationThreshold = 5 * 10^16
    rebaseLag = 30
    minRebaseTimeIntervalSec = 24 * 3600
    rebaseWindowOffsetSec = 20 * 3600
    rebaseWindowLengthSec = 900
    lastRebaseTimestampSec = 0
    epoch = 0
    uFragsAddress = arg2
    stor105 = arg3
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function rebase() {
    require msg.sender == orchestratorAddress
    require minRebaseTimeIntervalSec
    require minRebaseTimeIntervalSec
    require block.timestamp % minRebaseTimeIntervalSec >= rebaseWindowOffsetSec
    require rebaseWindowOffsetSec + rebaseWindowLengthSec >= rebaseWindowOffsetSec
    require minRebaseTimeIntervalSec
    require minRebaseTimeIntervalSec
    require block.timestamp % minRebaseTimeIntervalSec < rebaseWindowOffsetSec + rebaseWindowLengthSec
    require lastRebaseTimestampSec + minRebaseTimeIntervalSec >= lastRebaseTimestampSec
    require lastRebaseTimestampSec + minRebaseTimeIntervalSec < block.timestamp
    require minRebaseTimeIntervalSec
    require minRebaseTimeIntervalSec
    require block.timestamp % minRebaseTimeIntervalSec <= block.timestamp
    require rebaseWindowOffsetSec >= 0
    lastRebaseTimestampSec = block.timestamp - (block.timestamp % minRebaseTimeIntervalSec) + rebaseWindowOffsetSec
    require epoch + 1 >= epoch
    epoch++
    require ext_code.size(cpiOracleAddress)
    call cpiOracleAddress.getData() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32]
    if not ext_call.return_data[0]:
        require stor105 > 0
        require stor105
        require ext_code.size(marketOracleAddress)
        call marketOracleAddress.getData() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32]
        if ext_call.return_data[0] > 1000000 * 10^18:
            if not 0 / stor105:
                if 1000000 * 10^18 < 0 / stor105:
                    require 1000000 * 10^18 <= 0 / stor105
                    if (0 / stor105) - 1000000 * 10^18 < 0:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if 0 / stor105 < 0:
                            require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                        else:
                            if -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                require 0 / stor105 < 0
                                require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(0 / stor105) + 1000000 * 10^18)
                        if -(0 / stor105) + 1000000 * 10^18:
                            require -(0 / stor105) + 1000000 * 10^18
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / -(0 / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                        if 0 / stor105 == -1:
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require 0 / stor105
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if rebaseLag == -1:
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                else:
                    require 0 / stor105 <= 1000000 * 10^18
                    if -(0 / stor105) + 1000000 * 10^18 < 0:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        if 1000000 * 10^18 >= 0 / stor105:
                            require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if 0 / stor105 < 0:
                                require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                            else:
                                if -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                    require 0 / stor105 < 0
                                    require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                            require ext_code.size(uFragsAddress)
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(0 / stor105) + 1000000 * 10^18)
                            if -(0 / stor105) + 1000000 * 10^18:
                                require -(0 / stor105) + 1000000 * 10^18
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / -(0 / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                            if 0 / stor105 == -1:
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require 0 / stor105
                            require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if rebaseLag == -1:
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require rebaseLag
                            require ext_code.size(uFragsAddress)
                            if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(uFragsAddress)
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                        else:
                            require 1000000 * 10^18 <= 0 / stor105
                            if (0 / stor105) - 1000000 * 10^18 < 0:
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if 0 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, 0 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, 0 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                            else:
                                require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if 0 / stor105 < 0:
                                    require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                                else:
                                    if -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                        require 0 / stor105 < 0
                                        require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(0 / stor105) + 1000000 * 10^18)
                                if -(0 / stor105) + 1000000 * 10^18:
                                    require -(0 / stor105) + 1000000 * 10^18
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / -(0 / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                                if 0 / stor105 == -1:
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require 0 / stor105
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if rebaseLag == -1:
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
            else:
                require 0 / stor105
                require 0 / stor105 * deviationThreshold / 0 / stor105 == deviationThreshold
                if 1000000 * 10^18 < 0 / stor105:
                    require 1000000 * 10^18 <= 0 / stor105
                    if (0 / stor105) - 1000000 * 10^18 < 0 / stor105 * deviationThreshold / 10^18:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if 0 / stor105 < 0:
                            require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                        else:
                            if -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                require 0 / stor105 < 0
                                require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(0 / stor105) + 1000000 * 10^18)
                        if -(0 / stor105) + 1000000 * 10^18:
                            require -(0 / stor105) + 1000000 * 10^18
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / -(0 / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                        if 0 / stor105 == -1:
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require 0 / stor105
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if rebaseLag == -1:
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                else:
                    require 0 / stor105 <= 1000000 * 10^18
                    if -(0 / stor105) + 1000000 * 10^18 < 0 / stor105 * deviationThreshold / 10^18:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        if 1000000 * 10^18 >= 0 / stor105:
                            require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if 0 / stor105 < 0:
                                require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                            else:
                                if -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                    require 0 / stor105 < 0
                                    require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                            require ext_code.size(uFragsAddress)
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(0 / stor105) + 1000000 * 10^18)
                            if -(0 / stor105) + 1000000 * 10^18:
                                require -(0 / stor105) + 1000000 * 10^18
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / -(0 / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                            if 0 / stor105 == -1:
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require 0 / stor105
                            require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if rebaseLag == -1:
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require rebaseLag
                            require ext_code.size(uFragsAddress)
                            if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(uFragsAddress)
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                        else:
                            require 1000000 * 10^18 <= 0 / stor105
                            if (0 / stor105) - 1000000 * 10^18 < 0 / stor105 * deviationThreshold / 10^18:
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if 0 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, 0 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, 0 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                            else:
                                require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if 0 / stor105 < 0:
                                    require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                                else:
                                    if -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                        require 0 / stor105 < 0
                                        require -(0 / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(0 / stor105) + 1000000 * 10^18)
                                if -(0 / stor105) + 1000000 * 10^18:
                                    require -(0 / stor105) + 1000000 * 10^18
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / -(0 / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                                if 0 / stor105 == -1:
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require 0 / stor105
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if rebaseLag == -1:
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
        else:
            if not 0 / stor105:
                if ext_call.return_data[0] < 0 / stor105:
                    require ext_call.return_data[0] <= 0 / stor105
                    if (0 / stor105) - ext_call.return_data[0] < 0:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if 0 / stor105 < 0:
                            require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]:
                                require 0 / stor105 < 0
                                require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (0 / stor105))
                        if ext_call.return_data[0] - (0 / stor105):
                            require ext_call.return_data[0] - (0 / stor105)
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (0 / stor105) == ext_call.return_data[0]
                        if 0 / stor105 == -1:
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require 0 / stor105
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if rebaseLag == -1:
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                else:
                    require 0 / stor105 <= ext_call.return_data[0]
                    if ext_call.return_data[0] - (0 / stor105) < 0:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        if ext_call.return_data[0] >= 0 / stor105:
                            require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if 0 / stor105 < 0:
                                require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                            else:
                                if ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]:
                                    require 0 / stor105 < 0
                                    require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (0 / stor105))
                            if ext_call.return_data[0] - (0 / stor105):
                                require ext_call.return_data[0] - (0 / stor105)
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (0 / stor105) == ext_call.return_data[0]
                            if 0 / stor105 == -1:
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require 0 / stor105
                            require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if rebaseLag == -1:
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require rebaseLag
                            require ext_code.size(uFragsAddress)
                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(uFragsAddress)
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                        else:
                            require ext_call.return_data[0] <= 0 / stor105
                            if (0 / stor105) - ext_call.return_data[0] < 0:
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if 0 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, 0 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, 0 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                            else:
                                require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if 0 / stor105 < 0:
                                    require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                                else:
                                    if ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]:
                                        require 0 / stor105 < 0
                                        require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (0 / stor105))
                                if ext_call.return_data[0] - (0 / stor105):
                                    require ext_call.return_data[0] - (0 / stor105)
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (0 / stor105) == ext_call.return_data[0]
                                if 0 / stor105 == -1:
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require 0 / stor105
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if rebaseLag == -1:
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
            else:
                require 0 / stor105
                require 0 / stor105 * deviationThreshold / 0 / stor105 == deviationThreshold
                if ext_call.return_data[0] < 0 / stor105:
                    require ext_call.return_data[0] <= 0 / stor105
                    if (0 / stor105) - ext_call.return_data[0] < 0 / stor105 * deviationThreshold / 10^18:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if 0 / stor105 < 0:
                            require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]:
                                require 0 / stor105 < 0
                                require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (0 / stor105))
                        if ext_call.return_data[0] - (0 / stor105):
                            require ext_call.return_data[0] - (0 / stor105)
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (0 / stor105) == ext_call.return_data[0]
                        if 0 / stor105 == -1:
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require 0 / stor105
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if rebaseLag == -1:
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                else:
                    require 0 / stor105 <= ext_call.return_data[0]
                    if ext_call.return_data[0] - (0 / stor105) < 0 / stor105 * deviationThreshold / 10^18:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        if ext_call.return_data[0] >= 0 / stor105:
                            require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if 0 / stor105 < 0:
                                require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                            else:
                                if ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]:
                                    require 0 / stor105 < 0
                                    require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (0 / stor105))
                            if ext_call.return_data[0] - (0 / stor105):
                                require ext_call.return_data[0] - (0 / stor105)
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (0 / stor105) == ext_call.return_data[0]
                            if 0 / stor105 == -1:
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require 0 / stor105
                            require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if rebaseLag == -1:
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require rebaseLag
                            require ext_code.size(uFragsAddress)
                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(uFragsAddress)
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                        else:
                            require ext_call.return_data[0] <= 0 / stor105
                            if (0 / stor105) - ext_call.return_data[0] < 0 / stor105 * deviationThreshold / 10^18:
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if 0 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, 0 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, 0 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                            else:
                                require 0 / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if 0 / stor105 < 0:
                                    require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                                else:
                                    if ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]:
                                        require 0 / stor105 < 0
                                        require ext_call.return_data[0] - (0 / stor105) > ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (0 / stor105))
                                if ext_call.return_data[0] - (0 / stor105):
                                    require ext_call.return_data[0] - (0 / stor105)
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (0 / stor105) == ext_call.return_data[0]
                                if 0 / stor105 == -1:
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require 0 / stor105
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if rebaseLag == -1:
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (0 / stor105 * ext_call.return_data[0]) / 0 / stor105 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
    else:
        require ext_call.return_data[0]
        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
        require stor105 > 0
        require stor105
        require ext_code.size(marketOracleAddress)
        call marketOracleAddress.getData() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32]
        if ext_call.return_data[0] > 1000000 * 10^18:
            if not 10^18 * ext_call.return_data[0] / stor105:
                if 1000000 * 10^18 < 10^18 * ext_call.return_data[0] / stor105:
                    require 1000000 * 10^18 <= 10^18 * ext_call.return_data[0] / stor105
                    if (10^18 * ext_call.return_data[0] / stor105) - 1000000 * 10^18 < 0:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if 10^18 * ext_call.return_data[0] / stor105 < 0:
                            require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                        else:
                            if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                require 10^18 * ext_call.return_data[0] / stor105 < 0
                                require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18)
                        if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18:
                            require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / stor105 == -1:
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require 10^18 * ext_call.return_data[0] / stor105
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if rebaseLag == -1:
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                else:
                    require 10^18 * ext_call.return_data[0] / stor105 <= 1000000 * 10^18
                    if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 < 0:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        if 1000000 * 10^18 >= 10^18 * ext_call.return_data[0] / stor105:
                            require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if 10^18 * ext_call.return_data[0] / stor105 < 0:
                                require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                            else:
                                if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                    require 10^18 * ext_call.return_data[0] / stor105 < 0
                                    require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                            require ext_code.size(uFragsAddress)
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18)
                            if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18:
                                require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / stor105 == -1:
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require 10^18 * ext_call.return_data[0] / stor105
                            require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if rebaseLag == -1:
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require rebaseLag
                            require ext_code.size(uFragsAddress)
                            if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(uFragsAddress)
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                        else:
                            require 1000000 * 10^18 <= 10^18 * ext_call.return_data[0] / stor105
                            if (10^18 * ext_call.return_data[0] / stor105) - 1000000 * 10^18 < 0:
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if 0 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, 0 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, 0 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                            else:
                                require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if 10^18 * ext_call.return_data[0] / stor105 < 0:
                                    require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                                else:
                                    if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                        require 10^18 * ext_call.return_data[0] / stor105 < 0
                                        require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18)
                                if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18:
                                    require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                                if 10^18 * ext_call.return_data[0] / stor105 == -1:
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require 10^18 * ext_call.return_data[0] / stor105
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if rebaseLag == -1:
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
            else:
                require 10^18 * ext_call.return_data[0] / stor105
                require 10^18 * ext_call.return_data[0] / stor105 * deviationThreshold / 10^18 * ext_call.return_data[0] / stor105 == deviationThreshold
                if 1000000 * 10^18 < 10^18 * ext_call.return_data[0] / stor105:
                    require 1000000 * 10^18 <= 10^18 * ext_call.return_data[0] / stor105
                    if (10^18 * ext_call.return_data[0] / stor105) - 1000000 * 10^18 < 10^18 * ext_call.return_data[0] / stor105 * deviationThreshold / 10^18:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if 10^18 * ext_call.return_data[0] / stor105 < 0:
                            require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                        else:
                            if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                require 10^18 * ext_call.return_data[0] / stor105 < 0
                                require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18)
                        if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18:
                            require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / stor105 == -1:
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require 10^18 * ext_call.return_data[0] / stor105
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if rebaseLag == -1:
                            require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                else:
                    require 10^18 * ext_call.return_data[0] / stor105 <= 1000000 * 10^18
                    if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 < 10^18 * ext_call.return_data[0] / stor105 * deviationThreshold / 10^18:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        if 1000000 * 10^18 >= 10^18 * ext_call.return_data[0] / stor105:
                            require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if 10^18 * ext_call.return_data[0] / stor105 < 0:
                                require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                            else:
                                if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                    require 10^18 * ext_call.return_data[0] / stor105 < 0
                                    require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                            require ext_code.size(uFragsAddress)
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18)
                            if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18:
                                require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / stor105 == -1:
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require 10^18 * ext_call.return_data[0] / stor105
                            require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if rebaseLag == -1:
                                require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require rebaseLag
                            require ext_code.size(uFragsAddress)
                            if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(uFragsAddress)
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                        else:
                            require 1000000 * 10^18 <= 10^18 * ext_call.return_data[0] / stor105
                            if (10^18 * ext_call.return_data[0] / stor105) - 1000000 * 10^18 < 10^18 * ext_call.return_data[0] / stor105 * deviationThreshold / 10^18:
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if 0 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, 0 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, 0 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                            else:
                                require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if 10^18 * ext_call.return_data[0] / stor105 < 0:
                                    require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                                else:
                                    if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18:
                                        require 10^18 * ext_call.return_data[0] / stor105 < 0
                                        require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 > 1000000 * 10^18
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18)
                                if -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18:
                                    require -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / -(10^18 * ext_call.return_data[0] / stor105) + 1000000 * 10^18 == ext_call.return_data[0]
                                if 10^18 * ext_call.return_data[0] / stor105 == -1:
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require 10^18 * ext_call.return_data[0] / stor105
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if rebaseLag == -1:
                                    require (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + ((1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], (1000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(1000000 * 10^18, ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
        else:
            if not 10^18 * ext_call.return_data[0] / stor105:
                if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / stor105:
                    require ext_call.return_data[0] <= 10^18 * ext_call.return_data[0] / stor105
                    if (10^18 * ext_call.return_data[0] / stor105) - ext_call.return_data[0] < 0:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if 10^18 * ext_call.return_data[0] / stor105 < 0:
                            require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]:
                                require 10^18 * ext_call.return_data[0] / stor105 < 0
                                require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105))
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105):
                            require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105)
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) == ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / stor105 == -1:
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require 10^18 * ext_call.return_data[0] / stor105
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if rebaseLag == -1:
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                else:
                    require 10^18 * ext_call.return_data[0] / stor105 <= ext_call.return_data[0]
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) < 0:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] / stor105:
                            require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if 10^18 * ext_call.return_data[0] / stor105 < 0:
                                require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                            else:
                                if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]:
                                    require 10^18 * ext_call.return_data[0] / stor105 < 0
                                    require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105))
                            if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105):
                                require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105)
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) == ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / stor105 == -1:
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require 10^18 * ext_call.return_data[0] / stor105
                            require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if rebaseLag == -1:
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require rebaseLag
                            require ext_code.size(uFragsAddress)
                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(uFragsAddress)
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                        else:
                            require ext_call.return_data[0] <= 10^18 * ext_call.return_data[0] / stor105
                            if (10^18 * ext_call.return_data[0] / stor105) - ext_call.return_data[0] < 0:
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if 0 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, 0 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, 0 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                            else:
                                require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if 10^18 * ext_call.return_data[0] / stor105 < 0:
                                    require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                                else:
                                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]:
                                        require 10^18 * ext_call.return_data[0] / stor105 < 0
                                        require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105))
                                if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105):
                                    require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105)
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) == ext_call.return_data[0]
                                if 10^18 * ext_call.return_data[0] / stor105 == -1:
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require 10^18 * ext_call.return_data[0] / stor105
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if rebaseLag == -1:
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
            else:
                require 10^18 * ext_call.return_data[0] / stor105
                require 10^18 * ext_call.return_data[0] / stor105 * deviationThreshold / 10^18 * ext_call.return_data[0] / stor105 == deviationThreshold
                if ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / stor105:
                    require ext_call.return_data[0] <= 10^18 * ext_call.return_data[0] / stor105
                    if (10^18 * ext_call.return_data[0] / stor105) - ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / stor105 * deviationThreshold / 10^18:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if 10^18 * ext_call.return_data[0] / stor105 < 0:
                            require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]:
                                require 10^18 * ext_call.return_data[0] / stor105 < 0
                                require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105))
                        if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105):
                            require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105)
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) == ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / stor105 == -1:
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require 10^18 * ext_call.return_data[0] / stor105
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if rebaseLag == -1:
                            require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                else:
                    require 10^18 * ext_call.return_data[0] / stor105 <= ext_call.return_data[0]
                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) < 10^18 * ext_call.return_data[0] / stor105 * deviationThreshold / 10^18:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] / stor105:
                            require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if 10^18 * ext_call.return_data[0] / stor105 < 0:
                                require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                            else:
                                if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]:
                                    require 10^18 * ext_call.return_data[0] / stor105 < 0
                                    require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105))
                            if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105):
                                require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105)
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) == ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / stor105 == -1:
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require 10^18 * ext_call.return_data[0] / stor105
                            require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            if rebaseLag == -1:
                                require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                            require rebaseLag
                            require ext_code.size(uFragsAddress)
                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(uFragsAddress)
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                        else:
                            require ext_call.return_data[0] <= 10^18 * ext_call.return_data[0] / stor105
                            if (10^18 * ext_call.return_data[0] / stor105) - ext_call.return_data[0] < 10^18 * ext_call.return_data[0] / stor105 * deviationThreshold / 10^18:
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if 0 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, 0 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + (0 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + (0 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, 0 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                            else:
                                require 10^18 * ext_call.return_data[0] / stor105 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if 10^18 * ext_call.return_data[0] / stor105 < 0:
                                    require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                                else:
                                    if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]:
                                        require 10^18 * ext_call.return_data[0] / stor105 < 0
                                        require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) > ext_call.return_data[0]
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105))
                                if ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105):
                                    require ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105)
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / stor105) == ext_call.return_data[0]
                                if 10^18 * ext_call.return_data[0] / stor105 == -1:
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require 10^18 * ext_call.return_data[0] / stor105
                                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                if rebaseLag == -1:
                                    require (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 != 0x8000000000000000000000000000000000000000000000000000000000000000
                                require rebaseLag
                                require ext_code.size(uFragsAddress)
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag <= 0:
                                    call uFragsAddress.0x7a43e23f with:
                                         gas gas_remaining wei
                                        args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                    emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                else:
                                    call uFragsAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) >= ext_call.return_data[0]
                                    require ext_code.size(uFragsAddress)
                                    if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag) <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / stor105 * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / stor105 / rebaseLag, block.timestamp, epoch);
                                    else:
                                        call uFragsAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        require ext_code.size(uFragsAddress)
                                        call uFragsAddress.0x7a43e23f with:
                                             gas gas_remaining wei
                                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                        emit LogRebase(ext_call.return_data[0], ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
}



}
