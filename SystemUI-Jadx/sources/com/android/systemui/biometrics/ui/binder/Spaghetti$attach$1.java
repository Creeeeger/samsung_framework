package com.android.systemui.biometrics.ui.binder;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.android.systemui.biometrics.AuthIconController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Spaghetti$attach$1 implements DefaultLifecycleObserver {
    public final /* synthetic */ AuthIconController $iconController;
    public final /* synthetic */ Spaghetti this$0;

    public Spaghetti$attach$1(Spaghetti spaghetti, AuthIconController authIconController) {
        this.this$0 = spaghetti;
        this.$iconController = authIconController;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
        LifecycleOwnerKt.getLifecycleScope(lifecycleOwner);
        this.this$0.getClass();
        this.$iconController.deactivated = false;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final void onDestroy$1() {
        this.this$0.getClass();
        this.$iconController.deactivated = true;
    }
}
