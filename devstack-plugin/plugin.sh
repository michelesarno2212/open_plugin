#!/bin/bash

# DevStack plugin.sh file for open_plugin

function pre_install_open_plugin {
    echo_summary "Pre-installing open_plugin"
}

function install_open_plugin {
    echo_summary "Installing open_plugin"
    setup_develop "$OPEN_PLUGIN_DIR"
}

function configure_open_plugin {
    echo_summary "Configuring open_plugin"

    # Abilita il plugin su Horizon (opzionale)
    if [[ -n "$HORIZON_LOCAL_SETTINGS" ]]; then
        iniset $HORIZON_LOCAL_SETTINGS OPENSTACK_OPEN_PLUGIN_ENABLED True
    fi
}

function init_open_plugin {
    echo_summary "Initializing open_plugin"
}

function start_open_plugin {
    echo_summary "Starting open_plugin"
}

function stop_open_plugin {
    echo_summary "Stopping open_plugin"
}

function cleanup_open_plugin {
    echo_summary "Cleaning up open_plugin"
}

# Hook DevStack
if is_service_enabled open_plugin; then
    case $1 in
        pre-install)
            pre_install_open_plugin
            ;;
        install)
            install_open_plugin
            ;;
        post-config)
            configure_open_plugin
            ;;
        extra)
            init_open_plugin
            ;;
        unstack)
            stop_open_plugin
            ;;
        clean)
            cleanup_open_plugin
            ;;
    esac
fi
