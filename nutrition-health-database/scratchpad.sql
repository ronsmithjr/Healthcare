/*

Do we need separate schemas or databases for 

1. Recipes
2. Nutrition

Schemas



Recipes






*/
SELECT @@TRANCOUNT;


SELECT 
    dp.name AS UserName,
    dp.type_desc AS UserType,
    rp.name AS RoleName
FROM 
    sys.database_role_members drm
JOIN 
    sys.database_principals dp ON drm.member_principal_id = dp.principal_id
JOIN 
    sys.database_principals rp ON drm.role_principal_id = rp.principal_id
WHERE 
    dp.name = 'ronsmith245';

    SELECT 
    name AS SchemaName
FROM 
    sys.schemas;