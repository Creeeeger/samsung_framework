package okio;

import java.io.Closeable;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* compiled from: Source.kt */
/* loaded from: classes.dex */
public interface Source extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long read(@NotNull Buffer buffer, long j) throws IOException;

    @NotNull
    Timeout timeout();
}
