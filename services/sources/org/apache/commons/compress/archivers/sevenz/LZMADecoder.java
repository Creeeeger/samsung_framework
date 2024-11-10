package org.apache.commons.compress.archivers.sevenz;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.tukaani.xz.LZMA2Options;
import org.tukaani.xz.LZMAInputStream;

/* loaded from: classes2.dex */
public class LZMADecoder extends CoderBase {
    public LZMADecoder() {
        super(LZMA2Options.class, Number.class);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
        byte b = coder.properties[0];
        int dictionarySize = getDictionarySize(coder);
        if (dictionarySize > 2147483632) {
            throw new IOException("Dictionary larger than 4GiB maximum size used in " + str);
        }
        return new LZMAInputStream(inputStream, j, b, dictionarySize);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public Object getOptionsFromCoder(Coder coder, InputStream inputStream) {
        int i = coder.properties[0] & 255;
        int i2 = i / 45;
        int i3 = i - ((i2 * 9) * 5);
        int i4 = i3 / 9;
        LZMA2Options lZMA2Options = new LZMA2Options();
        lZMA2Options.setPb(i2);
        lZMA2Options.setLcLp(i3 - (i4 * 9), i4);
        lZMA2Options.setDictSize(getDictionarySize(coder));
        return lZMA2Options;
    }

    public final int getDictionarySize(Coder coder) {
        return (int) ByteUtils.fromLittleEndian(coder.properties, 1, 4);
    }
}
