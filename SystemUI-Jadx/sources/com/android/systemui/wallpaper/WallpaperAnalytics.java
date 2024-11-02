package com.android.systemui.wallpaper;

import android.app.WallpaperManager;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import com.android.systemui.pluginlock.PluginWallpaperManager;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.utils.WhichChecker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WallpaperAnalytics {
    public final Context mContext;
    public final PluginWallpaperManager mPluginWallpaperManager;
    public final SettingsHelper mSettingsHelper;
    public final WallpaperManager mWallpaperManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.wallpaper.WallpaperAnalytics$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$wallpaper$WallpaperAnalytics$StatusField;

        static {
            int[] iArr = new int[StatusField.values().length];
            $SwitchMap$com$android$systemui$wallpaper$WallpaperAnalytics$StatusField = iArr;
            try {
                iArr[StatusField.TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$wallpaper$WallpaperAnalytics$StatusField[StatusField.FROM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum StatusField {
        TYPE,
        FROM
    }

    public WallpaperAnalytics(Context context, PluginWallpaperManager pluginWallpaperManager, SettingsHelper settingsHelper) {
        this.mContext = context;
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        this.mPluginWallpaperManager = pluginWallpaperManager;
        this.mSettingsHelper = settingsHelper;
    }

    public static String getStatusId(int i, StatusField statusField) {
        String str;
        if ((i & 60) == 0) {
            NestedScrollView$$ExternalSyntheticOutline0.m("getStatusId: mode is missing. which=", i, "WallpaperAnalytics");
        }
        int i2 = AnonymousClass1.$SwitchMap$com$android$systemui$wallpaper$WallpaperAnalytics$StatusField[statusField.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                str = null;
            } else if (WhichChecker.isFlagEnabled(i, 2)) {
                str = "WS0004";
            } else {
                str = "WS0002";
            }
        } else if (WhichChecker.isFlagEnabled(i, 2)) {
            str = "WS0003";
        } else {
            str = "WS0001";
        }
        if (str != null && WhichChecker.isSubDisplay(i)) {
            return str.concat("_C");
        }
        return str;
    }

    public final boolean isSggApplied(int i) {
        Uri semGetUri;
        int lastIndexOf;
        WallpaperManager wallpaperManager = this.mWallpaperManager;
        if (wallpaperManager.semGetWallpaperType(i) != 1000 || (semGetUri = wallpaperManager.semGetUri(i)) == null) {
            return false;
        }
        String uri = semGetUri.toString();
        if (TextUtils.isEmpty(uri) || (lastIndexOf = uri.lastIndexOf("/")) < 0) {
            return false;
        }
        String substring = uri.substring(lastIndexOf + 1);
        if (TextUtils.isEmpty(substring) || !substring.contains("sgg")) {
            return false;
        }
        return true;
    }

    public final void setWallpaperStatus(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Log.i("WallpaperAnalytics", "setWallpaperStatus: " + str + " = " + str2);
        this.mContext.getSharedPreferences("wallpaper_pref", 0).edit().putString(str, str2).apply();
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0201, code lost:
    
        if ("layered".equals(r4) != false) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x020e, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0195, code lost:
    
        if (r1 != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d8, code lost:
    
        if (r0 != 3) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01e2, code lost:
    
        if (android.text.TextUtils.isEmpty(r4) == false) goto L140;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateWallpaperStatus(int r13) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.WallpaperAnalytics.updateWallpaperStatus(int):void");
    }
}
