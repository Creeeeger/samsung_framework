package org.apache.commons.compress.utils;

import java.io.FilterInputStream;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class CloseShieldFilterInputStream extends FilterInputStream {
    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public CloseShieldFilterInputStream(InputStream inputStream) {
        super(inputStream);
    }
}
