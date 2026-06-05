-- 1.alphabetically ordered list of names
SELECT Name || '(' || SUBSTR(Occupation, 1, 1) || ')'
FROM OCCUPATIONS
ORDER BY Name ASC;

-- 2.occupation counts
SELECT 'There are a total of ' || COUNT(Occupation) || ' ' || LOWER(Occupation) || 's.'
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation ASC;