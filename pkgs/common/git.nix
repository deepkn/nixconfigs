{
    programs.git = {
        enable = true;
        userName = "Deepak Narayan";
        userEmail = "deepknn@proton.me";
        signing = {
            key = "624A677BCF27E124";
            signByDefault = true;
        };
        aliases = {
            cleanup = "!git branch --merged | grep  -v '\\*\\|master\\|develop' | xargs -n 1 -r git branch -d";
            prettylog = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(r) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative";
            root = "rev-parse --show-toplevel";
        };
        extraConfig = {
            branch.autosetuprebase = "always";
            color.ui = true;
            core.askPass = ""; # needs to be empty to use terminal for ask pass
            credential.helper = "store"; # want to make this more secure
            github.user = "deepkn";
            push.default = "tracking";
            init.defaultBranch = "main";
        };
    };
}