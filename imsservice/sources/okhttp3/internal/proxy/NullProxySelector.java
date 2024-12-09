package okhttp3.internal.proxy;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: NullProxySelector.kt */
/* loaded from: classes.dex */
public final class NullProxySelector extends ProxySelector {

    @NotNull
    public static final NullProxySelector INSTANCE = new NullProxySelector();

    @Override // java.net.ProxySelector
    public void connectFailed(@Nullable URI uri, @Nullable SocketAddress socketAddress, @Nullable IOException iOException) {
    }

    private NullProxySelector() {
    }

    @Override // java.net.ProxySelector
    @NotNull
    public List<Proxy> select(@Nullable URI uri) {
        if (uri == null) {
            throw new IllegalArgumentException("uri must not be null".toString());
        }
        return CollectionsKt__CollectionsJVMKt.listOf(Proxy.NO_PROXY);
    }
}
