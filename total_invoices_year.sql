-- How many Invoices were there in 2009 and 2011?

select
    sum(case when (Invoice.InvoiceDate >= '2009-01-01 00:00:00' AND Invoice.InvoiceDate < '2010-01-01 00:00:00') OR (Invoice.InvoiceDate >= '2011-01-01 00:00:00' AND Invoice.InvoiceDate < '2012-01-01 00:00:00') then 1 else 0 end)
from Invoice