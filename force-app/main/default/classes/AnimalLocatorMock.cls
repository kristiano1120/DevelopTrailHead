@isTest
global class AnimalLocatorMock implements HttpCalloutMock{
    global HTTPResponse respond(HTTPRequest request){
        HttpResponse response = new HttpResponse();
        response.setheader('Content-Type', 'application/json');
        response.setBody('{"animals": ["lion","fox", "bear", "panda", "snake"]}');
        response.setStatusCode(200);
        return response;
    }
}