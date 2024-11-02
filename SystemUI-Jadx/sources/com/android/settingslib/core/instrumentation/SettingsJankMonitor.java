package com.android.settingslib.core.instrumentation;

import com.android.internal.jank.InteractionJankMonitor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SettingsJankMonitor {
    public static final InteractionJankMonitor jankMonitor;
    public static final ScheduledExecutorService scheduledExecutorService;

    static {
        new SettingsJankMonitor();
        jankMonitor = InteractionJankMonitor.getInstance();
        scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
    }

    private SettingsJankMonitor() {
    }

    public static /* synthetic */ void getMONITORED_ANIMATION_DURATION_MS$annotations() {
    }
}
