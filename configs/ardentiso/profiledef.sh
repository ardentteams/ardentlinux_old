#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="Ardentlinux"
modules=("base" "share" "gui")
iso_label="ARDENT_$(date +%Y%m)"
iso_publisher="Ardent Linux <https://archlinux.org>"
iso_application="Ardent Linux Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="archiso"
buildmodes=('iso')
bootmodes=( 'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
            'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')

kernel_name="lts"
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
