package com.android.wm.shell.desktopmode;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DesktopModeTaskRepository$setTaskCornerListener$1 implements Runnable {
    public final /* synthetic */ DesktopModeTaskRepository this$0;

    public DesktopModeTaskRepository$setTaskCornerListener$1(DesktopModeTaskRepository desktopModeTaskRepository) {
        this.this$0 = desktopModeTaskRepository;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DesktopModeTaskRepository desktopModeTaskRepository = this.this$0;
        Consumer consumer = desktopModeTaskRepository.desktopGestureExclusionListener;
        if (consumer != null) {
            consumer.accept(DesktopModeTaskRepository.access$calculateDesktopExclusionRegion(desktopModeTaskRepository));
        }
    }
}
