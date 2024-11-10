package org.tukaani.xz;

import java.io.InputStream;

/* loaded from: classes2.dex */
public class LZMA2Options extends FilterOptions {
    public int depthLimit;
    public int dictSize;
    public int lc;
    public int lp;
    public int mf;
    public int mode;
    public int niceLen;
    public int pb;
    public byte[] presetDict = null;
    public static final int[] presetToDictSize = {262144, 1048576, 2097152, 4194304, 4194304, 8388608, 8388608, 16777216, 33554432, 67108864};
    public static final int[] presetToDepthLimit = {4, 8, 24, 48};

    public LZMA2Options() {
        try {
            setPreset(6);
        } catch (UnsupportedOptionsException unused) {
            throw new RuntimeException();
        }
    }

    public void setPreset(int i) {
        if (i < 0 || i > 9) {
            throw new UnsupportedOptionsException("Unsupported preset: " + i);
        }
        this.lc = 3;
        this.lp = 0;
        this.pb = 2;
        this.dictSize = presetToDictSize[i];
        if (i <= 3) {
            this.mode = 1;
            this.mf = 4;
            this.niceLen = i <= 1 ? 128 : 273;
            this.depthLimit = presetToDepthLimit[i];
            return;
        }
        this.mode = 2;
        this.mf = 20;
        this.niceLen = i == 4 ? 16 : i == 5 ? 32 : 64;
        this.depthLimit = 0;
    }

    public void setDictSize(int i) {
        if (i < 4096) {
            throw new UnsupportedOptionsException("LZMA2 dictionary size must be at least 4 KiB: " + i + " B");
        }
        if (i > 805306368) {
            throw new UnsupportedOptionsException("LZMA2 dictionary size must not exceed 768 MiB: " + i + " B");
        }
        this.dictSize = i;
    }

    public void setLcLp(int i, int i2) {
        if (i < 0 || i2 < 0 || i > 4 || i2 > 4 || i + i2 > 4) {
            throw new UnsupportedOptionsException("lc + lp must not exceed 4: " + i + " + " + i2);
        }
        this.lc = i;
        this.lp = i2;
    }

    public void setPb(int i) {
        if (i < 0 || i > 4) {
            throw new UnsupportedOptionsException("pb must not exceed 4: " + i);
        }
        this.pb = i;
    }

    @Override // org.tukaani.xz.FilterOptions
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        return new LZMA2InputStream(inputStream, this.dictSize, this.presetDict, arrayCache);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}
