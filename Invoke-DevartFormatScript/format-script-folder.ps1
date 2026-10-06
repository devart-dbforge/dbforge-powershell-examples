Invoke-DevartFormatScript `
    -Source "C:\SqlScripts" `
    -FileExtension *.sql `
    -IncludeSubfolders `
    -Output "C:\Artifacts\FormattedScripts" `
    -Profile "$env:APPDATA\Devart\dbForge Studio for SQL Server\FormatProfiles\CustomProfile.xml"