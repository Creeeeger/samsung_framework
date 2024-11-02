package com.android.systemui.keyguard;

import android.view.SurfaceControl;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface VisibilityController {
    void invalidate();

    boolean needToBeInvisibleWindow();

    void registerFrameUpdateCallback(Function0 function0);

    void resetForceInvisible(boolean z);

    boolean setForceInvisible(SurfaceControl.Transaction transaction, boolean z);
}
