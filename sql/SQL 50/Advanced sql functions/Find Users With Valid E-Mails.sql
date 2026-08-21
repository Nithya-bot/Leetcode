https://leetcode.com/problems/find-users-with-valid-e-mails?envType=study-plan-v2&envId=top-sql-50

SELECT 
    user_id, 
    name, 
    mail
FROM 
    users
WHERE 
    mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$' 
    AND mail LIKE BINARY '%@leetcode.com';
