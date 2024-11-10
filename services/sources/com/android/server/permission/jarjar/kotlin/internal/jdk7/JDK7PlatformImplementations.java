package com.android.server.permission.jarjar.kotlin.internal.jdk7;

import com.android.server.permission.jarjar.kotlin.internal.PlatformImplementations;
import com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics;

/* compiled from: JDK7PlatformImplementations.kt */
/* loaded from: classes2.dex */
public class JDK7PlatformImplementations extends PlatformImplementations {

    /* compiled from: JDK7PlatformImplementations.kt */
    /* loaded from: classes2.dex */
    public final class ReflectSdkVersion {
        public static final ReflectSdkVersion INSTANCE = new ReflectSdkVersion();
        public static final Integer sdkVersion;

        /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
        static {
            /*
                com.android.server.permission.jarjar.kotlin.internal.jdk7.JDK7PlatformImplementations$ReflectSdkVersion r0 = new com.android.server.permission.jarjar.kotlin.internal.jdk7.JDK7PlatformImplementations$ReflectSdkVersion
                r0.<init>()
                com.android.server.permission.jarjar.kotlin.internal.jdk7.JDK7PlatformImplementations.ReflectSdkVersion.INSTANCE = r0
                r0 = 0
                java.lang.String r1 = "android.os.Build$VERSION"
                java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L1f
                java.lang.String r2 = "SDK_INT"
                java.lang.reflect.Field r1 = r1.getField(r2)     // Catch: java.lang.Throwable -> L1f
                java.lang.Object r1 = r1.get(r0)     // Catch: java.lang.Throwable -> L1f
                boolean r2 = r1 instanceof java.lang.Integer     // Catch: java.lang.Throwable -> L1f
                if (r2 == 0) goto L1f
                java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L1f
                goto L20
            L1f:
                r1 = r0
            L20:
                if (r1 == 0) goto L2e
                int r2 = r1.intValue()
                if (r2 <= 0) goto L2a
                r2 = 1
                goto L2b
            L2a:
                r2 = 0
            L2b:
                if (r2 == 0) goto L2e
                r0 = r1
            L2e:
                com.android.server.permission.jarjar.kotlin.internal.jdk7.JDK7PlatformImplementations.ReflectSdkVersion.sdkVersion = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.jarjar.kotlin.internal.jdk7.JDK7PlatformImplementations.ReflectSdkVersion.<clinit>():void");
        }
    }

    public final boolean sdkIsNullOrAtLeast(int i) {
        Integer num = ReflectSdkVersion.sdkVersion;
        return num == null || num.intValue() >= i;
    }

    @Override // com.android.server.permission.jarjar.kotlin.internal.PlatformImplementations
    public void addSuppressed(Throwable th, Throwable th2) {
        Intrinsics.checkNotNullParameter(th, "cause");
        Intrinsics.checkNotNullParameter(th2, "exception");
        if (sdkIsNullOrAtLeast(19)) {
            th.addSuppressed(th2);
        } else {
            super.addSuppressed(th, th2);
        }
    }
}
