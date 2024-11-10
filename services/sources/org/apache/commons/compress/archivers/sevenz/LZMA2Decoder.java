package org.apache.commons.compress.archivers.sevenz;

import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.LZMA2InputStream;
import org.tukaani.xz.LZMA2Options;

/* loaded from: classes2.dex */
public class LZMA2Decoder extends CoderBase {
    public LZMA2Decoder() {
        super(LZMA2Options.class, Number.class);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
        try {
            return new LZMA2InputStream(inputStream, getDictionarySize(coder));
        } catch (IllegalArgumentException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public Object getOptionsFromCoder(Coder coder, InputStream inputStream) {
        return Integer.valueOf(getDictionarySize(coder));
    }

    public final int getDictionarySize(Coder coder) {
        int i = coder.properties[0] & 255;
        if ((i & (-64)) != 0) {
            throw new IllegalArgumentException("Unsupported LZMA2 property bits");
        }
        if (i > 40) {
            throw new IllegalArgumentException("Dictionary larger than 4GiB maximum size");
        }
        if (i == 40) {
            return -1;
        }
        return ((i & 1) | 2) << ((i / 2) + 11);
    }
}
