{
  lib,
  runCommand,
  root,
  statix,
}:
runCommand "check-statix" { } ''
  ${lib.getExe statix} check ${root}
  touch $out
''
