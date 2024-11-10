package co.nstant.in.cbor.encoder;

import co.nstant.in.cbor.CborEncoder;
import co.nstant.in.cbor.model.Array;
import co.nstant.in.cbor.model.DataItem;
import co.nstant.in.cbor.model.MajorType;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ArrayEncoder extends AbstractEncoder {
    public ArrayEncoder(CborEncoder cborEncoder, OutputStream outputStream) {
        super(cborEncoder, outputStream);
    }

    public void encode(Array array) {
        List dataItems = array.getDataItems();
        if (array.isChunked()) {
            encodeTypeChunked(MajorType.ARRAY);
        } else {
            encodeTypeAndLength(MajorType.ARRAY, dataItems.size());
        }
        Iterator it = dataItems.iterator();
        while (it.hasNext()) {
            this.encoder.encode((DataItem) it.next());
        }
    }
}
