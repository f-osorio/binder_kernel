# Jupyter Kernel Gateway API

The files contained here are a demonstration of using the Jupyter Kernel Gateway to create an API.

## Contents
1. `/db` : Folder with files needed to create a MySQL database
2. `Dockerfile`: for the gateway's creation
3. `Dockerfile.ntoebook`: for the notebook's creation
4. `docker-compose.yml`: builds and runs the containers
5. `metrics_api.ipynb`: Notebook that contains the API

## Running
1. Clone the repo
2. `cd kernel_gateway_notebook`
3. `sudo docker-compose up --build`
4. The notebook is available at `localhost:8888`
5. The API can be reached at `localhost:9001/<table>/record/<id>`

## Notebook
All files here are copied into the Notebook so the user can look at them and explore them from the Notebook. The database is also accessible.  

## API
End point: `/<table>/record/<id>`  
* _table_ refers to the table in the database you want to query. 
* _id_ is the identifier for the row to return as `JSON`.

## Database
### Connect to the database from Notebook
* user: root
* password: root
* host: db
* port: 3306
* database: metrics

### Tables:
* bibliometrics: impact factors, h-index, ...
    * _id_ excepts `issn`
* altmetrics: altmetrics scores, mentions on social media, ...
    * _id_ excepts `doi`
* mendeley: mendeley usage - country, academic status, ...
    * _id_ excepts `doi`
