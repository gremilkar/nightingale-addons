; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=XUL Explorer
AppVerName=XUL Explorer 0.8
AppPublisher=Mark Finkle
AppPublisherURL=http://www.starkravingfinkle.org
AppSupportURL=http://www.starkravingfinkle.org
AppUpdatesURL=http://www.starkravingfinkle.org
DefaultDirName={pf}\XUL Explorer
DefaultGroupName=XUL Explorer
AllowNoIcons=yes
OutputDir=..\build
OutputBaseFilename=xulexplorer-win32
SetupIconFile=..\app\chrome\icons\default\explorer.ico
Compression=lzma
SolidCompression=yes
PrivilegesRequired=none

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Components]
Name: "main"; Description: "XUL Explorer"; Types: full compact custom; Flags: fixed
Name: "runtime"; Description: "XUL Runner Runtime"; Types: full custom

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\app\xulexplorer.exe"; DestDir: "{app}"; Components: main; Flags: ignoreversion
Source: "..\app\application.ini"; DestDir: "{app}"; Components: main; Flags: ignoreversion
Source: "..\app\chrome\*"; Excludes: ".svn"; DestDir: "{app}\chrome"; Components: main; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\app\defaults\*"; Excludes: ".svn"; DestDir: "{app}\defaults"; Components: main; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\app\extensions\*"; Excludes: ".svn"; DestDir: "{app}\extensions"; Components: main; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\app\xulrunner\*"; DestDir: "{app}\xulrunner"; Components: runtime; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\XUL Explorer"; Filename: "{app}\xulexplorer.exe"
Name: "{group}\{cm:UninstallProgram,XUL Explorer}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\XUL Explorer"; Filename: "{app}\xulexplorer.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\XUL Explorer"; Filename: "{app}\xulexplorer.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\xulexplorer.exe"; Description: "{cm:LaunchProgram,XUL Explorer}"; OnlyBelowVersion: 0,6; Flags: nowait postinstall skipifsilent

