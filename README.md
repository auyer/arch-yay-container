# Arch Container with yay AUR Helper

This project provides a weekly build of an Arch Linux container with the `yay` AUR Helper pre-installed. 
The images are built using Podman every Sunday.

## Features

- Based on the latest Arch Linux image
- Includes `yay` for AUR package management
- Built using Podman for containerization

## Usage

Pull container from package with your OCI container tool: `ghcr.io/auyer/arch-yay-container:latest`

To build the container image, use the following command:

```bash
podman build -t arch-yay .
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
