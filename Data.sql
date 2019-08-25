USE [IdentityManagementService]
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[Clients] WHERE [Id] = 1) INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (1, 1, N'UserManagementClient', N'oidc', 1, N'User Management Client', NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 1, 300, 3600, 300, NULL, 2592000, 1296000, 1, 1, 1, 0, 1, 0, 1, N'client_', NULL, CAST(N'2019-07-17T19:25:06.3074530' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
GO
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientGrantTypes] ON
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientGrantTypes] WHERE [Id] = 1) INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (1, N'password', 1)
GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (2, N'client_credentials', 9)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (3, N'client_credentials', 11)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (4, N'password', 8)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (5, N'password', 12)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (6, N'client_credentials', 13)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (7, N'client_credentials', 7)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (8, N'password', 14)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (9, N'password', 20)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (10, N'client_credentials', 19)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (11, N'password', 10)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (12, N'client_credentials', 15)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (13, N'client_credentials', 5)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (14, N'password', 16)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (15, N'password', 4)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (16, N'password', 6)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (17, N'client_credentials', 17)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (18, N'password', 18)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (19, N'password', 2)
-- GO
-- INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (20, N'client_credentials', 3)
-- GO
SET IDENTITY_INSERT [dbo].[ClientGrantTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientScopes] ON
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (1, N'openid', 4)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (2, N'api2.read_only', 8)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (3, N'api1', 8)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (4, N'email', 8)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (5, N'profile', 8)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (6, N'openid', 8)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (7, N'api1', 3)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (8, N'api2.read_only', 3)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (9, N'profile', 19)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (10, N'api2.read_only', 9)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (11, N'api1', 9)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (12, N'email', 9)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (13, N'profile', 9)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (14, N'email', 2)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (15, N'openid', 9)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (16, N'api2.read_only', 20)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (17, N'api2.read_only', 10)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (18, N'api1', 10)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (19, N'email', 10)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (20, N'openid', 19)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (21, N'email', 3)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (22, N'openid', 7)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (23, N'profile', 4)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (24, N'api2.read_only', 2)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (25, N'api2.read_only', 5)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (26, N'api1', 5)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (27, N'email', 4)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (28, N'email', 5)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (29, N'profile', 5)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (30, N'openid', 5)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (31, N'api1', 4)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (32, N'api2.read_only', 6)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (33, N'profile', 3)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (34, N'api1', 6)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (35, N'email', 6)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (36, N'profile', 6)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (37, N'openid', 6)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (38, N'api1', 2)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (39, N'openid', 3)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (40, N'api2.read_only', 7)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (41, N'api1', 7)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (42, N'email', 7)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (43, N'profile', 7)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (44, N'api2.read_only', 4)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (45, N'profile', 10)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (46, N'api1', 11)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (47, N'email', 19)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (48, N'openid', 20)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (49, N'api2.read_only', 16)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (50, N'api1', 16)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (51, N'email', 16)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (52, N'profile', 16)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (53, N'openid', 16)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (54, N'profile', 20)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (55, N'api2.read_only', 17)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (56, N'api1', 17)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (57, N'email', 17)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (58, N'profile', 17)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (59, N'openid', 15)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (60, N'openid', 17)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (61, N'api2.read_only', 18)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (62, N'api1', 18)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (63, N'email', 18)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (64, N'profile', 18)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (65, N'openid', 18)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (66, N'api1', 20)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientScopes] WHERE [Id] = 1) INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (1, N'profile', 1)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientScopes] WHERE [Id] = 2) INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (2, N'openid', 1)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (72, N'email', 20)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (73, N'openid', 10)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (74, N'profile', 15)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (75, N'api1', 15)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (76, N'api2.read_only', 11)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (77, N'openid', 2)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (78, N'email', 11)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (79, N'profile', 11)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (80, N'openid', 11)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (81, N'api1', 19)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (82, N'api2.read_only', 12)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (83, N'api1', 12)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (84, N'email', 12)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (85, N'profile', 12)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (86, N'openid', 12)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (87, N'api2.read_only', 19)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (88, N'api2.read_only', 13)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (89, N'api1', 13)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (90, N'email', 13)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (91, N'profile', 13)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (92, N'openid', 13)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (93, N'api2.read_only', 14)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (94, N'api1', 14)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (95, N'email', 14)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (96, N'profile', 14)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (97, N'openid', 14)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (98, N'api2.read_only', 15)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (99, N'email', 15)
GO
-- INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (100, N'profile', 2)
GO
SET IDENTITY_INSERT [dbo].[ClientScopes] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientSecrets] ON
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientSecrets] WHERE [Id] = 1) INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (1, N'User Management Client', N'UD6fn+ADIk5ieMKjcIBT75XFgaM4mxw7tQK+YXL6hc4=', CAST(N'2020-07-17T22:25:06.0026121' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.3078730' AS DateTime2), 1)
GO
SET IDENTITY_INSERT [dbo].[ClientSecrets] OFF
GO
SET IDENTITY_INSERT [dbo].[IdentityResources] ON
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityResources] WHERE [Id] = 1) INSERT [dbo].[IdentityResources] ([Id], [Created], [Description], [DisplayName], [Emphasize], [Enabled], [Name], [NonEditable], [Required], [ShowInDiscoveryDocument]) VALUES (1, GETDATE(), NULL, N'Your user identifier', 0, 1, N'openid', 1, 1, 1)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityResources] WHERE [Id] = 2) INSERT [dbo].[IdentityResources] ([Id], [Created], [Description], [DisplayName], [Emphasize], [Enabled], [Name], [NonEditable], [Required], [ShowInDiscoveryDocument]) VALUES (2, GETDATE(), N'Your user profile information (first name, last name, etc.)', N'User profile', 1, 1, N'profile', 1, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[IdentityResources] OFF
GO
SET IDENTITY_INSERT [dbo].[IdentityClaims] ON
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 1) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (1, 1, N'sub')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 2) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (2, 2, N'name')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 3) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (3, 2, N'family_name')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 4) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (4, 2, N'given_name')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 5) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (5, 2, N'middle_name')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 6) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (6, 2, N'nickname')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 7) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (7, 2, N'preferred_username')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 8) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (8, 2, N'profile')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 9) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (9, 2, N'picture')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 10) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (10, 2, N'website')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 11) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (11, 2, N'gender')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 12) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (12, 2, N'birthdate')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 13) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (13, 2, N'zoneinfo')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 14) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (14, 2, N'locale')
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[IdentityClaims] WHERE [Id] = 15) INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (15, 2, N'updated_at')
GO
SET IDENTITY_INSERT [dbo].[IdentityClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[ApiResources] ON
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ApiResources] WHERE [Id] = 1) INSERT [dbo].[ApiResources] ([Id], [Created], [Description], [DisplayName], [Enabled], [Name], [NonEditable]) VALUES (1, GETDATE(), N'Identity Management Service', N'Identity Management Service API', 1, N'identity-api', 1)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ApiResources] WHERE [Id] = 2) INSERT [dbo].[ApiResources] ([Id], [Created], [Description], [DisplayName], [Enabled], [Name], [NonEditable]) VALUES (2, GETDATE(), N'Task Management Service', N'Identity Management Service API', 1, N'task-api', 1)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ApiResources] WHERE [Id] = 3) INSERT [dbo].[ApiResources] ([Id], [Created], [Description], [DisplayName], [Enabled], [Name], [NonEditable]) VALUES (3, GETDATE(), N'Habitica Task Provider Service', N'Habitica Task Provider Service API', 1, N'habitica-api', 1)
GO
SET IDENTITY_INSERT [dbo].[ApiResources] OFF
GO
