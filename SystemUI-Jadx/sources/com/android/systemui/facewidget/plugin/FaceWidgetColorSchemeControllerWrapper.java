package com.android.systemui.facewidget.plugin;

import com.android.systemui.plugins.keyguardstatusview.PluginFaceWidgetColorSchemeCallback;
import com.android.systemui.plugins.keyguardstatusview.PluginFaceWidgetColorSchemeController;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FaceWidgetColorSchemeControllerWrapper implements PluginFaceWidgetColorSchemeController {
    public final List mCallbackList = new ArrayList();

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginFaceWidgetColorSchemeController
    public final void registerCallback(PluginFaceWidgetColorSchemeCallback pluginFaceWidgetColorSchemeCallback) {
        List list = this.mCallbackList;
        if (!((ArrayList) list).contains(pluginFaceWidgetColorSchemeCallback)) {
            ((ArrayList) list).add(pluginFaceWidgetColorSchemeCallback);
        }
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginFaceWidgetColorSchemeController
    public final void unregisterAllCallbacks() {
        ((ArrayList) this.mCallbackList).clear();
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginFaceWidgetColorSchemeController
    public final void unregisterCallback(PluginFaceWidgetColorSchemeCallback pluginFaceWidgetColorSchemeCallback) {
        ((ArrayList) this.mCallbackList).remove(pluginFaceWidgetColorSchemeCallback);
    }
}
