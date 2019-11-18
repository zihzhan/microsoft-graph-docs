
# Communications API Overview (preview)
The Communications APIs in Microsoft Graph add a new dimension to how your apps and services interact with users through various communications related features, such as calling and online meetings. Grow your business by expediting how you respond to your customers’ needs and how your employees collaborate with each other.

## Why Integrate with Communications APIs?

Discover the benefits of utilizing service applications ([bots](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/calls/register-calling-bot.html?q=create%20bot)) with our APIs.

### Handle Incoming Calls

It can be overwhelming at times when you're receiving a lot of calls for your business and it isn't possible, nor productive, to answer all of them. A bot can serve as your front-desk assistant and handle these calls by rejecting what seem like spam calls, and redirecting (forwarding) specific calls to a different number.

##### Learn how to create these scenarios<br/><br/>
Have a user [call a bot](https://docs.microsoft.com/en-us/graph/api/application-post-calls?view=graph-rest-beta&tabs=http) through VoIP.

Have a bot [redirect the incoming call](https://docs.microsoft.com/en-us/graph/api/call-redirect?view=graph-rest-beta&tabs=http) to the appropriate agent if necessary.

Have a bot [answer](https://docs.microsoft.com/en-us/graph/api/call-answer?view=graph-rest-beta&tabs=http) or [reject](https://docs.microsoft.com/en-us/graph/api/call-reject?view=graph-rest-beta&tabs=http) the call.




### Simplify the Customer Service Experience
Whether you own a large helpdesk service or a small storefront, it can be difficult to handle multiple customer requests, especially if you don’t have any context of what problem they’re trying to solve beforehand. Handle incoming calls from customers through an **Interactive Voice Response** (IVR) system, where a bot will initially interact with them.

When a customer is prompted for a response from the bot, the customer can press a key on their keypad that corresponds to their selection. The bot can then gather the dial-tone multi-frequency (DTMF) from the customer.

##### Learn how to create these scenarios:<br/><br/>

Have a bot [answer a call](https://docs.microsoft.com/en-us/graph/api/call-answer?view=graph-rest-beta&tabs=http) from a customer.

Have a bot [play a prompt](https://docs.microsoft.com/en-us/graph/api/call-playprompt?view=graph-rest-beta&tabs=http) to inform and prompt a customer for a selection.


Have a bot [subscribe to a tone](https://docs.microsoft.com/en-us/graph/api/call-subscribetotone?view=graph-rest-beta&tabs=http) to gather the DTMF from a customer.

Have a bot [transfer a customer](https://docs.microsoft.com/en-us/graph/api/call-transfer?view=graph-rest-beta&tabs=http) to an agent.

Have a bot [end a call](https://docs.microsoft.com/en-us/graph/api/call-delete?view=graph-rest-beta&tabs=http) with a customer.

![IVR Diagram - Transfer](images/communications-ivr-transfer.png)<br/><br/>

To create a more intelligent interaction between your customers and your bot, when a customer is prompted for a response, they will be able to directly speak about what they need help with.

Integrating with a natural language processing service means that the customer's speech can be analyzed for its sentiment. The bot can then respond to the customer's need accordingly.

>**Note:** You may NOT record or otherwise persist media content from calls or meetings that your application accesses, or data derived from that media content. Make sure you are compliant with the laws and regulations of your area regarding data protection and confidentiality of communications. Please consult with your legal counsel for more information.

##### Learn how to create these scenarios <br/><br/>

Have a bot [answer a call](https://docs.microsoft.com/en-us/graph/api/call-answer?view=graph-rest-beta&tabs=http) from a customer.

Have a bot [play a prompt](https://docs.microsoft.com/en-us/graph/api/call-playprompt?view=graph-rest-beta&tabs=http) to inform and prompt the customer to speak.

Have a bot [record a short audio clip](https://docs.microsoft.com/en-us/graph/api/call-record?view=graph-rest-beta&tabs=http) of a customer speaking.

Have a bot [play a prompt](https://docs.microsoft.com/en-us/graph/api/call-playprompt?view=graph-rest-beta&tabs=http) with the appropriate response to the customer, after their speech is analyzed.

![IVR Diagram](communications-ivr.PNG)


### Collaborate through Group Calls
Engage with your coworkers or customers by creating a group call. Let everyone contribute to the conversation.
#### Learn how to create these scenarios:<br/><br/>
Have a bot [create a group call](https://docs.microsoft.com/en-us/graph/api/application-post-calls?view=graph-rest-beta&tabs=http#example-3-create-a-group-call-with-service-hosted-media) with multiple participants.

Have a bot [invite another bot or user](https://docs.microsoft.com/en-us/graph/api/participant-invite?view=graph-rest-beta&tabs=http) to an existing group call.

[Join an existing group call](https://docs.microsoft.com/en-us/graph/api/application-post-calls?view=graph-rest-beta&tabs=http#example-5-join-scheduled-meeting-with-service-hosted-media) as a bot.

Have a bot [list out the participants](https://docs.microsoft.com/en-us/graph/api/call-list-participants?view=graph-rest-beta&tabs=http) in the group call.

Have a bot [mute another participant](https://docs.microsoft.com/en-us/graph/api/participant-mute?view=graph-rest-beta&tabs=http).


### Send Reminders Reliably
If you want to send your customers a reminder for an appointment or a reminder for a payment deadline that’s approaching, you can have a bot call the customer automatically. <!--If the customer misses the call, it will leave a voicemail with the automated message. (Add this back once bot to PSTN calling works)-->

#### Learn how to create these scenarios:<br/><br/>
Have a bot [call a customer](https://docs.microsoft.com/en-us/graph/api/application-post-calls?view=graph-rest-beta&tabs=http) on Teams.

Have a bot [play a recorded prompt](https://docs.microsoft.com/en-us/graph/api/call-playprompt?view=graph-rest-beta&tabs=http) to serve as a reminder.

Have the bot [end the call](https://docs.microsoft.com/en-us/graph/api/call-delete?view=graph-rest-beta&tabs=http).


### Set up Online Meetings
Whether you want to schedule a meeting between a doctor and a patient or between you and your direct reports, you'll be able to generate a meeting that you can rely on. For added flexibility, you'll be able to "dial out" to other users and invite them to the meeting while it's ongoing.


#### Learn how to create these scenarios:<br/><br/>
Have a user [create an online meeting](https://docs.microsoft.com/en-us/graph/api/application-post-onlinemeetings?view=graph-rest-beta&tabs=http).

Have a user [retrieve the details]() of an online meeting

Have a bot or a user [join an online meeting](https://docs.microsoft.com/en-us/graph/api/onlinemeeting-get?view=graph-rest-beta&tabs=http)


## See Also
Learn about [Delegated and Application Permissions](https://docs.microsoft.com/en-us/azure/active-directory/develop/v1-permissions-and-consent)<br/>
View and Manage [Permissions for Calls](https://docs.microsoft.com/en-us/graph/permissions-reference#calls-permissions)<br/>
View and Manage [Permissions for Online Meetings](https://docs.microsoft.com/en-us/graph/permissions-reference#online-meetings-permissions)

## API Reference
[Communications API in Microsoft Graph beta](https://docs.microsoft.com/en-us/graph/api/resources/calls-api-overview?view=graph-rest-beta)

## Next Steps

Learn how you can use [bots]() to get started <br/>
Learn more about [calls]()<br/>
Learn more about [media]()<br/>
Learn more about [online meetings]()<br/>

## Feedback
View our [Github Issues](https://github.com/microsoftgraph/microsoft-graph-comms-samples/issues) for all known issues<br/>
