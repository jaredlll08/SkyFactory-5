public function getGatewaysForColor(color: Color): string[] {
  if (color.getName() == ColorName.Black) {
    return [
      "gateways:enderman",
      "gateways:spider"
    ];
  }

  if (color.getName() == ColorName.Blue) {
    return [
      "gateways:drowned",
      "gateways:squid"
    ];
  }

  if (color.getName() == ColorName.Brown) {
    return ["gateways:cow"];
  }

  if (color.getName() == ColorName.Cyan) {
    return ["gateways:glow_squid"];
  }

  if (color.getName() == ColorName.Gray) {
    return ["gateways:cat"];
  }

  if (color.getName() == ColorName.Green) {
    return [
      "gateways:frog",
      "gateways:zombie"
    ];
  }

  if (color.getName() == ColorName.LightBlue) {
    return ["gateways:allay"];
  }

  if (color.getName() == ColorName.LightGray) {
    return ["gateways:iron_golem"];
  }

  if (color.getName() == ColorName.Lime) {
    return ["gateways:creeper"];
  }

  if (color.getName() == ColorName.Magenta) {
    return [];
  }

  if (color.getName() == ColorName.Orange) {
    return ["gateways:wooly_cow"];
  }

  if (color.getName() == ColorName.Pink) {
    return ["gateways:pig"];
  }

  if (color.getName() == ColorName.Purple) {
    return ["gateways:bone_spider","gateways:shulker"];
  }

  if (color.getName() == ColorName.Red) {
    return ["gateways:cluckshroom", "gateways:strider"];
  }

  if (color.getName() == ColorName.White) {
    return ["gateways:skeleton", "gateways:goat"];
  }

  if (color.getName() == ColorName.Yellow) {
    return ["gateways:bee"];
  }

  return [];
}
