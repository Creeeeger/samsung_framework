package com.android.wm.shell.bubbles;

import android.content.Context;
import android.view.InputMonitor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BubblesNavBarGestureTracker {
    public final Context mContext;
    public BubblesNavBarInputEventReceiver mInputEventReceiver;
    public InputMonitor mInputMonitor;
    public final BubblePositioner mPositioner;

    public BubblesNavBarGestureTracker(Context context, BubblePositioner bubblePositioner) {
        this.mContext = context;
        this.mPositioner = bubblePositioner;
    }
}
