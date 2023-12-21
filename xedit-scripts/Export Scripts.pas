{
  Exports all scripts from the selected records to text files.
}

unit UserScript;

var
  ExportFile: string;
  ExportPath: string;
  ExportCount: integer;

function Initialize: integer;
begin
  ExportPath := 'C:\programs\fwv-bungles\data\scripts\';
  AddMessage('Exporting scripts to ' + ExportPath);
  Result := 0;
end;


procedure ExportScriptSource(e: IInterface);
var
  sl: TStringList;
  scriptSource: string;
  edid: string;
  filename: string;
begin
  edid := GetElementEditValues(e, 'EDID');
  sl := TStringList.Create;
  scriptSource := GetElementEditValues(e, 'SCTX - Script Source');
  sl.Add(scriptSource);
  filename := ExportPath + edid + '.gek';
  AddMessage('Exporting script to ' + filename);
  sl.SaveToFile(filename);
  sl.Free;
  ExportCount := ExportCount + 1;
end;


function Process(e: IInterface): integer;
begin
  if Signature(e) <> 'SCPT' then exit;
  ExportScriptSource(e);
  Result := 0;
end;


function Finalize: integer;
begin
  AddMessage('Finished exporting ' + IntToStr(ExportCount) + ' scripts.');
  Result := 0;
end;

end.
