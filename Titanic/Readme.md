# Data Cleaning with Pandas

## Overview
This repository provides examples of data cleaning techniques using the Pandas library in Python. It demonstrates various operations on the Titanic dataset, including handling missing values, removing duplicates, and feature scaling.

## Commands and Learnings

### Load Data
**Purpose:** Load data from a CSV file into a DataFrame.

### Display First Rows
**Purpose:** View the first few rows of the DataFrame.

### DataFrame Summary
**Purpose:** Get a summary of the DataFrame, including data types and non-null counts.

### Check for Missing Values
**Purpose:** Count missing values in each column.

### Fill Missing Values
**Purpose:** Replace missing values with a specific value, such as the median.

### Drop Columns
**Purpose:** Remove unnecessary columns from the DataFrame.

### Convert Categorical Variables
**Purpose:** Convert categorical variables into binary columns.

### Check for Duplicates
**Purpose:** Identify duplicate rows.

### Drop Duplicates
**Purpose:** Remove duplicate rows from the DataFrame.

### Feature Scaling
**Purpose:** Standardize features by removing the mean and scaling to unit variance.

## Command Definitions

- **`pd.read_csv('file.csv')`**  
  Loads a CSV file into a DataFrame. Takes the file path as an argument and returns a DataFrame.

- **`df.head()`**  
  Displays the first few rows of the DataFrame. Useful for quickly inspecting the data and its structure.

- **`df.info()`**  
  Provides a concise summary of the DataFrame. Includes the number of non-null values and the data types of each column.

- **`df.isnull().sum()`**  
  Counts the number of missing (NaN) values in each column of the DataFrame.

- **`df['Column'].fillna(value, inplace=True)`**  
  Replaces missing values in a specified column with a given value. The `inplace=True` argument makes the changes directly to the DataFrame.

- **`df.drop(columns=['ColumnName'], inplace=True)`**  
  Removes one or more specified columns from the DataFrame. The `inplace=True` argument ensures the DataFrame is modified directly.

- **`pd.get_dummies(df, columns=['Column'], drop_first=True)`**  
  Converts categorical column(s) into dummy/indicator variables. The `drop_first=True` argument avoids multicollinearity by dropping the first category.

- **`df.duplicated().sum()`**  
  Counts the number of duplicate rows in the DataFrame.

- **`df.drop_duplicates(inplace=True)`**  
  Removes duplicate rows from the DataFrame. The `inplace=True` argument modifies the DataFrame directly.

- **`StandardScaler()`**  
  Initializes a scaler for feature scaling. Standardizes features by removing the mean and scaling to unit variance.

- **`scaler.fit_transform(df[['Col1', 'Col2']])`**  
  Fits the scaler to the specified columns and transforms them. Scales the data to have zero mean and unit variance.

## Acknowledgments
- Pandas documentation
- Scikit-learn documentation