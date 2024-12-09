package com.google.firebase.iid;

import android.util.Log;

/* loaded from: classes.dex */
final class zzg implements Runnable {
    private /* synthetic */ zzd zzokk;
    private /* synthetic */ zzf zzokl;

    zzg(zzf zzfVar, zzd zzdVar) {
        this.zzokl = zzfVar;
        this.zzokk = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzb zzbVar;
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "bg processing of the intent starting now");
        }
        zzbVar = this.zzokl.zzokj;
        zzbVar.handleIntent(this.zzokk.intent);
        this.zzokk.finish();
    }
}
