package com.samsung.android.knoxguard.service.utils;

import android.net.Uri;
import android.os.SystemProperties;

/* loaded from: classes2.dex */
public abstract class Constants {
    public static final boolean IS_SUPPORT_KGTA;
    public static final Uri KG_LOG_URI = Uri.parse("content://com.samsung.android.kgclient.statusprovider/CONTENT_LOG");
    public static final String[] strState = {"Prenormal", "Checking", "Active", "Locked", "Completed", "Error"};

    static {
        IS_SUPPORT_KGTA = SystemProperties.getInt("ro.product.first_api_level", 0) >= 30;
    }
}
