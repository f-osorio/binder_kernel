# Configuration file for jupyter-kernel-gateway.
## Sets the Access-Control-Allow-Methods header. (KG_ALLOW_METHODS env var)
c.KernelGatewayApp.allow_methods = 'GET'

## Controls which API to expose, that of a Jupyter notebook server, the seed
#  notebook's, or one provided by another module, respectively using values
#  'kernel_gateway.jupyter_websocket', 'kernel_gateway.notebook_http', or another
#  fully qualified module name (KG_API env var)
c.KernelGatewayApp.api = 'notebook-http'

## IP address on which to listen (KG_IP env var)
c.KernelGatewayApp.ip = '0.0.0.0'

## Runs the notebook (.ipynb) at the given URI on every kernel launched. No seed
#  by default. (KG_SEED_URI env var)
c.KernelGatewayApp.seed_uri = "/srv/notebooks/metrics_api.ipynb"
