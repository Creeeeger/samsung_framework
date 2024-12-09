package javax.activation;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public interface DataSource {
    String getContentType();

    InputStream getInputStream() throws IOException;
}
