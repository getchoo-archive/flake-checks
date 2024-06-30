{
  lib,
  runCommand,
  root,
  nodePackages,
}:
runCommand "check-prettier" { } ''
  cd ${root}
  ${lib.getExe nodePackages.prettier} --ignore-path '.git' --check .
  touch $out
''
