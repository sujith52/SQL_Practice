
# SQL & Database Practice Repository 

Welcome to my personal database practice repository! This project serves as a comprehensive collection of hands-on SQL queries, practice sets, advanced database topics, stored procedures, and NoSQL exercises with MongoDB.

---

## 📁 Repository Structure

```text
sql_practice/
├── README.md
├── Advanced_SQL_Practice/
│   ├── README.md
│   └── Window_function/         # Advanced queries, CTEs, Pivots & Window Functions
├── Basic_SQl/
│   ├── README.md
│   ├── Aliases/                 # Column & Table alias exercises
│   ├── Constraints/             # Primary/Foreign keys, Unique, Check, Default
│   ├── Data_Types/              # Data type practice sheets
│   ├── DB_Objects/              # Views, Stored Procedures, and Triggers
│   ├── From_Book/               # Sequential daily book exercises
│   ├── Normalization/           # Database normalization scripts (1NF - 3NF)
│   ├── Operators/               # Comparison, Logical, Null & Relational operators
│   ├── SQL_commands/            # DDL, DCL, and TCL command examples
│   ├── SQL_Functions/           # String, Number, DateTime, Multi-row & Control functions
│   ├── Sql_Oracle/              # Oracle-specific functions (Dual, NVL)
│   └── StructuringSQL/          # Basic & Advanced Selects, Joins, Grouping
├── ChatGPT_PracticeQA/          # Multi-phase problem-solving exercises
└── MongoDB/
    ├── README.md
    ├── MongoDB_basics/          # Core MongoDB scripts & phase-wise queries
    └── MongoDB_Practice/        # Dated MongoDB practice files

```

---

## 📥 Cloning & Getting Started

### 1. Clone the Repository

Open your terminal (CMD, PowerShell, or Git Bash) and run:

```bash
git clone [https://github.com/sujith52/SQL_Practice.git](https://github.com/sujith52/SQL_Practice.git)

```

### 2. Navigate to the Directory

```bash
cd sql_practice

```

### 3. Open in VS Code

```bash
code .

```

---

## 🚀 Contents Overview

### 1. Basic SQL (`/Basic_SQl`)

Core relational database concepts covering foundational topics:

* **SQL Commands:** DDL (`CREATE`, `ALTER`, `DROP`), DCL (`GRANT`, `REVOKE`), and TCL (`COMMIT`, `ROLLBACK`).
* **Operators & Functions:** Logical operators (`BETWEEN`, `IN`, `LIKE`), string manipulation, date-time functions, aggregate functions, and conditional control logic.
* **Database Objects:** Triggers, MySQL stored procedures, and reusable database objects.
* **SQL Structuring & Joins:** `INNER JOIN`, `LEFT/RIGHT JOIN`, `FULL OUTER JOIN`, `CROSS JOIN`, and `GROUP BY` aggregation.
* **Oracle SQL:** Dialect-specific practice using the `DUAL` table and null-handling functions like `NVL`.

### 2. Advanced SQL (`/Advanced_SQL_Practice`)

Higher-level query design and data analysis concepts:

* **Window Functions:** Ranking functions (`ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`) and analytical aggregate windows.
* **CTEs & Pivots:** Common Table Expressions (using `WITH` clauses) and pivoting dataset structures.

### 3. Practice Exercises (`/ChatGPT_PracticeQA`)

* Structured problem sets divided into phases (**Phase 1 through Phase 5**) to build progressive query design skills from basic filtering to complex data analysis.

### 4. MongoDB & NoSQL (`/MongoDB`)

* Practice queries covering document-oriented databases using `.js` and `.mongodb.js` scripts.
* Includes connection setup, CRUD operations, aggregation pipelines, and phased learning modules.

---

## 🛠️ Prerequisites & Execution

### Recommended Tools

* **SQL Engines:** MySQL, PostgreSQL, or Oracle Database installed locally.
* **NoSQL Engine:** MongoDB Community Server or MongoDB Atlas cluster.
* **VS Code Extensions:**
* *MySQL* or *SQLTools* extension.
* *MongoDB for VS Code* extension.



### Running SQL Scripts

1. Connect your preferred VS Code database extension to your local or remote SQL instance.
2. Open any `.sql` file in the project.
3. Highlight queries and press `Ctrl + Enter` (or use the extension button) to execute against your active connection.

### Running MongoDB Scripts

Execute scripts using the official MongoDB extension runner or directly via the Mongo Shell (`mongosh`):

```bash
mongosh "mongodb://localhost:27017" MongoDB/MongoDB_basics/phase10.js

```

*Maintained as an ongoing database learning and revision repository.*
