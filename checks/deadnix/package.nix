{
  lib,
  runCommand,
  root,
  deadnix,
}:
runCommand "check-deadnix" { } ''
  ${lib.getExe deadnix} --fail ${root}
  touch $out
''
