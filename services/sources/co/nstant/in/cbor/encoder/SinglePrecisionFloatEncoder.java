package co.nstant.in.cbor.encoder;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import co.nstant.in.cbor.CborEncoder;
import co.nstant.in.cbor.model.SinglePrecisionFloat;
import com.android.internal.util.FrameworkStatsLog;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class SinglePrecisionFloatEncoder extends AbstractEncoder {
    public SinglePrecisionFloatEncoder(CborEncoder cborEncoder, OutputStream outputStream) {
        super(cborEncoder, outputStream);
    }

    public void encode(SinglePrecisionFloat singlePrecisionFloat) {
        write(FrameworkStatsLog.CAMERA_SHOT_LATENCY_REPORTED__MODE__CONTROL_DS_MODE_MACRO_RAW_SR_MERGE);
        int floatToRawIntBits = Float.floatToRawIntBits(singlePrecisionFloat.getValue());
        write((floatToRawIntBits >> 24) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
        write((floatToRawIntBits >> 16) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
        write((floatToRawIntBits >> 8) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
        write((floatToRawIntBits >> 0) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
    }
}
