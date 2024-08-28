# SQL Practice Repository

This repository contains SQL scripts and lessons for practicing and improving SQL skills. Each script is designed to demonstrate specific SQL concepts, techniques, and best practices. As you progress, you'll find scripts covering various topics, from basic queries to advanced SQL features.

## Table of Contents
1. [Indexing](#indexing)

---
## **Indexing**

### **Overview**

Indexing is a database optimization technique that involves creating a data structure (an index) to allow for faster retrieval of records within a table. By organizing data based on the values of one or more columns, indexing minimizes the amount of data the database must scan to find the desired rows.

#### **Types of Indexing:**

1. **Single-Column Index:**
   - **Definition:** An index created on a single column of a table.
   - **Use Case:** Ideal for queries that frequently filter or sort based on a single column, such as primary key lookups or when a single column is often used in `WHERE` clauses.

2. **Composite Index:**
   - **Definition:** An index created on two or more columns of a table.
   - **Use Case:** Best for queries that filter or sort based on multiple columns, especially in the same order as the index. Composite indexes are particularly effective when used with queries that have `WHERE` clauses involving multiple columns.

3. **Unique Index:**
   - **Definition:** An index that ensures all the values in the indexed column(s) are unique.
   - **Use Case:** Used to enforce uniqueness on columns where duplicate values are not allowed, such as in primary keys or unique constraints.

4. **Clustered Index:**
   - **Definition:** An index that sorts the actual data rows of the table based on the indexed column(s). A table can have only one clustered index.
   - **Use Case:** Ideal for tables where data retrieval is often based on range queries, as it speeds up range lookups, sorting, and grouping operations.

5. **Non-Clustered Index:**
   - **Definition:** An index that does not alter the physical order of the data, but creates a separate structure to point to the data rows. A table can have multiple non-clustered indexes.
   - **Use Case:** Best for queries that require frequent filtering or joining, without the need to reorganize the physical data structure. Non-clustered indexes are flexible and can be created on any column(s) to optimize various queries.

#### **When to Use Which Index:**

- **Single-Column Index:** Use when queries frequently filter or sort on a single column.
- **Composite Index:** Use when queries involve multiple columns in the `WHERE` clause or when sorting and filtering by multiple columns.
- **Unique Index:** Use to enforce data integrity by ensuring that no duplicate values are present in the indexed column(s).
- **Clustered Index:** Use when the data is frequently accessed in a sorted order or for range queries where the physical order of the data benefits performance.
- **Non-Clustered Index:** Use for general-purpose indexing needs, particularly when multiple queries benefit from different filtering conditions.

Indexing is essential for improving query performance, but it should be applied judiciously. Over-indexing can lead to performance degradation in data modification operations like `INSERT`, `UPDATE`, and `DELETE` due to the overhead of maintaining the indexes.

### Example Script:
- [Indexing.sql](./Indexing.sql)

### More lessons will be added as you progress through your SQL learning journey. Keep experimenting and refining your SQL skills!