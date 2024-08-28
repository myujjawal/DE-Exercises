# SQL Practice Repository

This repository contains SQL scripts and lessons for practicing and improving SQL skills. Each script is designed to demonstrate specific SQL concepts, techniques, and best practices. As you progress, you'll find scripts covering various topics, from basic queries to advanced SQL features.

## Table of Contents
1. [Indexing](#indexing)

---
## **Indexing**

### **Overview**

Indexing is a crucial feature in SQL that can drastically improve query performance. By creating indexes on columns frequently used in `WHERE` clauses, joins, or for ordering, you can significantly reduce the time required for the database to retrieve the desired rows.

### **Key Learnings:**

- **Index Creation:** Learn how to create an index on specific columns to enhance query speed.
- **Performance Testing:** Understand how to measure the impact of indexing on query performance.
- **Composite Indexes:** Discover how to optimize queries involving multiple columns using composite indexes.
- **Index Management:** Gain insights on how to remove unnecessary indexes to conserve database resources.

### **Tips:**

- **Test Performance:** Always evaluate the performance impact of indexes, particularly with large datasets.
- **Use Indexing Wisely:** Be mindful of indexing too many columns, as it can slow down data modification operations (e.g., `INSERT`, `UPDATE`, `DELETE`).
- **Leverage Composite Indexes:** Consider using composite indexes for queries that filter on multiple columns to optimize performance.

### Example Script:
- [Indexing.sql](./Indexing.sql)

### More lessons will be added as you progress through your SQL learning journey. Keep experimenting and refining your SQL skills!