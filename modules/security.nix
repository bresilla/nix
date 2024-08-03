{ config, lib, pkgs, ... }:

{
  options = {};
  config = {  
    security = {
      doas = {
        enable = true;
        wheelNeedsPassword = false;
      };
      sudo = {
        enable = true;
        extraRules = [{
          commands = [
            {
              command = "${pkgs.systemd}/bin/systemctl suspend";
              options = [ "NOPASSWD" ];
            }
            {
              command = "${pkgs.systemd}/bin/reboot";
              options = [ "NOPASSWD" ];
            }
            {
              command = "${pkgs.systemd}/bin/poweroff";
              options = [ "NOPASSWD" ];
            }
          ];
          groups = [ "wheel" ];
        }];
      };
    };

  };
}
