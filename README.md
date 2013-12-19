GroupDocs Annotation for .NET plugin for DotNetNuke (Source)
===========================================

### Development notes
* Use Visual Studio 2012 for developing *
* Install Sql Server Compact Edition *

Add to DotnetNuke web.config 

  <connectionStrings>
    <add name="SaasposeDb" connectionString="metadata=res://*/Groupdocs.csdl|res://*/Groupdocs.ssdl|res://*/Groupdocs.msl;provider=System.Data.SqlServerCe.4.0;provider connection string=&quot;Data Source=|DataDirectory|\..\DesktopModules\dnn_groupdocs_annotation_dotnet\App_Data\DB.sdf;Password=sa;Persist Security Info=True&quot;" providerName="System.Data.EntityClient"/>
  </connectionStrings>


<system.webServer>
	<handlers>
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
	</handlers>
</system.webServer>

  
  
  
<system.web>
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
</system.web>




And run SQL in Dnn menu 'Host'->'Advanced Settings'->'SQL' :

insert into {databaseOwner}{objectQualifier}hostsettings
(SettingName
, SettingValue
, SettingIsSecure 
, CreatedByUserId
, CreatedOnDate
, LastModifiedByUserId
, LastModifiedOnDate
)
values(
'AUM_DoNotRewriteRegEx'
,'/DesktopModules/|/Providers|/LinkClick\.aspx|/SignalR'
, 0
, -1
, GETDATE()
, -1
, GETDATE()
)







#### Copy Quick_Start_Guide_To_Using_GroupDocs.pdf  file to ~\DesktopModules\dnn_groupdocs_annotation_dotnet\Add_Data\ directory
  