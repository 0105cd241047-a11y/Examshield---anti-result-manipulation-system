# Examshield - Anti Result Manipulation System

## 🧾 Project Description
**Examshield** is a blockchain-based result management system designed to eliminate exam result manipulation.  
By storing student records on the blockchain, it ensures results are **immutable**, **transparent**, and **verifiable** by anyone — eliminating the risk of tampering by administrators or third parties.

## 🎯 Project Vision
To create a **trustless and transparent education ecosystem** where academic records are secure, permanent, and easily verifiable.  
Examshield aims to restore confidence in academic institutions by using decentralized technology to guarantee data integrity.

## ⚙️ Key Features
- **Immutable Records:** Once stored, results cannot be modified or deleted.  
- **Admin Verification:** Only authorized exam administrators can publish official results.  
- **Public Verification:** Anyone can check the authenticity of a student’s record.  
- **Transparent Retrieval:** Students can retrieve their results anytime using their student ID.

## 🔑 Core Functions
1. `addResult(string studentId, string studentName, string examName, uint256 score)`  
   - Admin adds a verified result for a student.  

2. `verifyResult(string studentId)`  
   - Allows anyone to check if a student’s result exists and is authentic.  

3. `getResult(string studentId)`  
   - Returns a student’s stored exam details securely.  

---

### 📂 Project Structure
<img width="1569" height="760" alt="{10D3A715-A697-493A-8AAF-1E40F403BE82}" src="https://github.com/user-attachments/assets/5a518772-cd25-4e17-83e2-d8d8586d8d32" />
