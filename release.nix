with (import <nixpkgs> {});
derivation {
  inherit gcc coreutils;
  name = "myhello-0.0.1";
  builder = "${bash}/bin/bash";
  args = [ ./builder.sh ];
  system = "x86_64-linux";
  src = ./hello.c;
}