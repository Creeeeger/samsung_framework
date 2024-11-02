package com.android.systemui.temporarydisplay.chipbar;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.statusbar.gesture.SwipeUpGestureHandler;
import com.android.systemui.statusbar.gesture.SwipeUpGestureLogger;
import com.android.systemui.util.ConvenienceExtensionsKt;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SwipeChipbarAwayGestureHandler extends SwipeUpGestureHandler {
    public Function0 viewFetcher;

    public SwipeChipbarAwayGestureHandler(Context context, DisplayTracker displayTracker, SwipeUpGestureLogger swipeUpGestureLogger) {
        super(context, displayTracker, swipeUpGestureLogger, "SwipeChipbarAway");
        this.viewFetcher = new Function0() { // from class: com.android.systemui.temporarydisplay.chipbar.SwipeChipbarAwayGestureHandler$viewFetcher$1
            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ Object invoke() {
                return null;
            }
        };
    }

    @Override // com.android.systemui.statusbar.gesture.SwipeUpGestureHandler
    public final boolean startOfGestureIsWithinBounds(MotionEvent motionEvent) {
        if (((View) this.viewFetcher.invoke()) == null) {
            return false;
        }
        if (motionEvent.getY() > ConvenienceExtensionsKt.getBoundsOnScreen(r5).bottom * 1.5d) {
            return false;
        }
        return true;
    }
}
