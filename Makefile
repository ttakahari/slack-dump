gox: clean
	gox -verbose \
	-os="linux darwin windows" \
	-arch="amd64 386 arm64" \
	-osarch="!darwin/arm64" \
	-output="dist/{{.Dir}}-{{.OS}}-{{.Arch}}" .

clean:
	rm -rf ./dist
