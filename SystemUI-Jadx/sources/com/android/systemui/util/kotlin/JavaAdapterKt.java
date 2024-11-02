package com.android.systemui.util.kotlin;

import android.view.View;
import androidx.lifecycle.Lifecycle;
import com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;
import com.android.systemui.lifecycle.RepeatWhenAttachedKt;
import com.android.systemui.shade.NotificationShadeWindowViewController$$ExternalSyntheticLambda0;
import java.util.function.Consumer;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class JavaAdapterKt {
    public static final void collectFlow(View view, KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1 keyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1, NotificationShadeWindowViewController$$ExternalSyntheticLambda0 notificationShadeWindowViewController$$ExternalSyntheticLambda0) {
        RepeatWhenAttachedKt.repeatWhenAttached(view, EmptyCoroutineContext.INSTANCE, new JavaAdapterKt$collectFlow$1(Lifecycle.State.CREATED, keyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1, notificationShadeWindowViewController$$ExternalSyntheticLambda0, null));
    }

    public static final void collectFlow(View view, Flow flow, Consumer consumer, CoroutineDispatcher coroutineDispatcher) {
        RepeatWhenAttachedKt.repeatWhenAttached(view, coroutineDispatcher, new JavaAdapterKt$collectFlow$1(Lifecycle.State.CREATED, flow, consumer, null));
    }
}
