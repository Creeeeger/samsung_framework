package androidx.concurrent.futures;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ResolvableFuture extends AbstractResolvableFuture {
    private ResolvableFuture() {
    }

    public static ResolvableFuture create() {
        return new ResolvableFuture();
    }

    public final boolean set(Object obj) {
        if (obj == null) {
            obj = AbstractResolvableFuture.NULL;
        }
        if (AbstractResolvableFuture.ATOMIC_HELPER.casValue(this, null, obj)) {
            AbstractResolvableFuture.complete(this);
            return true;
        }
        return false;
    }
}
