package com.android.systemui.mediaprojection.appselector.view;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.android.systemui.shared.recents.utilities.Utilities;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.CallbackController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TaskPreviewSizeProvider implements CallbackController, ConfigurationController.ConfigurationListener {
    public final Context context;
    public final WindowManager windowManager;
    public final Rect size = calculateSize();
    public final ArrayList listeners = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface TaskPreviewSizeListener {
        void onTaskSizeChanged();
    }

    public TaskPreviewSizeProvider(Context context, WindowManager windowManager, ConfigurationController configurationController) {
        this.context = context;
        this.windowManager = windowManager;
        ((ConfigurationControllerImpl) configurationController).addCallback(this);
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        this.listeners.add((TaskPreviewSizeListener) obj);
    }

    public final Rect calculateSize() {
        int i;
        WindowManager windowManager = this.windowManager;
        WindowMetrics maximumWindowMetrics = windowManager.getMaximumWindowMetrics();
        int height = maximumWindowMetrics.getBounds().height();
        int width = maximumWindowMetrics.getBounds().width();
        if (Utilities.isLargeScreen(this.context)) {
            i = height - windowManager.getCurrentWindowMetrics().getWindowInsets().getInsets(WindowInsets.Type.tappableElement()).bottom;
        } else {
            i = height;
        }
        Rect rect = new Rect(0, 0, width, i);
        rect.scale((i / height) / 4.0f);
        return rect;
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onConfigChanged(Configuration configuration) {
        Rect calculateSize = calculateSize();
        Rect rect = this.size;
        if (!Intrinsics.areEqual(calculateSize, rect)) {
            rect.set(calculateSize);
            Iterator it = this.listeners.iterator();
            while (it.hasNext()) {
                ((TaskPreviewSizeListener) it.next()).onTaskSizeChanged();
            }
        }
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        this.listeners.remove((TaskPreviewSizeListener) obj);
    }
}
