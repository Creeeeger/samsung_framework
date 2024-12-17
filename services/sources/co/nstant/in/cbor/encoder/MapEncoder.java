package co.nstant.in.cbor.encoder;

import java.util.Comparator;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class MapEncoder extends AbstractEncoder {

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    /* renamed from: co.nstant.in.cbor.encoder.MapEncoder$1, reason: invalid class name */
    public final class AnonymousClass1 implements Comparator {
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = (byte[]) obj2;
            if (bArr.length < bArr2.length) {
                return -1;
            }
            if (bArr.length <= bArr2.length) {
                for (int i = 0; i < bArr.length; i++) {
                    byte b = bArr[i];
                    byte b2 = bArr2[i];
                    if (b < b2) {
                        return -1;
                    }
                    if (b <= b2) {
                    }
                }
                return 0;
            }
            return 1;
        }
    }
}
