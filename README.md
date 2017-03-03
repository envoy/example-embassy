# example-embassy
[Embassy](https://github.com/envoy/Embassy) example app for Linux

# Run it

Assume you have Docker installed in your system, here you run

```
./run-docker.sh
```

then 

```
cd /embassy
swift build
```

and then you can run the server like this

```
.build/debug/EmbassyExample &
```

The `&` puts it into background, so you can cURL it like

```
curl localhost:8080/foo
```

And you will see

```
the path you're visiting is "/foo"
```
