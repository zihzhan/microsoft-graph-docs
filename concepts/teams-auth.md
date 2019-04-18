# Authentication and Authorization inside Teams Apps

When running in the Teams desktop client you don’t have an active AAD session (since Teams uses an out-of-proc ADAL instance to fetch access tokens). Therefore, you cannot always rely on a silent redirect through login.microsoftonline.com. We have documentation on how you can implement AAD auth for your tab:

- [auth-tab-aad](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/authentication/auth-tab-aad)
- [auth-silent-aad](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/authentication/auth-silent-aad)
- [auth-bot-aad](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/authentication/auth-bot-aad)

In essence you can specify prompt=none when redirecting to login.microsoftonline.com which will cause AAD to redirect to your callback URL with an error. In response you can show the user a “Sign in” button that uses our client-side microsoftTeams.authentication.authenticate API to open a popup window and conduct the auth flow there.

Also:

[Add authentication to your bot via Azure Bot Service](https://docs.microsoft.com/en-us/azure/bot-service/bot-builder-authentication?view=azure-bot-service-4.0&tabs=aadv1%2Ccsharp)
walks through getting a token for your bot to access Graph.

But you have to add the code here to handle the signin/verifyState invoke that closes the loop:
[Using Azure Bot Service for Authentication in Teams](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/authentication/auth-oauth-card)
