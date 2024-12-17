package co.nstant.in.cbor.encoder;

import co.nstant.in.cbor.model.MajorType;
import co.nstant.in.cbor.model.SimpleValue;
import co.nstant.in.cbor.model.UnicodeString;
import java.nio.charset.StandardCharsets;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class UnicodeStringEncoder extends AbstractEncoder {
    public final void encode(UnicodeString unicodeString) {
        boolean z = unicodeString.chunked;
        MajorType majorType = MajorType.UNICODE_STRING;
        String str = unicodeString.string;
        if (z) {
            encodeTypeChunked(majorType);
            if (str != null) {
                encode(new UnicodeString(str));
                return;
            }
            return;
        }
        if (str == null) {
            this.encoder.encode(SimpleValue.NULL);
            return;
        }
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        encodeTypeAndLength(majorType, bytes.length);
        write(bytes);
    }
}
