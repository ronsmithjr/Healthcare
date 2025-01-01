

/* In Azure SQL Database, the default transaction mode is auto-commit. This means that each individual statement is automatically committed if it completes successfully.

To explicitly check or change the transaction mode, you can use the following SQL commands:

1. Check Current Transaction Mode: You can run a simple query to see if the current transaction is active. If no transaction is active, it implies that the database is in auto-commit mode. */


SELECT @@TRANCOUNT;

/*If the result is 0, it means there is no active transaction, indicating that the database is in auto-commit mode.

2. Set Explicit Transaction Mode: If you want to ensure that you are in explicit transaction mode, you can use the following commands:*/

SET IMPLICIT_TRANSACTIONS ON;

/* This command will turn off auto-commit mode, and you will need to explicitly commit or roll back transactions.

3. Revert to Auto-Commit Mode: To revert back to auto-commit mode, you can use:*/

SET IMPLICIT_TRANSACTIONS OFF;

/* By default, Azure SQL Database operates in auto-commit mode, so unless you have explicitly changed the transaction mode, it should be in auto-commit mode.*/