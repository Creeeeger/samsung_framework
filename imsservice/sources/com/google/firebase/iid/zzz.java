package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import com.sec.internal.imscr.LogClass;
import java.util.ArrayDeque;
import java.util.Queue;

/* loaded from: classes.dex */
public final class zzz {
    private static zzz zzolj;
    private final SimpleArrayMap<String, String> zzolk = new SimpleArrayMap<>();
    private Boolean zzoll = null;
    final Queue<Intent> zzolm = new ArrayDeque();
    private Queue<Intent> zzoln = new ArrayDeque();

    private zzz() {
    }

    public static PendingIntent zza(Context context, int i, Intent intent, int i2) {
        Intent intent2 = new Intent(context, (Class<?>) FirebaseInstanceIdReceiver.class);
        intent2.setAction("com.google.firebase.MESSAGING_EVENT");
        intent2.putExtra("wrapped_intent", intent);
        return PendingIntent.getBroadcast(context, i, intent2, LogClass.IM_SWITCH_OFF);
    }

    public static synchronized zzz zzclq() {
        zzz zzzVar;
        synchronized (zzz.class) {
            if (zzolj == null) {
                zzolj = new zzz();
            }
            zzzVar = zzolj;
        }
        return zzzVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d4 A[Catch: IllegalStateException -> 0x0109, SecurityException -> 0x012d, TryCatch #4 {IllegalStateException -> 0x0109, SecurityException -> 0x012d, blocks: (B:36:0x00d0, B:38:0x00d4, B:41:0x00dd, B:42:0x00e3, B:44:0x00eb, B:46:0x00fd, B:50:0x00f0), top: B:35:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00eb A[Catch: IllegalStateException -> 0x0109, SecurityException -> 0x012d, TryCatch #4 {IllegalStateException -> 0x0109, SecurityException -> 0x012d, blocks: (B:36:0x00d0, B:38:0x00d4, B:41:0x00dd, B:42:0x00e3, B:44:0x00eb, B:46:0x00fd, B:50:0x00f0), top: B:35:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fd A[Catch: IllegalStateException -> 0x0109, SecurityException -> 0x012d, TRY_LEAVE, TryCatch #4 {IllegalStateException -> 0x0109, SecurityException -> 0x012d, blocks: (B:36:0x00d0, B:38:0x00d4, B:41:0x00dd, B:42:0x00e3, B:44:0x00eb, B:46:0x00fd, B:50:0x00f0), top: B:35:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0107 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f0 A[Catch: IllegalStateException -> 0x0109, SecurityException -> 0x012d, TryCatch #4 {IllegalStateException -> 0x0109, SecurityException -> 0x012d, blocks: (B:36:0x00d0, B:38:0x00d4, B:41:0x00dd, B:42:0x00e3, B:44:0x00eb, B:46:0x00fd, B:50:0x00f0), top: B:35:0x00d0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int zze(android.content.Context r7, android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzz.zze(android.content.Context, android.content.Intent):int");
    }

    public final int zzb(Context context, String str, Intent intent) {
        Queue<Intent> queue;
        str.hashCode();
        if (str.equals("com.google.firebase.INSTANCE_ID_EVENT")) {
            queue = this.zzolm;
        } else {
            if (!str.equals("com.google.firebase.MESSAGING_EVENT")) {
                Log.w("FirebaseInstanceId", str.length() != 0 ? "Unknown service action: ".concat(str) : new String("Unknown service action: "));
                return 500;
            }
            queue = this.zzoln;
        }
        queue.offer(intent);
        Intent intent2 = new Intent(str);
        intent2.setPackage(context.getPackageName());
        return zze(context, intent2);
    }

    public final Intent zzclr() {
        return this.zzoln.poll();
    }
}
