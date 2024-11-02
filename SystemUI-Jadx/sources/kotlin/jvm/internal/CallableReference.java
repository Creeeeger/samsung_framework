package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.reflect.KCallable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class CallableReference implements KCallable, Serializable {
    public static final Object NO_RECEIVER = NoReceiver.INSTANCE;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    public transient KCallable reflected;
    private final String signature;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static class NoReceiver implements Serializable {
        public static final NoReceiver INSTANCE = new NoReceiver();

        private NoReceiver() {
        }

        private Object readResolve() {
            return INSTANCE;
        }
    }

    public CallableReference() {
        this(NO_RECEIVER);
    }

    public final KCallable compute() {
        KCallable kCallable = this.reflected;
        if (kCallable == null) {
            KCallable computeReflected = computeReflected();
            this.reflected = computeReflected;
            return computeReflected;
        }
        return kCallable;
    }

    public abstract KCallable computeReflected();

    public final String getName() {
        return this.name;
    }

    public final ClassBasedDeclarationContainer getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (this.isTopLevel) {
            Reflection.factory.getClass();
            return new PackageReference(cls, "");
        }
        return Reflection.getOrCreateKotlinClass(cls);
    }

    public final String getSignature() {
        return this.signature;
    }

    public CallableReference(Object obj) {
        this(obj, null, null, null, false);
    }

    public CallableReference(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }
}
