SELECT id FROM Weather x
WHERE Temperature > (
    SELECT Temperature FROM Weather y
    WHERE y.RecordDate = subdate(x.RecordDate, 1)
);
