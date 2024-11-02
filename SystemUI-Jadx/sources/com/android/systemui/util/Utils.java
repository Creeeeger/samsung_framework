package com.android.systemui.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Settings;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.List;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Utils {
    public static Boolean sUseQsMediaPlayer;

    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v7 */
    public static int getEnterprisePolicyEnabled(Context context, String str, String str2, String[] strArr) {
        Uri parse = Uri.parse(str);
        int i = -1;
        ?? r7 = -1;
        if (context == null) {
            return -1;
        }
        Cursor query = context.getContentResolver().query(parse, null, str2, strArr, null);
        if (query != null) {
            try {
                query.moveToFirst();
                r7 = query.getString(query.getColumnIndex(str2)).equals("true");
            } catch (Exception unused) {
            } catch (Throwable th) {
                query.close();
                throw th;
            }
            query.close();
            i = r7;
        }
        return i;
    }

    public static boolean isGesturalModeOnDefaultDisplay(Context context, DisplayTracker displayTracker, int i) {
        int displayId = context.getDisplayId();
        displayTracker.getClass();
        if (displayId == 0 && QuickStepContract.isGesturalMode(i)) {
            return true;
        }
        return false;
    }

    public static boolean isHeadlessRemoteDisplayProvider(PackageManager packageManager, String str) {
        if (packageManager.checkPermission("android.permission.REMOTE_DISPLAY_PROVIDER", str) != 0) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(str);
        return packageManager.queryIntentActivities(intent, 0).isEmpty();
    }

    public static void safeForeach(List list, Consumer consumer) {
        int size = list.size();
        while (true) {
            size--;
            if (size >= 0) {
                Object obj = list.get(size);
                if (obj != null) {
                    consumer.accept(obj);
                }
            } else {
                return;
            }
        }
    }

    public static boolean useMediaResumption(Context context) {
        int i = Settings.Secure.getInt(context.getContentResolver(), "qs_media_resumption", 1);
        if (useQsMediaPlayer(context) && i > 0) {
            return true;
        }
        return false;
    }

    public static boolean useQsMediaPlayer(Context context) {
        if (sUseQsMediaPlayer == null) {
            boolean z = true;
            if (Settings.Global.getInt(context.getContentResolver(), "qs_media_controls", 1) <= 0) {
                z = false;
            }
            sUseQsMediaPlayer = Boolean.valueOf(z);
        }
        return sUseQsMediaPlayer.booleanValue();
    }
}
