package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.zzbq;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zzm implements ServiceConnection {
    int state;
    final Messenger zzing;
    final Queue<zzt<?>> zzini;
    final SparseArray<zzt<?>> zzinj;
    zzr zzoky;
    final /* synthetic */ zzk zzokz;

    private zzm(zzk zzkVar) {
        this.zzokz = zzkVar;
        this.state = 0;
        this.zzing = new Messenger(new Handler(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.firebase.iid.zzn
            private final zzm zzola;

            {
                this.zzola = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.zzola.zzc(message);
            }
        }));
        this.zzini = new ArrayDeque();
        this.zzinj = new SparseArray<>();
    }

    private final void zza(zzu zzuVar) {
        Iterator<zzt<?>> it = this.zzini.iterator();
        while (it.hasNext()) {
            it.next().zzb(zzuVar);
        }
        this.zzini.clear();
        for (int i = 0; i < this.zzinj.size(); i++) {
            this.zzinj.valueAt(i).zzb(zzuVar);
        }
        this.zzinj.clear();
    }

    private final void zzawt() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.zzokz.zzind;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.firebase.iid.zzp
            private final zzm zzola;

            {
                this.zzola = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final zzt<?> poll;
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                final zzm zzmVar = this.zzola;
                while (true) {
                    synchronized (zzmVar) {
                        if (zzmVar.state != 2) {
                            return;
                        }
                        if (zzmVar.zzini.isEmpty()) {
                            zzmVar.zzawu();
                            return;
                        }
                        poll = zzmVar.zzini.poll();
                        zzmVar.zzinj.put(poll.zzino, poll);
                        scheduledExecutorService2 = zzmVar.zzokz.zzind;
                        scheduledExecutorService2.schedule(new Runnable(zzmVar, poll) { // from class: com.google.firebase.iid.zzq
                            private final zzm zzola;
                            private final zzt zzolb;

                            {
                                this.zzola = zzmVar;
                                this.zzolb = poll;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zzola.zzec(this.zzolb.zzino);
                            }
                        }, 30L, TimeUnit.SECONDS);
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String valueOf = String.valueOf(poll);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 8);
                        sb.append("Sending ");
                        sb.append(valueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    context = zzmVar.zzokz.zzaiq;
                    Messenger messenger = zzmVar.zzing;
                    Message obtain = Message.obtain();
                    obtain.what = poll.what;
                    obtain.arg1 = poll.zzino;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", poll.zzaww());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", poll.zzinp);
                    obtain.setData(bundle);
                    try {
                        zzmVar.zzoky.send(obtain);
                    } catch (RemoteException e) {
                        zzmVar.zzl(2, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        if (iBinder == null) {
            zzl(0, "Null service connection");
            return;
        }
        try {
            this.zzoky = new zzr(iBinder);
            this.state = 2;
            zzawt();
        } catch (RemoteException e) {
            zzl(0, e.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        zzl(2, "Service disconnected");
    }

    final synchronized void zzawu() {
        Context context;
        if (this.state == 2 && this.zzini.isEmpty() && this.zzinj.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.state = 3;
            com.google.android.gms.common.stats.zza.zzanm();
            context = this.zzokz.zzaiq;
            context.unbindService(this);
        }
    }

    final synchronized void zzawv() {
        if (this.state == 1) {
            zzl(1, "Timed out while binding");
        }
    }

    final synchronized boolean zzb(zzt zztVar) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        int i = this.state;
        if (i == 0) {
            this.zzini.add(zztVar);
            zzbq.checkState(this.state == 0);
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Starting bind to GmsCore");
            }
            this.state = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            com.google.android.gms.common.stats.zza zzanm = com.google.android.gms.common.stats.zza.zzanm();
            context = this.zzokz.zzaiq;
            if (zzanm.zza(context, intent, this, 1)) {
                scheduledExecutorService = this.zzokz.zzind;
                scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.firebase.iid.zzo
                    private final zzm zzola;

                    {
                        this.zzola = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzola.zzawv();
                    }
                }, 30L, TimeUnit.SECONDS);
            } else {
                zzl(0, "Unable to bind to service");
            }
            return true;
        }
        if (i == 1) {
            this.zzini.add(zztVar);
            return true;
        }
        if (i == 2) {
            this.zzini.add(zztVar);
            zzawt();
            return true;
        }
        if (i != 3 && i != 4) {
            int i2 = this.state;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Unknown state: ");
            sb.append(i2);
            throw new IllegalStateException(sb.toString());
        }
        return false;
    }

    final boolean zzc(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            zzt<?> zztVar = this.zzinj.get(i);
            if (zztVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.zzinj.remove(i);
            zzawu();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                zztVar.zzb(new zzu(4, "Not supported by GmsCore"));
            } else {
                zztVar.zzx(data);
            }
            return true;
        }
    }

    final synchronized void zzec(int i) {
        zzt<?> zztVar = this.zzinj.get(i);
        if (zztVar != null) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Timing out request: ");
            sb.append(i);
            Log.w("MessengerIpcClient", sb.toString());
            this.zzinj.remove(i);
            zztVar.zzb(new zzu(3, "Timed out waiting for response"));
            zzawu();
        }
    }

    final synchronized void zzl(int i, String str) {
        Context context;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(str);
            Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
        }
        int i2 = this.state;
        if (i2 == 0) {
            throw new IllegalStateException();
        }
        if (i2 == 1 || i2 == 2) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Unbinding service");
            }
            this.state = 4;
            com.google.android.gms.common.stats.zza.zzanm();
            context = this.zzokz.zzaiq;
            context.unbindService(this);
            zza(new zzu(i, str));
            return;
        }
        if (i2 == 3) {
            this.state = 4;
        } else {
            if (i2 == 4) {
                return;
            }
            int i3 = this.state;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Unknown state: ");
            sb.append(i3);
            throw new IllegalStateException(sb.toString());
        }
    }
}
