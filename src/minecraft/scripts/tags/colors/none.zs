#loader tags

import crafttweaker.api.resource.ResourceLocation;

val items as ResourceLocation[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!
  // GENERATOR END
];

for item in items {
  <tag:items:skyfactory_5:colored_items>.addId(item);
  <tag:items:skyfactory_5:colored_items/none>.addId(item);
}
