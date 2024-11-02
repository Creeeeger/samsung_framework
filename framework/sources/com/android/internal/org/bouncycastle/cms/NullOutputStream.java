package com.android.internal.org.bouncycastle.cms;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class NullOutputStream extends OutputStream {
    @Override // java.io.OutputStream
    public void write(byte[] buf) throws IOException {
    }

    @Override // java.io.OutputStream
    public void write(byte[] buf, int off, int len) throws IOException {
    }

    @Override // java.io.OutputStream
    public void write(int b) throws IOException {
    }
}
