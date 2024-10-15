FROM docker.io/archlinux/archlinux:latest

RUN pacman -Syu --noconfirm && pacman -S --noconfirm base-devel git

# makepkg user and workdir
ARG user=makepkg

RUN mkdir -p /tmp/yay-build &&\
  echo "$user ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/$user &&\
  useradd -m -G wheel $user  && passwd -d $user  &&\
  chown -R $user:$user  /tmp/yay-build

USER $user
WORKDIR /tmp/yay-build

# Install yay
RUN git clone https://aur.archlinux.org/yay.git . \
  && makepkg -sri --needed --noconfirm \
  && cd \
  # Clean up
  && rm -rf ~/.cache /tmp/yay-build
