package com.android.wm.shell.common;

import android.util.Slog;
import com.android.wm.shell.common.DisplayController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DisplayController.DisplayWindowListenerImpl f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2(DisplayController.DisplayWindowListenerImpl displayWindowListenerImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = displayWindowListenerImpl;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.this$0.onDisplayAdded(this.f$1);
                return;
            case 1:
                DisplayController.DisplayWindowListenerImpl displayWindowListenerImpl = this.f$0;
                int i = this.f$1;
                DisplayController displayController = displayWindowListenerImpl.this$0;
                synchronized (displayController.mDisplays) {
                    if (displayController.mDisplays.get(i) != null) {
                        int size = displayController.mDisplayChangedListeners.size();
                        while (true) {
                            size--;
                            if (size >= 0) {
                                ((DisplayController.OnDisplaysChangedListener) displayController.mDisplayChangedListeners.get(size)).onDisplayRemoved(i);
                            } else {
                                displayController.mDisplays.remove(i);
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                }
            default:
                DisplayController.DisplayWindowListenerImpl displayWindowListenerImpl2 = this.f$0;
                int i2 = this.f$1;
                DisplayController displayController2 = displayWindowListenerImpl2.this$0;
                synchronized (displayController2.mDisplays) {
                    if (displayController2.mDisplays.get(i2) != null && displayController2.getDisplay(i2) != null) {
                        int size2 = displayController2.mDisplayChangedListeners.size();
                        while (true) {
                            size2--;
                            if (size2 >= 0) {
                                ((DisplayController.OnDisplaysChangedListener) displayController2.mDisplayChangedListeners.get(size2)).onFixedRotationFinished(i2);
                            } else {
                                return;
                            }
                        }
                    }
                    Slog.w("DisplayController", "Skipping onFixedRotationFinished on unknown display, displayId=" + i2);
                    return;
                }
        }
    }
}
