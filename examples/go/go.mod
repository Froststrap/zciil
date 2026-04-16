// COMPILE:
// CC="zig cc -target x86_64-linux-musl" \
// CGO_ENABLED=1 \
// CGO_LDFLAGS="-static" \
// GOOS=linux \
// GOARCH=amd64 \
// go build \
// -ldflags '-extldflags "-static"'
//

module example

go 1.26.1
