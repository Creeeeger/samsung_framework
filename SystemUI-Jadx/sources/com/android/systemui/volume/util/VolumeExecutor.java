package com.android.systemui.volume.util;

import android.os.HandlerExecutor;
import android.os.HandlerThread;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumeExecutor {
    public static final VolumeExecutor INSTANCE = new VolumeExecutor();
    public static final Lazy sExecutor$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.volume.util.VolumeExecutor$sExecutor$2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            HandlerThread handlerThread = new HandlerThread("VolumeExecutor");
            handlerThread.start();
            return new HandlerExecutor(handlerThread.getThreadHandler());
        }
    });

    private VolumeExecutor() {
    }
}
