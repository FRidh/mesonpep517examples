let
  nixpkgs = fetchGit {
    url = https://github.com/NixOS/nixpkgs.git;
    ref = "master";
    rev = "21c201adeeee05b23930f5fa5a6117500d3b1fb7";
  };

  builder = let
    pkgs =  import nixpkgs {};
  in { buildSystem }: with pkgs.python3.pkgs; buildPythonPackage {
    pname = "greetpkg";
    version = "dev";
    format = buildSystem;

    src = fetchGit ./.;

    # Disable tests
    doCheck = false;

    # Would expect this to be a native build input. Need to investigate.
    buildInputs = pkgs.lib.optionals (buildSystem == "pyproject")[ 
      mesonpep517 
    ];
  };

in {
  meson = builder { buildSystem = "pyproject"; };
  setuptools = builder { buildSystem = "setuptools"; };
}
