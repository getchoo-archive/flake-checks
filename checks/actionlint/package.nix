{
  lib,
  runCommand,
  root,
  actionlint,
}:
runCommand "check-actionlint" { } ''
  ${lib.getExe actionlint} ${root}/.github/workflows/*
  touch $out
''
