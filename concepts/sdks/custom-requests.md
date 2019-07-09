# Send Custom HTTP Request using GraphClientFactory

The **GraphClientFactory** provides ability to send arbitrary requests and get back a HttpResponseMessage. The response can then be handled by a ResponseHandler to deserialize the response object. 

It provides native HTTP Client Support and therefore supports sending HTTP requests and receiving HTTP responses from a resource identified by a URI. 

## When should you use this?

Sometimes, the functionality that you want to use isn't a part of the client library. In this case, you can still use the client library to make your life easier.


### Benefits of GraphClientFactory
- The **GraphClientFactory** provides ability to send arbitrary requests 
- The client library can authenticate your requests and provide you the serializer.

#### Initializing the GraphClientFactory 
    nativeClient = GraphClientFactory.Create(authenticationProvider); 

### Requirements
- The **GraphClientFactory** expects an authentication provider similiar to the **GraphServiceClient**

## Sample Code
### Get MailboxSettings

    MailboxSettings mailboxSettings = GetCustomRequestAsync<MailboxSettings>("me/MailboxSettings").GetAwaiter().GetResult();

### Generic Custom Request

    private static async Task<T> GetCustomRequestAsync<T>(string resourcePath)
    {
        _graphClient = GraphServiceClientProvider.GetAuthenticatedClient();
        if (nativeClient == null) {
            nativeClient = GraphClientFactory.Create(_graphClient.AuthenticationProvider);
        }

        HttpRequestMessage request = _graphClient.Me.Request().GetHttpRequestMessage();
        request.RequestUri = new Uri(request.RequestUri, resourcePath);

        HttpResponseMessage response = await nativeClient.SendAsync(request);
        ResponseHandler responseHandler = new ResponseHandler(new Serializer());

        T result = await responseHandler.HandleResponse<T>(response);
        return result;
    }

### Set MailboxSettings

    string jsonContent = @"{
                                'timeZone': 'Pacific Standard Time',
                                'language': {
                                    'locale': 'en-US'
                                }
                            }";
    MailboxSettings mailboxSettings = SetCustomRequestAsync<MailboxSettings>("/me/MailboxSettings", jsonContent).GetAwaiter().GetResult();

### Generic Custom Request

    private static async Task<T> SetCustomRequestAsync<T>(string resourcePath, string jsonContent)
    {
        _graphClient = GraphServiceClientProvider.GetAuthenticatedClient();
        if (nativeClient == null)
        {
            nativeClient = GraphClientFactory.Create(_graphClient.AuthenticationProvider);
        }
        HttpContent httpContent = new StringContent(jsonContent, Encoding.UTF8, "application/json");
        Uri requestUri = new Uri(_graphClient.BaseUrl + resourcePath);

        var method = new HttpMethod("PATCH");
        var request = new HttpRequestMessage(method, requestUri)
        {
            Content = httpContent
        };

        HttpResponseMessage response = new HttpResponseMessage();
        response = await nativeClient.SendAsync(request);      
        ResponseHandler responseHandler = new ResponseHandler(new Serializer());

        T result = await responseHandler.HandleResponse<T>(response);
        return result;
    }