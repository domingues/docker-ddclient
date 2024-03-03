# Docker ddclient

This is a simple Docker container that runs [ddclient](https://github.com/ddclient/ddclient).

## Usage

Clone this repository:
```bash
git clone https://github.com/domingues/docker-ddclient.git
cd docker-ddclient
```

Create a `ddclient.conf` file with your configuration. For example, if you want to use Cloudflare:
```bash
cat > ddclient.conf <<EOF
protocol=cloudflare
zone=my-domain.com
use=web
web=https://domains.cloudflare.com/cdn-cgi/trace
web-skip='ip='
login=token
password=your-api-token
my-domain.com
EOF
```

Protect your credentials:
```bash
chmod 600 ddclient.conf
chown root:root ddclient.conf
```

Build and run the container:
```bash
docker compose up -d --build
```
