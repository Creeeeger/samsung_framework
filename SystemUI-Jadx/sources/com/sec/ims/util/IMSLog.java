package com.sec.ims.util;

import android.os.SemSystemProperties;
import android.text.TextUtils;
import java.util.HashSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class IMSLog {
    private static String SALES_CODE;
    private static final boolean SHIP_BUILD = "true".equals(SemSystemProperties.get("ro.product_ship", "false"));
    private static HashSet<String> mShowSLogInShipBuildSet;

    static {
        String str = SemSystemProperties.get("persist.omc.sales_code", "");
        SALES_CODE = str;
        if (TextUtils.isEmpty(str)) {
            SALES_CODE = SemSystemProperties.get("ro.csc.sales_code", "");
        }
        HashSet<String> hashSet = new HashSet<>();
        mShowSLogInShipBuildSet = hashSet;
        hashSet.add("ATX");
        mShowSLogInShipBuildSet.add("OMX");
        mShowSLogInShipBuildSet.add("VDR");
        mShowSLogInShipBuildSet.add("VDP");
        mShowSLogInShipBuildSet.add("VOP");
    }

    public static String checker(Object obj) {
        if (obj == null) {
            return null;
        }
        if (isShipBuild()) {
            return "xxxxx";
        }
        return "" + obj;
    }

    public static boolean isShipBuild() {
        if (SHIP_BUILD && !mShowSLogInShipBuildSet.contains(SALES_CODE)) {
            return true;
        }
        return false;
    }
}
