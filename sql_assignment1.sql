-------question_1 1. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, sorted first by CustomerId (in ascending order), and then by total dollar amount  (in descending order).
SELECT InvoiceId, CustomerId, total from invoices order by CustomerId,total DESC;
-------question_2 2. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, but this time sorted first by total dollar amount (in descending order), and then by CustomerId (in ascending order).

SELECT InvoiceId, CustomerId, total from invoices order by total DESC,CustomerId;
-------question_3 3. Compare the results of these two queries above. How are the results different when you switch the column you sort on first? (Explain it in your own words.)

-- because when we sort column according to sort on firt,it is sorted as regards CustomerId ,
-- then total is sorted related with customerıd from top to down.

-- when we exchance the columns place ,
-- it is sorted this time take into account first total then customerId is sorted related with total,

-- that is, when it changed, its sort priorty also chanced

-------question_4 4. Write a query to pull the first 10 rows and all columns from the invoices table that have a dollar amount of total greater than or equal to 10.

SELECT * from invoices where total >= 10 order by total limit 10;

-------question_5 5. Write a query to pull the first 5 rows and all columns from the invoices table that have a dollar amount of total less than 10.

SELECT * from invoices where total < 10 limit 5;

-------question_6 6. Find all track names that start with 'B' and end with 's'.

SELECT name from tracks where name like 'B%s';

-------question_7 7. Use the invoices table to find all information regarding invoices whose billing address is USA or Germany or Norway or Canada and invoice date is at any point in 2010, sorted from newest to oldest.

SELECT * from invoices 
where BillingCountry in ('USA','Germany','Norway','Canada') and InvoiceDate like '2010%'
order by InvoiceDate DESC;