package com.android.systemui.statusbar.gesture;

import android.os.Looper;
import android.view.Choreographer;
import android.view.InputEvent;
import com.android.systemui.shared.system.InputChannelCompat$InputEventListener;
import com.android.systemui.shared.system.InputChannelCompat$InputEventReceiver;
import com.android.systemui.shared.system.InputMonitorCompat;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class GenericGestureDetector {
    public final Map callbacks = new LinkedHashMap();
    public final int displayId;
    public InputMonitorCompat inputMonitor;
    public InputChannelCompat$InputEventReceiver inputReceiver;
    public final String tag;

    public GenericGestureDetector(String str, int i) {
        this.tag = str;
        this.displayId = i;
    }

    public abstract void onInputEvent(InputEvent inputEvent);

    public final void removeOnGestureDetectedCallback(String str) {
        Map map = this.callbacks;
        map.remove(str);
        if (map.isEmpty()) {
            stopGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core();
        }
    }

    public void startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        stopGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core();
        InputMonitorCompat inputMonitorCompat = new InputMonitorCompat(this.tag, this.displayId);
        this.inputReceiver = new InputChannelCompat$InputEventReceiver(inputMonitorCompat.mInputMonitor.getInputChannel(), Looper.getMainLooper(), Choreographer.getInstance(), new InputChannelCompat$InputEventListener() { // from class: com.android.systemui.statusbar.gesture.GenericGestureDetector$startGestureListening$1$1
            @Override // com.android.systemui.shared.system.InputChannelCompat$InputEventListener
            public final void onInputEvent(InputEvent inputEvent) {
                GenericGestureDetector.this.onInputEvent(inputEvent);
            }
        });
        this.inputMonitor = inputMonitorCompat;
    }

    public void stopGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        InputMonitorCompat inputMonitorCompat = this.inputMonitor;
        if (inputMonitorCompat != null) {
            this.inputMonitor = null;
            inputMonitorCompat.mInputMonitor.dispose();
        }
        InputChannelCompat$InputEventReceiver inputChannelCompat$InputEventReceiver = this.inputReceiver;
        if (inputChannelCompat$InputEventReceiver != null) {
            this.inputReceiver = null;
            inputChannelCompat$InputEventReceiver.dispose();
        }
    }
}
