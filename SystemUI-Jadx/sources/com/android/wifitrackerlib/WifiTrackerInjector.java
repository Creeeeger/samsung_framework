package com.android.wifitrackerlib;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.os.UserManager;
import android.util.ArraySet;
import com.android.systemui.R;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WifiTrackerInjector {
    public final DevicePolicyManager mDevicePolicyManager;
    public final Set mNoAttributionAnnotationPackages;
    public final UserManager mUserManager;

    public WifiTrackerInjector(Context context) {
        UserManager.isDeviceInDemoMode(context);
        this.mUserManager = (UserManager) context.getSystemService(UserManager.class);
        this.mDevicePolicyManager = (DevicePolicyManager) context.getSystemService(DevicePolicyManager.class);
        this.mNoAttributionAnnotationPackages = new ArraySet();
        for (String str : context.getString(R.string.wifitrackerlib_no_attribution_annotation_packages).split(",")) {
            this.mNoAttributionAnnotationPackages.add(str);
        }
    }
}
