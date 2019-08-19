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
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientScopes] WHERE [Id] = 1) INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (1, N'email', 1)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientScopes] WHERE [Id] = 2) INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (2, N'profile', 1)
GO
IF NOT EXISTS ( SELECT * FROM [dbo].[ClientScopes] WHERE [Id] = 3) INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (3, N'openid', 1)
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
