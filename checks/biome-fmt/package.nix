{
  lib,
  runCommand,
  root,
  biome,
}:
runCommand "check-biome-fmt" {} ''
  ${lib.getExe biome} format ${root}/**/*
  touch $out
''
