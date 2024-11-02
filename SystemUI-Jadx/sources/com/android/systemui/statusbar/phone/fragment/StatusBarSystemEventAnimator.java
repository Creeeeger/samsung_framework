package com.android.systemui.statusbar.phone.fragment;

import android.content.res.Resources;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarSystemEventAnimator extends StatusBarSystemEventDefaultAnimator {
    public final View animatedView;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.fragment.StatusBarSystemEventAnimator$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1 {
        public AnonymousClass1(Object obj) {
            super(1, obj, View.class, "setAlpha", "setAlpha(F)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            ((View) this.receiver).setAlpha(((Number) obj).floatValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.fragment.StatusBarSystemEventAnimator$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1 {
        public AnonymousClass2(Object obj) {
            super(1, obj, View.class, "setTranslationX", "setTranslationX(F)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            ((View) this.receiver).setTranslationX(((Number) obj).floatValue());
            return Unit.INSTANCE;
        }
    }

    public StatusBarSystemEventAnimator(View view, Resources resources) {
        this(view, resources, false, 4, null);
    }

    public /* synthetic */ StatusBarSystemEventAnimator(View view, Resources resources, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, resources, (i & 4) != 0 ? false : z);
    }

    public StatusBarSystemEventAnimator(View view, Resources resources, boolean z) {
        super(resources, new AnonymousClass1(view), new AnonymousClass2(view), z);
        this.animatedView = view;
    }
}
