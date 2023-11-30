// stagedMobs GENERATOR START
    // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

    {{#each mobs}}
    <entitytype:{{mob}}>: new StagedMob(<entitytype:{{mob}}>, MobStage.{{stageEnum}}){{#if @last}}{{else}},{{/if}}
    {{/each}}

    // stagedMobs GENERATOR END