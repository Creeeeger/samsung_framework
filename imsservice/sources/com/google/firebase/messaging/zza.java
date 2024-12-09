package com.google.firebase.messaging;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.R;
import com.google.android.gms.common.util.zzs;
import com.sec.internal.imscr.LogClass;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
final class zza {
    private static zza zzolt;
    private final Context mContext;
    private Bundle zzgco;
    private Method zzolu;
    private Method zzolv;
    private final AtomicInteger zzolw = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private zza(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @TargetApi(26)
    private final Notification zza(CharSequence charSequence, String str, int i, Integer num, Uri uri, PendingIntent pendingIntent, PendingIntent pendingIntent2, String str2) {
        Notification.Builder smallIcon = new Notification.Builder(this.mContext).setAutoCancel(true).setSmallIcon(i);
        if (!TextUtils.isEmpty(charSequence)) {
            smallIcon.setContentTitle(charSequence);
        }
        if (!TextUtils.isEmpty(str)) {
            smallIcon.setContentText(str);
            smallIcon.setStyle(new Notification.BigTextStyle().bigText(str));
        }
        if (num != null) {
            smallIcon.setColor(num.intValue());
        }
        if (uri != null) {
            smallIcon.setSound(uri);
        }
        if (pendingIntent != null) {
            smallIcon.setContentIntent(pendingIntent);
        }
        if (pendingIntent2 != null) {
            smallIcon.setDeleteIntent(pendingIntent2);
        }
        if (str2 != null) {
            if (this.zzolu == null) {
                this.zzolu = zzrx("setChannelId");
            }
            if (this.zzolu == null) {
                this.zzolu = zzrx("setChannel");
            }
            Method method = this.zzolu;
            if (method == null) {
                Log.e("FirebaseMessaging", "Error while setting the notification channel");
            } else {
                try {
                    method.invoke(smallIcon, str2);
                } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException e) {
                    Log.e("FirebaseMessaging", "Error while setting the notification channel", e);
                }
            }
        }
        return smallIcon.build();
    }

    private static void zza(Intent intent, Bundle bundle) {
        for (String str : bundle.keySet()) {
            if (str.startsWith("google.c.a.") || str.equals("from")) {
                intent.putExtra(str, bundle.getString(str));
            }
        }
    }

    static boolean zzai(Bundle bundle) {
        return "1".equals(zzd(bundle, "gcm.n.e")) || zzd(bundle, "gcm.n.icon") != null;
    }

    static Uri zzaj(Bundle bundle) {
        String zzd = zzd(bundle, "gcm.n.link_android");
        if (TextUtils.isEmpty(zzd)) {
            zzd = zzd(bundle, "gcm.n.link");
        }
        if (TextUtils.isEmpty(zzd)) {
            return null;
        }
        return Uri.parse(zzd);
    }

    static String zzak(Bundle bundle) {
        String zzd = zzd(bundle, "gcm.n.sound2");
        return TextUtils.isEmpty(zzd) ? zzd(bundle, "gcm.n.sound") : zzd;
    }

    private final Bundle zzawf() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        Bundle bundle2 = this.zzgco;
        if (bundle2 != null) {
            return bundle2;
        }
        try {
            applicationInfo = this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
            applicationInfo = null;
        }
        if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
            return Bundle.EMPTY;
        }
        this.zzgco = bundle;
        return bundle;
    }

    static String zzd(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    static synchronized zza zzfc(Context context) {
        zza zzaVar;
        synchronized (zza.class) {
            if (zzolt == null) {
                zzolt = new zza(context);
            }
            zzaVar = zzolt;
        }
        return zzaVar;
    }

    static String zzh(Bundle bundle, String str) {
        String valueOf = String.valueOf(str);
        return zzd(bundle, "_loc_key".length() != 0 ? valueOf.concat("_loc_key") : new String(valueOf));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static Object[] zzi(Bundle bundle, String str) {
        String valueOf = String.valueOf(str);
        String zzd = zzd(bundle, "_loc_args".length() != 0 ? valueOf.concat("_loc_args") : new String(valueOf));
        if (TextUtils.isEmpty(zzd)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(zzd);
            int length = jSONArray.length();
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                strArr[i] = jSONArray.opt(i);
            }
            return strArr;
        } catch (JSONException unused) {
            String valueOf2 = String.valueOf(str);
            String substring = ("_loc_args".length() != 0 ? valueOf2.concat("_loc_args") : new String(valueOf2)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 41 + String.valueOf(zzd).length());
            sb.append("Malformed ");
            sb.append(substring);
            sb.append(": ");
            sb.append(zzd);
            sb.append("  Default value will be used.");
            Log.w("FirebaseMessaging", sb.toString());
            return null;
        }
    }

    @TargetApi(26)
    private final boolean zzit(int i) {
        return true;
    }

    private final String zzj(Bundle bundle, String str) {
        String zzd = zzd(bundle, str);
        if (!TextUtils.isEmpty(zzd)) {
            return zzd;
        }
        String zzh = zzh(bundle, str);
        if (TextUtils.isEmpty(zzh)) {
            return null;
        }
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(zzh, "string", this.mContext.getPackageName());
        if (identifier == 0) {
            String valueOf = String.valueOf(str);
            String substring = ("_loc_key".length() != 0 ? valueOf.concat("_loc_key") : new String(valueOf)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 49 + String.valueOf(zzh).length());
            sb.append(substring);
            sb.append(" resource not found: ");
            sb.append(zzh);
            sb.append(" Default value will be used.");
            Log.w("FirebaseMessaging", sb.toString());
            return null;
        }
        Object[] zzi = zzi(bundle, str);
        if (zzi == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, zzi);
        } catch (MissingFormatArgumentException e) {
            String arrays = Arrays.toString(zzi);
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzh).length() + 58 + String.valueOf(arrays).length());
            sb2.append("Missing format argument for ");
            sb2.append(zzh);
            sb2.append(": ");
            sb2.append(arrays);
            sb2.append(" Default value will be used.");
            Log.w("FirebaseMessaging", sb2.toString(), e);
            return null;
        }
    }

    @TargetApi(26)
    private static Method zzrx(String str) {
        try {
            return Notification.Builder.class.getMethod(str, String.class);
        } catch (NoSuchMethodException | SecurityException unused) {
            return null;
        }
    }

    private final Integer zzry(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 54);
                sb.append("Color ");
                sb.append(str);
                sb.append(" not valid. Notification will use default color.");
                Log.w("FirebaseMessaging", sb.toString());
            }
        }
        int i = this.zzawf().getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i == 0) {
            return null;
        }
        try {
            return Integer.valueOf(ContextCompat.getColor(this.mContext, i));
        } catch (Resources.NotFoundException unused2) {
            Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            return null;
        }
    }

    @TargetApi(26)
    private final String zzrz(String str) {
        String str2;
        if (!zzs.isAtLeastO()) {
            return null;
        }
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService(NotificationManager.class);
        try {
            if (this.zzolv == null) {
                this.zzolv = notificationManager.getClass().getMethod("getNotificationChannel", String.class);
            }
            if (!TextUtils.isEmpty(str)) {
                if (this.zzolv.invoke(notificationManager, str) != null) {
                    return str;
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 122);
                sb.append("Notification Channel requested (");
                sb.append(str);
                sb.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
                Log.w("FirebaseMessaging", sb.toString());
            }
            String string = zzawf().getString("com.google.firebase.messaging.default_notification_channel_id");
            if (TextUtils.isEmpty(string)) {
                str2 = "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.";
            } else {
                if (this.zzolv.invoke(notificationManager, string) != null) {
                    return string;
                }
                str2 = "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.";
            }
            Log.w("FirebaseMessaging", str2);
            if (this.zzolv.invoke(notificationManager, "fcm_fallback_notification_channel") == null) {
                Class<?> cls = Class.forName("android.app.NotificationChannel");
                notificationManager.getClass().getMethod("createNotificationChannel", cls).invoke(notificationManager, cls.getConstructor(String.class, CharSequence.class, Integer.TYPE).newInstance("fcm_fallback_notification_channel", this.mContext.getString(R.string.fcm_fallback_notification_channel_label), 3));
            }
            return "fcm_fallback_notification_channel";
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | LinkageError | NoSuchMethodException | SecurityException | InvocationTargetException e) {
            Log.e("FirebaseMessaging", "Error while setting the notification channel", e);
            return null;
        }
    }

    private final PendingIntent zzu(Bundle bundle) {
        Intent launchIntentForPackage;
        String zzd = zzd(bundle, "gcm.n.click_action");
        if (TextUtils.isEmpty(zzd)) {
            Uri zzaj = zzaj(bundle);
            if (zzaj != null) {
                launchIntentForPackage = new Intent("android.intent.action.VIEW");
                launchIntentForPackage.setPackage(this.mContext.getPackageName());
                launchIntentForPackage.setData(zzaj);
            } else {
                launchIntentForPackage = this.mContext.getPackageManager().getLaunchIntentForPackage(this.mContext.getPackageName());
                if (launchIntentForPackage == null) {
                    Log.w("FirebaseMessaging", "No activity found to launch app");
                }
            }
        } else {
            launchIntentForPackage = new Intent(zzd);
            launchIntentForPackage.setPackage(this.mContext.getPackageName());
            launchIntentForPackage.setFlags(LogClass.SIM_EVENT);
        }
        if (launchIntentForPackage == null) {
            return null;
        }
        launchIntentForPackage.addFlags(67108864);
        Bundle bundle2 = new Bundle(bundle);
        FirebaseMessagingService.zzr(bundle2);
        launchIntentForPackage.putExtras(bundle2);
        for (String str : bundle2.keySet()) {
            if (str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                launchIntentForPackage.removeExtra(str);
            }
        }
        return PendingIntent.getActivity(this.mContext, this.zzolw.incrementAndGet(), launchIntentForPackage, LogClass.IM_SWITCH_OFF);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final boolean zzt(android.os.Bundle r14) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.zza.zzt(android.os.Bundle):boolean");
    }
}
