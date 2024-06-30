{
  lib,
  runCommand,
  root,
  biome,
}:
runCommand "check-biome-lint" { } ''
  ${lib.getExe biome} lint ${root}/**/*
  touch $out
''
