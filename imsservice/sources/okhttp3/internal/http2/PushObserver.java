package okhttp3.internal.http2;

import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;

/* compiled from: PushObserver.kt */
/* loaded from: classes.dex */
public interface PushObserver {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    public static final PushObserver CANCEL = new Companion.PushObserverCancel();

    boolean onData(int i, @NotNull BufferedSource bufferedSource, int i2, boolean z) throws IOException;

    boolean onHeaders(int i, @NotNull List<Header> list, boolean z);

    boolean onRequest(int i, @NotNull List<Header> list);

    void onReset(int i, @NotNull ErrorCode errorCode);

    /* compiled from: PushObserver.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* compiled from: PushObserver.kt */
        private static final class PushObserverCancel implements PushObserver {
            @Override // okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int i, @NotNull List<Header> responseHeaders, boolean z) {
                Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onRequest(int i, @NotNull List<Header> requestHeaders) {
                Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public void onReset(int i, @NotNull ErrorCode errorCode) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onData(int i, @NotNull BufferedSource source, int i2, boolean z) throws IOException {
                Intrinsics.checkNotNullParameter(source, "source");
                source.skip(i2);
                return true;
            }
        }
    }
}
