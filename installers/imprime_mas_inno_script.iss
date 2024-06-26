; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Imprime Mas"
#define MyAppVersion "1.0.0.0"
#define MyAppPublisher "Ing. Fernando Miguel"
#define MyAppExeName "imprime_mas.exe"
#define VcRedistX86 "vcredist_x86.exe"
#define VcRedistX64 "vcredist_x64.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B9FE14F7-87E5-4178-9369-35971F7A10AF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\impri\Documents\Flutter\flutter_desktop\desktop_prueba\installers
OutputBaseFilename=imprime-mas
SetupIconFile=C:\Users\impri\OneDrive\Proyecto Imprime Mas\icono-imprime-mas.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\impri\Documents\Flutter\flutter_desktop\desktop_prueba\build\windows\x64\runner\Release\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\impri\Documents\Flutter\flutter_desktop\desktop_prueba\build\windows\x64\runner\Release\flutter_windows.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\impri\Documents\Flutter\flutter_desktop\desktop_prueba\build\windows\x64\runner\Release\data\*"; DestDir: "{app}\data"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\impri\Downloads\{#VcRedistX86}"; DestDir: "{tmp}"; Flags: deleteafterinstall onlyifdoesntexist
Source: "C:\Users\impri\Downloads\{#VcRedistX64}"; DestDir: "{tmp}"; Flags: deleteafterinstall onlyifdoesntexist
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{tmp}\{#VcRedistX86}"; Parameters: "/install /quiet /norestart"; Check: not IsWin64; StatusMsg: "Installing Visual C++ Redistributable (x86)..."
Filename: "{tmp}\{#VcRedistX64}"; Parameters: "/install /quiet /norestart"; Check: IsWin64; StatusMsg: "Installing Visual C++ Redistributable (x64)..."
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

