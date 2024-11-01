procedure MasterData1OnBeforePrint(Sender: TfrxComponent);
begin
      IF(<SQL."DESCRICAOCOR"> = '')THEN
      begin
         memo25.lines.clear;  
         memo25.visible := false;
      end
       else
      begin
         memo25.lines.clear;  
         memo25.lines.add('<b>COR:</b>' + <SQL."CODCOR">);    
      End;                           
end;