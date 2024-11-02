package kotlin.internal;

import java.lang.reflect.Method;
import kotlin.random.FallbackThreadLocalRandom;
import kotlin.random.Random;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class PlatformImplementations {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class ReflectThrowable {
        public static final Method addSuppressed;

        /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
        
            if (kotlin.jvm.internal.Intrinsics.areEqual(r5, java.lang.Throwable.class) != false) goto L14;
         */
        static {
            /*
                kotlin.internal.PlatformImplementations$ReflectThrowable r0 = new kotlin.internal.PlatformImplementations$ReflectThrowable
                r0.<init>()
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                int r2 = r1.length
                r3 = 0
                r4 = r3
            Le:
                r5 = 0
                if (r4 >= r2) goto L38
                r6 = r1[r4]
                java.lang.String r7 = r6.getName()
                java.lang.String r8 = "addSuppressed"
                boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)
                if (r7 == 0) goto L30
                java.lang.Class[] r7 = r6.getParameterTypes()
                int r8 = r7.length
                r9 = 1
                if (r8 != r9) goto L29
                r5 = r7[r3]
            L29:
                boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
                if (r5 == 0) goto L30
                goto L31
            L30:
                r9 = r3
            L31:
                if (r9 == 0) goto L35
                r5 = r6
                goto L38
            L35:
                int r4 = r4 + 1
                goto Le
            L38:
                kotlin.internal.PlatformImplementations.ReflectThrowable.addSuppressed = r5
                int r0 = r1.length
            L3b:
                if (r3 >= r0) goto L4f
                r2 = r1[r3]
                java.lang.String r2 = r2.getName()
                java.lang.String r4 = "getSuppressed"
                boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)
                if (r2 == 0) goto L4c
                goto L4f
            L4c:
                int r3 = r3 + 1
                goto L3b
            L4f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.internal.PlatformImplementations.ReflectThrowable.<clinit>():void");
        }

        private ReflectThrowable() {
        }
    }

    public void addSuppressed(Throwable th, Throwable th2) {
        Method method = ReflectThrowable.addSuppressed;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    public Random defaultPlatformRandom() {
        return new FallbackThreadLocalRandom();
    }
}
