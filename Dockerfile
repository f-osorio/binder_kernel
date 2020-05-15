FROM jupyter/all-spark-notebook:15a66513da30

# Install Kernel Gateway and modules
RUN pip install jupyter_kernel_gateway
RUN pip install jupyter_server_proxy

ADD metrics_api.ipynb /srv/notebooks/
ADD jupyter_kernel_gateway_config.py /home/${NB_USER}/.jupyter/
ADD postBuild /home/${NB_USER}/

# Configure container startup
ENTRYPOINT ["tini", "--", "jupyter", "kernelgateway"]

RUN pwd

# Run postBuild
USER root
RUN chmod +x ./postBuild
RUN ./postBuild
