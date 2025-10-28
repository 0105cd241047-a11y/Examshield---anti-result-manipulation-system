// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Examshield - Anti Result Manipulation System
 * @dev A blockchain-based system to securely store and verify exam results.
 */
contract Examshield {
    address public admin;

    struct Result {
        string studentName;
        string examName;
        uint256 score;
        bool exists;
    }

    mapping(string => Result) private results; // Map student ID to their result record

    event ResultAdded(string studentId, string studentName, string examName, uint256 score);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    /**
     * @notice Adds a student's result to the blockchain (admin only).
     * @param studentId Unique ID assigned to the student.
     * @param studentName The name of the student.
     * @param examName The name of the exam.
     * @param score The marks scored by the student.
     */
    function addResult(
        string calldata studentId,
        string calldata studentName,
        string calldata examName,
        uint256 score
    ) external onlyAdmin {
        require(!results[studentId].exists, "Result already exists for this student ID");

        results[studentId] = Result(studentName, examName, score, true);
        emit ResultAdded(studentId, studentName, examName, score);
    }

    /**
     * @notice Verifies if a result exists for a given student ID.
     * @param studentId The unique ID of the student.
     * @return True if the result exists, otherwise false.
     */
    function verifyResult(string calldata studentId) external view returns (bool) {
        return results[studentId].exists;
    }

    /**
     * @notice Retrieves a student’s exam result.
     * @param studentId The unique ID of the student.
     * @return studentName Name of the student.
     * @return examName Exam name.
     * @return score Marks obtained.
     */
    function getResult(string calldata studentId)
        external
        view
        returns (string memory studentName, string memory examName, uint256 score)
    {
        require(results[studentId].exists, "No result found for this student ID");
        Result memory res = results[studentId];
        return (res.studentName, res.examName, res.score);
    }
}
