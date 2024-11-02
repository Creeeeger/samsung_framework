package com.android.systemui.unfold.updates;

import android.os.RemoteException;
import com.android.systemui.unfold.updates.RotationChangeProvider;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RotationChangeProvider$addCallback$1 implements Runnable {
    public final /* synthetic */ RotationChangeProvider.RotationListener $listener;
    public final /* synthetic */ RotationChangeProvider this$0;

    public RotationChangeProvider$addCallback$1(RotationChangeProvider rotationChangeProvider, RotationChangeProvider.RotationListener rotationListener) {
        this.this$0 = rotationChangeProvider;
        this.$listener = rotationListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (((ArrayList) this.this$0.listeners).isEmpty()) {
            RotationChangeProvider rotationChangeProvider = this.this$0;
            rotationChangeProvider.getClass();
            try {
                rotationChangeProvider.displayManager.registerDisplayListener(rotationChangeProvider.displayListener, rotationChangeProvider.mainHandler);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
        this.this$0.listeners.add(this.$listener);
    }
}
