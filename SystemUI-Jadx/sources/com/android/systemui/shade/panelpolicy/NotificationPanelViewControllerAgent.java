package com.android.systemui.shade.panelpolicy;

import java.util.function.BooleanSupplier;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationPanelViewControllerAgent {
    public final Consumer trackingStoppedConsumer;

    public NotificationPanelViewControllerAgent(Consumer<Boolean> consumer, Runnable runnable, BooleanSupplier booleanSupplier, BooleanSupplier booleanSupplier2, Runnable runnable2, Runnable runnable3, BooleanSupplier booleanSupplier3) {
        this.trackingStoppedConsumer = consumer;
    }
}
