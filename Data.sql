USE [IdentityManagementService]
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[AspNetUsers] WHERE [Id] = N'5e4fd556-0caa-487b-b9eb-d3c29725df55') INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5e4fd556-0caa-487b-b9eb-d3c29725df55', N'alice', N'ALICE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFiXrtBAUFBrX398NIJNIPvSWohm+Jo7rPE3Huj5zHmwMSpTNmeT3xAvRsf5aJ0a8A==', N'DOD6VZMCYZRP7MH7PQTDCAULSVIHJXAD', N'c10a73a3-cf12-41ca-a992-eed62896b03c', NULL, 0, 0, NULL, 1, 0)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[AspNetUsers] WHERE [Id] = N'ff8a22f6-0991-42ba-9c05-d9ab987cd224') INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ff8a22f6-0991-42ba-9c05-d9ab987cd224', N'bob', N'BOB', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEKqG/0MHNgjY5e280CXs3RhHDPZ5+vhjgEstXR/6ZUXcj6dWakXUI21g6Cy735uZUg==', N'JJNUYHF3P6DUNZET4N5HUXZEN4SMC2F7', N'a6eff5a6-1ff2-4806-b9fd-ca2c99205353', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[Clients] WHERE [Id] = 1) INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (1, 1, N'UserManagementClient', N'oidc', 1, N'Client 0 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.3074530' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (2, 1, N'TaskManagementServiceClient', N'oidc', 1, N'Client 17 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4198847' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (3, 1, N'Client_16', N'oidc', 1, N'Client 16 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4193397' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (4, 1, N'Client_15', N'oidc', 1, N'Client 15 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4172185' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (5, 1, N'Client_14', N'oidc', 1, N'Client 14 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4165624' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (6, 1, N'Client_13', N'oidc', 1, N'Client 13 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4156326' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (7, 1, N'Client_12', N'oidc', 1, N'Client 12 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4151104' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (8, 1, N'Client_11', N'oidc', 1, N'Client 11 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4146409' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (9, 1, N'Client_10', N'oidc', 1, N'Client 10 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4141537' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (10, 1, N'Client_9', N'oidc', 1, N'Client 9 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4136438' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (11, 1, N'Client_8', N'oidc', 1, N'Client 8 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4130695' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (12, 1, N'Client_7', N'oidc', 1, N'Client 7 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4106335' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (13, 1, N'Client_6', N'oidc', 1, N'Client 6 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4097861' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (14, 1, N'Client_5', N'oidc', 1, N'Client 5 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4092640' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (15, 1, N'Client_4', N'oidc', 1, N'Client 4 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4087165' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (16, 1, N'Client_3', N'oidc', 1, N'Client 3 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4082211' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (17, 1, N'Client_2', N'oidc', 1, N'Client 2 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4075896' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (18, 1, N'Client_1', N'oidc', 1, N'Client 1 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4034661' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (19, 1, N'Client_18', N'oidc', 1, N'Client 18 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4203358' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
-- INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (20, 1, N'Client_19', N'oidc', 1, N'Client 19 Client', NULL, N'http://identityserver.io', NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2019-07-17T19:25:06.4207247' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
-- GO
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
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientScopes] WHERE [Id] = 67) INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (67, N'api2.read_only', 1)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientScopes] WHERE [Id] = 68) INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (68, N'api1', 1)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientScopes] WHERE [Id] = 69) INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (69, N'email', 1)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientScopes] WHERE [Id] = 70) INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (70, N'profile', 1)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientScopes] WHERE [Id] = 71) INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (71, N'openid', 1)
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
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (1, N'Client 18 description', N'z9Vebms2sHHExOJBL2DxERzL1c0/UqE/NYcgMMhNjjWxxKohGhj9mxtIG9LnUSDYDTsEA82Zxn0zHzjkFoCodzaskGq2z/cEzTqy9jbOWORnRyOMSIpoF/4s7frfGYSbn6ScOsG1Ij1E/zaT589GZMdUfM9cHC6rQ3hsieL8JbO1F1eSMh0isSXmR0lU1S8u5ogyipy1PoN18PZISZhaR9qC3tB4tDGqMcupdtTlV25JPaNZyZoX/9jTHEIm2miMiwBv0fdetTFWiFjRC8iukJmI/gv1AX0/at73pJjvg1diHerUdYV36odyAkFBRvMQJYuonttcl4qCL2YYZxCYZw==', CAST(N'2020-07-17T22:25:06.4201984' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4203366' AS DateTime2), 19)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (2, N'Client 17 description', N'bQxbOPvos7yWQVKXlSmVv6dS8DZeBsBq+02dtWTrh9R0XJdx9m+VSpErh2I475Bn5uIo/6uZnWdM8D2uS/1Yqrp+IjiRJMk3vaalM39dMgu8Ns+Cw4co2r8wJQUy5/+T09yousxY1cIZ8UIF9Gro7r4x8RQu1uczVUh5Yf/DBdamEl+itXg+ZGAMadFEI+ZVRzZHAPXqZf31dWWE33PCVetsX+IKRjhF8o20IWwV7jJhIxrIewThvK1irEATuoTsShPm2MMESgH+Ag1nNkOQ4IYyIrtZ+trni6I1p5n4MjgIx9dZLxVuXdgYynn2eYZp0sy54JfJkk85/k0hz6NnBQ==', CAST(N'2020-07-17T22:25:06.4197061' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4198859' AS DateTime2), 2)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (3, N'Client 9 description', N'JGLbfKw51tDO7TQ4Q047tIyCUUsohntMDyxIGxJPq5Wg4FeJX0ZcNTXSr2IGT3Xxe5VJidyIkZ3mj21/8bq9f0KfmGL2slRGJRsWVtcZRcC3VqB9BSK4F0+5otDZ3EN6FC8gZ7cT+slAA2PAcjvGzUmtyJoaQHof5oATPA+EbEjYm0Gn+d4Io1vWPAG++KUT89WGLBSoX9O1AIA3AL25u5cb59b6HtNrpCQ+QwR4Ye3a/0k5/kAzLztu8vld0aOeHYBqohDPGdQBG4jwaRvPPJ6SXAB0gL1W57iaiyzaDdKAoCaDDr7dC+Z0N+O4Q8Ufn7Vay3WjKZzDE7tYNI2oJg==', CAST(N'2020-07-17T22:25:06.4134142' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4136447' AS DateTime2), 10)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (4, N'Client 15 description', N'ghQ3BhumhFuVh6wSn7eD4yFhSC3hBbtzvonhnekw6v5xqn7JKkmstUnr/+5fZBdPoXnRiAhckH1Yw0eRxOdyZJytoPQ5urnXtZPk9gbNFFpykvtvX2H2FRkAcGYCGvBieJpRscMiFue/+dN1eJp2i6/tHzLrAwQ7t4vbOElT1ZqigX1re2KXT3wTr2aOgJ1/iuS2FPu+dnWWFvk3R96dbCM40vYdCw9NVs+12FOerTfuW65lncGf5AoH1WVpXweedUNCVa6mYn/VaL4rCJ4i+GnCSewvOM5ime3rFTWq5PbIF2IPW1eJR/kvjzQCc9xs5N38phYbbjx04LzAukxJKw==', CAST(N'2020-07-17T22:25:06.4170704' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4172196' AS DateTime2), 4)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (5, N'User Management Client', N'HR7FsThALW0k6MD1Bo+PLOaJss2Bz7RiTsWIWlsIs+veTtrVf6HmBoY13NRORcWMhvRVr1G1m01pY2NyuNMSHDTUF7e1ua1FoqtGTPPgEwgA+9NmsgSaKLOMbBw+c06zIsCgei4N18xHEAylbk5aiVBacr3/rGkvOu4EKE2RBi5dkykzP5ja8yQGH6L49LlkMuLL5AGQs3ZWcEA/CK5/tgndSNslJ0m3f3+Y+IzGN0U0oPVqxSItzOCz3M9Ymup1h2mZGqzePwuYFGSC97rpkDn7Cmi5FPDmsHv6cUt6XuWVI3EjLR2YVmDq0rC+q9QlykuWXY+BvHJ4smkx487AHQ==', CAST(N'2020-07-17T22:25:06.0026121' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.3078730' AS DateTime2), 1)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (6, N'Client 1 description', N'tX/t1EnFYxtitAfOQkAoBabVpv/kAVUTZ/+rerNmcpIqtPo+vQDbBOh6+tt57S83imSLDifAObQq2W1KGuho+0J1pI5F6Uel+qEWagZ5mXnPc+9P22RraXtGFOSSkOr/Ev+YBEih8qAc5ROFqc6tsD/zeqb4GCDeCTsT/9RjE2m2FlgH4ZQxLoFPM/VQ5r+smGSknxZEB/neuvsNjfPLuNKqzpJ2ps6qwkwlqeUqjiN7ZmZwv3RTcg9eKCeZJKCNg3ojpRgsNfKV+dzJHl0UtCzYkSeMW/leV1uDGH2nEZ6rlyZqBugKTzF028aXiVOySXT7wZN5ASiAxU68qR117Q==', CAST(N'2020-07-17T22:25:06.4022280' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4034719' AS DateTime2), 18)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (7, N'Client 2 description', N'5z4ehzeprUPNQvYYfzPHzQjRzgisUAoxlv7qQZlOpRP+7d5Yasx7oMa39FGD6KhN/oC02E5sQZcz7PE4v2yqfpziGZFVbmM7Vi5C9Vu5rq1VnEMYms3FkaxGJH3bQuBaDHW0oc8W948deIIgKkw7ej5E4iIokeTOHIjkD0nlYBNN6OjmBA3eP6Sz+iJLpWdgCqo/ll++MXqR5oRHMehGOBdu0kJjVXUxZqN9dJfBg3cghASepcm0j7ZtVR6Jlw28bcEK3dIl/LU1DjC8QLzjz2MMJq3kp5NNukOL9gBWqM+WwQfVt6Wk+4dPaZeZ9076iYW7fHBf18YuvSKPmQa03g==', CAST(N'2020-07-17T22:25:06.4073122' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4075910' AS DateTime2), 17)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (8, N'Client 3 description', N'ZWElf7UOGL1oKyaUPfu0wvSRbHqbK1436UCm+oMUYYCaijE30s9Ee23+FEU4Q4gzCGCbCJk6QzoD7pV0Zx46U8mm+bPJffAlTPENnBcZ/qa4cvEieVnnYEb3M+M5zxNPxMB7kknUaYpwdrunLKYi6vDvvPQsF9pwvpls0kkM633evthWnWxc4wlmsQKePzOf1EnzSRMeIqzmCtOvZ5ZBZIs+yW7OzEyDktnrxWXX0n9lzf0AGaFpv5srb5KYrHtyJU13X3XF0Qj9b7c5M11GDjhUSZqZQUrp1ArSoly56+VeeJ8YYHIJoPv1AqnqMIs+5WFaRGLg2eQCjYtq8i+rRA==', CAST(N'2020-07-17T22:25:06.4080082' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4082220' AS DateTime2), 16)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (9, N'Client 4 description', N'hNHbur0ursVKqZ+jPqH/o36UvftepoJ+n7oV0uefrsxJvSUZVdGAtrOU+rlANaZhjufsXXKw5d1OXRoCGdveq/vTWYB75U6tEwZIyqzJPWkUs0P/slBamNhIy/i2fZzXtU++bdsl5qmYP0lraBswhB+x7mWX3/iqeMGoMhpW9pZqcBRdCs+N782aZnMG7i+9F0bYBY82P9ZWE/QafbOOQkizAfgG03pQI/+Y/XiFpIqR6xvTffEGMzE+Bvbac3EaCyQqUu03tkTMiOGQnkFe0W9qiZKYu8RXrc7Hx8yDdbCNfvJTWlGcWjTWB/UPdpXv4DWGcOrfgVBf0qUfcO93SQ==', CAST(N'2020-07-17T22:25:06.4084995' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4087174' AS DateTime2), 15)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (10, N'Client 5 description', N'EjADH08Kdh7OLl7Bs85HNznY55f8Bcat/KH0h6t96UVfvuPfcnWf1b5oobuBwJyRi27mmAffTAxqVSOtFu5yUUUZYvXraMTDOBHZlGMLLDsFY/w9llE9f3HWdB1S8b/P9VB2aF6mpSKpIl/1BrioXinnqLPyNbrz2+OEFPOncUZSCp4TlcTdXr3Zk3PySHi4LRX0a0kM3MCWgox7IpEvArEYo/walclkCUn1GaFGAZNqzObesgb9RS3efBI3YjwsqpHC2aV8npdMj2H/FsMfT4H5EFWqUU+rG13PPBm2LaYNyW8PhCfu7i5OkSOk/S9pvi2RPVLmglhBFr5HrGF+lQ==', CAST(N'2020-07-17T22:25:06.4090311' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4092648' AS DateTime2), 14)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (11, N'Client 16 description', N'hMdj8TwTnBE5AfIAqJpfJRF/MVetPd+sqCWaepvJjK3lZK87EOov0UDqbRUpbZTagJauOhvxfUfnt0gWeCF1cHRFG0TqJBUmUF8Wws/KgzuRwPoFGlKR8+doU1miGVkfdP2g41JQ71uBh+q72rp3HTMNhbcncFUisydcgtG8hDYG903SKp/pQdGeg5Nn1hgs8TUllZSh9wOofi8q822KxAKzteNtpfKTI0PmiO3Cut0PMJCblu+iZP9JKqtvv05jFL6QsyE1v0tCkXFQu28W5cNSGsPc7i4TEVDjI3tGI2T1gnMuMga82XBFWAV9UaiQMkToHaSKhyaQfKLQUpzQ+w==', CAST(N'2020-07-17T22:25:06.4185347' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4193417' AS DateTime2), 3)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (12, N'Client 6 description', N'YbvyTVQPylkLIidbvysHHS1lfesl71QmRxbObWmmQczP/MLpC+IVrmI3MjC+JpkVD6EaR+STb3FmywU+QVzvZeBbi8JpHhFLUM6I7b0kaCB8uF7Ii/rnPI1QgkDc1m0GR8xPY5vXq/GPzvYVCoGzQmLkwon+J9nlc041GZvQbnlhgqXx1AWFpAxsObwD0jILnEDd9xTjByDyae9MopJVvmB9tIjbwm1dXx18ku4d4aEcKX1b83ZlfXuF/moVOQJ6Fnpchh2qMNnTgJj3ZnUy1YdNL3kV+svpFzcMVsQCRyUaAntzwFuEcvmjiHPebRYFUijiyAqJZRuucm7mndkV0A==', CAST(N'2020-07-17T22:25:06.4095528' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4097870' AS DateTime2), 13)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (13, N'Client 8 description', N'BTDx+M7GgkaDP6+7ltS/obLE68+NqUs0cirhnQNIzegmsq4yixlWDQWlapWjkBpEys/gubyaXVvkvYak5eRDO3LGleMmjRaYbt7K5z+2kOEQnNI0aBMri1RSTc6SsSggYi4i3Ps2Hj25R0vdz3YcLiyllEkRDtNemgmP1D9HBry2qYUQk7Tm2X6VeyDITrzeNh+h7B3eDlRbw0Hxp0r+cUGOJyXxC5p3v7rLfJKylkxNsJ4fphme15owtM9y9DIzlgrfOSaW7SqEKS1jE5LBqS30pPes3son71CKwFbKBMuHl+WH01wltsJzm3zrO8MIbwuifk87h7g/t0rWCy3Tug==', CAST(N'2020-07-17T22:25:06.4109746' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4130709' AS DateTime2), 11)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (14, N'Client 10 description', N'DbVvyfVLLd+1URn/SNqeo/N67HeAQl3dd4m/+wOF1lnMENUC0/wqU4d7FSOJKlTpdBdkuaAxpspYklFrizLcMHrAMjcEnND3UJnvBCw5VEw11ofrIB24m2oLqkGqv8dVn+Woyfcd5dhHbWkHQaKeHz0FNrWq8A9dB5bN+fKPTJDSmWVHkIpVF/GupLKzsFnHbYoDpYgRqq7VS8FgUOzmuCDYNag8Vo6zrx7D+0xcqlY8BYxni6cHwO63cUXJ9ccFyOyS2nuxixb8UPVqTa5ieaBqI0pffyx40HW5heVI6bpXvjNgys/bi3l1ajuxnXJAVPikXtF8pUm/GQoF+AUxsw==', CAST(N'2020-07-17T22:25:06.4139391' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4141546' AS DateTime2), 9)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (15, N'Client 11 description', N'ZjsSj3sCrtGPmNDqFPHHMgN5MOyji+jaGeqgscXVknREt9R2iuPEUknTzzmruzTNUtcCf9VED9pSOHWRYf0LuQZcpV0cUKcgtN2jz7yvL1210l/u0xKeAKf5JFJtM/FMyBYyThXXsQEv4sv3oD8eogkX3I6eHeXzvqS2IitVs4DsVwelfeBI3SFdv/FHp19n2oJJVVdiraswP5BwIY7V2i9KC0k4eSUoz/5tQV70rBZFT0epC14piqlcdT1P17yTh+TB/JwVLmFcIYVY9WxMO5N6K9JGLM/RIICg2wPn2fhC2rl5Mq96LyDmTerY0ZQ8Dzmq1avqTFsV8NwbdFNedA==', CAST(N'2020-07-17T22:25:06.4144141' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4146417' AS DateTime2), 8)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (16, N'Client 12 description', N'R4wVG7PTCOT//LFg3uT4Tuxky8o9BE1YjV5jQtJfusyH2KJMu3mIOzDG1a847Hwx+I0vEIeUN0M/vY1UcMYRoEHk2AZCq5Jy25CZdy6dH6DiMUlFMKpF86BfDf7rNMtqtDVuUxR270z6vDT3+sAUoZ3tcj59zHCXn+Rl4p6UhqfEL8L5L8yMa0L8SnN1TvjgS2xg/sGM7ejF1rMvEAyuZjWNMsv+GnHRYAb7gIL8IVHshJcxM4jlOELZNFgYXVs2TeM96Bst4jD6j527kGxmyLViQ4x1fTKtp/qJJOYYuAOrxTKevjg1vqFmNqTqKqfVc2ujtRrPwNCxkEAho75K4g==', CAST(N'2020-07-17T22:25:06.4149037' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4151112' AS DateTime2), 7)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (17, N'Client 13 description', N'15oPyzrICXwthOoPRo7CfVK0sXp1AuncBGHtLvcTG+McVMxQGtybqmImh5XksYoizcPP7wzPbNSwM8bY29uEGmgG8vHBcmJ2GAYYT3pT91LWymE0QyvXTOf4n+cVws+GoW0s3r6YYVphWdYGth1ZXDtzARF6UNY9L6YKyNJ6YFY3ka0NJhiUPmgG0+pV0ZXKnkKsocC+DFCW768YjpiI5viAziVvTDUi38Ooc33s6F4QQCqPzr6VeIVddjdpe6/Pfuzx1AJwWlEMicH8FZjTqQdRCE5u+Bc66lWfEtb+uWQU2fWQ+xNbn+XYg0X9mWPsicwwGHNgYYbUt+qs0Ed7Dg==', CAST(N'2020-07-17T22:25:06.4154056' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4156335' AS DateTime2), 6)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (18, N'Client 14 description', N'0F3oPKNCrvP1aGiVddI8UPKziAnOofG0d2+8RCivz55ddHWgsCZIRx48Igv3zBECepm5Hb5yQC9rNMU0hmrLRZnKOABcnJ/LakHrkX7lvKteucmO9rHf6jRGNHxhFMGzcdxyLJMQpd757bJ9hq6whncZ1cygPE/n6k3MFmcjalZ/Nx+hc48XTRPrlQj+YmOFla4FRz70EjWNikFGRI921oNc/U+PDxLnAoi5taZH6IjpRoG5HiIXiyXqE+lN0QmEdL6FomQU9oWbHUW2O1yORqG5XP0NvbhgRXIqpPspmjB/NEHowUYj1VD7HQHdYVDIW81HlHULdrcGJF3y6lGJcg==', CAST(N'2020-07-17T22:25:06.4158916' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4165633' AS DateTime2), 5)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (19, N'Client 7 description', N'OHPcZPm+FSzJvIBxclgLqSAHBJsffxuRnWDETeyd1R+NtzpqkbIMkxO2/k0J86lWZ8TFltV6sbhXS8aZ+sdALOdg5LsdoBhu+nCHaYHNh6q3buYn1z9JEgWBE0Xrc5lMdtJmqA7tOcasV5tk80g3isMb4ovgGFSnF9G1m43SgofXOvOvZ96cyTUfe4Cj5B+9SoiBz5ENa119v5E8N5052dQUjbhViCLkfxhWwZzTAzKy+FEEULL1yc+VMahNX5GY5aKsj1ZnaMFmnVB4t6rBqbtfij9LNIghHsTpwFd6lyCGvtv6J3TbS5CQnrNifRIk1Ifs7tRSTLAZinCSfahq6w==', CAST(N'2020-07-17T22:25:06.4103042' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4106346' AS DateTime2), 12)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (20, N'Client 19 description', N'BAFu7t3aGhQQFIOD/jz9JOvnfwxH5XsFhmBSRh5fg3bZmzxA1wQzSnCUjsfZFItFMkIsf5CLIB6GaWh8iNT2sJAMqWL/vU3mtDWcslezLHHUDBPcMgPlTXseuW6ctsKcnd03zGooRnX0Rstb723H0jz2qHzBGn2MJ1zn4QPfSf1zABV6fGAHq8ae5+w4il0OVuYxpg5G2oNfqqUNQWRxFfzN6O9YTFbc7vy1IjKRVJz/2YocrqPvLCWRGtG7+mphLNLwaqFttgqQVbcSkLhRzlUIDWjZVWZZ3rvKxjGFIPSRU/Zgoer7kSKAjFjr3ZxtQEx7s+wBiNZrlozlou/YCg==', CAST(N'2020-07-17T22:25:06.4205935' AS DateTime2), N'SharedSecret', CAST(N'2019-07-17T19:25:06.4207257' AS DateTime2), 20)
GO
SET IDENTITY_INSERT [dbo].[ClientSecrets] OFF
GO
