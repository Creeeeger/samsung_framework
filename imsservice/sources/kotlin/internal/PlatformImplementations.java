package kotlin.internal;

import java.lang.reflect.Method;
import java.util.regex.MatchResult;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.FallbackThreadLocalRandom;
import kotlin.random.Random;
import kotlin.text.MatchGroup;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: PlatformImplementations.kt */
/* loaded from: classes.dex */
public class PlatformImplementations {

    /* compiled from: PlatformImplementations.kt */
    private static final class ReflectThrowable {

        @NotNull
        public static final ReflectThrowable INSTANCE = new ReflectThrowable();

        @Nullable
        public static final Method addSuppressed;

        @Nullable
        public static final Method getSuppressed;

        private ReflectThrowable() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0040 A[LOOP:0: B:2:0x0016->B:10:0x0040, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0044 A[EDGE_INSN: B:11:0x0044->B:12:0x0044 BREAK  A[LOOP:0: B:2:0x0016->B:10:0x0040], SYNTHETIC] */
        static {
            /*
                kotlin.internal.PlatformImplementations$ReflectThrowable r0 = new kotlin.internal.PlatformImplementations$ReflectThrowable
                r0.<init>()
                kotlin.internal.PlatformImplementations.ReflectThrowable.INSTANCE = r0
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                java.lang.String r2 = "throwableMethods"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                int r2 = r1.length
                r3 = 0
                r4 = r3
            L16:
                r5 = 0
                if (r4 >= r2) goto L43
                r6 = r1[r4]
                java.lang.String r7 = r6.getName()
                java.lang.String r8 = "addSuppressed"
                boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)
                if (r7 == 0) goto L3c
                java.lang.Class[] r7 = r6.getParameterTypes()
                java.lang.String r8 = "it.parameterTypes"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r8)
                java.lang.Object r7 = kotlin.collections.ArraysKt.singleOrNull(r7)
                boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r0)
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
                kotlin.internal.PlatformImplementations.ReflectThrowable.addSuppressed = r6
                int r0 = r1.length
            L47:
                if (r3 >= r0) goto L5c
                r2 = r1[r3]
                java.lang.String r4 = r2.getName()
                java.lang.String r6 = "getSuppressed"
                boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r6)
                if (r4 == 0) goto L59
                r5 = r2
                goto L5c
            L59:
                int r3 = r3 + 1
                goto L47
            L5c:
                kotlin.internal.PlatformImplementations.ReflectThrowable.getSuppressed = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.internal.PlatformImplementations.ReflectThrowable.<clinit>():void");
        }
    }

    public void addSuppressed(@NotNull Throwable cause, @NotNull Throwable exception) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Method method = ReflectThrowable.addSuppressed;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
    
        r1 = kotlin.collections.ArraysKt___ArraysJvmKt.asList((java.lang.Throwable[]) r1);
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<java.lang.Throwable> getSuppressed(@org.jetbrains.annotations.NotNull java.lang.Throwable r2) {
        /*
            r1 = this;
            java.lang.String r1 = "exception"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            java.lang.reflect.Method r1 = kotlin.internal.PlatformImplementations.ReflectThrowable.getSuppressed
            if (r1 == 0) goto L1a
            r0 = 0
            java.lang.Object[] r0 = new java.lang.Object[r0]
            java.lang.Object r1 = r1.invoke(r2, r0)
            if (r1 == 0) goto L1a
            java.lang.Throwable[] r1 = (java.lang.Throwable[]) r1
            java.util.List r1 = kotlin.collections.ArraysKt.asList(r1)
            if (r1 != 0) goto L1e
        L1a:
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
        L1e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.internal.PlatformImplementations.getSuppressed(java.lang.Throwable):java.util.List");
    }

    @Nullable
    public MatchGroup getMatchResultNamedGroup(@NotNull MatchResult matchResult, @NotNull String name) {
        Intrinsics.checkNotNullParameter(matchResult, "matchResult");
        Intrinsics.checkNotNullParameter(name, "name");
        throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
    }

    @NotNull
    public Random defaultPlatformRandom() {
        return new FallbackThreadLocalRandom();
    }
}
