---
title: "Use the HttpClient to send and retrieve Graph objects"
description: "Contains an example of how to configure an HttpClient to work with Microsoft Graph."
localization_priority: Normal
author: TitusGicheru
---

# Send Custom HTTP Request

The **GraphClientFactory** provides an **HttpClient** object preconfigured with default middleware and therefore supports sending HTTP requests and receiving HTTP responses from a resource identified by a URI. We can use this when the functionality that you want to use isn't a part of the client library. In this case, you can still use the client library to make your life easier. Here's an example of using the client library to set **MailboxSettings**.

# [C#](#tab/CS)

```csharp
public class SendHttpRequest
{
    /// <summary>
    /// Creates a native HttpClient  
    /// </summary>
    /// <typeparam name="T">The generic type parameter T</typeparam>
    /// <param name="requestUri">Microsoft Graph Uri to request</param>
    /// <param name="httpMethod">The HttpMethod e.g. GET, POST, PATCH, PUT</param>
    /// <param name="content">The Content used to initialize the String Content</param>
    /// <param name="mediaType">Media Types e.g. application/json, text/message</param>
    /// <returns>Task<T></returns>
    public async Task<T> SetCustomRequestAsync<T>(Uri requestUri, HttpMethod httpMethod, string content, string mediaType)
    {     
        /* The client already has implementation on the below
           * Redirect Handler:
                 A piece of client-side middleware designed to handle 3XX responses transparently so that application code doesn’t need to.
            * Retry Handler:
                Provide a reusuable component that provides application developers with effective handling of failed requests that can be retried.
            * Compression Handler
                A middleware component that requests, detects and decompresses response bodies.  
        */
        IAuthenticationProvider authenticationProvider = GetAuthenticationProvider();
        HttpClient httpClient = GraphClientFactory.Create(authenticationProvider);

        // Create the content and pass in the correct media type
        HttpContent httpContent = new StringContent(content, Encoding.UTF8, mediaType);

        // Create the request and add the content.
        HttpRequestMessage httpRequestMessage = new HttpRequestMessage(httpMethod, requestUri)
        {
            Content = httpContent
        };

        // Send the request and get the response.
        HttpResponseMessage httpResponseMessage = await httpClient.SendAsync(httpRequestMessage);

        // take a response payload from a successful request and deserialize it into a strong type.
        ResponseHandler responseHandler = new ResponseHandler(new Serializer());
        T result = await responseHandler.HandleResponse<T>(httpResponseMessage);
        return result;
    }

    /// <summary>
    /// Gets an IAuthenticationProvider
    /// Please note this code snippet uses Microsoft Graph .NET Authentication Provider Library
    /// https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth
    /// Checkout the link below for more info on choosing a Microsoft Graph authentication
    /// provider based on your scenario
    /// https://docs.microsoft.com/en-us/graph/sdks/choose-authentication-providers?tabs=CS
    /// </summary>
    /// <returns>IAuthenticationProvider</returns>
    private IAuthenticationProvider GetAuthenticationProvider()
    {
        string clientId = "Enter_ClientId";
        string[] scopes = {
            "User.Read",
            "MailboxSettings.ReadWrite"
            };

        IPublicClientApplication clientApplication = InteractiveAuthenticationProvider.CreateClientApplication(clientId);
        InteractiveAuthenticationProvider authenticationProvider = new InteractiveAuthenticationProvider(clientApplication, scopes);

        return authenticationProvider;
    }
}
```

# [Javascript](#tab/Javascript)

<!-- TODO -->

# [Java](#tab/Java)

<!-- TODO -->

# [Android](#tab/Android)

<!-- TODO -->

# [Objective-C](#tab/Objective-C)

<!-- TODO -->

# [PHP](#tab/PHP)

<!-- TODO -->

# [Ruby](#tab/Ruby)

<!-- TODO -->