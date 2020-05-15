FROM jupyter/all-spark-notebook:15a66513da30

# Install Kernel Gateway and modules
RUN pip install jupyter_kernel_gateway

ADD metrics_api.ipynb /srv/notebooks/
ADD jupyter_kernel_gateway_config.py /home/${NB_USER}/.jupyter/

# Configure container startup
ENTRYPOINT ["tini", "--", "jupyter", "kernelgateway"]
