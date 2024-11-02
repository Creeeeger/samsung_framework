package com.android.systemui.util.wrapper;

import android.content.Context;
import android.os.Trace;
import android.util.AttributeSet;
import com.airbnb.lottie.LottieAnimationView;
import kotlin.jvm.internal.Reflection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class LottieViewWrapper extends LottieAnimationView {
    public LottieViewWrapper(Context context) {
        super(context);
    }

    @Override // com.airbnb.lottie.LottieAnimationView, android.view.View
    public final void invalidate() {
        String str = Reflection.getOrCreateKotlinClass(getClass()) + " invalidate";
        if (Trace.isTagEnabled(4096L)) {
            Trace.traceBegin(4096L, str);
            try {
                super.invalidate();
                return;
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        super.invalidate();
    }

    public LottieViewWrapper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LottieViewWrapper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
