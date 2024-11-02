package com.android.systemui.statusbar.phone;

import com.android.systemui.scrim.ScrimView;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecLsScrimControlProvider {
    public final Supplier mBehindScrimSupplier;
    public final Consumer mDispatchBackScrimStateConsumer;
    public final Supplier mFrontScrimSupplier;
    public final Supplier mKeyguardOccludedSupplier;
    public final Supplier mNotificationsScrimSupplier;
    public final Runnable mUpdateScrimsRunnable;

    public SecLsScrimControlProvider(Supplier<ScrimView> supplier, Supplier<ScrimView> supplier2, Supplier<ScrimView> supplier3, Supplier<Boolean> supplier4, Runnable runnable, Consumer consumer) {
        this.mNotificationsScrimSupplier = supplier;
        this.mBehindScrimSupplier = supplier2;
        this.mFrontScrimSupplier = supplier3;
        this.mKeyguardOccludedSupplier = supplier4;
        this.mUpdateScrimsRunnable = runnable;
        this.mDispatchBackScrimStateConsumer = consumer;
    }
}
