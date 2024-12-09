package okhttp3;

import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;

/* compiled from: Credentials.kt */
/* loaded from: classes.dex */
public final class Credentials {

    @NotNull
    public static final Credentials INSTANCE = new Credentials();

    private Credentials() {
    }

    @NotNull
    public static final String basic(@NotNull String username, @NotNull String password, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return Intrinsics.stringPlus("Basic ", ByteString.Companion.encodeString(username + ':' + password, charset).base64());
    }
}
