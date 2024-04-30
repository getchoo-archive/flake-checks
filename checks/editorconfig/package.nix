{
  lib,
  runCommand,
  root,
  editorconfig-checker,
}:
runCommand "check-editorconfig" {} ''
  cd ${root}
  ${lib.getExe editorconfig-checker} -exclude '.git' .
  touch $out
''
