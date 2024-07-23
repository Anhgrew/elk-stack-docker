# Docker Compose Setup for Elastic Stack

This `docker-compose.yml` file sets up a basic Elastic Stack environment consisting of Elasticsearch, Kibana, and Logstash. It includes the following components:

- **Elasticsearch Cluster**: A three-node Elasticsearch cluster (es01, es02, es03) configured with SSL/TLS for secure communication.
- **Kibana**: A Kibana instance for visualization and interaction with the Elasticsearch data.
- **Logstash**: A Logstash instance configured to read from a sample log file and output to Elasticsearch.

## Key Features

- **Elasticsearch**: 
  - Configured with SSL/TLS for both HTTP and transport communication.
  - Uses self-signed certificates for secure communication.
  - Includes health checks to ensure cluster nodes are ready.

- **Kibana**: 
  - Connected to the Elasticsearch cluster with SSL/TLS.
  - Exposed on port 5601 for accessing the Kibana web interface.

- **Logstash**: 
  - Reads logs from a sample log file and sends them to the Elasticsearch cluster.
  - Configured with SSL/TLS to communicate securely with Elasticsearch.

## Setup

1. **Volumes**: Defines local volumes for certificates and data to persist across container restarts.
2. **Networks**: Uses a local network named `elastic` for internal communication.
3. **Setup Service**: Initializes Elasticsearch certificates and sets the Kibana system password.

## Configuration

- **Elasticsearch**: Configured with environment variables for cluster setup, security, and SSL/TLS settings.
- **Kibana**: Uses environment variables to connect securely to Elasticsearch and configure necessary encryption keys.
- **Logstash**: Configured to use a logstash pipeline configuration and sample log file for testing.

## Usage

To start the stack, run:
```bash
docker-compose up -d
```
Then, create a new user with the appropriate permissions in http://localhost:5601. This user will be used by Logstash to forward data to Elasticsearch.
