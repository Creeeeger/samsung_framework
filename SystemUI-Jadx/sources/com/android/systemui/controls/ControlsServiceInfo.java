package com.android.systemui.controls;

import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.IconDrawableFactory;
import com.android.settingslib.applications.DefaultAppInfo;
import com.android.systemui.BasicRune;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsServiceInfo extends DefaultAppInfo {
    public final ComponentName _panelActivity;
    public final Context context;
    public ComponentName panelActivity;
    public boolean resolved;
    public final ServiceInfo serviceInfo;

    public ControlsServiceInfo(Context context, ServiceInfo serviceInfo) {
        super(context, context.getPackageManager(), context.getUserId(), serviceInfo.getComponentName());
        String str;
        this.context = context;
        this.serviceInfo = serviceInfo;
        Bundle bundle = serviceInfo.metaData;
        if (bundle != null) {
            str = bundle.getString("android.service.controls.META_DATA_PANEL_ACTIVITY");
        } else {
            str = null;
        }
        ComponentName unflattenFromString = ComponentName.unflattenFromString(str == null ? "" : str);
        if (unflattenFromString != null && Intrinsics.areEqual(unflattenFromString.getPackageName(), this.componentName.getPackageName())) {
            this._panelActivity = unflattenFromString;
        } else {
            this._panelActivity = null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ControlsServiceInfo) {
            ControlsServiceInfo controlsServiceInfo = (ControlsServiceInfo) obj;
            if (this.userId == controlsServiceInfo.userId && Intrinsics.areEqual(this.componentName, controlsServiceInfo.componentName) && Intrinsics.areEqual(this.panelActivity, controlsServiceInfo.panelActivity)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.userId), this.componentName, this.panelActivity);
    }

    public final Drawable loadIcon() {
        String str;
        ComponentName componentName = this.componentName;
        if (componentName == null || (str = componentName.getPackageName()) == null) {
            PackageItemInfo packageItemInfo = this.packageItemInfo;
            if (packageItemInfo != null) {
                str = packageItemInfo.packageName;
            } else {
                str = null;
            }
            if (str == null) {
                throw new IllegalArgumentException("Package info is missing");
            }
        }
        return IconDrawableFactory.newInstance(this.context).getBadgedIcon(this.mPm.getApplicationInfoAsUser(str, 0, this.userId));
    }

    public final CharSequence loadLabel() {
        CharSequence loadLabel;
        ComponentInfo componentInfo;
        boolean z = BasicRune.CONTROLS_SAMSUNG_STYLE;
        CharSequence charSequence = null;
        int i = this.userId;
        PackageItemInfo packageItemInfo = this.packageItemInfo;
        ComponentName componentName = this.componentName;
        PackageManager packageManager = this.mPm;
        if (z && this.panelActivity == null) {
            if (componentName != null) {
                try {
                    try {
                        componentInfo = AppGlobals.getPackageManager().getActivityInfo(componentName, 0L, i);
                        if (componentInfo == null) {
                            componentInfo = AppGlobals.getPackageManager().getServiceInfo(componentName, 0L, i);
                        }
                    } catch (RemoteException unused) {
                        componentInfo = null;
                    }
                    if (componentInfo != null) {
                        return componentInfo.loadLabel(packageManager);
                    }
                    return packageManager.getApplicationInfoAsUser(componentName.getPackageName(), 0, i).loadLabel(packageManager);
                } catch (PackageManager.NameNotFoundException unused2) {
                    return null;
                }
            }
            if (packageItemInfo == null) {
                return null;
            }
            return packageItemInfo.loadLabel(packageManager);
        }
        if (componentName == null || (loadLabel = packageManager.getApplicationInfoAsUser(componentName.getPackageName(), 0, i).loadLabel(packageManager)) == null) {
            if (packageItemInfo != null) {
                charSequence = packageItemInfo.loadLabel(packageManager);
            }
            if (charSequence != null) {
                return charSequence;
            }
            throw new IllegalArgumentException("Package info is missing");
        }
        return loadLabel;
    }

    public final String toString() {
        return StringsKt__IndentKt.trimIndent("\n            ControlsServiceInfo(serviceInfo=" + this.serviceInfo + ", panelActivity=" + this.panelActivity + ", resolved=" + this.resolved + ")\n        ");
    }
}
