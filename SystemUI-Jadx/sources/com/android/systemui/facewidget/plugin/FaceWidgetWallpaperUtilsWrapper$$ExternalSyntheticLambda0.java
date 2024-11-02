package com.android.systemui.facewidget.plugin;

import com.android.systemui.Dependency;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class FaceWidgetWallpaperUtilsWrapper$$ExternalSyntheticLambda0 implements Supplier {
    @Override // java.util.function.Supplier
    public final Object get() {
        return Integer.valueOf(((PluginFaceWidgetManager) Dependency.get(PluginFaceWidgetManager.class)).mAppPluginVersion);
    }
}
