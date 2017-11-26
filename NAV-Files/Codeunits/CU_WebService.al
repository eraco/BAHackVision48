codeunit 50102 BlockChainWebservice

{
    trigger OnRun();
    begin

    end;

    procedure CallWebserviceGetOwnerByID(ID:Integer;"No.":Integer);
        var
            Device : Record "Insp. Device";
            ClientLoc : HttpClient;
            ContentLoc : HttpContent;
            headerLoc : HttpHeaders;
            ResponseMessageLoc : HttpResponseMessage;
            ReqMessageLoc : HttpRequestMessage;
            
            UrlLoc : Text;
            TempBlobLoc : Record TempBlob;
            AuthLoc : Text;
            OutString : Text;

            authidLoc : Text;
            authkeyLoc : Text;
        begin
            
            UrlLoc := StrSubstNo('http://52.178.74.157:3000/getDeviceOwnerById/%1',ID);
            //TempBlobLoc.WriteAsText(authidLoc + ':' + authkeyLoc,TextEncoding::UTF8);
            //AuthLoc := 'Basic ' + TempBlobLoc.ToBase64String
            //ClientLoc.DefaultRequestHeaders.Add('Authorization',authLoc); 
            Message(UrlLoc);
            ContentLoc.GetHeaders(headerLoc);
            //headerLoc.Remove('Content-Type');
            //headerLoc.Add('Content-Type','application/json');
            //ContentLoc.WriteFrom('{"src": "497544966300","dst": "'+phoneno+'", "text": "'+messagePar+'"}');
            ClientLoc.Timeout(36000);
            ClientLoc.Get(UrlLoc,ResponseMessageLoc);
            ResponseMessageLoc.Content.ReadAs(OutString);
            //OutString := 'tme';
            if Device.get("No.") then begin
              Device."Actual Owner" := CopyStr(OutString,1,250);  
              Device.Modify(false);
            end;
            Message(OutString);


        end;

procedure CallWebservicebookHours(ID:Integer;"No.":Integer;Workinghours:Integer);
        var
            Device : Record "Insp. Device";
            ClientLoc : HttpClient;
            ContentLoc : HttpContent;
            headerLoc : HttpHeaders;
            ResponseMessageLoc : HttpResponseMessage;
            ReqMessageLoc : HttpRequestMessage;
            
            UrlLoc : Text;
            TempBlobLoc : Record TempBlob;
            AuthLoc : Text;
            OutString : Text;

            authidLoc : Text;
            authkeyLoc : Text;
        begin
            
            UrlLoc := StrSubstNo('http://52.178.74.157:3000/bookHour/%1/%2',ID,Workinghours);
            //TempBlobLoc.WriteAsText(authidLoc + ':' + authkeyLoc,TextEncoding::UTF8);
            //AuthLoc := 'Basic ' + TempBlobLoc.ToBase64String
            //ClientLoc.DefaultRequestHeaders.Add('Authorization',authLoc); 
            Message(UrlLoc);
            ContentLoc.GetHeaders(headerLoc);
            //headerLoc.Remove('Content-Type');
            //headerLoc.Add('Content-Type','application/json');
            //ContentLoc.WriteFrom('{"src": "497544966300","dst": "'+phoneno+'", "text": "'+messagePar+'"}');
            ClientLoc.Timeout(36000);
            ClientLoc.Get(UrlLoc,ResponseMessageLoc);
            ResponseMessageLoc.Content.ReadAs(OutString);
            //OutString := 'tme';
            //if Device.get("No.") then begin
            //  Device."Actual Owner" := CopyStr(OutString,1,250);  
            //  Device.Modify(false);
            //end;
            Message(OutString);


        end;
    


procedure CallWebservicegetHoursSinceLastInspectionById(ID:Integer;"No.":Integer);
        var
            Device : Record "Insp. Device";
            ClientLoc : HttpClient;
            ContentLoc : HttpContent;
            headerLoc : HttpHeaders;
            ResponseMessageLoc : HttpResponseMessage;
            ReqMessageLoc : HttpRequestMessage;
            
            UrlLoc : Text;
            TempBlobLoc : Record TempBlob;
            AuthLoc : Text;
            OutString : Text;

            authidLoc : Text;
            authkeyLoc : Text;
        begin
            
            UrlLoc := StrSubstNo('http://52.178.74.157:3000/getHoursSinceLastInspectionById/%1',ID);
            //TempBlobLoc.WriteAsText(authidLoc + ':' + authkeyLoc,TextEncoding::UTF8);
            //AuthLoc := 'Basic ' + TempBlobLoc.ToBase64String
            //ClientLoc.DefaultRequestHeaders.Add('Authorization',authLoc); 
            Message(UrlLoc);
            ContentLoc.GetHeaders(headerLoc);
            //headerLoc.Remove('Content-Type');
            //headerLoc.Add('Content-Type','application/json');
            //ContentLoc.WriteFrom('{"src": "497544966300","dst": "'+phoneno+'", "text": "'+messagePar+'"}');
            ClientLoc.Timeout(36000);
            ClientLoc.Get(UrlLoc,ResponseMessageLoc);
            ResponseMessageLoc.Content.ReadAs(OutString);
            //OutString := 'tme';
            //if Device.get("No.") then begin
            //  Device."Actual Owner" := CopyStr(OutString,1,250);  
            //  Device.Modify(false);
            //end;
            Message(OutString);


        end;
        procedure CallWebserviceresetInspectionHoursOfDevice(ID:Integer;"No.":Integer);
        var
            Device : Record "Insp. Device";
            ClientLoc : HttpClient;
            ContentLoc : HttpContent;
            headerLoc : HttpHeaders;
            ResponseMessageLoc : HttpResponseMessage;
            ReqMessageLoc : HttpRequestMessage;
            
            UrlLoc : Text;
            TempBlobLoc : Record TempBlob;
            AuthLoc : Text;
            OutString : Text;

            authidLoc : Text;
            authkeyLoc : Text;
        begin
            
            UrlLoc := StrSubstNo('http://52.178.74.157:3000/resetInspectionHoursOfDevice/%1',ID);
            
            //TempBlobLoc.WriteAsText(authidLoc + ':' + authkeyLoc,TextEncoding::UTF8);
            //AuthLoc := 'Basic ' + TempBlobLoc.ToBase64String
            //ClientLoc.DefaultRequestHeaders.Add('Authorization',authLoc); 
            Message(UrlLoc);
            ContentLoc.GetHeaders(headerLoc);
            //headerLoc.Remove('Content-Type');
            //headerLoc.Add('Content-Type','application/json');
            //ContentLoc.WriteFrom('{"src": "497544966300","dst": "'+phoneno+'", "text": "'+messagePar+'"}');
            ClientLoc.Timeout(36000);
            ClientLoc.Get(UrlLoc,ResponseMessageLoc);
            ResponseMessageLoc.Content.ReadAs(OutString);
            //OutString := 'tme';
            //if Device.get("No.") then begin
            //  Device."Actual Owner" := CopyStr(OutString,1,250);  
            //  Device.Modify(false);
            //end;
            Message(OutString);


        end;

        procedure CallWebserviceAdddevice(ID:Integer;"No.":Integer;DeviceName:Text);
        var
            Device : Record "Insp. Device";
            ClientLoc : HttpClient;
            ContentLoc : HttpContent;
            headerLoc : HttpHeaders;
            ResponseMessageLoc : HttpResponseMessage;
            ReqMessageLoc : HttpRequestMessage;
            
            UrlLoc : Text;
            TempBlobLoc : Record TempBlob;
            AuthLoc : Text;
            OutString : Text;

            authidLoc : Text;
            authkeyLoc : Text;
        begin
            
            UrlLoc := StrSubstNo('http://52.178.74.157:3000/addDevice/%1/%2',ID,DeviceName);
            
            //TempBlobLoc.WriteAsText(authidLoc + ':' + authkeyLoc,TextEncoding::UTF8);
            //AuthLoc := 'Basic ' + TempBlobLoc.ToBase64String
            //ClientLoc.DefaultRequestHeaders.Add('Authorization',authLoc); 
            Message(UrlLoc);
            ContentLoc.GetHeaders(headerLoc);
            //headerLoc.Remove('Content-Type');
            //headerLoc.Add('Content-Type','application/json');
            //ContentLoc.WriteFrom('{"src": "497544966300","dst": "'+phoneno+'", "text": "'+messagePar+'"}');
            ClientLoc.Timeout(36000);
            ClientLoc.Get(UrlLoc,ResponseMessageLoc);
            ResponseMessageLoc.Content.ReadAs(OutString);
            //OutString := 'tme';
            //if Device.get("No.") then begin
            //  Device."Actual Owner" := CopyStr(OutString,1,250);  
            //  Device.Modify(false);
            //end;
            Message(OutString);


        end;

        
}