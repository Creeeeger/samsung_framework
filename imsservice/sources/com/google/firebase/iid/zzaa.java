package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

/* loaded from: classes.dex */
final class zzaa {
    private Context zzaiq;
    private SharedPreferences zzioc;

    public zzaa(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    private zzaa(Context context, String str) {
        this.zzaiq = context;
        this.zzioc = context.getSharedPreferences(str, 0);
        String valueOf = String.valueOf(str);
        File file = new File(com.google.android.gms.common.util.zzx.getNoBackupFilesDir(this.zzaiq), "-no-backup".length() != 0 ? valueOf.concat("-no-backup") : new String(valueOf));
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || isEmpty()) {
                return;
            }
            Log.i("FirebaseInstanceId", "App restored, clearing state");
            zzawz();
            FirebaseInstanceId.getInstance().zzclg();
        } catch (IOException e) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf2 = String.valueOf(e.getMessage());
                Log.d("FirebaseInstanceId", valueOf2.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf2) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    private final synchronized boolean isEmpty() {
        return this.zzioc.getAll().isEmpty();
    }

    private static String zzbk(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    private static String zzp(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    public final synchronized void zza(String str, String str2, String str3, String str4, String str5) {
        String zzc = zzab.zzc(str4, str5, System.currentTimeMillis());
        if (zzc == null) {
            return;
        }
        SharedPreferences.Editor edit = this.zzioc.edit();
        edit.putString(zzp(str, str2, str3), zzc);
        edit.commit();
    }

    public final synchronized void zzawz() {
        this.zzioc.edit().clear().commit();
    }

    public final synchronized String zzcls() {
        String string = this.zzioc.getString("topic_operaion_queue", null);
        if (string != null) {
            String[] split = string.split(",");
            if (split.length > 1 && !TextUtils.isEmpty(split[1])) {
                return split[1];
            }
        }
        return null;
    }

    public final synchronized zzab zzq(String str, String str2, String str3) {
        return zzab.zzrt(this.zzioc.getString(zzp(str, str2, str3), null));
    }

    public final synchronized boolean zzro(String str) {
        String string = this.zzioc.getString("topic_operaion_queue", "");
        String valueOf = String.valueOf(str);
        if (!string.startsWith(valueOf.length() != 0 ? ",".concat(valueOf) : new String(","))) {
            return false;
        }
        String valueOf2 = String.valueOf(str);
        this.zzioc.edit().putString("topic_operaion_queue", string.substring((valueOf2.length() != 0 ? ",".concat(valueOf2) : new String(",")).length())).apply();
        return true;
    }

    final synchronized KeyPair zzrq(String str) {
        KeyPair zzawn;
        zzawn = zza.zzawn();
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = this.zzioc.edit();
        edit.putString(zzbk(str, "|P|"), Base64.encodeToString(zzawn.getPublic().getEncoded(), 11));
        edit.putString(zzbk(str, "|K|"), Base64.encodeToString(zzawn.getPrivate().getEncoded(), 11));
        edit.putString(zzbk(str, "cre"), Long.toString(currentTimeMillis));
        edit.commit();
        return zzawn;
    }

    public final synchronized void zzrr(String str) {
        String concat = String.valueOf(str).concat("|T|");
        SharedPreferences.Editor edit = this.zzioc.edit();
        for (String str2 : this.zzioc.getAll().keySet()) {
            if (str2.startsWith(concat)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    public final synchronized KeyPair zzrs(String str) {
        String string = this.zzioc.getString(zzbk(str, "|P|"), null);
        String string2 = this.zzioc.getString(zzbk(str, "|K|"), null);
        if (string == null || string2 == null) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(string, 8);
            byte[] decode2 = Base64.decode(string2, 8);
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(decode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(decode2)));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 19);
            sb.append("Invalid key stored ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            FirebaseInstanceId.getInstance().zzclg();
            return null;
        }
    }
}
