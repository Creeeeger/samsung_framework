package org.apache.commons.compress.archivers.sevenz;

import android.frameworks.vibrator.VibrationParam$1$$ExternalSyntheticOutline0;
import java.io.InputStream;
import org.tukaani.xz.DeltaInputStream;
import org.tukaani.xz.DeltaOptions;
import org.tukaani.xz.UnsupportedOptionsException;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class DeltaDecoder extends CoderBase {
    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public final InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
        byte[] bArr2 = coder.properties;
        int i = (bArr2 == null || bArr2.length == 0) ? 1 : (bArr2[0] & 255) + 1;
        DeltaOptions deltaOptions = new DeltaOptions();
        deltaOptions.distance = 1;
        if (i < 1 || i > 256) {
            throw new UnsupportedOptionsException(VibrationParam$1$$ExternalSyntheticOutline0.m(i, "Delta distance must be in the range [1, 256]: "));
        }
        deltaOptions.distance = i;
        return new DeltaInputStream(inputStream, deltaOptions.distance);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public final Object getOptionsFromCoder(Coder coder) {
        byte[] bArr = coder.properties;
        int i = 1;
        if (bArr != null && bArr.length != 0) {
            i = 1 + (bArr[0] & 255);
        }
        return Integer.valueOf(i);
    }
}
