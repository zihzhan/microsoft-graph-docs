# Use the Microsoft Graph REST API docs stub generator

Microsoft Graph uses CSDL (and XML format) for defining its API surface. This topic provides instructions to take that XML CSDL file and generate API and resource stub reference docs. This process does not account for the descriptions/information already available in the beta and v1.0 documentation, or any description annotations you might have in the CSDL for your types and properties. 

## Scenario and usage

If a new API/resource has been introduced to your workload **or** a large scale update needs to be made to existing API docs (where overwriting the existing docs is preferred over updating them), this is the tool for you. If you have a small change to be made (e.g., updating descriptions, adding scopes, adding examples, etc.), you don't need to use this tool.

### Workflow

1. Use the edmx2json script to translate the Microsoft Graph CSDL to intermediary JSON
2. Use the json2md script to translate the intermediary JSON to Markdown
3. Edit the files you are interested in (add descriptions, examples, etc.) and move those files into the appropriate places in your copy of the [Microsoft Graph Docs repository](https://github.com/microsoftgraph/microsoft-graph-docs). Note that depending on which CSDL you used in the first step, the tool may have generated stubs for docs that are already there and/or aren't relevant to the update you're making. These can be ignored.
4. Send a pull request to the Microsoft Graph Docs repository.

## Pre-requisites to run this tool

- Ruby interpreter. Version 2.4+

1. To install Ruby, start [here](https://www.ruby-lang.org/en/documentation/installation/#rubyinstaller).
2. On Windows machines, update PATH environment variable to point to ruby.exe file so you can run the command from any directory.
3. Type `ruby -v` command to ensure that it is installed and working correctly.

### Install activesupport gem

This is a set of libraries and extensions required to parse XML file. 
To get to the site to install activesupport, type `gem install activesupport` on the command line.


## Tool setup

1. Download the [stub generator repository](https://microsoftgraph.visualstudio.com/Home/_git/microsoft-graph-docs-stubGenerator) using the **Download as Zip** button, or clone the repository using the **Clone** button. The ZIP option requires less setup, but the **Clone** option makes it easier to update if changes are made to the tool. If you already have a ZIP copy, please discard and fork fresh to get latest updates.
2. Open a shell/command prompt to the root of this project, then change directory to the `./lib` folder.
3. Run `ruby edmx2json.rb -h` to verify everything is setup properly.

## Using the tool

1. Run `ruby edmx2json.rb` command to generate the intermediary JSON files. This takes between 1 to 15 minutes (depending on the size of the CSDL file) to complete.

::: tip [Use Microsoft Graph CSDL]
While the tool *could* be used on your service endpoint's CSDL definition, it's preferable and more reliable to run the tool against the Microsoft Graph exposed CSDL. You can run this against a Canary test version for example like https://canary.graph.microsoft.com/{yourTestVersion}/$metadata.
:::

    ```Shell
    Usage: edmx2json [options]
        -v, --version APIVERSION         Specify API version to generate for. Defaults to v1.0.
        -m, --metadata FILE              Specify a local file with custom metadata. If not specified, public metadata from graph.microsoft.com is used
        -h, --help                       Prints this help.
    ```

1. Run `ruby json2md.rb` command to generate Markdown files. This takes between 1 to 15 minutes.

    ```Shell
    Usage: json2md [options]
        -v, --version APIVERSION         Specify API version to generate for. Defaults to v1.0.
        -a, --author GITHUB-ALIAS        Specify GitHub alias of owner of new documentation. Defaults to empty string.
        -p, --product PRODUCT            Specify ms.prod value for new documentation. Defaults to empty string.
        -h, --help                       Prints this help.
    ```

1. Find your Markdown templates in the `./markdown/{version}` folder.
1. If you need to re-run the tool, be aware that it overwrites output, so copy any files you want to save before re-running.

## Edit stub files

The output of this tool is not intended to be "publish-ready". These files should be considered stubs, and will require some editing before they are ready to publish. Some things to check:

- **Descriptions**: generated descriptions are typically terse if they exist. In some cases, no description can be generated automatically, and instead a placeholder is inserted (`PROVIDE DESCRIPTION HERE`).
- **Permissions**: Permissions are not currently in the metadata, so the permissions tables are not accurate. Be sure to add the appropriate permission scopes.
- **Optional query parameters**: All list and get API topics get this section added with standard boilerplate. If your API doesn't support OData query parameters like `$select`, update the boilerplate text to state that the API does not support query parameters. If you support a subset, or there are other considerations (limited support, etc.), be sure to add information in this section to communicate what is and isn't supported.
- **Examples**: Be sure to add relevant and useful examples.

See step-by-step accounts of the sections to modify when adding or updating 
[properties](../manage-content/steps-add-properties-to-resource-topic.md) and 
[APIs](../manage-content/steps-update-api-topic.md). 

### Things to avoid

- Do not change the file name.
- Do not reorder sections.
- Do not add new columns to the generated tables.

## TOC updates

Contact the [Microsoft Graph docs v-team](mailto:MSGraphDocsVteam@microsoft.com) if you need to update the table of contents.

## Questions or concerns

Please contact the [Microsoft Graph docs v-team](mailto:MSGraphDocsVteam@microsoft.com).
