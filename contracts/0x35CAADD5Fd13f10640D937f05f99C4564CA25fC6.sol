contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address vatFabAddress;
address jugFabAddress;
address vowFabAddress;
address catFabAddress;
address daiFabAddress;
address daiJoinFabAddress;
address flapFabAddress;
address flopFabAddress;
address flipFabAddress;
address spotFabAddress;
address potFabAddress;
address endFabAddress;
address esmFabAddress;
address pauseFabAddress;
address vatAddress;
uint256 stor16;
address jugAddress;
uint256 stor17;
address vowAddress;
uint256 stor18;
address catAddress;
uint256 stor19;
address daiAddress;
uint256 stor20;
address daiJoinAddress;
uint256 stor21;
address flapAddress;
uint256 stor22;
address flopAddress;
uint256 stor23;
address spotterAddress;
uint256 stor24;
address potAddress;
uint256 stor25;
address endAddress;
uint256 stor26;
address esmAddress;
uint256 stor27;
address pauseAddress;
uint256 stor28;
mapping of struct ilks;
uint8 step;

function flap() payable {
    return address(flapAddress)
}

function catFab() payable {
    return catFabAddress
}

function daiJoinFab() payable {
    return daiJoinFabAddress
}

function spotter() payable {
    return address(spotterAddress)
}

function vat() payable {
    return address(vatAddress)
}

function flapFab() payable {
    return flapFabAddress
}

function daiFab() payable {
    return daiFabAddress
}

function vatFab() payable {
    return vatFabAddress
}

function pot() payable {
    return address(potAddress)
}

function jugFab() payable {
    return jugFabAddress
}

function vow() payable {
    return address(vowAddress)
}

function esmFab() payable {
    return esmFabAddress
}

function flopFab() payable {
    return flopFabAddress
}

function flipFab() payable {
    return flipFabAddress
}

function pause() payable {
    return address(pauseAddress)
}

function jug() payable {
    return address(jugAddress)
}

function owner() payable {
    return owner
}

function spotFab() payable {
    return spotFabAddress
}

function esm() payable {
    return address(esmAddress)
}

function vowFab() payable {
    return vowFabAddress
}

function flop() payable {
    return address(flopAddress)
}

function authority() payable {
    return authorityAddress
}

function daiJoin() payable {
    return address(daiJoinAddress)
}

function pauseFab() payable {
    return pauseFabAddress
}

function ilks(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return ilks[arg1].field_0, ilks[arg1].field_256
}

function step() payable {
    return step
}

function cat() payable {
    return address(catAddress)
}

function potFab() payable {
    return potFabAddress
}

function endFab() payable {
    return endFabAddress
}

function end() payable {
    return address(endAddress)
}

function dai() payable {
    return address(daiAddress)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function releaseAuthFlip(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(ilks[arg1].field_0)
    call ilks[arg1].field_0.deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deployVat() payable {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if address(vatAddress):
        revert with 0, 'VAT already deployed'
    require ext_code.size(vatFabAddress)
    call vatFabAddress.newVat() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor16) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor16))
    require ext_code.size(spotFabAddress)
    call spotFabAddress.newSpotter(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor24) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor24))
    require ext_code.size(address(vatAddress))
    call address(vatAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deployDai(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if not address(vatAddress):
        revert with 0, 32, 21, 0xfe4d697373696e672070726576696f7573207374657000000000000000000000
    require ext_code.size(daiFabAddress)
    call daiFabAddress.newDai(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor20) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor20))
    require ext_code.size(daiJoinFabAddress)
    call daiJoinFabAddress.newDaiJoin(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(vatAddress), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor21) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor21))
    require ext_code.size(address(daiAddress))
    call address(daiAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deployLiquidator() payable {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if not address(vowAddress):
        revert with 0, 32, 21, 0xfe4d697373696e672070726576696f7573207374657000000000000000000000
    require ext_code.size(catFabAddress)
    call catFabAddress.newCat(address arg1) with:
         gas gas_remaining wei
        args address(vatAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor19) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor19))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).file(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args 0x766f770000000000000000000000000000000000000000000000000000000000, address(vowAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(vatAddress))
    call address(vatAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(catAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(vowAddress))
    call address(vowAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(catAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deployTaxation() payable {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if not address(vatAddress):
        revert with 0, 32, 21, 0xfe4d697373696e672070726576696f7573207374657000000000000000000000
    require ext_code.size(jugFabAddress)
    call jugFabAddress.newJug(address arg1) with:
         gas gas_remaining wei
        args address(vatAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor17) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor17))
    require ext_code.size(potFabAddress)
    call potFabAddress.newPot(address arg1) with:
         gas gas_remaining wei
        args address(vatAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor25) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor25))
    require ext_code.size(address(vatAddress))
    call address(vatAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(jugAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(vatAddress))
    call address(vatAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(potAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseAuth() payable {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(address(vatAddress))
    call address(vatAddress).deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(catAddress))
    call address(catAddress).deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(vowAddress))
    call address(vowAddress).deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(jugAddress))
    call address(jugAddress).deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(potAddress))
    call address(potAddress).deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(daiAddress))
    call address(daiAddress).deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(spotterAddress))
    call address(spotterAddress).deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(flapAddress))
    call address(flapAddress).deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(flopAddress))
    call address(flopAddress).deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(endAddress))
    call address(endAddress).deny(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deployAuctions(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if not arg1:
        revert with 0, 'Missing GOV address'
    if not address(jugAddress):
        revert with 0, 32, 21, 0xfe4d697373696e672070726576696f7573207374657000000000000000000000
    require ext_code.size(flapFabAddress)
    call flapFabAddress.newFlap(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(vatAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor22) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor22))
    require ext_code.size(flopFabAddress)
    call flopFabAddress.newFlop(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(vatAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor23) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor23))
    require ext_code.size(vowFabAddress)
    call vowFabAddress.newVow(address arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args address(vatAddress), address(flapAddress), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor18) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor18))
    require ext_code.size(address(jugAddress))
    call address(jugAddress).file(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args 0x766f770000000000000000000000000000000000000000000000000000000000, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(potAddress))
    call address(potAddress).file(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args 0x766f770000000000000000000000000000000000000000000000000000000000, address(vowAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(flapAddress))
    call address(flapAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(vowAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(flopAddress))
    call address(flopAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(vowAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deployCollateral(bytes32 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if not arg1:
        revert with 0, 'Missing ilk name'
    if not arg2:
        revert with 0, 'Missing join address'
    if not arg3:
        revert with 0, 'Missing pip address'
    if not address(pauseAddress):
        revert with 0, 32, 21, 0xfe4d697373696e672070726576696f7573207374657000000000000000000000
    require ext_code.size(flipFabAddress)
    call flipFabAddress.newFlip(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(vatAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    ilks[arg1].field_0 = address(ext_call.return_data[0])
    ilks[arg1].field_256 = arg2
    require ext_code.size(address(spotterAddress))
    call address(spotterAddress).file(bytes32 arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, 0x7069700000000000000000000000000000000000000000000000000000000000, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(catAddress))
    call address(catAddress).file(bytes32 arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, 0x666c697000000000000000000000000000000000000000000000000000000000, ilks[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(vatAddress))
    call address(vatAddress).init(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(jugAddress))
    call address(jugAddress).init(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(vatAddress))
    call address(vatAddress).rely(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(ilks[arg1].field_0)
    call ilks[arg1].field_0.rely(address arg1) with:
         gas gas_remaining wei
        args address(catAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(ilks[arg1].field_0)
    call ilks[arg1].field_0.rely(address arg1) with:
         gas gas_remaining wei
        args address(endAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(pauseAddress))
    staticcall address(pauseAddress).proxy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ilks[arg1].field_0)
    call ilks[arg1].field_0.rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deployShutdown(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if not address(catAddress):
        revert with 0, 32, 21, 0xfe4d697373696e672070726576696f7573207374657000000000000000000000
    require ext_code.size(endFabAddress)
    call endFabAddress.newEnd() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor26) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor26))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).file(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args 0x7661740000000000000000000000000000000000000000000000000000000000, address(vatAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(endAddress))
    call address(endAddress).file(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args 0x6361740000000000000000000000000000000000000000000000000000000000, address(catAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(endAddress))
    call address(endAddress).file(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args 0x766f770000000000000000000000000000000000000000000000000000000000, address(vowAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(endAddress))
    call address(endAddress).file(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args 0x706f740000000000000000000000000000000000000000000000000000000000, address(potAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(endAddress))
    call address(endAddress).file(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args 0x73706f7400000000000000000000000000000000000000000000000000000000, address(spotterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(vatAddress))
    call address(vatAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(endAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(catAddress))
    call address(catAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(endAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(vowAddress))
    call address(vowAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(endAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(potAddress))
    call address(potAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(endAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(spotterAddress))
    call address(spotterAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(endAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(esmFabAddress)
    call esmFabAddress.newESM(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, address(endAddress), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor27) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor27))
    require ext_code.size(address(endAddress))
    call address(endAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deployPause(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if not address(daiAddress):
        revert with 0, 32, 21, 0xfe4d697373696e672070726576696f7573207374657000000000000000000000
    if not address(endAddress):
        revert with 0, 32, 21, 0xfe4d697373696e672070726576696f7573207374657000000000000000000000
    require ext_code.size(pauseFabAddress)
    call pauseFabAddress.newPause(uint256 arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, 0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor28) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor28))
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).proxy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vatAddress))
    call address(vatAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(pauseAddress))
    staticcall address(pauseAddress).proxy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(catAddress))
    call address(catAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(pauseAddress))
    staticcall address(pauseAddress).proxy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vowAddress))
    call address(vowAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(pauseAddress))
    staticcall address(pauseAddress).proxy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(jugAddress))
    call address(jugAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(pauseAddress))
    staticcall address(pauseAddress).proxy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(potAddress))
    call address(potAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(pauseAddress))
    staticcall address(pauseAddress).proxy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(spotterAddress))
    call address(spotterAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(pauseAddress))
    staticcall address(pauseAddress).proxy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(flapAddress))
    call address(flapAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(pauseAddress))
    staticcall address(pauseAddress).proxy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(flopAddress))
    call address(flopAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(pauseAddress))
    staticcall address(pauseAddress).proxy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(endAddress))
    call address(endAddress).rely(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
