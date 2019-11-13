---
title: "Enable API Doctor to validate examples"
description: "Enable API Doctor to validate examples"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Enable API Doctor to validate examples

For API Doctor to validate an HTTP example against the related resources _as defined in the docs_, you must do the 
following in the corresponding "JSON representation" section in the resource type topic for each type (complex type and entity) 
referenced directly or indirectly in the example response:
1. Include an HTML comment before the JSON definition of that type.
  ```
  <!--{
    "blockType": "resource",
    "optionalProperties": [],
    "keyProperty": "id",
    "baseType": "microsoft.graph.entity",
    "@odata.type": "microsoft.graph.workbookChart"
  }-->
  ```
   
2. Include a JSON definition of the complex type or entity. The following shows an example of the HTML comment and JSON definition for the workbookChart entity:

  ```json
  {
    "height": 1024,
    "id": "string",
    "left": 1024,
    "name": "string",
    "top": 1024,
    "width": 1024
  }
  ```

Then in the "Examples" section in an API topic:

3. Include an HTML comment before each example HTTP request and 
HTTP response. For example, the first HTML comment below precedes an example request, the second precedes an example response:

  ```
  <!-- {
    "blockType": "request",
    "name": "chartcollection_add"
  }-->
  ```

  ```
  <!-- {
    "blockType": "response",
    "name": "chartcollection_add",
    "truncated": true,
    "@odata.type": "microsoft.graph.workbookChart"
  } -->
  ```

The rest of this article explain how to initialize the "JSON representation" section and the HTML comments 
properly for your resource types and API examples.

## Define each complex type and entity in resource type topics

When validating HTTP examples, API Doctor is primarily cross-checking the following:
- Any properties in the example response body must be part of the @odata.type you specified for that response. Using the last example, that means all the properties in the response must be
defined as part of the JSON in the "JSON representation" section of the workbookChart resource type topic.
- The property values in the example response must match how you have defined the corresponding property types in the "JSON representation" section.

Therefore, you must define each complex type and entity that your API uses, in their corresponding resource type topic.
In particular, in the "JSON representation" section, specify the following:
1. An HTML comment, which contains in JSON format the fully qualified name of that type (e.g., microsoft.graph.workbookChart), 
and where applicable, its parent type, ID (if the resource is an entity), etc. See 
[below](#describe-a-resource-example-request-or-example-response-in-a-json-object) for an enumeration of the applicable 
JSON members in the HTML comment.
2. Following the HTML comment, another JSON object where you must define the properties and their types in that resource.
Specifying any navigation properties in this JSON object is optional. However, if you do include navigation properties here, 
then you must include them in `optionalProperties` in the HTML comment described above.

### Define property types
For most properties in Microsoft Graph, the [stub generator](https://msgo.azurewebsites.net/add/document/guidelines/stub-generator.html) initializes the "JSON representation"  
and "Properties" sections properly with the appropriate type for each property of a resource, based on the input metadata you used for stub topic generation.

Make sure you document properties defined as **Edm.Binary** in the metadata as follows:

1. In the "JSON representation" section, define the property type as "**String (binary)**" and _not_ "Binary" nor "Edm.Binary". 
   If the property appears in an example response, this would let you get around an API Doctor error "Expected type Binary but actual was String."
2. In the "Properties" section, define the property type as "**Edm.Binary**" and not "Binary".
   This is for clarity as some customers have had questions how properties of type "binary" work (see 
   [Github question about the contentBytes property](https://github.com/microsoftgraph/microsoft-graph-docs/issues/5159#issuecomment-516044390)). Specifying "Edm.Binary" 
   helps clarify the type, as defined in [OData 2.0](https://www.odata.org/documentation/odata-version-2-0/overview/#6-primitive-data-types) and 
   [OData 4.0](https://docs.oasis-open.org/odata/odata-json-format/v4.01/csprd05/odata-json-format-v4.01-csprd05.html#sec_PrimitiveValue).

As an example, the **conversationIndex** property of the **message** resource is of type Edm.Binary. The [JSON represention](https://docs.microsoft.com/en-us/graph/api/resources/message?view=graph-rest-beta#json-representation) section 
defines the property as follows:

```
"conversationIndex": "string (binary)",
```


## Define example requests and responses as pairs in API topics

In the context of example requests and responses, each HTML comment should include a JSON object that tells API Doctor 
that the following lines represent an example request or response, what to expect in the response, and if applicable, 
validate the properties and their types in the response. 

API Doctor can validate an example only if you organize the request and response as a pair. Although not required, 
it's a good practice to specify a unique name for the request and response in the pair. API Doctor references that name 
in error messages about that example. 

To document cases where one example request can result in mulitple 
possible responses, it's better to separately describe and form a request-response pair for each case. This way, you 
can enable API Doctor validation for each of the example responses.

::: warning
The stub topic generator inserts HTML comments for corresponding APIs based on the input metadata. If you're authoring content 
that wasn't generated, **you must include and customize the HTML comments for your API examples**.
:::

## Describe a resource, example request, or example response in a JSON object

This section describes the JSON conventions used in an HTML comment, in a resource type topic to define an entity or 
complex type, and in an API topic for an example. 

The most important property in the JSON object is **blockType**, which must be one of:

- `resource`: Identifies the lines that follow this `blockType` statement as a JSON blob, which represents the properties of an 
entity or complex type. Occurs in the "JSON representation" section of a resource type topic.
- `request`: an example HTTP request.
- `response`: an example HTTP response.
- `ignored`: a block that API Doctor should ignore validating. Use this if the code block isn't part of an example, 
such as the "HTTP request" section of a method topic.

Besides **blockType** (which is required), there are several other properties. 

::: warning
Regardless of whether you used the stub generator, make sure to verify these properties are set 
appropriately for your resources. Depending on the metadata you provided to the stub generator, which often times is a 
partial metadata that hasn't been mapped to Microsoft Graph, the generated topics may contain incorrect values for 
these properties. In such cases, you must correct these properties manually to avoid API Doctor errors.
:::

- **@odata.type** or just @type: Represents the fully qualified type name in Microsoft Graph (e.g., microsoft.graph.user). 
You must specify this for resource definitions and example responses which include a response body. Always use the same case
for the same resource in any occurrence of `@odata.type`, and the case should also match the definition in the Microsoft 
Graph metadata. In other words, API Doctor considers "micrsoft.graph.user" and "microsoft.graph.User" as two different types.
- **baseType**: Specify this in resource type topics, for resources that have a parent type. For many entities, this is 
`microsoft.graph.entity`. Exclude this property if there is no base type.
- **keyProperty**: Specify this in resource type topics the property name that represents the `key` in the metadata. For 
entities which inherit from the microsoft.graph.entity type, this is the **id** property. Also make sure that 
the "Properties" section includes this property name (e.g., **id**) in the properties table. For complex types, 
exclude keyProperty, as complex types primarily only define data structures in Microsoft Graph.
 
  API Doctor complains if it sees a keyProperty on a resource that doesn't have a property with that name. 
That's a hint that either: 
  1) The property is really a complex type and hence has no key. 
  2) The property is an entity type that inherits from 'microsoft.grpah.entity' but is missing the baseType attribute. 
  3) The property is supposed to be an entity and the keyProperty attribute is set correctly, but the resource definition 
and/or table are missing that key property.
- **openType**: Specify this in resource type topics for resources that are "open types", meaning they support dynamic 
properties that aren't in the 
schema. This property basically does two things in API Doctor: 
  1) When it produces an EDMX file, it'll appropriately 
declare the type as open. 
  2) When API doctor validates responses, it'll be more lenient about unknown properties 
in a type marked as open.
- **optionalProperties**: Specify this in resource type topics, and list properties that
are not always returned in a GET operation here. By default, API Doctor assumes that a "full" response in an example in the 
docs contains all the properties defined in the JSON (specified in the "JSON representation" section of the resource type 
topic). Including navigation properties in the JSON of an entity is optional. However, if you do include navigation properties 
in the JSON of an entity, then you must include those navigation properties in 
`optionalProperties` as well. Otherwise API Doctor would expect those navigation properties in GET responses. 
- **name**: Specify this for example HTTP requests and responses. The name is used in error messages and reporting. 
Specify a unique friendly name so that you can conveniently identify the location of an example error called out by API Doctor. 
It is optional on example HTTP response blocks, as API Doctor assumes an example response applies to the previous example 
request. In cases where that's not true, including the name property in a response block tells API Doctor which request 
it matches with.
- **truncated**: Set this to true if the example response doesn't include a response body. Where the example response 
does include a response body, setting `truncated` to true is optional, and doing so avoids API Doctor returning an error 
if your example leaves out some properties that you have defined in the JSON (under the "JSON representation" section of the 
resource type). Setting `truncated` to true has the disadvantage of not getting notified if your example response is out-of-date.