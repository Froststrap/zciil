{
  mkShell,
  zig,
  zls,
  typos,
  gdb,
  gnumake,
  go,
  gopls,
}:
mkShell {
  packages = [
    typos
    zig
    zls
    gnumake
    gdb
    go
    gopls
  ];
}
