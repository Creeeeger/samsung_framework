package com.android.systemui;

import android.content.Context;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SystemUIInitializerFactory {
    public static SystemUIInitializer initializer;

    static {
        new SystemUIInitializerFactory();
    }

    private SystemUIInitializerFactory() {
    }

    public static final SystemUIInitializer createFromConfigNoAssert(Context context) {
        boolean z;
        SystemUIInitializer systemUIInitializer = initializer;
        if (systemUIInitializer == null) {
            String string = context.getString(R.string.config_systemUIFactoryComponent);
            if (string.length() == 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                try {
                    SystemUIInitializer systemUIInitializer2 = (SystemUIInitializer) context.getClassLoader().loadClass(string).getConstructor(Context.class).newInstance(context);
                    initializer = systemUIInitializer2;
                    return systemUIInitializer2;
                } catch (Throwable th) {
                    Log.w("SysUIInitializerFactory", "Error creating SystemUIInitializer component: ".concat(string), th);
                    throw th;
                }
            }
            throw new RuntimeException("No SystemUIFactory component configured");
        }
        return systemUIInitializer;
    }
}
