# Helper functions for OpenPlugin

function open_plugin_configure_service {
    local conf_file=$1
    iniset $conf_file DEFAULT debug "$ENABLE_DEBUG_LOG_LEVEL"
    iniset $conf_file DEFAULT log_dir "$OPEN_PLUGIN_LOG_DIR"
}

function open_plugin_create_dirs {
    sudo install -d -o "$STACK_USER" "$OPEN_PLUGIN_CONF_DIR"
    sudo install -d -o "$STACK_USER" "$OPEN_PLUGIN_DATA_DIR"
}