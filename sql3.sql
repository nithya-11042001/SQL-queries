Use shreedb;
SELECT book_details.title,author_details.name
FROM author_details
LEFT JOIN book_details
ON book_details.authorid= author_details.id
UNION
SELECT book_details.title,author_details.name
FROM author_details
right JOIN book_details
ON book_details.authorid= author_details.id;
