CREATE PROCEDURE solution()
BEGIN
    SELECT ExtractValue(xml_doc, '//book[1]//author') 
    AS author FROM catalogs ORDER BY author;
END
