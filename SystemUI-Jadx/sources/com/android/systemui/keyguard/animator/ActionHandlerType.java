package com.android.systemui.keyguard.animator;

import android.view.MotionEvent;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ActionHandlerType {
    public static final Companion Companion = new Companion(null);
    public final KeyguardTouchAnimator parent;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ActionHandlerType(KeyguardTouchAnimator keyguardTouchAnimator) {
        this.parent = keyguardTouchAnimator;
    }

    public abstract boolean handleMotionEvent(MotionEvent motionEvent);
}
