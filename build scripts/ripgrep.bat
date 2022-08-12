git clone https://github.com/BurntSushi/ripgrep.git %USERPROFILE%/dev/ripgrep
cd %USERPROFILE%/dev/ripgrep/
set RUSTFLAGS=-Cembed-bitcode=yes -Cprefer-dynamic=no -Ctarget-cpu=native -Ccodegen-units=1 
cargo +nightly install --features "pcre2 simd-accel" --path .
