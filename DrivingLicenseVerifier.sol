// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DrivingLicenseVerifier {
    uint256 public legalDrivingAge;

    constructor(uint256 _legalDrivingAge) {
        legalDrivingAge = _legalDrivingAge;
    }

    function checkEligibility(uint256 _age) external view returns (bool) {
        require(_age >= legalDrivingAge, "You are not eligible for a driving license");
        return true;
    }

    function LearnerScore(uint256 _value) external pure returns (uint256) {
        assert(_value > 7);
        return _value * 2;
    }

    function IDcheck(bool _condition) external pure {
        if (_condition==false) {
            revert("Condition not met");
        }
    }
}
