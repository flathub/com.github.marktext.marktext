# Mark Text Flatpak

___Next generation markdown editor___

MarkText is a free and open-source realtime preview markdown editor which support both CommonMark Spec and GitHub Flavored Markdown Spec. It is a concise text editor, dedicated to improving your writing efficiency.

---

## Manual Install and Run

Make sure you follow the [setup guide for your Linux distribution](https://flathub.org/en/setup) before installing.

```bash
flatpak install flathub com.github.marktext.marktext
flatpak run com.github.marktext.marktext
```

## Building

### Requirements

- `flatpak` and `flatpak-builder`
- `org.freedesktop` platform/SDK
- `org.electronjs.Electron2.BaseApp`

### Build commands

```bash
git clone git@github.com:flathub/com.github.marktext.marktext.git
flatpak run org.flatpak.Builder build-dir --user --ccache --force-clean --install com.github.marktext.marktext.json
```

## License

All meta files in this repository are licensed under `CC0-1.0`. Mark Text is licensed under `MIT`. For licensing details or submitting bug reports, please visit [Mark Text repository](https://github.com/marktext/marktext).
