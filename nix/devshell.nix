{
  mkShell,
  zig,
  zls
}:
mkShell {
  packages = [
    zig
    zls
  ];
}
