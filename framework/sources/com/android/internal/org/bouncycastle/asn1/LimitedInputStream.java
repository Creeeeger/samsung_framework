package com.android.internal.org.bouncycastle.asn1;

import java.io.InputStream;

/* loaded from: classes5.dex */
public abstract class LimitedInputStream extends InputStream {
    protected final InputStream _in;
    private int _limit;

    public LimitedInputStream(InputStream in, int limit) {
        this._in = in;
        this._limit = limit;
    }

    public int getLimit() {
        return this._limit;
    }

    public void setParentEofDetect(boolean on) {
        InputStream inputStream = this._in;
        if (inputStream instanceof IndefiniteLengthInputStream) {
            ((IndefiniteLengthInputStream) inputStream).setEofOn00(on);
        }
    }
}
