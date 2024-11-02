package com.android.systemui;

import android.content.Context;
import com.android.systemui.util.Assert;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@Deprecated
/* loaded from: classes.dex */
public class SystemUIAppComponentFactory extends SystemUIAppComponentFactoryBase {
    @Override // com.android.systemui.SystemUIAppComponentFactoryBase
    public final SystemUIInitializer createSystemUIInitializer(Context context) {
        SystemUIInitializer systemUIInitializer = SystemUIInitializerFactory.initializer;
        Assert.isMainThread();
        return SystemUIInitializerFactory.createFromConfigNoAssert(context);
    }
}
