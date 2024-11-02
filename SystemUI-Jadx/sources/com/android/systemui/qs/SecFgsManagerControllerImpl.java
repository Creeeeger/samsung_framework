package com.android.systemui.qs;

import android.util.Log;
import android.widget.TextView;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import java.util.function.Consumer;
import java.util.function.Supplier;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecFgsManagerControllerImpl {
    public final Consumer dialogConsumer;
    public final Supplier dialogSupplier;
    public TextView noItemTextView;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public SecFgsManagerControllerImpl(Consumer<SystemUIDialog> consumer, Supplier<SystemUIDialog> supplier, Runnable runnable) {
        this.dialogConsumer = consumer;
        this.dialogSupplier = supplier;
        runnable.run();
    }

    public final void log(String str) {
        Log.d("SecFgsManagerController", str);
    }
}
