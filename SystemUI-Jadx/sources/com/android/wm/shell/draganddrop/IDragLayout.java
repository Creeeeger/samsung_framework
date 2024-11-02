package com.android.wm.shell.draganddrop;

import android.view.DragEvent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface IDragLayout {
    default void hide(DragEvent dragEvent, Runnable runnable) {
        ((DropTargetLayout) this).hide(runnable, true);
    }
}
