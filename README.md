GroupDocs Annotation for .NET plugin for DotNetNuke (Source)
===========================================

### Installation process
0. Download plugin file
1. Sign Up to DotNetNuke as `admin`
2. Go to `Host`->`Extensions` in DNN (DotNetNuke) menu
3. Click `Install Extension Wizard` button
4. Click button `Choose file` select plugin file and click `Next` (*There can be a problem with restriction of the size of a plug-in in DNN. In that case it is necessary to increase the admissible file size for loading. See details in DotNetNuke documentation*)
5. Look at Package Information and press `Next` button
6. Look at Release Notes and press `Next` button
7. Look at License then Accept License and press `Next` button
8. Plugin was installed successfully (<b>You should configure plugin before using</b>)

### Plugin configuration process
1. In Windows explorer go to DotNetNuke root directory and open `web.config` file as text (in notepad)
2. Find a line with the text `</connectionStrings>` and before this line add next code:

	```xml
	<add name="SaasposeDb" connectionString="metadata=res://*/Groupdocs.csdl|res://*/Groupdocs.ssdl|res://*/Groupdocs.msl;provider=System.Data.SqlServerCe.4.0;provider connection string=&quot;Data Source=|DataDirectory|\..\DesktopModules\dnn_groupdocs_annotation_dotnet\App_Data\DB.sdf;Password=sa;Persist Security Info=True&quot;" providerName="System.Data.EntityClient"/>
	```

3. Find a line with the text `</handlers>` after line with text `<system.webServer>` and before `</handlers>` line add next code:

	```xml
	<add name="ViewDocumentHandler" verb="*" path="document-viewer/ViewDocumentHandler" type="Groupdocs.Web.UI.Handlers.ViewDocumentHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
	<add name="GetDocumentPageImageHandler" verb="*" path="document-viewer/GetDocumentPageImageHandler" type="Groupdocs.Web.UI.Handlers.GetDocumentPageImageHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
	<add name="LoadFileBrowserTreeDataHandler" verb="*" path="document-viewer/LoadFileBrowserTreeDataHandler" type="Groupdocs.Web.UI.Handlers.LoadFileBrowserTreeDataHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
	<add name="GetImageUrlsHandler" verb="*" path="document-viewer/GetImageUrlsHandler" type="Groupdocs.Web.UI.Handlers.GetImageUrlsHandler, Groupdocs.Web.Annotation,Culture=neutral"/>
	<add name="GetCssHandler" verb="GET" path="document-viewer/CSS/GetCssHandler" type="Groupdocs.Web.UI.Handlers.CssHandler, Groupdocs.Web.Annotation,Culture=neutral"/>
	<add name="EmbeddedImageHandler" verb="GET" path="document-viewer/images/*" type="Groupdocs.Web.UI.Handlers.EmbeddedImageHandler,Groupdocs.Web.Annotation, Culture=neutral"/>
	<add name="EmbeddedImageHandler2" verb="GET" path="groupdocs/images/*" type="Groupdocs.Web.UI.Handlers.EmbeddedImageHandler,Groupdocs.Web.Annotation, Culture=neutral"/>
	<add name="GetScriptHandler" verb="GET,POST" path="document-viewer/GetScriptHandler" type="Groupdocs.Web.UI.Handlers.ScriptHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
	<add name="GetFileHandler" verb="GET" path="document-viewer/GetFileHandler" type="Groupdocs.Web.UI.Handlers.GetFileHandler, Groupdocs.Web.Annotation,Culture=neutral"/>
	<add name="GetPdf2XmlHandler" verb="POST" path="document-viewer/GetPdf2XmlHandler" type="Groupdocs.Web.UI.Handlers.GetPdf2XmlHandler, Groupdocs.Web.Annotation,Culture=neutral"/>
	<add name="GetPdf2JavaScriptHandler" verb="POST" path="document-viewer/GetPdf2JavaScriptHandler" type="Groupdocs.Web.UI.Handlers.GetPdf2JavaScriptHandler, Groupdocs.Web.Annotation,Culture=neutral"/>
	<add name="GetPdfWithPrintDialogHandler" verb="GET,POST" path="document-viewer/GetPdfWithPrintDialogHandler" type="Groupdocs.Web.UI.Handlers.GetPdfWithPrintDialogHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
	<add name="AnnotationHandler" verb="*" path="document-annotation/*" type="Groupdocs.Web.Annotation.AnnotationHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
	<add name="AnnotationCssHandler" verb="*" path="document-annotation/CSS/*" type="Groupdocs.Web.Annotation.AnnotationHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
	<add name="AnnotationImagesHandler" verb="*" path="document-annotation/images/*" type="Groupdocs.Web.Annotation.AnnotationHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
	```
  
4. Find a line with the text `</system.web>` and before this line add next code:
  
	```xml
	<httpHandlers>
		<add verb="*" path="document-viewer/ViewDocumentHandler" type="Groupdocs.Web.UI.Handlers.ViewDocumentHandler, Groupdocs.Web.Annotation, Culture=neutral" validate="false"/>
		<add verb="*" path="document-viewer/GetDocumentPageImageHandler" type="Groupdocs.Web.UI.Handlers.GetDocumentPageImageHandler, Groupdocs.Web.Annotation, Culture=neutral" validate="false"/>
		<add verb="*" path="document-viewer/LoadFileBrowserTreeDataHandler" type="Groupdocs.Web.UI.Handlers.LoadFileBrowserTreeDataHandler, Groupdocs.Web.Annotation, Culture=neutral" validate="false"/>
		<add verb="*" path="document-viewer/GetImageUrlsHandler" type="Groupdocs.Web.UI.Handlers.GetImageUrlsHandler, Groupdocs.Web.Annotation,Culture=neutral" validate="false"/>
		<add verb="GET" path="document-viewer/CSS/GetCssHandler" type="Groupdocs.Web.UI.Handlers.CssHandler, Groupdocs.Web.Annotation,Culture=neutral"/>
		<add verb="GET" path="document-viewer/images/*" type="Groupdocs.Web.UI.Handlers.EmbeddedImageHandler,Groupdocs.Web.Annotation, Culture=neutral"/>
		<add verb="GET" path="groupdocs/images/*" type="Groupdocs.Web.UI.Handlers.EmbeddedImageHandler,Groupdocs.Web.Annotation, Culture=neutral"/>
		<add verb="GET,POST" path="document-viewer/GetScriptHandler" type="Groupdocs.Web.UI.Handlers.ScriptHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
		<add verb="GET" path="document-viewer/GetFileHandler" type="Groupdocs.Web.UI.Handlers.GetFileHandler, Groupdocs.Web.Annotation,Culture=neutral" validate="false"/>
		<add verb="POST" path="document-viewer/GetPdf2XmlHandler" type="Groupdocs.Web.UI.Handlers.GetPdf2XmlHandler, Groupdocs.Web.Annotation,Culture=neutral"/>
		<add verb="POST" path="document-viewer/GetPdf2JavaScriptHandler" type="Groupdocs.Web.UI.Handlers.GetPdf2JavaScriptHandler, Groupdocs.Web.Annotation,Culture=neutral"/>
		<add verb="GET,POST" path="document-viewer/GetPdfWithPrintDialogHandler" type="Groupdocs.Web.UI.Handlers.GetPdfWithPrintDialogHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
		<add verb="*" path="document-annotation/*" type="Groupdocs.Web.Annotation.AnnotationHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
		<add verb="*" path="document-annotation/CSS/*" type="Groupdocs.Web.Annotation.AnnotationHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
		<add verb="*" path="document-annotation/images/*" type="Groupdocs.Web.Annotation.AnnotationHandler, Groupdocs.Web.Annotation, Culture=neutral"/>
	</httpHandlers>
	```

5. Go to `Host`->`Advanced Settings`->`SQL` in menu. Paste next code and Run it:

```sql
insert into {databaseOwner}{objectQualifier}hostsettings
	(
		SettingName,
		SettingValue,
		SettingIsSecure,
		CreatedByUserId,
		CreatedOnDate,
		LastModifiedByUserId,
		LastModifiedOnDate
	)
	values(
		'AUM_DoNotRewriteRegEx',
		'/DesktopModules/|/Providers|/LinkClick\.aspx|/SignalR',
		0,
		-1,
		GETDATE(),
		-1,
		GETDATE()
	)
```

6. Go to `<DotNetNuke Root directory>\DesktopModules\dnn_groupdocs_annotation_dotnet\Add_Data\` and copy `Quick_Start_Guide_To_Using_GroupDocs.pdf`  file to it
  
### Using plugin
1. Create new Page (Go to `Pages` > `Add New Page`) or select existing one
2. Go to `Modules` > `Add new module` in DNN menu
3. Choose `GroupDocs Annotation for .NET` in Module dropdown and drag module to your page
4. Mouse over `GroupDocs Annotation for .NET` module > `Manage` button and click `Settings`
5. Fill inside `GroupDocs Annotation for .NET Settings` tab three properties and click Update button
6. `GroupDocs Annotation for .NET` plugin will be shown.
  
### Development notes
* Use Visual Studio 2012 for developing
* Copy sources of plugin into `~/DesktopModules/dnn_groupdocs_annotation_dotnet/` directory
* Install Sql Server Compact Edition using NuGet

