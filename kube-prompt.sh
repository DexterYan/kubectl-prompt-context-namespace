#!/bin/bash

kubeon() {
  KUBE_PS1_ENABLED=on
}

kubeoff() {
  KUBE_PS1_ENABLED=off
}

__kube_ps1()
{
    # Get current context
    #[[ "${KUBE_PS1_ENABLED}" == "off" ]] && return
    CONTEXT="$(kubectl config current-context 2> /dev/null)"
    NAMESPACE="$(kubectl config view --minify --output 'jsonpath={..namespace}' 2> /dev/null)"
    if [ -n "$CONTEXT" ]; then
	    if [[ "${KUBE_PS1_ENABLED}" == "on" ]]; then
          echo "(${CONTEXT}:${NAMESPACE})"
        fi
    fi
}