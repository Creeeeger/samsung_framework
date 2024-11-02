package com.android.wm.shell.unfold;

import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ShellUnfoldProgressProvider {
    public static final AnonymousClass1 NO_PROVIDER = new ShellUnfoldProgressProvider() { // from class: com.android.wm.shell.unfold.ShellUnfoldProgressProvider.1
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface UnfoldListener {
        void onStateChangeFinished();

        void onStateChangeProgress(float f);

        default void onStateChangeStarted() {
        }
    }

    default void addListener(Executor executor, UnfoldListener unfoldListener) {
    }
}
