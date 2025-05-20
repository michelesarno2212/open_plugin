#!/bin/bash

function pre_install_open_plugin {
    echo_summary "Pre-install open_plugin"
}

function install_open_plugin {
    echo_summary "Installing open_plugin"
    setup_develop "$OPEN_PLUGIN_DIR"
}

function configure_open_plugin {
    echo_summary "Configuring open_plugin"
    iniset $HORIZON_LOCAL_SETTINGS OPENSTACK_OPEN_PLUGIN_ENABLED True
}

# DevStack hooks
if is_service_enabled horizon; then
    case "$1" in
        stack)
            case "$2" in
                install)
                    install_open_plugin
                    ;;
                post-config)
                    configure_open_plugin
                    ;;
            esac
            ;;
    esac
fi