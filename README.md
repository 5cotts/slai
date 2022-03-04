# slai
Found from this Hacker News [thread](https://news.ycombinator.com/item?id=30543228). Started playing around with it.

# Installation
Assumes you have Docker installed. Creates a Docker container which runs a Jupyter Notebook server with some pre-installed Python dependencies.
```bash
cd slai
bash scripts/build_jupyter
```
# Running
To run the Docker command, execute the below. We use the volumes flag so that any modifications to the `notebooks` directory get saved to your local machine. (You sometimes have to run this with `sudo`). Once the container is running, you can access the server locally at <a href=127.0.0.1:8888>127.0.0.1:8888</a>.
```bash
cd slai
bash scripts/run_server
```