DO
$do$
BEGIN

IF (SELECT count(*) FROM "Clients" WHERE "Id" = 1) = 0 THEN INSERT INTO "Clients" ("Id", "AbsoluteRefreshTokenLifetime", "AccessTokenLifetime", "AccessTokenType", "AllowAccessTokensViaBrowser", "AllowOfflineAccess", "AllowPlainTextPkce", "AllowRememberConsent", "AlwaysIncludeUserClaimsInIdToken", "AlwaysSendClientClaims", "AuthorizationCodeLifetime", "BackChannelLogoutSessionRequired", "BackChannelLogoutUri", "ClientClaimsPrefix", "ClientId", "ClientName", "ClientUri", "ConsentLifetime", "Created", "Description", "DeviceCodeLifetime", "EnableLocalLogin", "Enabled", "FrontChannelLogoutSessionRequired", "FrontChannelLogoutUri", "IdentityTokenLifetime", "IncludeJwtId", "LogoUri", "NonEditable", "PairWiseSubjectSalt", "ProtocolType", "RefreshTokenExpiration", "RefreshTokenUsage", "RequireClientSecret", "RequireConsent", "RequirePkce", "SlidingRefreshTokenLifetime", "UpdateAccessTokenClaimsOnRefresh") OVERRIDING SYSTEM VALUE VALUES (1, 2592000, 3600,0, false, true, false, true, false, true, 300, true, NULL, NULL, N'UserManagementClient', N'User Management Client', NULL, NULL, current_date, N'User Management Client OICD Client', 3600, true, true, true, NULL, 300, false, NULL, true, NULL, N'oidc', 1, 1, true, true, false, 1296000, true); END IF;

PERFORM setval('"Clients_Id_seq"', (SELECT MAX("Id") FROM "Clients")+1);

IF (SELECT count(*) FROM "ClientGrantTypes" WHERE "Id" = 1) = 0 THEN INSERT INTO "ClientGrantTypes" ("Id", "ClientId", "GrantType") OVERRIDING SYSTEM VALUE VALUES (1, 1, N'password'); END IF;

PERFORM setval('"ClientGrantTypes_Id_seq"', (SELECT MAX("Id") FROM "ClientGrantTypes")+1);

IF (SELECT count(*) FROM "ClientScopes" WHERE "Id" = 1) = 0 THEN INSERT INTO "ClientScopes" ("Id", "ClientId", "Scope") OVERRIDING SYSTEM VALUE VALUES (1, 1, N'profile'); END IF;
IF (SELECT count(*) FROM "ClientScopes" WHERE "Id" = 2) = 0 THEN INSERT INTO "ClientScopes" ("Id", "ClientId", "Scope") OVERRIDING SYSTEM VALUE VALUES (2, 1, N'openid'); END IF;
IF (SELECT count(*) FROM "ClientScopes" WHERE "Id" = 3) = 0 THEN INSERT INTO "ClientScopes" ("Id", "ClientId", "Scope") OVERRIDING SYSTEM VALUE VALUES (3, 1, N'identity-management'); END IF;
IF (SELECT count(*) FROM "ClientScopes" WHERE "Id" = 4) = 0 THEN INSERT INTO "ClientScopes" ("Id", "ClientId", "Scope") OVERRIDING SYSTEM VALUE VALUES (4, 1, N'task-management'); END IF;
IF (SELECT count(*) FROM "ClientScopes" WHERE "Id" = 5) = 0 THEN INSERT INTO "ClientScopes" ("Id", "ClientId", "Scope") OVERRIDING SYSTEM VALUE VALUES (5, 1, N'habitica-provider'); END IF;
IF (SELECT count(*) FROM "ClientScopes" WHERE "Id" = 6) = 0 THEN INSERT INTO "ClientScopes" ("Id", "ClientId", "Scope") OVERRIDING SYSTEM VALUE VALUES (6, 1, N'settings-service'); END IF;

PERFORM setval('"ClientScopes_Id_seq"', (SELECT MAX("Id") FROM "ClientScopes")+1);

IF (SELECT count(*) FROM "ClientSecrets" WHERE "Id" = 1) = 0 THEN INSERT INTO "ClientSecrets" ("Id", "ClientId", "Created", "Description", "Expiration", "Type", "Value") OVERRIDING SYSTEM VALUE VALUES (1, 1, current_date, N'User Management Client', NULL, N'SharedSecret', N'UD6fn+ADIk5ieMKjcIBT75XFgaM4mxw7tQK+YXL6hc4='); END IF;

PERFORM setval('"ClientSecrets_Id_seq"', (SELECT MAX("Id") FROM "ClientSecrets")+1);

IF (SELECT count(*) FROM "IdentityResources" WHERE "Id" = 1) = 0 THEN INSERT INTO "IdentityResources" ("Id", "Created", "Description", "DisplayName", "Emphasize", "Enabled", "Name", "NonEditable", "Required", "ShowInDiscoveryDocument") OVERRIDING SYSTEM VALUE VALUES (1, current_date, NULL, N'Your user identifier', false, true, N'openid', true, true, true); END IF;
IF (SELECT count(*) FROM "IdentityResources" WHERE "Id" = 2) = 0 THEN INSERT INTO "IdentityResources" ("Id", "Created", "Description", "DisplayName", "Emphasize", "Enabled", "Name", "NonEditable", "Required", "ShowInDiscoveryDocument") OVERRIDING SYSTEM VALUE VALUES (2, current_date, N'Your user profile information (first name, last name, etc.)', N'User profile', true, true, N'profile', true, false, true); END IF;

PERFORM setval('"IdentityResources_Id_seq"', (SELECT MAX("Id") FROM "IdentityResources")+1);

IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 1) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (1, 1, N'sub'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 2) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (2, 2, N'name'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 3) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (3, 2, N'family_name'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 4) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (4, 2, N'given_name'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 5) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (5, 2, N'middle_name'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 6) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (6, 2, N'nickname'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 7) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (7, 2, N'preferred_username'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 8) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (8, 2, N'profile'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 9) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (9, 2, N'picture'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 10) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (10, 2, N'website'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 11) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (11, 2, N'gender'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 12) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (12, 2, N'birthdate'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 13) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (13, 2, N'zoneinfo'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 14) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (14, 2, N'locale'); END IF;
IF (SELECT count(*) FROM "IdentityClaims" WHERE "Id" = 15) = 0 THEN INSERT INTO "IdentityClaims" ("Id", "IdentityResourceId", "Type") OVERRIDING SYSTEM VALUE VALUES (15, 2, N'updated_at'); END IF;

PERFORM setval('"IdentityClaims_Id_seq"', (SELECT MAX("Id") FROM "IdentityClaims")+1);

IF (SELECT count(*) FROM "ApiResources" WHERE "Id" = 1) = 0 THEN INSERT INTO "ApiResources" ("Id", "Created", "Description", "DisplayName", "Enabled", "Name", "NonEditable") OVERRIDING SYSTEM VALUE VALUES (1, current_date, N'Identity Management Service', N'Identity Management Service API', true, N'identity-api', true); END IF;
IF (SELECT count(*) FROM "ApiResources" WHERE "Id" = 2) = 0 THEN INSERT INTO "ApiResources" ("Id", "Created", "Description", "DisplayName", "Enabled", "Name", "NonEditable") OVERRIDING SYSTEM VALUE VALUES (2, current_date, N'Task Management Service', N'Task Management Service API', true, N'task-api', true); END IF;
IF (SELECT count(*) FROM "ApiResources" WHERE "Id" = 3) = 0 THEN INSERT INTO "ApiResources" ("Id", "Created", "Description", "DisplayName", "Enabled", "Name", "NonEditable") OVERRIDING SYSTEM VALUE VALUES (3, current_date, N'Habitica Task Provider Service', N'Habitica Task Provider Service API', true, N'habitica-api', true); END IF;
IF (SELECT count(*) FROM "ApiResources" WHERE "Id" = 4) = 0 THEN INSERT INTO "ApiResources" ("Id", "Created", "Description", "DisplayName", "Enabled", "Name", "NonEditable") OVERRIDING SYSTEM VALUE VALUES (4, current_date, N'Settings Service', N'Settings Service API', true, N'settings-api', true); END IF;

PERFORM setval('"ApiResources_Id_seq"', (SELECT MAX("Id") FROM "ApiResources")+1);

IF (SELECT count(*) FROM "ApiScopes" WHERE "Id" = 1) = 0 THEN INSERT INTO "ApiScopes" ("Id", "ApiResourceId", "Description", "DisplayName", "Emphasize", "Name", "Required", "ShowInDiscoveryDocument") OVERRIDING SYSTEM VALUE VALUES (1, 1, N'Identity Management Service Default Scope', N'Identity Management Service Default Scope', false, N'identity-management', false, true); END IF;
IF (SELECT count(*) FROM "ApiScopes" WHERE "Id" = 2) = 0 THEN INSERT INTO "ApiScopes" ("Id", "ApiResourceId", "Description", "DisplayName", "Emphasize", "Name", "Required", "ShowInDiscoveryDocument") OVERRIDING SYSTEM VALUE VALUES (2, 2, N'Task Management Service Default Scope', N'Task Management Service Default Scope', false, N'task-management', false, true); END IF;
IF (SELECT count(*) FROM "ApiScopes" WHERE "Id" = 3) = 0 THEN INSERT INTO "ApiScopes" ("Id", "ApiResourceId", "Description", "DisplayName", "Emphasize", "Name", "Required", "ShowInDiscoveryDocument") OVERRIDING SYSTEM VALUE VALUES (3, 3, N'Habitica Task Provider Service Default Scope', N'Habitica Task Provider Service Default Scope', false, N'habitica-provider', false, true); END IF;
IF (SELECT count(*) FROM "ApiScopes" WHERE "Id" = 4) = 0 THEN INSERT INTO "ApiScopes" ("Id", "ApiResourceId", "Description", "DisplayName", "Emphasize", "Name", "Required", "ShowInDiscoveryDocument") OVERRIDING SYSTEM VALUE VALUES (4, 4, N'Settings Service Default Scope', N'Settings Service Default Scope', false, N'settings-service', false, true); END IF;

PERFORM setval('"ApiScopes_Id_seq"', (SELECT MAX("Id") FROM "ApiScopes")+1);

IF (SELECT count(*) FROM "ApiSecrets" WHERE "Id" = 1) = 0 THEN INSERT INTO "ApiSecrets" ("Id", "ApiResourceId", "Description", "Created", "Expiration", "Type", "Value") OVERRIDING SYSTEM VALUE VALUES (1, 1, NULL, current_date, NULL, N'SharedSecret', N'IlM2emwvAOUundGVXqrYSbgWsSgBdFiUBEFNm+zkZLw='); END IF;
IF (SELECT count(*) FROM "ApiSecrets" WHERE "Id" = 2) = 0 THEN INSERT INTO "ApiSecrets" ("Id", "ApiResourceId", "Description", "Created", "Expiration", "Type", "Value") OVERRIDING SYSTEM VALUE VALUES (2, 2, NULL, current_date, NULL, N'SharedSecret', N'SwU06eRABG2C0MK+UuJGdLL064+6wIvtojzDZX+aE7o='); END IF;
IF (SELECT count(*) FROM "ApiSecrets" WHERE "Id" = 3) = 0 THEN INSERT INTO "ApiSecrets" ("Id", "ApiResourceId", "Description", "Created", "Expiration", "Type", "Value") OVERRIDING SYSTEM VALUE VALUES (3, 3, NULL, current_date, NULL, N'SharedSecret', N'26O1szHj4CXM1nc/5Pi/K/l7AT751uN9/24QGNiZb70='); END IF;
IF (SELECT count(*) FROM "ApiSecrets" WHERE "Id" = 4) = 0 THEN INSERT INTO "ApiSecrets" ("Id", "ApiResourceId", "Description", "Created", "Expiration", "Type", "Value") OVERRIDING SYSTEM VALUE VALUES (4, 4, NULL, current_date, NULL, N'SharedSecret', N'26O1szHj4CXM1nc/5Pi/K/l7AT751uN9/24QGNiZb70='); END IF;

PERFORM setval('"ApiSecrets_Id_seq"', (SELECT MAX("Id") FROM "ApiSecrets")+1);

END;
$do$;
