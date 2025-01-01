-- Create a new SQL Server login
CREATE LOGIN webuser WITH PASSWORD = 'password!23';

-- Create a new database user for the login
--USE nutritiondb;
CREATE USER webuser FOR LOGIN webuser;


-- Add the user to the db_datareader role
ALTER ROLE [db_datareader] ADD MEMBER webuser;

-- Add the user to the db_datawriter role
ALTER ROLE [db_datawriter] ADD MEMBER webuser;

-- Grant specific permissions to the user
GRANT SELECT ON nutrition.OneServing TO webuser;
GRANT INSERT ON nutrition.OneServing TO webuser;
GRANT UPDATE ON nutrition.OneServing TO webuser;
GRANT DELETE ON nutrition.OneServing TO webuser;

/* Check user membership in roles*/
SELECT 
    dp.name AS MemberName,
    dp.type_desc AS MemberType
FROM 
    sys.database_role_members drm
JOIN 
    sys.database_principals dp ON drm.member_principal_id = dp.principal_id
JOIN 
    sys.database_principals rp ON drm.role_principal_id = rp.principal_id
WHERE 
    rp.name IN ('db_datareader', 'db_datawriter');

