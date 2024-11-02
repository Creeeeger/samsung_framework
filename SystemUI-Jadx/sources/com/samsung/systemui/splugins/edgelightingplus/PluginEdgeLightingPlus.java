package com.samsung.systemui.splugins.edgelightingplus;

import android.os.Bundle;
import com.samsung.systemui.splugins.SPlugin;
import com.samsung.systemui.splugins.annotations.ProvidesInterface;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@ProvidesInterface(action = PluginEdgeLightingPlus.ACTION, version = PluginEdgeLightingPlus.VERSION)
/* loaded from: classes3.dex */
public interface PluginEdgeLightingPlus extends SPlugin {
    public static final String ACTION = "com.samsung.systemui.action.PLUGIN_EDGELIGHTING_PLUS";
    public static final int MAJOR_VERSION = 6;
    public static final int MINOR_VERSION = 0;
    public static final int VERSION = 6000;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public interface Callback {
        void sendEffectInfo(Bundle bundle);

        void showPreview(Bundle bundle);
    }

    void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    void setCallback(Callback callback);
}
