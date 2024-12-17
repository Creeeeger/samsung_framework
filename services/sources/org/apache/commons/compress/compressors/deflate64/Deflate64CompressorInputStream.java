package org.apache.commons.compress.compressors.deflate64;

import android.frameworks.vibrator.VibrationParam$1$$ExternalSyntheticOutline0;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class Deflate64CompressorInputStream extends CompressorInputStream {
    public HuffmanDecoder decoder;
    public final byte[] oneByte;
    public InputStream originalStream;

    public Deflate64CompressorInputStream(InputStream inputStream) {
        HuffmanDecoder huffmanDecoder = new HuffmanDecoder(inputStream);
        this.oneByte = new byte[1];
        this.decoder = huffmanDecoder;
        this.originalStream = inputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        HuffmanDecoder huffmanDecoder = this.decoder;
        if (huffmanDecoder != null) {
            return huffmanDecoder.state.available();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            HuffmanDecoder huffmanDecoder = this.decoder;
            if (huffmanDecoder != null) {
                try {
                    huffmanDecoder.close();
                } catch (IOException unused) {
                }
            }
            this.decoder = null;
        } finally {
            InputStream inputStream = this.originalStream;
            if (inputStream != null) {
                inputStream.close();
                this.originalStream = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
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
        throw new IllegalStateException(VibrationParam$1$$ExternalSyntheticOutline0.m(read, "Invalid return value from read: "));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0161, code lost:
    
        if (r1 != (-1)) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0163, code lost:
    
        if (r2 == null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0165, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0158, code lost:
    
        r2 = r23.decoder;
        r3 = r2.reader.in.bytesRead;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int read(byte[] r24, int r25, int r26) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.compressors.deflate64.Deflate64CompressorInputStream.read(byte[], int, int):int");
    }
}
