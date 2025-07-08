# 📖 Pride and Prejudice and SQL

Welcome to **Pride and Prejudice and SQL**, a whimsical and educational SQL project that brings Jane Austen’s literary masterpiece to life through structured data! This project is designed for those learning SQL basics — from database creation and data modeling to queries and joins — using fictional but thoughtfully crafted data from *Pride and Prejudice*.

---

## 📊 Project Overview

This SQL script walks learners through a multi-lesson exercise using a custom database. It includes:

- **Lesson 1**: Create and populate tables with character demographics, household details, financial information, and plot points.
- **Lesson 2**: Alter tables and add new data to simulate character arcs and life events.
- **Lesson 3**: Practice SQL joins (including `LEFT JOIN` and `GROUP BY`) to analyze relationships between characters and their life events.
- **Lesson 4**: Write custom queries to answer questions like:
  - Who lives at Netherfield?
  - Who are the wealthiest characters?
- **Extra Practice**: Create a view (`character_summary`) for reusability and efficient querying.

---

## 🗃️ Database Schema

The project contains **four primary tables** and **one supplementary table**:

| Table Name             | Description                                         |
|------------------------|-----------------------------------------------------|
| `character_demographics` | Character details including age, gender, birth date, and ending marital status |
| `household_details`     | Named locations (e.g., Longbourn, Pemberley)       |
| `income_or_dowry`       | Character wealth information linked to households  |
| `narrative_parts`       | Major plot points in the story                     |
| `life_events`           | Post-narrative life details (e.g., spouse, moves)  |

---

## 🔍 Sample Queries

```sql
-- Characters who lived at Netherfield
SELECT c.first_name, c.last_name
FROM character_demographics c
JOIN income_or_dowry i ON c.story_id = i.story_id
JOIN household_details h ON i.household_id = h.household_id
WHERE h.household_name = 'Netherfield';

-- Top 3 wealthiest characters
SELECT c.first_name, c.last_name, i.income_or_dowry_amount
FROM income_or_dowry i
JOIN character_demographics c ON i.story_id = c.story_id
ORDER BY i.income_or_dowry_amount DESC
LIMIT 3;
```

---

## 🧠 Educational Features

- AI-assisted birthdates and marital outcomes enhance realism.
- Inline comments explain best practices and SQL reasoning.
- Demonstrates usage of `ALTER TABLE`, `CASE WHEN`, `FOREIGN KEY`, and views.
- Great for classroom or portfolio use.

---

## 🛠 How to Use

1. Run the full script in a MySQL-compatible environment.
2. Skip the `DROP DATABASE` line if you’re initializing for the first time.
3. Explore and adapt the queries for practice or visualization projects.

---

## ✍️ Credits

Created and maintained by **Holley Camacho, MPA**  
Inspired by Jane Austen’s *Pride and Prejudice*  
Powered by SQL and a love of storytelling through data.

