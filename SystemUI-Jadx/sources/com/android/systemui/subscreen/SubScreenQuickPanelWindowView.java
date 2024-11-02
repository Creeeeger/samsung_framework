package com.android.systemui.subscreen;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubScreenQuickPanelWindowView extends FrameLayout {
    public SubScreenQSEventHandler mSubScreenQSTouchHandler;

    public SubScreenQuickPanelWindowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = false;
        if (this.mSubScreenQSTouchHandler == null) {
            return false;
        }
        Log.d("SubScreenQuickPanelWindowView", "dispatchKeyEvent ,event:" + keyEvent);
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 61 || keyCode == 66) {
            z = true;
        }
        if (!z) {
            return this.mSubScreenQSTouchHandler.dispatchKeyEvent(keyEvent);
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        SubScreenQSEventHandler subScreenQSEventHandler = this.mSubScreenQSTouchHandler;
        if (subScreenQSEventHandler == null) {
            return false;
        }
        return subScreenQSEventHandler.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        SubScreenQSEventHandler subScreenQSEventHandler = this.mSubScreenQSTouchHandler;
        if (subScreenQSEventHandler == null) {
            return false;
        }
        return subScreenQSEventHandler.onTouchEvent(motionEvent);
    }
}
