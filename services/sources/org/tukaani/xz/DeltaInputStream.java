package org.tukaani.xz;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.delta.DeltaDecoder;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class DeltaInputStream extends InputStream {
    public final DeltaDecoder delta;
    public InputStream in;
    public IOException exception = null;
    public final byte[] tempBuf = new byte[1];

    public DeltaInputStream(InputStream inputStream, int i) {
        inputStream.getClass();
        this.in = inputStream;
        this.delta = new DeltaDecoder(i);
    }

    @Override // java.io.InputStream
    public final int available() {
        InputStream inputStream = this.in;
        if (inputStream == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException == null) {
            return inputStream.available();
        }
        throw iOException;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.in;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.in = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = this.in;
        if (inputStream == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        try {
            int read = inputStream.read(bArr, i, i2);
            if (read == -1) {
                return -1;
            }
            DeltaDecoder deltaDecoder = this.delta;
            deltaDecoder.getClass();
            int i3 = i + read;
            while (i < i3) {
                byte b = bArr[i];
                int i4 = deltaDecoder.pos;
                int i5 = (deltaDecoder.distance + i4) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT;
                byte[] bArr2 = deltaDecoder.history;
                byte b2 = (byte) (b + bArr2[i5]);
                bArr[i] = b2;
                deltaDecoder.pos = i4 - 1;
                bArr2[i4 & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT] = b2;
                i++;
            }
            return read;
        } catch (IOException e) {
            this.exception = e;
            throw e;
        }
    }
}
