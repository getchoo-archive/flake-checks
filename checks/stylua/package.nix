{
  lib,
  runCommand,
  root,
  stylua,
}:
runCommand "check-stylua" {} ''
  ${lib.getExe stylua} --check ${root}
  touch $out
''
