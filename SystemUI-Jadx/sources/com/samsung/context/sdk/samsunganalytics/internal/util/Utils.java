package com.samsung.context.sdk.samsunganalytics.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import com.samsung.context.sdk.samsunganalytics.AnalyticsException;
import com.samsung.context.sdk.samsunganalytics.Configuration;
import com.samsung.context.sdk.samsunganalytics.internal.executor.SingleThreadExecutor;
import com.samsung.context.sdk.samsunganalytics.internal.property.PropertyLogBuildClient;
import com.samsung.context.sdk.samsunganalytics.internal.setting.SettingLogBuildClient;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Utils {
    public static int DMA_VERSION = -1;
    public static AnonymousClass1 br;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum Depth {
        ONE_DEPTH("\u0002", "\u0003"),
        TWO_DEPTH("\u0004", "\u0005"),
        THREE_DEPTH("\u0006", "\u0007");

        private String collDlm;
        private String keyvalueDlm;

        Depth(String str, String str2) {
            this.collDlm = str;
            this.keyvalueDlm = str2;
        }

        public final String getCollectionDLM() {
            return this.collDlm;
        }

        public final String getKeyValueDLM() {
            return this.keyvalueDlm;
        }
    }

    public static boolean compareDays(int i, Long l) {
        if (Long.valueOf(System.currentTimeMillis()).longValue() > (i * 86400000) + l.longValue()) {
            return true;
        }
        return false;
    }

    public static int getDMAversion(Context context) {
        if (DMA_VERSION == -1) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.sec.android.diagmonagent", 0);
                DMA_VERSION = packageInfo.versionCode;
                Debug.LogD("Utils", "dma pkg:" + packageInfo.versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
                Debug.LogD("Utils", "DMA Client is not exist");
                DMA_VERSION = 0;
            }
        }
        return DMA_VERSION;
    }

    public static boolean isDMADataProvideVersion(Context context) {
        if (710000000 <= getDMAversion(context)) {
            return true;
        }
        return false;
    }

    public static String makeDelimiterString(Map map, Depth depth) {
        String sb;
        String str = null;
        for (Map.Entry entry : ((HashMap) map).entrySet()) {
            if (str == null) {
                sb = entry.getKey().toString();
            } else {
                StringBuilder m = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
                m.append(depth.getCollectionDLM());
                StringBuilder m2 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(m.toString());
                m2.append(entry.getKey());
                sb = m2.toString();
            }
            StringBuilder m3 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(sb);
            m3.append(depth.getKeyValueDLM());
            StringBuilder m4 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(m3.toString());
            m4.append(entry.getValue());
            str = m4.toString();
        }
        return str;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.samsung.context.sdk.samsunganalytics.internal.util.Utils$1] */
    public static void registerReceiver(Context context, final Configuration configuration) {
        Debug.LogENG("register BR");
        if (br == null) {
            br = new BroadcastReceiver() { // from class: com.samsung.context.sdk.samsunganalytics.internal.util.Utils.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context2, Intent intent) {
                    String str;
                    StringBuilder sb = new StringBuilder("receive BR ");
                    if (intent != null) {
                        str = intent.getAction();
                    } else {
                        str = "null";
                    }
                    sb.append(str);
                    Debug.LogENG(sb.toString());
                    if (intent != null && "android.intent.action.ACTION_POWER_CONNECTED".equals(intent.getAction())) {
                        SingleThreadExecutor.getInstance().execute(new SettingLogBuildClient(context2, Configuration.this));
                        SingleThreadExecutor.getInstance().execute(new PropertyLogBuildClient(context2, Configuration.this));
                    }
                }
            };
            context.registerReceiver(br, AppCompatDelegateImpl$$ExternalSyntheticOutline0.m("android.intent.action.ACTION_POWER_CONNECTED"));
            return;
        }
        Debug.LogENG("BR is already registered");
    }

    public static void throwException(String str) {
        if (!Build.TYPE.equals("eng")) {
            Debug.LogE(str);
            return;
        }
        throw new AnalyticsException(str);
    }
}
