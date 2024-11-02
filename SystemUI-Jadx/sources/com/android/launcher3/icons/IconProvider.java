package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.systemui.R;
import java.util.Calendar;
import java.util.function.IntFunction;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class IconProvider {
    public final ComponentName mCalendar;
    public final ComponentName mClock;
    public final Context mContext;
    public static final int CONFIG_ICON_MASK_RES_ID = Resources.getSystem().getIdentifier("config_icon_mask", "string", "android");
    public static final boolean ATLEAST_T = true;

    public IconProvider(Context context) {
        ComponentName unflattenFromString;
        this.mContext = context;
        String string = context.getString(R.string.calendar_component_name);
        if (TextUtils.isEmpty(string)) {
            unflattenFromString = null;
        } else {
            unflattenFromString = ComponentName.unflattenFromString(string);
        }
        this.mCalendar = unflattenFromString;
        String string2 = context.getString(R.string.clock_component_name);
        this.mClock = TextUtils.isEmpty(string2) ? null : ComponentName.unflattenFromString(string2);
    }

    public final Drawable getIcon(final int i, ActivityInfo activityInfo) {
        Drawable forExtras;
        String str = activityInfo.applicationInfo.packageName;
        Drawable drawable = null;
        boolean z = ATLEAST_T;
        Context context = this.mContext;
        ComponentName componentName = this.mCalendar;
        if (componentName != null && componentName.getPackageName().equals(str)) {
            PackageManager packageManager = context.getPackageManager();
            try {
                Bundle bundle = packageManager.getActivityInfo(componentName, 8320).metaData;
                Resources resourcesForApplication = packageManager.getResourcesForApplication(componentName.getPackageName());
                int i2 = 0;
                if (bundle != null) {
                    int i3 = bundle.getInt(componentName.getPackageName() + ".dynamic_icons", 0);
                    if (i3 != 0) {
                        try {
                            i2 = resourcesForApplication.obtainTypedArray(i3).getResourceId(Calendar.getInstance().get(5) - 1, 0);
                        } catch (Resources.NotFoundException unused) {
                        }
                    }
                }
                if (i2 != 0) {
                    forExtras = resourcesForApplication.getDrawableForDensity(i2, i, null);
                    if (z) {
                        boolean z2 = forExtras instanceof AdaptiveIconDrawable;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused2) {
            }
            forExtras = null;
        } else {
            ComponentName componentName2 = this.mClock;
            if (componentName2 != null && componentName2.getPackageName().equals(str)) {
                String packageName = componentName2.getPackageName();
                int i4 = ClockDrawableWrapper.$r8$clinit;
                try {
                    PackageManager packageManager2 = context.getPackageManager();
                    ApplicationInfo applicationInfo = packageManager2.getApplicationInfo(packageName, 8320);
                    final Resources resourcesForApplication2 = packageManager2.getResourcesForApplication(applicationInfo);
                    forExtras = ClockDrawableWrapper.forExtras(applicationInfo.metaData, new IntFunction() { // from class: com.android.launcher3.icons.ClockDrawableWrapper$$ExternalSyntheticLambda0
                        @Override // java.util.function.IntFunction
                        public final Object apply(int i5) {
                            return resourcesForApplication2.getDrawableForDensity(i5, i);
                        }
                    });
                } catch (Exception e) {
                    Log.d("ClockDrawableWrapper", "Unable to load clock drawable info", e);
                }
            }
            forExtras = null;
        }
        if (forExtras == null) {
            int iconResource = activityInfo.getIconResource();
            Context context2 = this.mContext;
            if (i != 0 && iconResource != 0) {
                try {
                    drawable = context2.getPackageManager().getResourcesForApplication(activityInfo.applicationInfo).getDrawableForDensity(iconResource, i);
                } catch (PackageManager.NameNotFoundException | Resources.NotFoundException unused3) {
                }
            }
            if (drawable == null) {
                forExtras = activityInfo.loadIcon(context2.getPackageManager());
            } else {
                forExtras = drawable;
            }
            if (z) {
                boolean z3 = forExtras instanceof AdaptiveIconDrawable;
            }
        }
        return forExtras;
    }
}
