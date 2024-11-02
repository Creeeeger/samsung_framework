package com.android.systemui.unfold.updates;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.view.Display;
import com.android.systemui.unfold.util.CallbackController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RotationChangeProvider implements CallbackController {
    public final Context context;
    public final DisplayManager displayManager;
    public Integer lastRotation;
    public final Handler mainHandler;
    public final List listeners = new ArrayList();
    public final RotationDisplayListener displayListener = new RotationDisplayListener();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface RotationListener {
        void onRotationChanged(int i);
    }

    public RotationChangeProvider(DisplayManager displayManager, Context context, Handler handler) {
        this.displayManager = displayManager;
        this.context = context;
        this.mainHandler = handler;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RotationDisplayListener implements DisplayManager.DisplayListener {
        public RotationDisplayListener() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i) {
            Display display = RotationChangeProvider.this.context.getDisplay();
            if (display != null && i == display.getDisplayId()) {
                int rotation = display.getRotation();
                Integer num = RotationChangeProvider.this.lastRotation;
                if (num == null || num == null || num.intValue() != rotation) {
                    Iterator it = RotationChangeProvider.this.listeners.iterator();
                    while (it.hasNext()) {
                        ((RotationListener) it.next()).onRotationChanged(rotation);
                    }
                    RotationChangeProvider.this.lastRotation = Integer.valueOf(rotation);
                }
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i) {
        }
    }
}
