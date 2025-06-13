# 🚀 SAP ABAP on HANA Mini Project – Leave Management & Analytics System (LMAS)

## 🔍 Project Overview

This project demonstrates an end-to-end **Leave Management & Analytics System** using **SAP ABAP on HANA** technologies. It integrates classical ABAP, ALV reports, CDS views, and AMDP methods to manage employee leave requests and analytics efficiently.

---

## 📚 Project Phases

### 📁 Phase 1: Requirement Gathering & Table Design

- **ZEMP_MASTER** – Custom table for Employee Master Data  
- **ZLEAVE_REQUEST** – Custom table for Leave Requests  

Created using transaction **SE11** with appropriate technical settings.

---

### 📁 Phase 2: Data Entry for Tables

Inserted sample employee and leave request data into the above tables using:  
**SE11 > Utilities > Table Contents > Create Entries**

---

### 📁 Phase 3: Classical Report – Leave History

- **Program:** `ZLEAVE_HISTORY`  
- **Description:** Classical report that shows leave history of employees.  
- **Type:** Executable Program (SE38)  

---

### 📁 Phase 4: ALV Report – Manager View

- **Program:** `ZLEAVE_MGR_PENDING`  
- **Description:** ALV Report showing pending leave requests for a manager using `CL_SALV_TABLE`.  
- **Type:** Executable Program (SE38)  

---

### 📁 Phase 5: CDS View – Analytics

- **CDS View:** `ZCDS_LEAVE_COUNT`  
- **Tool:** ADT (Eclipse)  
- **Purpose:** Analytical view to show leave count per employee.  
- Created using DDL Source.

---

### 📁 Phase 6: AMDP Class – HANA-Optimized Data Fetching

- **Class:** `ZCL_AMDP_LEAVE`  
- **Interface:** `IF_AMDP_MARKER_HDB`  
- **Method:** `GET_SUMMARY`  
- **Inputs:** `I_EMPID`  
- **Outputs:** `ET_RESULT`  

Additional objects:
- **Structure:** `ZLEAVE_SUMMARY`  
- **Table Type:** `ZLEAVE_SUMMARY_TAB`  

Implemented and activated using SE24.

---

### 📁 Phase 7: Testing & Optional Enhancements

- **Program:** `ZTEST_AMDP_LEAVE` – Tests AMDP class.  
- **Optional Enhancements:**
  - BAPI: `BAPI_USER_GET_DETAIL`
  - User Exits via `SMOD`
  - Module Pool for leave interface (SE80)

---

## 📂 Repository Structure

```plaintext
SAP-LMAS-Project/
├── reports/
│   ├── ZLEAVE_HISTORY.abap
│   ├── ZLEAVE_MGR_PENDING.abap
│   └── ZTEST_AMDP_LEAVE.abap
├── amdp/
│   ├── ZCL_AMDP_LEAVE_DECL.abap
│   ├── ZCL_AMDP_LEAVE_IMPL.abap
│   ├── ZLEAVE_SUMMARY_STRUCTURE.txt
│   └── ZLEAVE_SUMMARY_TAB_TYPE.txt
├── cds/
│   └── ZCDS_LEAVE_COUNT.ddl
├── database/
│   ├── ZEMP_MASTER.txt
│   └── ZLEAVE_REQUEST.txt
├── data_entries/
│   ├── ZEMP_MASTER_SampleData.txt
│   └── ZLEAVE_REQUEST_SampleData.txt
├── snapshots/
│   ├── Phase1_TableCreation.png
│   ├── Phase2_DataEntry.png
│   ├── Phase3_ZLEAVE_HISTORY_Output.png
│   ├── Phase4_ALV_MGR_Report.png
│   ├── Phase5_CDS_View_Result.png
│   ├── Phase6_AMDP_Class_Activation.png
│   └── Phase7_Test_AMDP_Report.png
└── README.md
