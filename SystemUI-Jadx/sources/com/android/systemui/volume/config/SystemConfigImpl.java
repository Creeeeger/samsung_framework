package com.android.systemui.volume.config;

import android.content.Context;
import com.android.systemui.util.DeviceType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SystemConfigImpl {
    public final Context context;
    public final Lazy isTablet$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.volume.config.SystemConfigImpl$isTablet$2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(DeviceType.isTablet());
        }
    });
    public final Lazy hasCutout$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.volume.config.SystemConfigImpl$hasCutout$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Object failure;
            String str;
            boolean z;
            SystemConfigImpl systemConfigImpl = SystemConfigImpl.this;
            try {
                int i = Result.$r8$clinit;
                int identifier = systemConfigImpl.context.getResources().getIdentifier("config_mainBuiltInDisplayCutout", "string", "android");
                if (identifier > 0) {
                    str = systemConfigImpl.context.getString(identifier);
                } else {
                    str = "";
                }
                if (str.length() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                failure = Boolean.valueOf(z);
            } catch (Throwable th) {
                int i2 = Result.$r8$clinit;
                failure = new Result.Failure(th);
            }
            Object obj = Boolean.FALSE;
            if (failure instanceof Result.Failure) {
                failure = obj;
            }
            return (Boolean) failure;
        }
    });

    public SystemConfigImpl(Context context) {
        this.context = context;
    }

    public final boolean getHasCutout() {
        return ((Boolean) this.hasCutout$delegate.getValue()).booleanValue();
    }

    public final boolean isTablet() {
        return ((Boolean) this.isTablet$delegate.getValue()).booleanValue();
    }
}
