package co.nstant.in.cbor.decoder;

import co.nstant.in.cbor.CborDecoder;
import co.nstant.in.cbor.CborException;
import co.nstant.in.cbor.model.Array;
import co.nstant.in.cbor.model.DataItem;
import co.nstant.in.cbor.model.Special;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ArrayDecoder extends AbstractDecoder {
    public ArrayDecoder(CborDecoder cborDecoder, InputStream inputStream) {
        super(cborDecoder, inputStream);
    }

    public Array decode(int i) {
        long length = getLength(i);
        if (length == -1) {
            return decodeInfinitiveLength();
        }
        return decodeFixedLength(length);
    }

    public final Array decodeInfinitiveLength() {
        Array array = new Array();
        array.setChunked(true);
        if (this.decoder.isAutoDecodeInfinitiveArrays()) {
            while (true) {
                DataItem decodeNext = this.decoder.decodeNext();
                if (decodeNext == null) {
                    throw new CborException("Unexpected end of stream");
                }
                Special special = Special.BREAK;
                if (special.equals(decodeNext)) {
                    array.add(special);
                    break;
                }
                array.add(decodeNext);
            }
        }
        return array;
    }

    public final Array decodeFixedLength(long j) {
        Array array = new Array();
        for (long j2 = 0; j2 < j; j2++) {
            DataItem decodeNext = this.decoder.decodeNext();
            if (decodeNext == null) {
                throw new CborException("Unexpected end of stream");
            }
            array.add(decodeNext);
        }
        return array;
    }
}
