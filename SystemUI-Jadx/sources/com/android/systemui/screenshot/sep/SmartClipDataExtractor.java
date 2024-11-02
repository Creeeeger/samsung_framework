package com.android.systemui.screenshot.sep;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SmartClipDataExtractor {
    public static final String[] mWhiteWebAppList = {"com.android.chrome", "com.sec.android.app.sbrowser", "com.sec.android.app.sbrowser.beta"};

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class WebData {
        public final String mAppPkgName;
        public final String mUrl;

        public WebData(String str, String str2) {
            this.mUrl = str;
            this.mAppPkgName = str2;
        }

        public final String toString() {
            return "WebData: pkg=" + this.mAppPkgName + " URL=" + this.mUrl;
        }
    }
}
