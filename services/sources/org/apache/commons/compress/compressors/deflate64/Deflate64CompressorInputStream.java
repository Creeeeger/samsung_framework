package org.apache.commons.compress.compressors.deflate64;

import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes2.dex */
public class Deflate64CompressorInputStream extends CompressorInputStream {
    public long compressedBytesRead;
    public HuffmanDecoder decoder;
    public final byte[] oneByte;
    public InputStream originalStream;

    public Deflate64CompressorInputStream(InputStream inputStream) {
        this(new HuffmanDecoder(inputStream));
        this.originalStream = inputStream;
    }

    public Deflate64CompressorInputStream(HuffmanDecoder huffmanDecoder) {
        this.oneByte = new byte[1];
        this.decoder = huffmanDecoder;
    }

    @Override // java.io.InputStream
    public int read() {
        int read;
        do {
            read = read(this.oneByte);
            if (read == -1) {
                return -1;
            }
        } while (read == 0);
        if (read == 1) {
            return this.oneByte[0] & 255;
        }
        throw new IllegalStateException("Invalid return value from read: " + read);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        HuffmanDecoder huffmanDecoder = this.decoder;
        if (huffmanDecoder == null) {
            return -1;
        }
        int decode = huffmanDecoder.decode(bArr, i, i2);
        this.compressedBytesRead = this.decoder.getBytesRead();
        count(decode);
        if (decode == -1) {
            closeDecoder();
        }
        return decode;
    }

    @Override // java.io.InputStream
    public int available() {
        HuffmanDecoder huffmanDecoder = this.decoder;
        if (huffmanDecoder != null) {
            return huffmanDecoder.available();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            closeDecoder();
            InputStream inputStream = this.originalStream;
            if (inputStream != null) {
                inputStream.close();
                this.originalStream = null;
            }
        } catch (Throwable th) {
            if (this.originalStream != null) {
                this.originalStream.close();
                this.originalStream = null;
            }
            throw th;
        }
    }

    public final void closeDecoder() {
        IOUtils.closeQuietly(this.decoder);
        this.decoder = null;
    }
}
