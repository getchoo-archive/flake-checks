{
  lib,
  runCommand,
  root,
  alejandra,
}:
runCommand "check-alejandra" { } ''
  ${lib.getExe alejandra} --check ${root}
  touch $out
''
