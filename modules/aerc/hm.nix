# Documentation is available at:
# - https://git.sr.ht/~rjarry/aerc/tree/master/item/doc/aerc-stylesets.7.scd
# - `man 7 aerc-stylesets`
{ config, lib, ... }:

let
  colors = config.lib.stylix.colors.withHashtag;
in
{
  options.stylix.targets.aerc.enable = config.lib.stylix.mkEnableTarget "aerc" true;

  config = lib.mkIf (config.stylix.enable && config.stylix.targets.aerc.enable) {
    programs.aerc.stylesets = {
      default = with colors; {
        "*.default" = true;
        "*.normal" = true;
        "*.selected.bg" = base02;
        "border.bg" = base01;
        "completion_default.bg" = base01;
        "default.bg" = base00;
        "default.fg" = base05;
        "dirlist_*.bg" = base00;
        "error.fg" = base08;
        "header.fg" = base04;
        "msglist_unread.fg" = base06;
        "msglist_marked.fg" = base0D;
        "msglist_result.bg" = base0A;
        "msglist_result.selected.bg" = base0E;
        "msglist_result.fg" = base00;
        "msglist_flagged.fg" = base08;
        "msglist_deleted.fg" = base03;
        "statusline*.bg" = base01;
        "success.fg" = base0B;
        "tab.bg" = base01;
        "title.fg" = base04;
        "warning.fg" = base0A;
      };
    };
  };
}
