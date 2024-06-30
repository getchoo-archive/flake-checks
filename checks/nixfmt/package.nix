{
  lib,
  runCommand,
  nixfmt-rfc-style,
  root,
}:
runCommand "check-nixfmt" {} ''
  ${lib.getExe nixfmt-rfc-style} --check ${root}
  touch $out
''
