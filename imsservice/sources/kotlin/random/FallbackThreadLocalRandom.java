package kotlin.random;

import org.jetbrains.annotations.NotNull;

/* compiled from: PlatformRandom.kt */
/* loaded from: classes.dex */
public final class FallbackThreadLocalRandom extends AbstractPlatformRandom {

    @NotNull
    private final FallbackThreadLocalRandom$implStorage$1 implStorage = new ThreadLocal<java.util.Random>() { // from class: kotlin.random.FallbackThreadLocalRandom$implStorage$1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        @NotNull
        public java.util.Random initialValue() {
            return new java.util.Random();
        }
    };
}
