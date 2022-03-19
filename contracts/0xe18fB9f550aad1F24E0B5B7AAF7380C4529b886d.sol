contract main {




// =====================  Runtime code  =====================


const MIN_BURN_PCT = 5


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    revert
}

function totalBurnt() payable {
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(address rg1) with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (stor1 - (2 * ext_call.return_data[0]))
}

function currentBurnPercent() payable {
    require ext_code.size(stor0)
    staticcall stor0.getLastTwap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor3:
        if ext_call.return_data[0] >= stor4:
            return 0
        if not stor4:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / ext_call.return_data[0]
            if 0 / 0 / ext_call.return_data[0] > 500 * 10^6:
                return (0 / 0 / ext_call.return_data[0])
        else:
            require stor4
            if 10^18 * stor4 / stor4 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 10^18 * stor4 / ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^18 * stor4 / ext_call.return_data[0]
            if 0 / 10^18 * stor4 / ext_call.return_data[0] > 500 * 10^6:
                return (0 / 10^18 * stor4 / ext_call.return_data[0])
    else:
        require stor3
        if 10^18 * stor3 / stor3 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] >= stor4:
            return (10^18 * stor3)
        if not stor4:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 10^18 * stor3:
                if 0 / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / ext_call.return_data[0]
                if 0 / 0 / ext_call.return_data[0] > 500 * 10^6:
                    return (0 / 0 / ext_call.return_data[0])
            else:
                require 10^18 * stor3
                if 1000000000 * 10^18 * stor3 / 10^18 * stor3 != 10^9:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 0 / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / ext_call.return_data[0]
                if 1000000000 * 10^18 * stor3 / 0 / ext_call.return_data[0] > 500 * 10^6:
                    return (1000000000 * 10^18 * stor3 / 0 / ext_call.return_data[0])
        else:
            require stor4
            if 10^18 * stor4 / stor4 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 10^18 * stor3:
                if 10^18 * stor4 / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^18 * stor4 / ext_call.return_data[0]
                if 0 / 10^18 * stor4 / ext_call.return_data[0] > 500 * 10^6:
                    return (0 / 10^18 * stor4 / ext_call.return_data[0])
            else:
                require 10^18 * stor3
                if 1000000000 * 10^18 * stor3 / 10^18 * stor3 != 10^9:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 10^18 * stor4 / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^18 * stor4 / ext_call.return_data[0]
                if 1000000000 * 10^18 * stor3 / 10^18 * stor4 / ext_call.return_data[0] > 500 * 10^6:
                    return (1000000000 * 10^18 * stor3 / 10^18 * stor4 / ext_call.return_data[0])
    return 500 * 10^6
}



}
