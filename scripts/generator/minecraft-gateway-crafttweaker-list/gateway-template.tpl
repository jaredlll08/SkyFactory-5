// gatewayEntityMapping GENERATOR START
    // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!
    {{#each gatewayEntityMappings}}
    "{{gatewayName}}": <entitytype:{{entity}}>{{#if @last}}{{else}},{{/if}}
    {{/each}}
    // gatewayEntityMapping GENERATOR END