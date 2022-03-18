contract main {




// =====================  Runtime code  =====================


const name = 'GLASS BRO TOKEN'

const totalSupply = 100

const symbol = 'GBT'


mapping of uint256 balanceOf;
mapping of address ownerOf;
mapping of uint8 stor2;
mapping of uint256 stor3;
mapping of uint256 tokenOfOwnerByIndex;
array of uint256 tokenMetadata;

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function ownerOf(uint256 arg1) {
    require stor2[arg1]
    return ownerOf[arg1]
}

function tokenMetadata(uint256 arg1) {
    return tokenMetadata[arg1][0 len tokenMetadata[arg1].length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require stor2[arg2]
    require msg.sender == ownerOf[arg2]
    require arg1 != msg.sender
    stor3[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function takeOwnership(uint256 arg1) {
    require stor2[arg1]
    require stor2[arg1]
    require ownerOf[arg1] != msg.sender
    require stor3[stor1[arg1]][address(msg.sender)] == arg1
    balanceOf[stor1[arg1]]--
    ownerOf[arg1] = msg.sender
    balanceOf[stor1[arg1]]++
    emit Transfer(arg1, ownerOf[arg1], msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require stor2[arg2]
    require stor2[arg2]
    require msg.sender == ownerOf[arg2]
    require arg1 != msg.sender
    require arg1
    s = 0
    while tokenOfOwnerByIndex[address(msg.sender)][0] != arg2:
        tokenOfOwnerByIndex[address(msg.sender)][s] = 0
        mem[0] = s + 1
        mem[32] = sha3(address(msg.sender), 4)
        s = s + 1
        continue 
    balanceOf[address(msg.sender)]--
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(arg2, msg.sender, arg1);
}



}
