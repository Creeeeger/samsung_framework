package com.android.systemui.facewidget.plugin;

import android.content.Context;
import android.view.View;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.plugins.keyguardstatusview.PluginKeyguardStatusView;
import java.io.PrintWriter;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FaceWidgetContainerWrapper implements Dumpable {
    public View mClockContainer;
    public List mContentsContainerList;
    public final Context mContext;
    public View mFaceWidgetContainer;
    public PluginKeyguardStatusView mPluginKeyguardStatusView;

    public FaceWidgetContainerWrapper(Context context) {
        this.mContext = context;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        PluginKeyguardStatusView pluginKeyguardStatusView;
        PluginFaceWidgetManager pluginFaceWidgetManager = (PluginFaceWidgetManager) Dependency.get(PluginFaceWidgetManager.class);
        if (pluginFaceWidgetManager != null && (pluginKeyguardStatusView = pluginFaceWidgetManager.mFaceWidgetPlugin) != null) {
            pluginKeyguardStatusView.dump(null, printWriter, strArr);
        }
    }

    public final void initPlugin(PluginKeyguardStatusView pluginKeyguardStatusView, View view, List list) {
        this.mPluginKeyguardStatusView = pluginKeyguardStatusView;
        this.mFaceWidgetContainer = view;
        this.mContentsContainerList = list;
        if (list != null && list.size() > 0) {
            this.mClockContainer = (View) this.mContentsContainerList.get(0);
        } else {
            this.mClockContainer = null;
        }
    }
}
