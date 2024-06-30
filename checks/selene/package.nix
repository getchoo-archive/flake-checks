{
  lib,
  runCommand,
  root,
  selene,
}:
runCommand "check-selene" { } ''
  cd ${root}
  ${lib.getExe selene} .
  touch $out
''
