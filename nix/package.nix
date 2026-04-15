{
  stdenv,
  zig
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "dev";
  version = "release";

  src = ./.;

  buildInputs = [
    zig
  ];

  zigBuildFlags = [
    "-Doptimize=ReleaseSafe"
  ];

  outputs = [
    "out"
  ];
})
