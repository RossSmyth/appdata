set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

default:
  just --list

export RUSTFLAGS := "-Ctarget-cpu=native -Cprefer-dynamic=no"

[private]
[no-exit-message]
@probe-7zip:
    7z | out-null

# Installs ripgrep find llvm just mpv-install
install-all: ripgrep find oxipng mpv-install helix llvm

# Updates ripgrep find mpv rust
update-all: rust ripgrep find oxipng just llvm mpv helix

# Updates rust toolchain(s)
rust:
    rustup update

# Installs & updates just
just:
    -git.exe clone https://github.com/casey/just.git {{data_local_directory()}}/just
    git -C {{data_local_directory()}}/just pull
    # Just cannot install itself :(
    echo "cargo +nightly install --locked --path {{data_local_directory()}}/just"

# Installs & updates ripgrep
ripgrep:
    -git.exe clone https://github.com/BurntSushi/ripgrep.git {{data_local_directory()}}/ripgrep
    git -C {{data_local_directory()}}/ripgrep pull
    -cargo +nightly install --locked --features "pcre2" --path {{data_local_directory()}}/ripgrep

# Installs & updates Helix
helix:
    -git.exe clone https://github.com/helix-editor/helix.git {{data_local_directory()}}/helix
    git -C {{data_local_directory()}}/helix pull
    -cargo +nightly install --locked --features "unicode-lines" --path {{data_local_directory()}}/helix/helix-term
    just helix-copy

helix-copy: 
    robocopy  "{{data_local_directory()}}\\helix\\runtime" "{{data_directory()}}\\helix\\runtime" /MIR /E /NFL /NDL /PURGE

# Installs & updates find
find:
    -git clone https://github.com/sharkdp/fd.git {{data_local_directory()}}/fd
    git -C {{data_local_directory()}}/fd pull
    cargo +nightly install --locked --path {{data_local_directory()}}/fd

mpv_latest := "https://api.github.com/repos/shinchiro/mpv-winbuild-cmake/releases/latest"
mpv_dir := data_local_directory() + "/mpv"

oxipng:
    -git clone https://github.com/shssoichiro/oxipng.git {{data_local_directory()}}/oxipng
    git -C {{data_local_directory()}}/oxipng pull
    cargo +nightly install --locked --path {{data_local_directory()}}/oxipng

# Install mpv
mpv-install:
    mkdir {{mpv_dir}}
    $ProgressPreference = 'SilentlyContinue'; \
    $url = (Invoke-RestMethod {{mpv_latest}}).assets.Where( {$_.name -like "mpv-x86_64-v3*"} ).browser_download_url; \
    Invoke-WebRequest $url -OutFile {{mpv_dir}}/mpv.7z
    7z x {{mpv_dir}}/mpv.7z -o{{data_local_directory()}}/mpv

    git clone https://github.com/RossSmyth/mpv_config.git {{mpv_dir}}/portable_config

# Updates mpv & config
mpv:
    {{mpv_dir}}/updater.bat
    git -C {{mpv_dir}}/portable_config pull


llvm_latest := "https://api.github.com/repos/llvm/llvm-project/releases/latest"

# Installs & updates LLVM
llvm: probe-7zip
    $ProgressPreference = 'SilentlyContinue'; \
    $json = $json = curl.exe "https://api.github.com/repos/llvm/llvm-project/releases/latest" | ConvertFrom-Json; \
    $url = $json.assets.Where( {$_.name -like "*windows*"} ).browser_download_url; \
    Write-Output $url; \
    curl.exe -L --output "{{data_local_directory()}}/llvm.tar.xz" "$url"
    7z e {{data_local_directory()}}/llvm.tar.xz -o"{{data_local_directory()}}/llvm_tar" *.tar
    7z x {{data_local_directory()}}/llvm_tar/llvm.tar -o"{{data_local_directory()}}/llvm_new"
    rm {{data_local_directory()}}/llvm.tar.xz
    rm -R {{data_local_directory()}}/llvm_tar
    -rm -R {{data_local_directory()}}/llvm
    mv "{{data_local_directory()}}/llvm_new/clang*" "{{data_local_directory()}}/llvm"
    -rm -R {{data_local_directory()}}/llvm_new
