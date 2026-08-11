sudo apt update -qq
sudo apt full-upgrade -qq -y
sudo apt install -qq -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential \
bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib \
git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libfuse-dev libglib2.0-dev libgmp3-dev \
libltdl-dev libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libpython3-dev libreadline-dev \
libssl-dev libtool lrzsz mkisofs msmtp ninja-build p7zip p7zip-full patch pkgconf python3 \
python3-pyelftools python3-setuptools qemu-utils rsync scons \
squashfs-tools subversion swig texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev
# 注入MT7621平台完整QoS流量调度内核开关
cat >> target/linux/ramips/mt7621/config-6.6 <<'EOF'
CONFIG_NET_SCHED=y
CONFIG_NET_SCH_HTB=y
CONFIG_NET_SCH_SFQ=y
CONFIG_NET_SCH_CODEL=y
CONFIG_NET_SCH_FQ_CODEL=y
CONFIG_NET_CLS=y
CONFIG_NET_CLS_FW=y
CONFIG_NET_CLS_U32=y
CONFIG_NET_CLS_ACT=y
EOF
