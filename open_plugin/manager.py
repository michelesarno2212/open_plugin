import logging
from oslo_service import service

LOG = logging.getLogger(__name__)

class OpenPluginManager(service.Service):
    def __init__(self):
        super(OpenPluginManager, self).__init__()
        
    def start(self):
        LOG.info("Starting OpenPlugin Service")
        
    def stop(self):
        LOG.info("Stopping OpenPlugin Service")