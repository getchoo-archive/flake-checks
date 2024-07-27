{
  lib,
  runCommand,
  root,
  reuse,
}:
runCommand "check-reuse" { } ''
  ${lib.getExe reuse} --root ${root} lint
  touch $out
''
