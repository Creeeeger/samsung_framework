package com.android.systemui.screenshot;

import android.app.IActivityTaskManager;
import android.view.IWindowManager;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ImageCaptureImpl implements ImageCapture {
    public final IWindowManager windowManager;

    public ImageCaptureImpl(IWindowManager iWindowManager, IActivityTaskManager iActivityTaskManager, CoroutineDispatcher coroutineDispatcher) {
        this.windowManager = iWindowManager;
    }
}
