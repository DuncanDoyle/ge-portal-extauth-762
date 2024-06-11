# Gloo Edge Portal ExtAuth-762

GitHub issue: https://github.com/solo-io/ext-auth-service/issues/762

## Installation

Install Gloo Edge and Gloo Portal:
```
cd install
./install-gloo-edge-enterprise-portal-with-helm.sh
```

> [!NOTE]
> The Gloo Edge & Portal versions that will be installed is set in a variable at the top of the `install/install-gloo-edge-enterprise-portal-with-helm.sh` installation script.

Run the setup script:
```
./setup.sh
```

This will install the APIs, APIProducts, AuthConfig, RouteOptions and HTTPRoutes, api-key Secrets, etc..

When everything has been deployed, you can call the HTTPBin APIProduct with the following `cURL` command:

```
curl -v -H "api-key: NmZlMzc5YmEtNDM3OS1mODY3LTMxNDQtNTZmYWQ1YjgwZTgy" http://api.example.com/get
```

Since we have an api-key secret with an invalid email address (see `api-keys/httpbin-ultimate-api-key-secret-invalid.yaml`), one that contains a newline, the platform returns a 503.