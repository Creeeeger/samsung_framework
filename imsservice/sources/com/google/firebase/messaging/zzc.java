package com.google.firebase.messaging;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.zzflr;
import com.google.android.gms.internal.zzfmu;
import com.google.android.gms.internal.zzfmv;
import com.google.android.gms.measurement.AppMeasurement;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzc {
    private static Object zza(zzfmv zzfmvVar, String str, zzb zzbVar) {
        Class<?> cls;
        Object zzay;
        Object newInstance;
        Object obj = null;
        try {
            cls = Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            zzay = zzay(zzfmvVar.zzpzs, zzfmvVar.zzpzt);
            newInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            e = e;
        }
        try {
            cls.getField("mOrigin").set(newInstance, str);
            cls.getField("mCreationTimestamp").set(newInstance, Long.valueOf(zzfmvVar.zzpzu));
            cls.getField("mName").set(newInstance, zzfmvVar.zzpzs);
            cls.getField("mValue").set(newInstance, zzfmvVar.zzpzt);
            if (!TextUtils.isEmpty(zzfmvVar.zzpzv)) {
                obj = zzfmvVar.zzpzv;
            }
            cls.getField("mTriggerEventName").set(newInstance, obj);
            cls.getField("mTimedOutEventName").set(newInstance, !TextUtils.isEmpty(zzfmvVar.zzqaa) ? zzfmvVar.zzqaa : zzbVar.zzbta());
            cls.getField("mTimedOutEventParams").set(newInstance, zzay);
            cls.getField("mTriggerTimeout").set(newInstance, Long.valueOf(zzfmvVar.zzpzw));
            cls.getField("mTriggeredEventName").set(newInstance, !TextUtils.isEmpty(zzfmvVar.zzpzy) ? zzfmvVar.zzpzy : zzbVar.zzbsz());
            cls.getField("mTriggeredEventParams").set(newInstance, zzay);
            cls.getField("mTimeToLive").set(newInstance, Long.valueOf(zzfmvVar.zzgoc));
            cls.getField("mExpiredEventName").set(newInstance, !TextUtils.isEmpty(zzfmvVar.zzqab) ? zzfmvVar.zzqab : zzbVar.zzbtb());
            cls.getField("mExpiredEventParams").set(newInstance, zzay);
            return newInstance;
        } catch (Exception e2) {
            e = e2;
            obj = newInstance;
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            return obj;
        }
    }

    private static String zza(zzfmv zzfmvVar, zzb zzbVar) {
        return (zzfmvVar == null || TextUtils.isEmpty(zzfmvVar.zzpzz)) ? zzbVar.zzbtc() : zzfmvVar.zzpzz;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.util.List] */
    private static List<Object> zza(AppMeasurement appMeasurement, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getConditionalUserProperties", String.class, String.class);
            declaredMethod.setAccessible(true);
            arrayList = (List) declaredMethod.invoke(appMeasurement, str, "");
        } catch (Exception e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        }
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            int size = arrayList.size();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 55);
            sb.append("Number of currently set _Es for origin: ");
            sb.append(str);
            sb.append(" is ");
            sb.append(size);
            Log.v("FirebaseAbtUtil", sb.toString());
        }
        return arrayList;
    }

    private static void zza(Context context, String str, String str2, String str3, String str4) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(str);
            Log.v("FirebaseAbtUtil", valueOf.length() != 0 ? "_CE(experimentId) called by ".concat(valueOf) : new String("_CE(experimentId) called by "));
        }
        if (zzey(context)) {
            AppMeasurement zzde = zzde(context);
            try {
                Method declaredMethod = AppMeasurement.class.getDeclaredMethod("clearConditionalUserProperty", String.class, String.class, Bundle.class);
                declaredMethod.setAccessible(true);
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 17 + String.valueOf(str3).length());
                    sb.append("Clearing _E: [");
                    sb.append(str2);
                    sb.append(", ");
                    sb.append(str3);
                    sb.append("]");
                    Log.v("FirebaseAbtUtil", sb.toString());
                }
                declaredMethod.invoke(zzde, str2, str4, zzay(str2, str3));
            } catch (Exception e) {
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            }
        }
    }

    public static void zza(Context context, String str, byte[] bArr, zzb zzbVar, int i) {
        String str2;
        String str3 = "com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty";
        int i2 = 2;
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(str);
            Log.v("FirebaseAbtUtil", valueOf.length() != 0 ? "_SE called by ".concat(valueOf) : new String("_SE called by "));
        }
        if (zzey(context)) {
            AppMeasurement zzde = zzde(context);
            zzfmv zzam = zzam(bArr);
            if (zzam == null) {
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    Log.v("FirebaseAbtUtil", "_SE failed; either _P was not set, or we couldn't deserialize the _P.");
                    return;
                }
                return;
            }
            try {
                Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
                boolean z = false;
                for (Object obj : zza(zzde, str)) {
                    String zzbe = zzbe(obj);
                    String zzbf = zzbf(obj);
                    long longValue = ((Long) Class.forName(str3).getField("mCreationTimestamp").get(obj)).longValue();
                    boolean z2 = true;
                    if (zzam.zzpzs.equals(zzbe) && zzam.zzpzt.equals(zzbf)) {
                        if (Log.isLoggable("FirebaseAbtUtil", i2)) {
                            StringBuilder sb = new StringBuilder(String.valueOf(zzbe).length() + 23 + String.valueOf(zzbf).length());
                            sb.append("_E is already set. [");
                            sb.append(zzbe);
                            sb.append(", ");
                            sb.append(zzbf);
                            sb.append("]");
                            Log.v("FirebaseAbtUtil", sb.toString());
                        }
                        z = true;
                    } else {
                        zzfmu[] zzfmuVarArr = zzam.zzqad;
                        int length = zzfmuVarArr.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length) {
                                str2 = str3;
                                z2 = false;
                                break;
                            }
                            str2 = str3;
                            if (!zzfmuVarArr[i3].zzpzs.equals(zzbe)) {
                                i3++;
                                str3 = str2;
                            } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                StringBuilder sb2 = new StringBuilder(String.valueOf(zzbe).length() + 33 + String.valueOf(zzbf).length());
                                sb2.append("_E is found in the _OE list. [");
                                sb2.append(zzbe);
                                sb2.append(", ");
                                sb2.append(zzbf);
                                sb2.append("]");
                                Log.v("FirebaseAbtUtil", sb2.toString());
                            }
                        }
                        if (!z2) {
                            if (zzam.zzpzu > longValue) {
                                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                    StringBuilder sb3 = new StringBuilder(String.valueOf(zzbe).length() + 115 + String.valueOf(zzbf).length());
                                    sb3.append("Clearing _E as it was not in the _OE list, andits start time is older than the start time of the _E to be set. [");
                                    sb3.append(zzbe);
                                    sb3.append(", ");
                                    sb3.append(zzbf);
                                    sb3.append("]");
                                    Log.v("FirebaseAbtUtil", sb3.toString());
                                }
                                zza(context, str, zzbe, zzbf, zza(zzam, zzbVar));
                            } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                StringBuilder sb4 = new StringBuilder(String.valueOf(zzbe).length() + 109 + String.valueOf(zzbf).length());
                                sb4.append("_E was not found in the _OE list, but not clearing it as it has a new start time than the _E to be set.  [");
                                sb4.append(zzbe);
                                sb4.append(", ");
                                sb4.append(zzbf);
                                sb4.append("]");
                                Log.v("FirebaseAbtUtil", sb4.toString());
                            }
                        }
                        str3 = str2;
                        i2 = 2;
                    }
                }
                if (!z) {
                    zza(zzde, context, str, zzam, zzbVar, 1);
                    return;
                }
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    String str4 = zzam.zzpzs;
                    String str5 = zzam.zzpzt;
                    StringBuilder sb5 = new StringBuilder(String.valueOf(str4).length() + 44 + String.valueOf(str5).length());
                    sb5.append("_E is already set. Not setting it again [");
                    sb5.append(str4);
                    sb5.append(", ");
                    sb5.append(str5);
                    sb5.append("]");
                    Log.v("FirebaseAbtUtil", sb5.toString());
                }
            } catch (Exception e) {
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            }
        }
    }

    private static void zza(AppMeasurement appMeasurement, Context context, String str, zzfmv zzfmvVar, zzb zzbVar, int i) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String str2 = zzfmvVar.zzpzs;
            String str3 = zzfmvVar.zzpzt;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 7 + String.valueOf(str3).length());
            sb.append("_SEI: ");
            sb.append(str2);
            sb.append(" ");
            sb.append(str3);
            Log.v("FirebaseAbtUtil", sb.toString());
        }
        try {
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            List<Object> zza = zza(appMeasurement, str);
            if (zza(appMeasurement, str).size() >= zzb(appMeasurement, str)) {
                int i2 = zzfmvVar.zzqac;
                if (i2 == 0) {
                    i2 = 1;
                }
                if (i2 != 1) {
                    if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                        String str4 = zzfmvVar.zzpzs;
                        String str5 = zzfmvVar.zzpzt;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str4).length() + 44 + String.valueOf(str5).length());
                        sb2.append("_E won't be set due to overflow policy. [");
                        sb2.append(str4);
                        sb2.append(", ");
                        sb2.append(str5);
                        sb2.append("]");
                        Log.v("FirebaseAbtUtil", sb2.toString());
                        return;
                    }
                    return;
                }
                Object obj = zza.get(0);
                String zzbe = zzbe(obj);
                String zzbf = zzbf(obj);
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(zzbe).length() + 38);
                    sb3.append("Clearing _E due to overflow policy: [");
                    sb3.append(zzbe);
                    sb3.append("]");
                    Log.v("FirebaseAbtUtil", sb3.toString());
                }
                zza(context, str, zzbe, zzbf, zza(zzfmvVar, zzbVar));
            }
            for (Object obj2 : zza) {
                String zzbe2 = zzbe(obj2);
                String zzbf2 = zzbf(obj2);
                if (zzbe2.equals(zzfmvVar.zzpzs) && !zzbf2.equals(zzfmvVar.zzpzt) && Log.isLoggable("FirebaseAbtUtil", 2)) {
                    StringBuilder sb4 = new StringBuilder(zzbe2.length() + 77 + zzbf2.length());
                    sb4.append("Clearing _E, as only one _V of the same _E can be set atany given time: [");
                    sb4.append(zzbe2);
                    sb4.append(", ");
                    sb4.append(zzbf2);
                    sb4.append("].");
                    Log.v("FirebaseAbtUtil", sb4.toString());
                    zza(context, str, zzbe2, zzbf2, zza(zzfmvVar, zzbVar));
                }
            }
            Object zza2 = zza(zzfmvVar, str, zzbVar);
            if (zza2 != null) {
                try {
                    Method declaredMethod = AppMeasurement.class.getDeclaredMethod("setConditionalUserProperty", Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty"));
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(appMeasurement, zza2);
                    return;
                } catch (Exception e) {
                    Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
                    return;
                }
            }
            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                String str6 = zzfmvVar.zzpzs;
                String str7 = zzfmvVar.zzpzt;
                StringBuilder sb5 = new StringBuilder(String.valueOf(str6).length() + 42 + String.valueOf(str7).length());
                sb5.append("Could not create _CUP for: [");
                sb5.append(str6);
                sb5.append(", ");
                sb5.append(str7);
                sb5.append("]. Skipping.");
                Log.v("FirebaseAbtUtil", sb5.toString());
            }
        } catch (Exception e2) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e2);
        }
    }

    private static zzfmv zzam(byte[] bArr) {
        try {
            return zzfmv.zzbi(bArr);
        } catch (zzflr unused) {
            return null;
        }
    }

    private static Bundle zzay(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(str, str2);
        return bundle;
    }

    private static int zzb(AppMeasurement appMeasurement, String str) {
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getMaxUserProperties", String.class);
            declaredMethod.setAccessible(true);
            return ((Integer) declaredMethod.invoke(appMeasurement, str)).intValue();
        } catch (Exception e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            return 20;
        }
    }

    private static String zzbe(Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mName").get(obj);
    }

    private static String zzbf(Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mValue").get(obj);
    }

    private static AppMeasurement zzde(Context context) {
        try {
            return AppMeasurement.getInstance(context);
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }

    private static boolean zzey(Context context) {
        if (zzde(context) == null) {
            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                Log.v("FirebaseAbtUtil", "Firebase Analytics not available");
            }
            return false;
        }
        try {
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            return true;
        } catch (ClassNotFoundException unused) {
            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                Log.v("FirebaseAbtUtil", "Firebase Analytics library is missing support for abt. Please update to a more recent version.");
            }
            return false;
        }
    }
}
