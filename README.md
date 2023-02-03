# README

This Rails application was created to benchmark the performance of assets being served up by Puma, nginx, etc.

## Getting started

On macOS, run `brew bundle` to install `k6`. Installation instructions for other platforms at https://k6.io/docs/get-started/installation/.

Next install the gems.

```sh
bundle
```

Now compile the assets.

```sh
bin rails assets:precompile
```

Then boot the server.

```sh
bin/rails server
```

Open http://localhost:3000/ and you should see a page entitled "Rails static assets" that lists the assets.

## Running benchmarks

Then run the k6 script against the server.

```sh
k6 run benchmarks/get_robots.js -u 100 -d 30s
```

Read https://k6.io/ for more info about k6.