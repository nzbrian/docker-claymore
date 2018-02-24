# Claymore Eth Miner for NVIDIA GPUs

This is a very crude container based on nvidia's cuda containers
and the Claymore Eth miner.  
If you need to mine something different or somewhere else you might
need to modify some more env vars or even the entrypoint script.

## Running

You need to specify a number or required env vars.

* `EWAL` Ethereum wallet address.

Check out the `Dockerfile` for the rest of the optional env vars supported.  
Claymore supports quite a few more that are not being used here.

### Example

```
nvidia-docker run \
  -e "EWAL=0x123456789012345678" \
  nzbrian/docker-claymore
```
