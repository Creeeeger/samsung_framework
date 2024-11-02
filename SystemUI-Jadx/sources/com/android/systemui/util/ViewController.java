package com.android.systemui.util;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class ViewController {
    public boolean mInited;
    public final AnonymousClass1 mOnAttachStateListener = new AnonymousClass1();
    public View mView;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.util.ViewController$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements View.OnAttachStateChangeListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            ViewController.this.onViewAttached();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            ViewController.this.onViewDetached();
        }
    }

    public ViewController(View view) {
        this.mView = view;
    }

    public Context getContext() {
        return this.mView.getContext();
    }

    public final Resources getResources() {
        return this.mView.getResources();
    }

    public final void init() {
        if (this.mInited) {
            return;
        }
        onInit();
        boolean z = true;
        this.mInited = true;
        View view = this.mView;
        if (view == null || !view.isAttachedToWindow()) {
            z = false;
        }
        AnonymousClass1 anonymousClass1 = this.mOnAttachStateListener;
        if (z) {
            anonymousClass1.onViewAttachedToWindow(this.mView);
        }
        View view2 = this.mView;
        if (view2 != null) {
            view2.addOnAttachStateChangeListener(anonymousClass1);
        }
    }

    public void initView() {
        init();
    }

    public abstract void onViewAttached();

    public abstract void onViewDetached();

    public void start() {
        init();
    }

    public void onInit() {
    }
}
