codeunit 50102 BlockChainWebservice

{
    trigger OnRun();
    begin

    end;

    procedure CallWebservice(ID:Integer);
        var
            
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
            UrlLoc := StrSubstNo('https://52.178.74.157::3000/GetOwnerByID/%1',ID);
            //TempBlobLoc.WriteAsText(authidLoc + ':' + authkeyLoc,TextEncoding::UTF8);
            //AuthLoc := 'Basic ' + TempBlobLoc.ToBase64String
            //ClientLoc.DefaultRequestHeaders.Add('Authorization',authLoc); 
            
            ContentLoc.GetHeaders(headerLoc);
            //headerLoc.Remove('Content-Type');
            //headerLoc.Add('Content-Type','application/json');
            //ContentLoc.WriteFrom('{"src": "497544966300","dst": "'+phoneno+'", "text": "'+messagePar+'"}');
            ClientLoc.Timeout(36000);
            ClientLoc.Get(UrlLoc,ResponseMessageLoc);
            ResponseMessageLoc.Content.ReadAs(OutString);
            Message(OutString);


        end;


}