contract main {




// =====================  Runtime code  =====================


address OWNER;
address FACTORYAddress;
address sub_ea6cfd4aAddress;
address USDTAddress;
address WBNBAddress;
uint256 sub_be62cfe5;
uint256 sub_d5c8610c;
mapping of uint256 sub_7b7a9299;
mapping of uint256 sub_7301228a;
mapping of uint256 sub_f06853b2;
mapping of uint256 sub_c4cdc924;
mapping of address refs;
array of struct orders;
array of address stor101051993584849178915136821395265346177868384823507754984078593667947067386056;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386057;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386058;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386059;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386060;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386061;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386062;

function OWNER() {
    return OWNER
}

function FACTORY() {
    return FACTORYAddress
}

function sub_7301228a(?) {
    require calldata.size - 4 >= 32
    return sub_7301228a[arg1]
}

function refs(address arg1) {
    require calldata.size - 4 >= 32
    return refs[arg1]
}

function sub_7b7a9299(?) {
    require calldata.size - 4 >= 32
    return sub_7b7a9299[arg1]
}

function WBNB() {
    return WBNBAddress
}

function orders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < orders.length
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1024,
           orders[arg1].field_1280,
           orders[arg1].field_1536,
           orders[arg1].field_1792
}

function sub_be62cfe5(?) {
    return sub_be62cfe5
}

function sub_c4cdc924(?) {
    require calldata.size - 4 >= 32
    return sub_c4cdc924[arg1]
}

function USDT() {
    return USDTAddress
}

function sub_d5c8610c(?) {
    return sub_d5c8610c
}

function sub_ea6cfd4a(?) {
    return sub_ea6cfd4aAddress
}

function sub_f06853b2(?) {
    require calldata.size - 4 >= 32
    return sub_f06853b2[arg1]
}

function _fallback() payable {
    revert
}

function sub_cdddc784(?) {
    require calldata.size - 4 >= 64
    if OWNER != msg.sender:
        revert with 0, 'TCROSSFI FARM: ONLY_OWNER'
    sub_7301228a[arg1] = arg2
}

function sub_fbea74d1(?) {
    require calldata.size - 4 >= 64
    if OWNER != msg.sender:
        revert with 0, 'TCROSSFI FARM: ONLY_OWNER'
    sub_f06853b2[arg1] = arg2
}

function sub_040ae259(?) {
    require calldata.size - 4 >= 64
    if OWNER != msg.sender:
        revert with 0, 'TCROSSFI FARM: ONLY_OWNER'
    sub_d5c8610c = arg1
    sub_be62cfe5 = arg2
}

function init(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if OWNER != msg.sender:
        revert with 0, 'TCROSSFI FARM: ONLY_OWNER'
    FACTORYAddress = arg1
    sub_ea6cfd4aAddress = arg2
    USDTAddress = arg3
    WBNBAddress = arg4
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if OWNER != msg.sender:
        revert with 0, 'TCROSSFI FARM: ONLY_OWNER'
    call OWNER with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x43524f535346494e2053414c453a20414d4f554e5420424e42204d5553542047524541544552205448414e205a455200,
                    mem[212 len 16]
    if WBNBAddress == USDTAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if WBNBAddress < USDTAddress:
        if not WBNBAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if WBNBAddress == USDTAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if WBNBAddress < USDTAddress:
            if not WBNBAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(WBNBAddress, USDTAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(WBNBAddress, USDTAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not USDTAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(USDTAddress, WBNBAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(USDTAddress, WBNBAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if msg.value <= 0:
            revert with 0, 32, 37, 0xfe44656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
        if WBNBAddress == WBNBAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not msg.value:
                require ext_call.return_data[18 len 14]
                if not 0 / ext_call.return_data[18 len 14]:
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                        storDF69[stor12.length] = 0 / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not 0 / Mask(112, 0, ext_call.return_data[0]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                                if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                                if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                else:
                    if 10^18 * 0 / ext_call.return_data[18 len 14] / 0 / ext_call.return_data[18 len 14] != 10^18:
                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                        storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not 0 / Mask(112, 0, ext_call.return_data[0]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                            storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                                if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                                if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
            else:
                if ext_call.return_data[50 len 14] * msg.value / msg.value != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[18 len 14]
                if not ext_call.return_data[50 len 14] * msg.value / ext_call.return_data[18 len 14]:
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                        storDF69[stor12.length] = 0 / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                            if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                else:
                    if 10^18 * ext_call.return_data[50 len 14] * msg.value / ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * msg.value / ext_call.return_data[18 len 14] != 10^18:
                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                        storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                            if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                            storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not msg.value:
                require ext_call.return_data[50 len 14]
                if not 0 / ext_call.return_data[50 len 14]:
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                        storDF69[stor12.length] = 0 / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                                if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                                if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                else:
                    if 10^18 * 0 / ext_call.return_data[50 len 14] / 0 / ext_call.return_data[50 len 14] != 10^18:
                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                        storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                            storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                                if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                                if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
            else:
                if ext_call.return_data[18 len 14] * msg.value / msg.value != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[50 len 14]
                if not ext_call.return_data[18 len 14] * msg.value / ext_call.return_data[50 len 14]:
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                        storDF69[stor12.length] = 0 / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                            if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                else:
                    if 10^18 * ext_call.return_data[18 len 14] * msg.value / ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * msg.value / ext_call.return_data[50 len 14] != 10^18:
                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                        storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                            if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                            storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
    else:
        if not USDTAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if WBNBAddress == USDTAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if WBNBAddress < USDTAddress:
            if not WBNBAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(WBNBAddress, USDTAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(WBNBAddress, USDTAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not USDTAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(USDTAddress, WBNBAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(USDTAddress, WBNBAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if msg.value <= 0:
            revert with 0, 32, 37, 0xfe44656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
        if USDTAddress == WBNBAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not msg.value:
                require ext_call.return_data[18 len 14]
                if not 0 / ext_call.return_data[18 len 14]:
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                        storDF69[stor12.length] = 0 / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not 0 / Mask(112, 0, ext_call.return_data[0]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                                if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                                if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                else:
                    if 10^18 * 0 / ext_call.return_data[18 len 14] / 0 / ext_call.return_data[18 len 14] != 10^18:
                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                        storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not 0 / Mask(112, 0, ext_call.return_data[0]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                            storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                                if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[0])
                                if (0 / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
            else:
                if ext_call.return_data[50 len 14] * msg.value / msg.value != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[18 len 14]
                if not ext_call.return_data[50 len 14] * msg.value / ext_call.return_data[18 len 14]:
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                        storDF69[stor12.length] = 0 / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                            if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                else:
                    if 10^18 * ext_call.return_data[50 len 14] * msg.value / ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * msg.value / ext_call.return_data[18 len 14] != 10^18:
                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                        storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                            if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                            storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                if (Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0])
                                storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[32]) * msg.value / Mask(112, 0, ext_call.return_data[0]) / 10^6 / sub_be62cfe5
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not msg.value:
                require ext_call.return_data[50 len 14]
                if not 0 / ext_call.return_data[50 len 14]:
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                        storDF69[stor12.length] = 0 / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                                if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                                if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                else:
                    if 10^18 * 0 / ext_call.return_data[50 len 14] / 0 / ext_call.return_data[50 len 14] != 10^18:
                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                        storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                            storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                                if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += 0 / Mask(112, 0, ext_call.return_data[32])
                                if (0 / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = 0 / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 10^18 * 0 / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * 0 / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
            else:
                if ext_call.return_data[18 len 14] * msg.value / msg.value != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[50 len 14]
                if not ext_call.return_data[18 len 14] * msg.value / ext_call.return_data[50 len 14]:
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                        storDF69[stor12.length] = 0 / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                            if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                else:
                    if 10^18 * ext_call.return_data[18 len 14] * msg.value / ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * msg.value / ext_call.return_data[50 len 14] != 10^18:
                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not sub_be62cfe5:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not refs[msg.sender]:
                        refs[msg.sender] = arg1
                    if not refs[msg.sender]:
                        orders.length++
                        orders[orders.length].field_0 = refs[msg.sender]
                        storDF69[stor12.length] = msg.sender
                        storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                        storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                        storDF69[stor12.length] = 0
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]):
                            if not sub_be62cfe5:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args refs[msg.sender], 0 / sub_be62cfe5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                            if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                sub_7b7a9299[stor11[msg.sender]]++
                                if not sub_c4cdc924[stor11[msg.sender]]:
                                    if not sub_be62cfe5:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ea6cfd4aAddress)
                                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args refs[msg.sender], 0 / sub_be62cfe5
                                else:
                                    if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                        revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                    if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            orders.length++
                            orders[orders.length].field_0 = refs[msg.sender]
                            storDF69[stor12.length] = msg.sender
                            storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                            storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                            storDF69[stor12.length] = 0 / sub_be62cfe5
                        else:
                            if sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) != sub_7301228a[stor7[stor11[msg.sender]]]:
                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                            if not sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6:
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 0 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                                storDF69[stor12.length] = 0 / sub_be62cfe5
                            else:
                                if 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 != 10^18:
                                    revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[514 len 31]
                                if not sub_be62cfe5:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ea6cfd4aAddress)
                                call sub_ea6cfd4aAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args refs[msg.sender], 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_c4cdc924[stor11[msg.sender]] += Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                if (Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])) + sub_c4cdc924[stor11[msg.sender]] >= sub_f06853b2[stor7[stor11[msg.sender]]]:
                                    sub_7b7a9299[stor11[msg.sender]]++
                                    if not sub_c4cdc924[stor11[msg.sender]]:
                                        if not sub_be62cfe5:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(sub_ea6cfd4aAddress)
                                        call sub_ea6cfd4aAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args refs[msg.sender], 0 / sub_be62cfe5
                                    else:
                                        if (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / sub_c4cdc924[stor11[msg.sender]] != sub_7301228a[stor7[stor11[msg.sender]] + 1] - sub_7301228a[stor7[stor11[msg.sender]]]:
                                            revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[578 len 31]
                                        if not (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6:
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 0 / sub_be62cfe5
                                        else:
                                            if 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 != 10^18:
                                                revert with 0, 32, 33, 0x4f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[642 len 31]
                                            if not sub_be62cfe5:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_code.size(sub_ea6cfd4aAddress)
                                            call sub_ea6cfd4aAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args refs[msg.sender], 10^18 * (sub_7301228a[stor7[stor11[msg.sender]] + 1] * sub_c4cdc924[stor11[msg.sender]]) - (sub_7301228a[stor7[stor11[msg.sender]]] * sub_c4cdc924[stor11[msg.sender]]) / 10^6 / sub_be62cfe5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                orders.length++
                                orders[orders.length].field_0 = refs[msg.sender]
                                storDF69[stor12.length] = msg.sender
                                storDF69[stor12.length] = Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32])
                                storDF69[stor12.length] = 10^18 * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / sub_be62cfe5
                                storDF69[stor12.length] = 10^18 * sub_7301228a[stor7[stor11[msg.sender]]] * Mask(112, 0, ext_call.return_data[0]) * msg.value / Mask(112, 0, ext_call.return_data[32]) / 10^6 / sub_be62cfe5
    storDF69[stor12.length] = sub_d5c8610c
    storDF69[stor12.length] = block.timestamp
    storDF69[stor12.length] = block.number
    emit 0x21412c4b: (orders.length - 1)
}



}
