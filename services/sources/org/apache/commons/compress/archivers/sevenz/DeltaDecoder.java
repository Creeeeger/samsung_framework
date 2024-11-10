package org.apache.commons.compress.archivers.sevenz;

import java.io.InputStream;
import org.tukaani.xz.DeltaOptions;

/* loaded from: classes2.dex */
public class DeltaDecoder extends CoderBase {
    public DeltaDecoder() {
        super(Number.class);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
        return new DeltaOptions(getOptionsFromCoder(coder)).getInputStream(inputStream);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public Object getOptionsFromCoder(Coder coder, InputStream inputStream) {
        return Integer.valueOf(getOptionsFromCoder(coder));
    }

    public final int getOptionsFromCoder(Coder coder) {
        byte[] bArr = coder.properties;
        if (bArr == null || bArr.length == 0) {
            return 1;
        }
        return (bArr[0] & 255) + 1;
    }
}
