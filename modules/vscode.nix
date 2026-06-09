{ ... }: {
    programs.vscode = {
        enable = true;
        profiles.default.userSettings = {
            "chat.disableAIFeatures" = true;
            "chat.agent.enabled" = false;
            
            "chat.commandCenter.enabled" = false;
            
            "editor.inlineSuggest.enabled" = false;
            
            "inlineChat.accessibleDiffView" = "off";

            "configurationSync.enable" = false; 
            "extensions.autoUpdate" = false; 
            "update.mode" = "none";

            # --- Editor ---
            "editor.fontFamily" = "'JetBrainsMono Nerd Font', 'JetBrains Mono', Consolas, 'Courier New', monospace";
            "editor.fontLigatures" = true; 
            "editor.fontSize" = 14;        
            "editor.tabSize" = 4;
            "editor.insertSpaces" = true;

            # --- Terminal ---
            "terminal.integrated.fontFamily" = "'JetBrainsMono Nerd Font'";
            "terminal.integrated.fontSize" = 14;

            # --- Markdown ---
            "markdown.preview.fontFamily" = "'Ubuntu', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif";

            "window.zoomLevel" = 1;
        };
    };
}
