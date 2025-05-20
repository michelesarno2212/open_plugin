from rest_framework.decorators import api_view
from rest_framework.response import Response
from openstack_dashboard.api.rest import urls

@api_view(['GET'])
def status(request):
    return Response({"status": "open_plugin active"})

urlpatterns = [
    urls.url(r'^status/$', status),
]