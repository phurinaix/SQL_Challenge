CREATE PROCEDURE solution()
BEGIN
    SELECT 
    CONCAT(
        SUBSTRING_INDEX(date_str, '-', 1),
        '-',
        IF(LENGTH(SUBSTRING_INDEX(SUBSTRING_INDEX(date_str, '-', 2), '-', -1)) = 1, 
            CONCAT('0', SUBSTRING_INDEX(SUBSTRING_INDEX(date_str, '-', 2), '-', -1)), 
            SUBSTRING_INDEX(SUBSTRING_INDEX(date_str, '-', 2), '-', -1)
        ),
        '-',
        IF(LENGTH(SUBSTRING_INDEX(date_str, '-', -1)) = 1, 
            CONCAT('0', SUBSTRING_INDEX(date_str, '-', -1)), 
            SUBSTRING_INDEX(date_str, '-', -1)
        )
    )
    AS date_iso 
    FROM documents;
END
