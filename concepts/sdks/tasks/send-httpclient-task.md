---
title: "Use the HttpClient to send and retrieve Microsoft Graph objects"
description: "Contains an example of how to configure an HttpClient to work with Microsoft Graph."
localization_priority: Normal
author: @microsoftgraph/sdk-contributors
---

# Send custom HTTP request

Sometimes, the functionality that you want to use isn't a part of the client library. In this case, you can still use the client library to make your life easier.

Here's an example of using the client library to set or get **MailboxSettings**. Please note you can use the example below to get other Microsoft Graph resources other than the MailboxSettings.

# [C#](#tab/CS)
The **GraphClientFactory** provides an **HttpClient** object preconfigured with default middleware and therefore supports sending HTTP requests and receiving HTTP responses from a resource identified by a URI.

```csharp
public class CustomHttpRequest
{
    public void Main()
    {
        Uri requestUri = new Uri("https://graph.microsoft.com/v1.0/me/MailboxSettings");

        // Checkout Microsoft Graph supported time zones from the link below
        // https://docs.microsoft.com/en-us/graph/api/resources/datetimetimezone?view=graph-rest-1.0
        string jsonContent = @"{
                                'timeZone': 'Pacific Standard Time',
                                    'language': {
                                    'locale': 'en-CA'
                                    }
                                }";
        HttpMethod httpMethod = new HttpMethod("PATCH");
        string mediaType = "application/json";

        MailboxSettings mailboxSettings = SendHttpRequestAsync<MailboxSettings>(requestUri,
                httpMethod, jsonContent, mediaType)
                        .GetAwaiter().GetResult();

        Console.WriteLine($"Current MailboxSettings TimeZone: {mailboxSettings.TimeZone}");
        Console.WriteLine($"Current MailboxSettings Locale: {mailboxSettings.Language.Locale}");
        Console.ReadLine();
    }

    /// <summary>
    /// Creates a native HttpClient preconfigured with default middleware
    /// </summary>
    public async Task<T> SendHttpRequestAsync<T>(Uri requestUri, HttpMethod httpMethod, string content, string mediaType)
    {     
        IAuthenticationProvider authenticationProvider = GetAuthenticationProvider();

        /* The GraphClientFactory returns an HttpClient with the following default middleware implementations.
           * Redirect Handler:
                 A piece of client-side middleware designed to handle 3XX responses transparently so that application code doesn’t need to.
            * Retry Handler:
                Provide a reusuable component that provides application developers with effective handling of failed requests that can be retried.
            * Compression Handler
                A middleware component that requests, detects and decompresses response bodies.  
        */
        HttpClient httpClient = GraphClientFactory.Create(authenticationProvider);

        HttpContent httpContent = new StringContent(content, Encoding.UTF8, mediaType);

        HttpRequestMessage httpRequestMessage = new HttpRequestMessage(httpMethod, requestUri)
        {
            Content = httpContent
        };

        HttpResponseMessage httpResponseMessage = await httpClient.SendAsync(httpRequestMessage);

        // Take a response payload from a successful request and deserialize it into a strong type.
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
    private IAuthenticationProvider GetAuthenticationProvider()
    {
        string clientId = "Enter_ClientId";
        string[] scopes = { "User.Read", "MailboxSettings.ReadWrite" };

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