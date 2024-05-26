with import <nixpkgs> { };

mkShell {
  nativeBuildInputs = [
    kubectl
  ];

  NIX_ENFORCE_PURITY = true;

  shellHook = ''
    export MINIKUBE_HOME=$(pwd);
    export KUBECONFIG=$MINIKUBE_HOME/.kube/config
    export KUBE_EDITOR="nvim"
  '';
}
