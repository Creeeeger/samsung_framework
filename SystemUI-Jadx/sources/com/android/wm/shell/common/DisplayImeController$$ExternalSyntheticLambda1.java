package com.android.wm.shell.common;

import android.os.RemoteException;
import android.util.Slog;
import android.view.SurfaceControl;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DisplayImeController$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                Slog.e("DisplayImeController", "Failed to remove IME surface.", (RemoteException) obj);
                return;
            case 1:
                ((SurfaceControl) obj).release();
                return;
            default:
                ((SurfaceControl) obj).release();
                return;
        }
    }
}
