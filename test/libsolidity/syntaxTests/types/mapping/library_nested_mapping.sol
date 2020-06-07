pragma experimental ABIEncoderV2;
library L {
    struct S { mapping(uint => uint) m; }
    function f(S memory a) external pure returns (S memory) {}
}
// ----
// TypeError: (103-113): Type struct L.S is only valid in storage because it contains a (nested) mapping.
