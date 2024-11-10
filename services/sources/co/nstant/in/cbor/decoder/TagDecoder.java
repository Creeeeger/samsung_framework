package co.nstant.in.cbor.decoder;

import co.nstant.in.cbor.CborDecoder;
import co.nstant.in.cbor.model.Tag;
import java.io.InputStream;

/* loaded from: classes.dex */
public class TagDecoder extends AbstractDecoder {
    public TagDecoder(CborDecoder cborDecoder, InputStream inputStream) {
        super(cborDecoder, inputStream);
    }

    public Tag decode(int i) {
        return new Tag(getLength(i));
    }
}
