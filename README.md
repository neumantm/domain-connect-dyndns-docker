# domain-connect-dyndns-docker

Regularily update the DYNDNS Record of the domain `$DOMAIN`
using https://pypi.org/project/domain-connect-dyndns/

Set the environment variable `DOMAIN`.

For first setup, interactive console is required.

Data is stored in `/app/data`

## Usage

First run: `docker run -it -v myVolume:/app/data  neumantm/domain-connect-dyndns -e DOMAIN='example.com'`
Subsequent runs: `docker run -d -v myVolume:/app/data  neumantm/domain-connect-dyndns -e DOMAIN='example.com'`
