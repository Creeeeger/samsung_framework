package co.nstant.in.cbor.decoder;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import co.nstant.in.cbor.CborDecoder;
import co.nstant.in.cbor.model.DoublePrecisionFloat;
import java.io.InputStream;

/* loaded from: classes.dex */
public class DoublePrecisionFloatDecoder extends AbstractDecoder {
    public DoublePrecisionFloatDecoder(CborDecoder cborDecoder, InputStream inputStream) {
        super(cborDecoder, inputStream);
    }

    public DoublePrecisionFloat decode(int i) {
        return new DoublePrecisionFloat(Double.longBitsToDouble((nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) | (((((((((((((((nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) | 0) << 8) | (nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8)));
    }
}
