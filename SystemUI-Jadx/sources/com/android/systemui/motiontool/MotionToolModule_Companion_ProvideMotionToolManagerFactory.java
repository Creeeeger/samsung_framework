package com.android.systemui.motiontool;

import android.view.WindowManagerGlobal;
import com.android.app.motiontool.MotionToolManager;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MotionToolModule_Companion_ProvideMotionToolManagerFactory implements Provider {
    public final Provider windowManagerGlobalProvider;

    public MotionToolModule_Companion_ProvideMotionToolManagerFactory(Provider provider) {
        this.windowManagerGlobalProvider = provider;
    }

    public static MotionToolManager provideMotionToolManager(WindowManagerGlobal windowManagerGlobal) {
        MotionToolManager motionToolManager;
        MotionToolModule.Companion.getClass();
        synchronized (MotionToolManager.Companion) {
            motionToolManager = MotionToolManager.INSTANCE;
            if (motionToolManager == null) {
                motionToolManager = new MotionToolManager(windowManagerGlobal, null);
                MotionToolManager.INSTANCE = motionToolManager;
            }
        }
        return motionToolManager;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideMotionToolManager((WindowManagerGlobal) this.windowManagerGlobalProvider.get());
    }
}
