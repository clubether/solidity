==== Source: A ====
contract A {
	function g(uint256 x) public view returns(uint256) { return x; }
}
==== Source: B ====
import "A";
contract B is A {
	function f(uint256 x) public view returns(uint256) { return x; }
}
// ----
// f(uint256): 1337 -> 1337
