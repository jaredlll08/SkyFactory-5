// GENERATOR START
// !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!
public function getGatewaysForColor(color: Color): string[] {
  {{#each colorMappings}}
  if color.getName() == ColorName.{{colorName}} {
    return [
      {{#each gateways}}
      {{#if @last}}"{{this}}"{{else}}"{{this}}",{{/if}}
      {{/each}}
    ];
  }
  {{/each}}

  return [];
}
// GENERATOR END