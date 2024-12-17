package org.apache.commons.compress.archivers.sevenz;

import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.LZMA2InputStream;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class LZMA2Decoder extends CoderBase {
    public static int getDictionarySize(Coder coder) {
        byte b = coder.properties[0];
        int i = b & 255;
        if ((b & 192) != 0) {
            throw new IllegalArgumentException("Unsupported LZMA2 property bits");
        }
        if (i > 40) {
            throw new IllegalArgumentException("Dictionary larger than 4GiB maximum size");
        }
        if (i == 40) {
            return -1;
        }
        return ((b & 1) | 2) << ((i / 2) + 11);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public final InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
        try {
            return new LZMA2InputStream(inputStream, getDictionarySize(coder), ArrayCache.defaultCache);
        } catch (IllegalArgumentException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public final Object getOptionsFromCoder(Coder coder) {
        return Integer.valueOf(getDictionarySize(coder));
    }
}
