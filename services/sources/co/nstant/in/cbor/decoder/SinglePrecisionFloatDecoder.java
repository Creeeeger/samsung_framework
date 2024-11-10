package co.nstant.in.cbor.decoder;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import co.nstant.in.cbor.CborDecoder;
import co.nstant.in.cbor.model.SinglePrecisionFloat;
import java.io.InputStream;

/* loaded from: classes.dex */
public class SinglePrecisionFloatDecoder extends AbstractDecoder {
    public SinglePrecisionFloatDecoder(CborDecoder cborDecoder, InputStream inputStream) {
        super(cborDecoder, inputStream);
    }

    public SinglePrecisionFloat decode(int i) {
        return new SinglePrecisionFloat(Float.intBitsToFloat((nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) | (((((((nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) | 0) << 8) | (nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8)));
    }
}
