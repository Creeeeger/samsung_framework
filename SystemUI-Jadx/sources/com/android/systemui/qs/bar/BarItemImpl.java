package com.android.systemui.qs.bar;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.qs.bar.BarController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class BarItemImpl {
    public View mBarRootView;
    public BarController.AnonymousClass4 mCallback;
    public Context mContext;
    public final String TAG = getClass().getSimpleName();
    public boolean mListening = true;
    public boolean mShowing = true;
    public boolean mIsOnCollapsedState = false;
    public boolean mIsUnderneathQqs = false;

    public BarItemImpl(Context context) {
        this.mContext = context;
    }

    public void destroy() {
        this.mCallback = null;
    }

    public int getBarHeight() {
        if (this.mShowing) {
            return this.mBarRootView.getMeasuredHeight();
        }
        return 0;
    }

    public abstract int getBarLayout();

    public void inflateViews(ViewGroup viewGroup) {
        this.mBarRootView = (ViewGroup) LayoutInflater.from(this.mContext).inflate(getBarLayout(), viewGroup, false);
        onFinishInflate();
    }

    public boolean isAvailable() {
        return true;
    }

    public void setCallback(BarController.AnonymousClass4 anonymousClass4) {
        this.mCallback = anonymousClass4;
    }

    public void setListening(boolean z) {
        this.mListening = z;
    }

    public void setUnderneathQqs(boolean z) {
        this.mIsUnderneathQqs = z;
    }

    public void showBar(boolean z) {
        int i;
        if (this.mBarRootView == null) {
            return;
        }
        Log.i(this.TAG, KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("showBar : ", z));
        this.mShowing = z;
        View view = this.mBarRootView;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        view.setVisibility(i);
        BarController.AnonymousClass4 anonymousClass4 = this.mCallback;
        if (anonymousClass4 != null) {
            BarController barController = BarController.this;
            BarController.AnonymousClass3 anonymousClass3 = barController.mBarListener;
            if (anonymousClass3 != null) {
                anonymousClass3.val$containerRunner.run();
                anonymousClass3.val$animatorRunner.run();
            }
            barController.updateBarUnderneathQqs();
        }
    }

    public void onConfigChanged(Configuration configuration) {
    }

    public void setExpanded(boolean z) {
    }

    public void setPosition(float f) {
    }

    public void setQsFullyExpanded(boolean z) {
    }

    public void onFinishInflate() {
    }

    public void onKnoxPolicyChanged() {
    }

    public void onUiModeChanged() {
    }

    public void updateHeightMargins() {
    }
}
