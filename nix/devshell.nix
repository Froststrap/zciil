{
  mkShell,
  zig,
  zls,
  typos
}:
mkShell {
  packages = [
    typos
    zig
    zls
  ];
}
