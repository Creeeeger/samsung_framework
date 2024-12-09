package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.iid.zzi;
import com.sec.internal.constants.tapi.UserConsentProviderContract;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class zzx {
    private static PendingIntent zzikb;
    private static int zzino;
    private final Context zzaiq;
    private Messenger zziny;
    private final zzw zzokq;
    private zzi zzolh;
    private final SimpleArrayMap<String, TaskCompletionSource<Bundle>> zzolg = new SimpleArrayMap<>();
    private Messenger zzikf = new Messenger(new zzy(this, Looper.getMainLooper()));

    public zzx(Context context, zzw zzwVar) {
        this.zzaiq = context;
        this.zzokq = zzwVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x009e, code lost:
    
        if (r8.zzolh != null) goto L19;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.tasks.TaskCompletionSource, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.concurrent.TimeUnit] */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.content.Intent, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.lang.String] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00cb -> B:21:0x00d6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00d1 -> B:21:0x00d6). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.os.Bundle zzaa(android.os.Bundle r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzx.zzaa(android.os.Bundle):android.os.Bundle");
    }

    private static synchronized String zzawx() {
        String num;
        synchronized (zzx.class) {
            int i = zzino;
            zzino = i + 1;
            num = Integer.toString(i);
        }
        return num;
    }

    private static synchronized void zzd(Context context, Intent intent) {
        synchronized (zzx.class) {
            if (zzikb == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                zzikb = PendingIntent.getBroadcast(context, 0, intent2, 0);
            }
            intent.putExtra("app", zzikb);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zze(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new zzi.zza());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zzi) {
                        this.zzolh = (zzi) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.zziny = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        String valueOf = String.valueOf(action);
                        Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Unexpected response action: ".concat(valueOf) : new String("Unexpected response action: "));
                        return;
                    }
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                if (stringExtra == null) {
                    stringExtra = intent2.getStringExtra("unregistered");
                }
                if (stringExtra == null) {
                    zzr(intent2);
                    return;
                }
                Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(stringExtra);
                if (!matcher.matches()) {
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        Log.d("FirebaseInstanceId", stringExtra.length() != 0 ? "Unexpected response string: ".concat(stringExtra) : new String("Unexpected response string: "));
                        return;
                    }
                    return;
                } else {
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    Bundle extras = intent2.getExtras();
                    extras.putString("registration_id", group2);
                    zzh(group, extras);
                    return;
                }
            }
        }
        Log.w("FirebaseInstanceId", "Dropping invalid message");
    }

    private final void zzh(String str, Bundle bundle) {
        synchronized (this.zzolg) {
            TaskCompletionSource<Bundle> remove = this.zzolg.remove(str);
            if (remove != null) {
                remove.setResult(bundle);
            } else {
                String valueOf = String.valueOf(str);
                Log.w("FirebaseInstanceId", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
            }
        }
    }

    private final void zzr(Intent intent) {
        String stringExtra = intent.getStringExtra("error");
        if (stringExtra == null) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb = new StringBuilder(valueOf.length() + 49);
            sb.append("Unexpected response, no error or registration id ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", stringExtra.length() != 0 ? "Received InstanceID error ".concat(stringExtra) : new String("Received InstanceID error "));
        }
        if (!stringExtra.startsWith("|")) {
            synchronized (this.zzolg) {
                for (int i = 0; i < this.zzolg.size(); i++) {
                    zzh(this.zzolg.keyAt(i), intent.getExtras());
                }
            }
            return;
        }
        String[] split = stringExtra.split("\\|");
        if (split.length <= 2 || !UserConsentProviderContract.UserConsentList.ID.equals(split[1])) {
            Log.w("FirebaseInstanceId", stringExtra.length() != 0 ? "Unexpected structured response ".concat(stringExtra) : new String("Unexpected structured response "));
            return;
        }
        String str = split[2];
        String str2 = split[3];
        if (str2.startsWith(":")) {
            str2 = str2.substring(1);
        }
        zzh(str, intent.putExtra("error", str2).getExtras());
    }

    private final Bundle zzz(Bundle bundle) throws IOException {
        Bundle zzaa = zzaa(bundle);
        if (zzaa == null || !zzaa.containsKey("google.messenger")) {
            return zzaa;
        }
        Bundle zzaa2 = zzaa(bundle);
        if (zzaa2 == null || !zzaa2.containsKey("google.messenger")) {
            return zzaa2;
        }
        return null;
    }

    final Bundle zzah(Bundle bundle) throws IOException {
        if (this.zzokq.zzclo() < 12000000) {
            return zzz(bundle);
        }
        try {
            return (Bundle) Tasks.await(zzk.zzfa(this.zzaiq).zzj(1, bundle));
        } catch (InterruptedException | ExecutionException e) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(valueOf.length() + 22);
                sb.append("Error making request: ");
                sb.append(valueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            if ((e.getCause() instanceof zzu) && ((zzu) e.getCause()).getErrorCode() == 4) {
                return zzz(bundle);
            }
            return null;
        }
    }
}
