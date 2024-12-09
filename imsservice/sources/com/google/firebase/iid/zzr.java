package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

/* loaded from: classes.dex */
final class zzr {
    private final Messenger zzinb;
    private final zzi zzolc;

    zzr(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.zzinb = new Messenger(iBinder);
            this.zzolc = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.zzolc = new zzi(iBinder);
            this.zzinb = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    final void send(Message message) throws RemoteException {
        Messenger messenger = this.zzinb;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zzi zziVar = this.zzolc;
        if (zziVar == null) {
            throw new IllegalStateException("Both messengers are null");
        }
        zziVar.send(message);
    }
}
