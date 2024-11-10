package co.nstant.in.cbor.encoder;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import android.os.IInstalld;
import co.nstant.in.cbor.CborEncoder;
import co.nstant.in.cbor.model.HalfPrecisionFloat;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class HalfPrecisionFloatEncoder extends AbstractEncoder {
    public HalfPrecisionFloatEncoder(CborEncoder cborEncoder, OutputStream outputStream) {
        super(cborEncoder, outputStream);
    }

    public void encode(HalfPrecisionFloat halfPrecisionFloat) {
        write(249);
        int fromFloat = fromFloat(halfPrecisionFloat.getValue());
        write((fromFloat >> 8) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
        write((fromFloat >> 0) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
    }

    public static int fromFloat(float f) {
        int floatToIntBits = Float.floatToIntBits(f);
        int i = (floatToIntBits >>> 16) & 32768;
        int i2 = (floatToIntBits + IInstalld.FLAG_USE_QUOTA) & Integer.MAX_VALUE;
        if (i2 >= 1199570944) {
            if ((Integer.MAX_VALUE & floatToIntBits) < 1199570944) {
                return i | 31743;
            }
            if (i2 < 2139095040) {
                return i | 31744;
            }
            return ((floatToIntBits & 8388607) >>> 13) | i | 31744;
        }
        if (i2 >= 947912704) {
            return ((i2 - 939524096) >>> 13) | i;
        }
        if (i2 < 855638016) {
            return i;
        }
        int i3 = (floatToIntBits & Integer.MAX_VALUE) >>> 23;
        return ((((floatToIntBits & 8388607) | 8388608) + (8388608 >>> (i3 - 102))) >>> (126 - i3)) | i;
    }
}
