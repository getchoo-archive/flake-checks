{
  runCommand,
  root,
  cargo,
  rustfmt,
}:
runCommand "check-rustfmt" {nativeBuildInputs = [cargo rustfmt];} ''
  cd ${root}
  cargo fmt -- --check
  touch $out
''
