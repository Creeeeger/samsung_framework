package org.apache.commons.compress.archivers.sevenz;

import android.frameworks.vibrator.VibrationParam$1$$ExternalSyntheticOutline0;
import android.net.ConnectivityModuleConnector$$ExternalSyntheticOutline0;
import com.android.internal.util.jobs.ArrayUtils$$ExternalSyntheticOutline0;
import com.android.server.BinaryTransparencyService$$ExternalSyntheticOutline0;
import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.LZMA2Options;
import org.tukaani.xz.LZMAInputStream;
import org.tukaani.xz.UnsupportedOptionsException;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class LZMADecoder extends CoderBase {
    public static int getDictionarySize$1(Coder coder) {
        byte[] bArr = coder.properties;
        long j = 0;
        for (int i = 0; i < 4; i = 1 + i) {
            j |= (bArr[r3] & 255) << (i * 8);
        }
        return (int) j;
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public final InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr) {
        byte b = coder.properties[0];
        int dictionarySize$1 = getDictionarySize$1(coder);
        if (dictionarySize$1 <= 2147483632) {
            return new LZMAInputStream(inputStream, j, b, dictionarySize$1);
        }
        throw new IOException(ConnectivityModuleConnector$$ExternalSyntheticOutline0.m("Dictionary larger than 4GiB maximum size used in ", str));
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public final Object getOptionsFromCoder(Coder coder) {
        int i = coder.properties[0] & 255;
        int i2 = i / 45;
        int i3 = i - (i2 * 45);
        int i4 = i3 / 9;
        int i5 = i3 - (i4 * 9);
        LZMA2Options lZMA2Options = new LZMA2Options();
        try {
            lZMA2Options.dictSize = LZMA2Options.presetToDictSize[6];
            if (i2 < 0 || i2 > 4) {
                throw new UnsupportedOptionsException(VibrationParam$1$$ExternalSyntheticOutline0.m(i2, "pb must not exceed 4: "));
            }
            if (i5 < 0 || i4 < 0 || i5 > 4 || i4 > 4 || i5 + i4 > 4) {
                throw new UnsupportedOptionsException(ArrayUtils$$ExternalSyntheticOutline0.m(i5, i4, "lc + lp must not exceed 4: ", " + "));
            }
            int dictionarySize$1 = getDictionarySize$1(coder);
            if (dictionarySize$1 < 4096) {
                throw new UnsupportedOptionsException(BinaryTransparencyService$$ExternalSyntheticOutline0.m(dictionarySize$1, "LZMA2 dictionary size must be at least 4 KiB: ", " B"));
            }
            if (dictionarySize$1 > 805306368) {
                throw new UnsupportedOptionsException(BinaryTransparencyService$$ExternalSyntheticOutline0.m(dictionarySize$1, "LZMA2 dictionary size must not exceed 768 MiB: ", " B"));
            }
            lZMA2Options.dictSize = dictionarySize$1;
            return lZMA2Options;
        } catch (UnsupportedOptionsException unused) {
            throw new RuntimeException();
        }
    }
}
