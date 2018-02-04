{ config, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Boot
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };
  };

  # Security
  security = {
    chromiumSuidSandbox.enable = true;
  };

  # Networking
  networking = {
    hostName = "Swift3";
    networkmanager.enable = true;

    # Firewall
    firewall = {
      allowedTCPPorts = [ 8200 ];
      allowedUDPPorts = [ 1900 ];
    };
  };

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      font-awesome-ttf
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      powerline-fonts
    ];
  };

  # AllowUnfree
  nixpkgs.config.allowUnfree = true;

  # Environment
  environment = {
    # System Packages
    systemPackages = with pkgs; [
    android-studio
    avrbinutils
    avrdude
    avrgcc
    avrlibc
    cabal-install
    compton
    discord
    enpass
    gcc
    gdb
    ghc
    gimp
    git
    gksu
    gnumake
    google-chrome
    go-mtpfs
    gradle
    i3lock-color
    jetbrains.idea-ultimate
    jq
    libreoffice
    maim
    mtpfs
    mupdf
    neofetch
    neovim
    ntfs3g
    numlockx
    playerctl
    python
    ranger
    rofi
    speedcrunch
    spotify
    stack
    teamviewer
    texlive.combined.scheme-basic
    thunderbird
    transmission_gtk
    unity3d
    unzip
    vlc
    vscode
    wget
    xclip
    xorg.xbacklight
    xorg.xev
    xorg.xrdb
    zip
    ];

    extraInit = "
      xrdb -merge ~/.Xresources
      xrdb -merge /mnt/Data/documents/xthemes/theme
    ";
  };

  # Programs
  programs = {
    adb.enable = true;
    fish.enable = true;
    java.enable = true;
  };

  # Services
  services = {
    # Enable the X11 windowing system.
    xserver = {
      enable = true;

      # Configure Keyboard Layout
      layout = "us";
      xkbVariant = "altgr-intl";
      xkbOptions = "nodeadkeys, lv3:caps_switch";

      # Enable touchpad support.
      libinput = {
        enable = true;
        naturalScrolling = true;
      };

      # Enable LightDM
      displayManager.lightdm = {
        enable = true;
        background = "#000000";
        greeters.gtk.theme.package = pkgs.arc-theme;
      };

      # Enable i3 WM
      windowManager.i3 = {
        enable = true;
        package = pkgs.i3-gaps;
        configFile = "/home/ndts/.config/i3/config";
        extraPackages = with pkgs; [
          i3lock-color
          i3status
          rofi
        ];
      };
    };

    # Make your screen red and such
    redshift = {
      enable = true;
      brightness = {
        day = "1";
        night = "0.8";
      };
      temperature.night = 1500;
      latitude = "49.8";
      longitude = "8.6";
    };

    # SSH
    openssh.enable = true;

    # Compton
    compton.enable = true;

  # MiniDLNA
  minidlna = {
    enable = true;
    config = "friendly_name=Swift \n inotify=yes";
    mediaDirs= [ "A,/mnt/Data/audio" "V,/mnt/Data/movies" "V,/mnt/Data/series" "P,/mnt/Data/pictures" ];
  };

  # TeamViewer
    teamviewer.enable = true;
  };

  # Systemd
  systemd = {
    network.enable = true;
  };

  # FileSystems
  fileSystems = {
    "/mnt/Data" = {
      device = "dev/sda5";
      fsType = "ntfs";
      label = "Data";
    };
  };

  # User Account
  users.extraUsers.ndts = {
    extraGroups = [ "wheel" "networkmanager" "adbusers" ];
    isNormalUser = true;
    uid = 1000;
    shell = pkgs.fish;
    initialPassword = "123";
  };

  # Hardware
  hardware = {
    pulseaudio.enable = true;
  };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "17.09"; # Did you read the comment?

}
