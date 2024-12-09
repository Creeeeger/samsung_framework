package com.sec.internal.ims.entitlement.util;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.helper.AlarmTimer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class IntentScheduler {
    private static final String LOG_TAG = "IntentScheduler";
    private static Map<String, PendingIntent> mActionPendingIntent = new ConcurrentHashMap();

    public static void scheduleTimer(Context context, int i, String str, long j) {
        scheduleTimer(context, i, str, null, j);
    }

    public static void scheduleTimer(Context context, int i, String str, Bundle bundle, long j) {
        if (mActionPendingIntent.get(intentkey(i, str)) != null) {
            stopTimer(context, i, str);
        }
        AlarmTimer.start(context, getPendingIntent(context, i, str, bundle), j);
        Log.i(LOG_TAG, "scheduled action: " + str + " with time: " + j + "Pending timers:" + mActionPendingIntent);
    }

    public static boolean hasActionPendingIntent(int i, String str) {
        return mActionPendingIntent.get(intentkey(i, str)) != null;
    }

    private static PendingIntent getPendingIntent(Context context, int i, String str, Bundle bundle) {
        PendingIntent pendingIntent = mActionPendingIntent.get(intentkey(i, str));
        if (pendingIntent != null) {
            return pendingIntent;
        }
        Intent intent = new Intent();
        intent.setPackage(context.getPackageName());
        intent.setAction(str);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putInt(NSDSNamespaces.NSDSExtras.SIM_SLOT_IDX, i);
        intent.putExtras(bundle);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 33554432);
        mActionPendingIntent.put(intentkey(i, str), broadcast);
        return broadcast;
    }

    public static void stopTimer(Context context, int i, String str) {
        stopTimer(context, intentkey(i, str));
    }

    private static void stopTimer(Context context, String str) {
        PendingIntent pendingIntent = mActionPendingIntent.get(str);
        if (pendingIntent == null) {
            Log.i(LOG_TAG, "stopTimer: intentkey:" + str + " is not running");
            return;
        }
        AlarmTimer.stop(context, pendingIntent);
        Log.i(LOG_TAG, "stopped Timer for intentkey: " + str);
        mActionPendingIntent.remove(str);
    }

    public static void stopAllTimers(Context context) {
        Log.i(LOG_TAG, "stopAllTimers()");
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(mActionPendingIntent.keySet());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            stopTimer(context, (String) it.next());
        }
    }

    private static String intentkey(int i, String str) {
        if (i < 0) {
            i = 0;
        }
        return i + ":" + str;
    }
}
