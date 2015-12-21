TARG = xorgxf86bigfontproto

<$mkbuild/mk.common-noinst

xorgxf86bigfontproto:QV:
    ./configure \
        --build="${TOOLCHAIN_TRIPLET}" \
        --host="${HOST_TOOLCHAIN_TRIPLET}" \
        --prefix="$PREFIX" \
        --mandir="$ROOT/share/man"
    make -j$nprocs
    make install DESTDIR="`pwd`/lib"
