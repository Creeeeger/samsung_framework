package javax.activation;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public interface DataContentHandler {
    void writeTo(Object obj, String str, OutputStream outputStream) throws IOException;
}
