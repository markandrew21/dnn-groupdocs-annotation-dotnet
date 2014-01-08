CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[AccountId] [numeric](18, 0) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[FirstName] [nvarchar](60) NULL,
	[LastName] [nvarchar](60) NULL,
	[NewsletterEnabled] [bit] NULL,
	[VerificationToken] [nvarchar](64) NULL,
	[SignupDate] [datetime] NULL,
	[PswdResetToken] [nvarchar](64) NULL,
	[IsPrimary] [bit] NULL,
	[IsActivated] [bit] NULL,
	[Guid] [nvarchar](16) NOT NULL,
	[Photo] [image] NULL,
	[SigninDate] [datetime] NULL,
	[SigninCount] [int] NULL)

CREATE TABLE [AnnotationSessions](
	[Id] [bigint] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[DocumentId] [numeric](18, 0) NULL,
	[UserId] [numeric](18, 0) NULL,
	[Guid] [nvarchar](16) NOT NULL,
	[StartedOn] [datetime] NOT NULL,
	[SharedLinkAccessRights] [int] NULL,
	[CallbackUrl] [nvarchar](2000) NULL)
	
CREATE TABLE [Annotations](
	[Id] [bigint] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[AnnotationSessionId] [bigint] NOT NULL,
	[UserId] [numeric](18, 0) NULL,
	[Guid] [nvarchar](16) NOT NULL,
	[PageNumber] [int] NULL,
	[MarkerLeft] [float] NOT NULL,
	[MarkerTop] [float] NOT NULL,
	[Width] [float] NULL,
	[Height] [float] NULL,
	[Type] [tinyint] NULL,
	[Access] [tinyint] NULL,
	[CreatedOn] [datetime] NULL,
	[TextPosition] [int] NULL,
	[TextLength] [int] NULL,
	[SvgPath] [ntext] NULL,
	[AnnotationLeft] [float] NULL,
	[AnnotationTop] [float] NULL,
	[FieldText] [nvarchar](1024) NULL,
	[FontFamily] [nvarchar](512) NULL,
	[FontSize] [float] NULL,
	[FontColor] [int] NOT NULL)
	
	
CREATE TABLE [AnnotationCollaborators](
	[Id] [bigint] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[AnnotationSessionId] [bigint] NOT NULL,
	[UserId] [numeric](18, 0) NULL,
	[JoinedOn] [datetime] NOT NULL,
	[AccessRights] [int] NULL,
	[Color] [int] NULL)
	
	
CREATE TABLE [AnnotationReplies](
	[Id] [bigint] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[AnnotationId] [bigint] NOT NULL,
	[UserId] [numeric](18, 0) NULL,
	[Guid] [nvarchar](8) NOT NULL,
	[Message] [nvarchar](255) NOT NULL,
	[RepliedOn] [datetime] NOT NULL,
	[ParentReplyId] [bigint]NULL)