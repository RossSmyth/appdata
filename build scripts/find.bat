git clone https://github.com/sharkdp/fd.git %USERPROFILE%/dev/fd
cd %USERPROFILE%/dev/fd
set RUSTFLAGS=-Cembed-bitcode=yes -Ctarget-cpu=native -Ccodegen-units=1
cargo +nightly install --path .
