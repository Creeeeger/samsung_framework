package co.nstant.in.cbor.encoder;

import co.nstant.in.cbor.CborEncoder;
import co.nstant.in.cbor.model.MajorType;
import co.nstant.in.cbor.model.Tag;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class TagEncoder extends AbstractEncoder {
    public TagEncoder(CborEncoder cborEncoder, OutputStream outputStream) {
        super(cborEncoder, outputStream);
    }

    public void encode(Tag tag) {
        encodeTypeAndLength(MajorType.TAG, tag.getValue());
    }
}
