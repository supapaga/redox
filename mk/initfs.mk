build/initfs.tag: initfs.toml
	cd kernel && cargo clean
	rm -rf build/initfs
	mkdir -p build/initfs
	cargo run --manifest-path installer/Cargo.toml -- $(INSTALLER_FLAGS) -c $< build/initfs/
	touch $@

build/initfs_live.tag: initfs_live.toml
	cd kernel && cargo clean
	rm -rf build/initfs_live
	mkdir -p build/initfs_live
	cargo run --manifest-path installer/Cargo.toml -- $(INSTALLER_FLAGS) -c $< build/initfs_live/
	touch $@
