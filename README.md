<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for TTY
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/tty/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/tty?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/tty/issues"><img src="https://img.shields.io/github/issues/catppuccin/tty?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/tty/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/tty?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
  <img src="assets/res.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/mocha.webp"/>
</details>

## Usage

1. Copy the contents of your preferred flavor from [`themes/`](./themes/) and add it to your kernel options
2. Restart your computer

### GRUB

1. Edit `/etc/default/grub` and append the theme kernel options to `GRUB_CMDLINE_LINUX` (eg. `GRUB_CMDLINE_LINUX="vt.default_red..."`)
2. Run `sudo grub-mkconfig -o /boot/grub/grub.cfg`

### systemd-boot

1. Edit the boot entry located in `/boot/loader/entries/`
2. Append the theme kernel options to the `options` line
3. Run `sudo bootctl update`

### Limine

1. Edit `/boot/limine.cfg`
2. Append the theme kernel options to the boot entry's `CMDLINE`

### Other

For other bootloaders or for more information, [see here on ArchWiki](https://wiki.archlinux.org/title/Kernel_parameters)

## 💝 Thanks to

- [Echo](https://github.com/CallMeEchoCodes)
- [mekb](https://github.com/mekb-turtle)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
