package org.apache.commons.compress.compressors;

import java.io.InputStream;

/* loaded from: classes2.dex */
public abstract class CompressorInputStream extends InputStream {
    public long bytesRead = 0;

    public void count(int i) {
        count(i);
    }

    public void count(long j) {
        if (j != -1) {
            this.bytesRead += j;
        }
    }
}
