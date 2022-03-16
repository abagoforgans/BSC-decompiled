contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor1;
array of struct name;

function name() {
    return name[0 len name.length].field_0
}

function _fallback() payable {
    revert
}

function storeData(uint256 arg1) {
    stor1 = arg1
}

function storeValidity(bool arg1) {
    stor0 = uint8(arg1)
}

function getData() {
    mem[224] = uint256(name.field_0)
    idx = 224
    s = 0
    while name.length + 224 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 224] = 7
    mem[name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 256] = 'getData'
    emit FunctionCalled(Array(len=name.length, data=mem[224 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 32], 'getData'), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 128, msg.sender);
    emit FunctionArguments(uint256[] rg1, int256[] rg2):
                           64,
                           3168,
                           96,
                           Mask(768, 0, name.length),
                           mem[352 len 2976],
                           0,
    return stor1, bool(stor0)
}



}
