# Understanding Calls

Learn about the supported call types and how they're used for the signaling process.

## Peer-to-Peer Calls
A call is Peer-to-Peer (P2P) if there are a total of two participants in the call. A user can be in a call with a bot, for example <!--, where the bot should only specify one target.-->

![P2P Diagram](images/communications-p2p-call.PNG)

### Permissions:
If the user wants to invite a bot to a P2P call they created, no permissions are necessary.

If a bot is creating a P2P call and wants to invite the user, it needs to have the *initiate* permission

## Group Calls
A group call occurs when a user is in a call with at least two other participants. If meeting coordinates are specified when creating the call, a group call is set up automatically.

You can create a group call through Microsoft Teams, for example.

![Group Call Diagram](images/communications-group-call.PNG)<br/></br>


We allow bots to join existing calls. They can be explicitly invited by another participant as well as dial into these calls.

Bots are able to create group calls on their own, as well as invite other participants to an existing meeting or group call.


### Permissions:
If the user wants to invite a bot to a group call they created, the bot needs to have permission from the tenant administrator to join a group call.

If a bot is creating a group call and wants to invite additional participants, it needs to have the *initiate-group-call* permission.
