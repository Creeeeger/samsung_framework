package co.nstant.in.cbor.decoder;

import co.nstant.in.cbor.CborDecoder;
import co.nstant.in.cbor.CborException;
import co.nstant.in.cbor.model.DataItem;
import co.nstant.in.cbor.model.Map;
import java.io.InputStream;

/* loaded from: classes.dex */
public class MapDecoder extends AbstractDecoder {
    public MapDecoder(CborDecoder cborDecoder, InputStream inputStream) {
        super(cborDecoder, inputStream);
    }

    public Map decode(int i) {
        long length = getLength(i);
        if (length == -1) {
            return decodeInfinitiveLength();
        }
        return decodeFixedLength(length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004c, code lost:
    
        throw new co.nstant.in.cbor.CborException("Unexpected end of stream");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final co.nstant.in.cbor.model.Map decodeInfinitiveLength() {
        /*
            r4 = this;
            co.nstant.in.cbor.model.Map r0 = new co.nstant.in.cbor.model.Map
            r0.<init>()
            r1 = 1
            r0.setChunked(r1)
            co.nstant.in.cbor.CborDecoder r1 = r4.decoder
            boolean r1 = r1.isAutoDecodeInfinitiveMaps()
            if (r1 == 0) goto L4d
        L11:
            co.nstant.in.cbor.CborDecoder r1 = r4.decoder
            co.nstant.in.cbor.model.DataItem r1 = r1.decodeNext()
            co.nstant.in.cbor.model.Special r2 = co.nstant.in.cbor.model.Special.BREAK
            boolean r2 = r2.equals(r1)
            if (r2 == 0) goto L20
            goto L4d
        L20:
            co.nstant.in.cbor.CborDecoder r2 = r4.decoder
            co.nstant.in.cbor.model.DataItem r2 = r2.decodeNext()
            if (r1 == 0) goto L45
            if (r2 == 0) goto L45
            co.nstant.in.cbor.CborDecoder r3 = r4.decoder
            boolean r3 = r3.isRejectDuplicateKeys()
            if (r3 == 0) goto L41
            co.nstant.in.cbor.model.DataItem r3 = r0.get(r1)
            if (r3 != 0) goto L39
            goto L41
        L39:
            co.nstant.in.cbor.CborException r4 = new co.nstant.in.cbor.CborException
            java.lang.String r0 = "Duplicate key found in map"
            r4.<init>(r0)
            throw r4
        L41:
            r0.put(r1, r2)
            goto L11
        L45:
            co.nstant.in.cbor.CborException r4 = new co.nstant.in.cbor.CborException
            java.lang.String r0 = "Unexpected end of stream"
            r4.<init>(r0)
            throw r4
        L4d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: co.nstant.in.cbor.decoder.MapDecoder.decodeInfinitiveLength():co.nstant.in.cbor.model.Map");
    }

    public final Map decodeFixedLength(long j) {
        Map map = new Map((int) j);
        for (long j2 = 0; j2 < j; j2++) {
            DataItem decodeNext = this.decoder.decodeNext();
            DataItem decodeNext2 = this.decoder.decodeNext();
            if (decodeNext == null || decodeNext2 == null) {
                throw new CborException("Unexpected end of stream");
            }
            if (this.decoder.isRejectDuplicateKeys() && map.get(decodeNext) != null) {
                throw new CborException("Duplicate key found in map");
            }
            map.put(decodeNext, decodeNext2);
        }
        return map;
    }
}
