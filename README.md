groupdocs-dnn-installable-annotation
====================================

groupdocs-dnn-installable-annotation


### How to install and build GroupDocs .NET Annotation MVC

1. Download "Groupdocs.Annotation.Full.msi"
2. Run "Groupdocs.Annotation.Full" - it will ask for which type of installation to use: "typical", "full" or "custom"
3. Select where to install - by default it will be C:\Program Files (x86)\GroupDocs\Annotation 1.0 for .NET\Samples\Groupdocs.Demo.Annotation.Mvc

Build
In the "samples" folder of installed Groupdocs Annotation for .NET you will see three folders, you will need "Groupdocs.Demo.Annotation.Mvc" to start one of the samples.

1. Open Microsoft Visual Studio
2. Select from top menu File->Open->Project/Solution and navigate to path were you installed GroupDocs .NET Annoataion MVC and select "Groupdocs.Demo.Annotation.Mvc.sln" file
3. In the "C:\Program Files (x86)\GroupDocs\Annotation 1.0 for .NET" folder you can see a "bin" folder. In this folder you have all "dll" files that needed for GroupDocs .NET Annoataion MVC
4. Now when you opened Groupdocs.Demo.Annotation.Mvc you can build it and run - simply click Run on toolbar. If you will have some errors for example "Could not load some assembly" copy specified in error dll file from bin folder 
which located in root installation folder of installed "Groupdocs.Annotation.Full.msi" to "bin" folder of Groupdocs.Demo.Annotation.Mvc

When MVC sample is started, write down the URL to access to started sample. Also the sample can be deployed to IIS after it was built. (The URL you will need to access Annotation for .NET in a browser or to integrate the Annotation app in DNN plugin)


### How to install and use GroupDocs .NET Annotation plugin for DotNetNuke CMS

1. Download DnnInstallableAnnotation_01.00.02_Install.zip file.
2. Open browser and navigate to your DotNetNuke site.
3. Login as Administrator or any other user which have Administrator rights.
4. Go to Admin->Extensions and click on "Install Extensions Wizard"
5. On opened dialog window click "Choose file" and select downloaded DnnInstallableAnnotation_01.00.02_Install.zip and click "Next"
6. When plugin will be installed navigate to the page on which you want to add DnnInstallableAnnotation plugin.
7. Enable "Edit" mode.
8. Click Modules->Add new modules, in opened list of plugins fiund "GroupDocs Installable Annotation" and drag and drop it to place were you want it.
9. Click on "gear" icon and select "Settings" to edit plugin
10. In the "Server URL" field put URL of installed GroupDocs .NET Annotation and in the "Width", "Height" fields enter size of block

Example of the URL - http://plugins-qa.groupdocs.dynabic.com:7878
