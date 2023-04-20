public class HttpCallout {
    private static final string url = 'https://postman-echo.com/get?foo1=bar1&foo2=bar2';
    public static void getdata(){
        Http http = new Http();
        httpRequest request = new httpRequest();
        request.setEndpoint(url);
        request.setMethod('GET');
        httpResponse response = http.send(request);
        system.debug('Response status' +response.getStatusCode());
        if(response.getStatusCode()==200){
            system.debug('Response' +response.getBody());
        }
    }

}