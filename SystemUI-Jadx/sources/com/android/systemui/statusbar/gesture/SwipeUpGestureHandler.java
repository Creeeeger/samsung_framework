package com.android.systemui.statusbar.gesture;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.view.InputEvent;
import android.view.MotionEvent;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class SwipeUpGestureHandler extends GenericGestureDetector {
    public final SwipeUpGestureLogger logger;
    public final String loggerTag;
    public boolean monitoringCurrentTouch;
    public long startTime;
    public float startY;
    public final int swipeDistanceThreshold;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SwipeUpGestureHandler(android.content.Context r2, com.android.systemui.settings.DisplayTracker r3, com.android.systemui.statusbar.gesture.SwipeUpGestureLogger r4, java.lang.String r5) {
        /*
            r1 = this;
            java.lang.Class<com.android.systemui.statusbar.gesture.SwipeUpGestureHandler> r3 = com.android.systemui.statusbar.gesture.SwipeUpGestureHandler.class
            kotlin.jvm.internal.ClassReference r3 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r3)
            java.lang.String r3 = r3.getSimpleName()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            r0 = 0
            r1.<init>(r3, r0)
            r1.logger = r4
            r1.loggerTag = r5
            android.content.res.Resources r2 = r2.getResources()
            r3 = 17106189(0x105050d, float:2.4431866E-38)
            int r2 = r2.getDimensionPixelSize(r3)
            r1.swipeDistanceThreshold = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.gesture.SwipeUpGestureHandler.<init>(android.content.Context, com.android.systemui.settings.DisplayTracker, com.android.systemui.statusbar.gesture.SwipeUpGestureLogger, java.lang.String):void");
    }

    @Override // com.android.systemui.statusbar.gesture.GenericGestureDetector
    public final void onInputEvent(InputEvent inputEvent) {
        if (!(inputEvent instanceof MotionEvent)) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) inputEvent;
        int actionMasked = motionEvent.getActionMasked();
        String str = this.loggerTag;
        SwipeUpGestureLogger swipeUpGestureLogger = this.logger;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        return;
                    }
                } else {
                    if (!this.monitoringCurrentTouch) {
                        return;
                    }
                    float y = motionEvent.getY();
                    float f = this.startY;
                    if (y < f && f - motionEvent.getY() >= this.swipeDistanceThreshold && motionEvent.getEventTime() - this.startTime < 500) {
                        this.monitoringCurrentTouch = false;
                        int y2 = (int) motionEvent.getY();
                        swipeUpGestureLogger.getClass();
                        LogLevel logLevel = LogLevel.INFO;
                        SwipeUpGestureLogger$logGestureDetected$2 swipeUpGestureLogger$logGestureDetected$2 = new Function1() { // from class: com.android.systemui.statusbar.gesture.SwipeUpGestureLogger$logGestureDetected$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Gesture detected; notifying callbacks. y=", ((LogMessage) obj).getInt1());
                            }
                        };
                        LogBuffer logBuffer = swipeUpGestureLogger.buffer;
                        LogMessage obtain = logBuffer.obtain(str, logLevel, swipeUpGestureLogger$logGestureDetected$2, null);
                        obtain.setInt1(y2);
                        logBuffer.commit(obtain);
                        Iterator it = ((LinkedHashMap) this.callbacks).values().iterator();
                        while (it.hasNext()) {
                            ((Function1) it.next()).invoke(motionEvent);
                        }
                        return;
                    }
                    return;
                }
            }
            if (this.monitoringCurrentTouch) {
                int y3 = (int) motionEvent.getY();
                swipeUpGestureLogger.getClass();
                LogLevel logLevel2 = LogLevel.DEBUG;
                SwipeUpGestureLogger$logGestureDetectionEndedWithoutTriggering$2 swipeUpGestureLogger$logGestureDetectionEndedWithoutTriggering$2 = new Function1() { // from class: com.android.systemui.statusbar.gesture.SwipeUpGestureLogger$logGestureDetectionEndedWithoutTriggering$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Gesture finished; no swipe up gesture detected. Final y=", ((LogMessage) obj).getInt1());
                    }
                };
                LogBuffer logBuffer2 = swipeUpGestureLogger.buffer;
                LogMessage obtain2 = logBuffer2.obtain(str, logLevel2, swipeUpGestureLogger$logGestureDetectionEndedWithoutTriggering$2, null);
                obtain2.setInt1(y3);
                logBuffer2.commit(obtain2);
            }
            this.monitoringCurrentTouch = false;
            return;
        }
        if (startOfGestureIsWithinBounds(motionEvent)) {
            int y4 = (int) motionEvent.getY();
            swipeUpGestureLogger.getClass();
            LogLevel logLevel3 = LogLevel.DEBUG;
            SwipeUpGestureLogger$logGestureDetectionStarted$2 swipeUpGestureLogger$logGestureDetectionStarted$2 = new Function1() { // from class: com.android.systemui.statusbar.gesture.SwipeUpGestureLogger$logGestureDetectionStarted$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Beginning gesture detection. y=", ((LogMessage) obj).getInt1());
                }
            };
            LogBuffer logBuffer3 = swipeUpGestureLogger.buffer;
            LogMessage obtain3 = logBuffer3.obtain(str, logLevel3, swipeUpGestureLogger$logGestureDetectionStarted$2, null);
            obtain3.setInt1(y4);
            logBuffer3.commit(obtain3);
            this.startY = motionEvent.getY();
            this.startTime = motionEvent.getEventTime();
            this.monitoringCurrentTouch = true;
            return;
        }
        this.monitoringCurrentTouch = false;
    }

    @Override // com.android.systemui.statusbar.gesture.GenericGestureDetector
    public final void startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        super.startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core();
        SwipeUpGestureLogger swipeUpGestureLogger = this.logger;
        swipeUpGestureLogger.getClass();
        LogLevel logLevel = LogLevel.VERBOSE;
        SwipeUpGestureLogger$logInputListeningStarted$2 swipeUpGestureLogger$logInputListeningStarted$2 = new Function1() { // from class: com.android.systemui.statusbar.gesture.SwipeUpGestureLogger$logInputListeningStarted$2
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return "Input listening started ";
            }
        };
        LogBuffer logBuffer = swipeUpGestureLogger.buffer;
        logBuffer.commit(logBuffer.obtain(this.loggerTag, logLevel, swipeUpGestureLogger$logInputListeningStarted$2, null));
    }

    public abstract boolean startOfGestureIsWithinBounds(MotionEvent motionEvent);

    @Override // com.android.systemui.statusbar.gesture.GenericGestureDetector
    public final void stopGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        super.stopGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core();
        SwipeUpGestureLogger swipeUpGestureLogger = this.logger;
        swipeUpGestureLogger.getClass();
        LogLevel logLevel = LogLevel.VERBOSE;
        SwipeUpGestureLogger$logInputListeningStopped$2 swipeUpGestureLogger$logInputListeningStopped$2 = new Function1() { // from class: com.android.systemui.statusbar.gesture.SwipeUpGestureLogger$logInputListeningStopped$2
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return "Input listening stopped ";
            }
        };
        LogBuffer logBuffer = swipeUpGestureLogger.buffer;
        logBuffer.commit(logBuffer.obtain(this.loggerTag, logLevel, swipeUpGestureLogger$logInputListeningStopped$2, null));
    }
}
