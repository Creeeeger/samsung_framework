package androidx.picker.loader;

import androidx.picker.features.observable.UpdateMutableState;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.flow.Flow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppIconFlow implements Flow {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final UpdateMutableState base;
    public final Flow defaultIconFlow;

    static {
        MutablePropertyReference0Impl mutablePropertyReference0Impl = new MutablePropertyReference0Impl(AppIconFlow.class, "icon", "<v#0>", 0);
        Reflection.factory.getClass();
        $$delegatedProperties = new KProperty[]{mutablePropertyReference0Impl};
    }

    public AppIconFlow(UpdateMutableState updateMutableState, Flow flow) {
        this.base = updateMutableState;
        this.defaultIconFlow = flow;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object collect(final kotlinx.coroutines.flow.FlowCollector r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.picker.loader.AppIconFlow$collect$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.picker.loader.AppIconFlow$collect$1 r0 = (androidx.picker.loader.AppIconFlow$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.picker.loader.AppIconFlow$collect$1 r0 = new androidx.picker.loader.AppIconFlow$collect$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L45
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r8)
            goto L82
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            java.lang.Object r6 = r0.L$2
            androidx.picker.features.observable.UpdateMutableState r6 = (androidx.picker.features.observable.UpdateMutableState) r6
            java.lang.Object r7 = r0.L$1
            kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
            java.lang.Object r2 = r0.L$0
            androidx.picker.loader.AppIconFlow r2 = (androidx.picker.loader.AppIconFlow) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r6
            r6 = r2
            goto L66
        L45:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.reflect.KProperty[] r8 = androidx.picker.loader.AppIconFlow.$$delegatedProperties
            r2 = 0
            r8 = r8[r2]
            androidx.picker.features.observable.UpdateMutableState r8 = r6.base
            java.lang.Object r2 = r8.getValue()
            android.graphics.drawable.Drawable r2 = (android.graphics.drawable.Drawable) r2
            if (r2 == 0) goto L69
            r0.L$0 = r6
            r0.L$1 = r7
            r0.L$2 = r8
            r0.label = r4
            java.lang.Object r2 = r7.emit(r2, r0)
            if (r2 != r1) goto L66
            return r1
        L66:
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            goto L6a
        L69:
            r2 = r5
        L6a:
            if (r2 != 0) goto L85
            kotlinx.coroutines.flow.Flow r6 = r6.defaultIconFlow
            androidx.picker.loader.AppIconFlow$collect$3 r2 = new androidx.picker.loader.AppIconFlow$collect$3
            r2.<init>()
            r0.L$0 = r5
            r0.L$1 = r5
            r0.L$2 = r5
            r0.label = r3
            java.lang.Object r6 = r6.collect(r2, r0)
            if (r6 != r1) goto L82
            return r1
        L82:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L85:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker.loader.AppIconFlow.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
