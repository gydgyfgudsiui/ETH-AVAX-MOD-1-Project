# Error Handling Project 

Driving License Verifier Smart Contract

## Description

This project contains a Solidity smart contract named `DrivingLicenseVerifier` that can be used to verify the eligibility of individuals for a driving license. The contract allows you to set a legal driving age and provides functions to check eligibility based on a given age, calculate learner scores, and perform conditional checks.

## Getting Started

### Installing

To use this smart contract, follow these steps:

1. Download the Solidity compiler if you haven't already: [Solidity Downloads](https://soliditylang.org/docs/develop/download-and-install.html)

### Executing program

Here are the steps to compile and deploy the contract:

1. Compile the contract using the Solidity compiler. You can use a tool like Remix (https://remix.ethereum.org/) or the Solidity compiler command line.

2. Deploy the compiled contract to an Ethereum-compatible blockchain. You can use tools like Remix to deploy the contract.

   Certainly! Error handling is an essential aspect of smart contract development to ensure that your contracts behave predictably and securely. Here's an updated README section that includes information on error handling functions:

## Error Handling

Solidity provides mechanisms for handling errors and exceptions within smart contracts. The `require`, `revert`, and `assert` statements are commonly used for error handling.

### `require` Statement

The `require` statement is often used to check conditions and revert the transaction if the condition is not met. It allows you to provide a custom error message along with the condition. In the `DrivingLicenseVerifier` contract, the `checkEligibility` function uses `require` to check if the provided age is greater than or equal to the legal driving age:

```solidity
function checkEligibility(uint256 _age) external view returns (bool) {
    require(_age >= legalDrivingAge, "You are not eligible for a driving license");
    return true;
}
```

If the condition `_age >= legalDrivingAge` is not satisfied, the transaction is reverted with the error message provided.

### `revert` Statement

The `revert` statement is used to revert a transaction with an optional error message. It is typically used when a condition is not met, and you want to provide an explanation for the revert. In the `IDcheck` function of the contract, `revert` is used to revert the transaction if the condition is false:

```solidity
function IDcheck(bool _condition) external pure {
    if (!_condition) {
        revert("Condition not met");
    }
}
```

Here, if `_condition` is `false`, the transaction will be reverted with the message "Condition not met."

### `assert` Statement

The `assert` statement is used for internal errors and should not typically be used for conditions that could be caused by external actors. It is used to check invariants that should always hold true. In the `LearnerScore` function of the contract, `assert` is used to check if the input value is greater than 7:

```solidity
function LearnerScore(uint256 _value) external pure returns (uint256) {
    assert(_value > 7);
    return _value * 2;
}
```

If `_value` is not greater than 7, it will trigger an exception, indicating an internal error.

Always thoroughly test your smart contracts, including various error scenarios, to ensure they behave as expected and securely handle exceptions.

#### Checking Eligibility

You can check the eligibility of a person for a driving license by calling the `checkEligibility` function, providing the person's age as an argument:

```solidity
function checkEligibility(uint256 _age) external view returns (bool) {
        require(_age >= legalDrivingAge, "You are not eligible for a driving license");
        return true;
    }
```

#### Calculating Learner Score

You can calculate a learner's score using the `LearnerScore` function, providing the value as an argument:

```solidity
function LearnerScore(uint256 _value) external pure returns (uint256) {
        assert(_value > 7);
        return _value * 2;
    }
```

#### Performing Conditional Checks

You can perform conditional checks using the `IDcheck` function, providing a boolean condition as an argument. If the condition is false, it will revert the transaction:

```solidity
function IDcheck(bool _condition) external pure {
        if (_condition==false) {
            revert("Condition not met");
        }
    }
```

## Help

If you encounter any issues or have questions, please feel free to reach out to the project contributors.

## Authors

- Moksh Verma
- 22BCT10059@cuchd.in

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
