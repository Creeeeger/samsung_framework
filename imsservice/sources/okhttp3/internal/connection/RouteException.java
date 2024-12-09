package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* compiled from: RouteException.kt */
/* loaded from: classes.dex */
public final class RouteException extends RuntimeException {

    @NotNull
    private final IOException firstConnectException;

    @NotNull
    private IOException lastConnectException;

    @NotNull
    public final IOException getFirstConnectException() {
        return this.firstConnectException;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RouteException(@NotNull IOException firstConnectException) {
        super(firstConnectException);
        Intrinsics.checkNotNullParameter(firstConnectException, "firstConnectException");
        this.firstConnectException = firstConnectException;
        this.lastConnectException = firstConnectException;
    }

    @NotNull
    public final IOException getLastConnectException() {
        return this.lastConnectException;
    }

    public final void addConnectException(@NotNull IOException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        ExceptionsKt__ExceptionsKt.addSuppressed(this.firstConnectException, e);
        this.lastConnectException = e;
    }
}
