package com.android.server.permission.jarjar.kotlin.internal;

import com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics;
import java.lang.reflect.Method;

/* compiled from: PlatformImplementations.kt */
/* loaded from: classes2.dex */
public class PlatformImplementations {

    /* compiled from: PlatformImplementations.kt */
    /* loaded from: classes2.dex */
    public final class ReflectThrowable {
        public static final ReflectThrowable INSTANCE = new ReflectThrowable();
        public static final Method addSuppressed;
        public static final Method getSuppressed;

        /* JADX WARN: Removed duplicated region for block: B:10:0x0040 A[LOOP:0: B:2:0x0016->B:10:0x0040, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0044 A[EDGE_INSN: B:11:0x0044->B:12:0x0044 BREAK  A[LOOP:0: B:2:0x0016->B:10:0x0040], SYNTHETIC] */
        static {
            /*
                com.android.server.permission.jarjar.kotlin.internal.PlatformImplementations$ReflectThrowable r0 = new com.android.server.permission.jarjar.kotlin.internal.PlatformImplementations$ReflectThrowable
                r0.<init>()
                com.android.server.permission.jarjar.kotlin.internal.PlatformImplementations.ReflectThrowable.INSTANCE = r0
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                java.lang.String r2 = "throwableMethods"
                com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                int r2 = r1.length
                r3 = 0
                r4 = r3
            L16:
                r5 = 0
                if (r4 >= r2) goto L43
                r6 = r1[r4]
                java.lang.String r7 = r6.getName()
                java.lang.String r8 = "addSuppressed"
                boolean r7 = com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)
                if (r7 == 0) goto L3c
                java.lang.Class[] r7 = r6.getParameterTypes()
                java.lang.String r8 = "it.parameterTypes"
                com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r8)
                java.lang.Object r7 = com.android.server.permission.jarjar.kotlin.collections.ArraysKt___ArraysKt.singleOrNull(r7)
                boolean r7 = com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics.areEqual(r7, r0)
                if (r7 == 0) goto L3c
                r7 = 1
                goto L3d
            L3c:
                r7 = r3
            L3d:
                if (r7 == 0) goto L40
                goto L44
            L40:
                int r4 = r4 + 1
                goto L16
            L43:
                r6 = r5
            L44:
                com.android.server.permission.jarjar.kotlin.internal.PlatformImplementations.ReflectThrowable.addSuppressed = r6
                int r0 = r1.length
            L47:
                if (r3 >= r0) goto L5c
                r2 = r1[r3]
                java.lang.String r4 = r2.getName()
                java.lang.String r6 = "getSuppressed"
                boolean r4 = com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics.areEqual(r4, r6)
                if (r4 == 0) goto L59
                r5 = r2
                goto L5c
            L59:
                int r3 = r3 + 1
                goto L47
            L5c:
                com.android.server.permission.jarjar.kotlin.internal.PlatformImplementations.ReflectThrowable.getSuppressed = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.jarjar.kotlin.internal.PlatformImplementations.ReflectThrowable.<clinit>():void");
        }
    }

    public void addSuppressed(Throwable th, Throwable th2) {
        Intrinsics.checkNotNullParameter(th, "cause");
        Intrinsics.checkNotNullParameter(th2, "exception");
        Method method = ReflectThrowable.addSuppressed;
        if (method != null) {
            method.invoke(th, th2);
        }
    }
}
