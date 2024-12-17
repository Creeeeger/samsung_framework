package org.apache.commons.compress.archivers.sevenz;

import java.io.InputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class Coders$DeflateDecoder$DeflateDecoderInputStream extends InputStream {
    public Inflater inflater;
    public InflaterInputStream inflaterInputStream;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.inflaterInputStream.close();
        } finally {
            this.inflater.end();
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        return this.inflaterInputStream.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return this.inflaterInputStream.read(bArr);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        return this.inflaterInputStream.read(bArr, i, i2);
    }
}
