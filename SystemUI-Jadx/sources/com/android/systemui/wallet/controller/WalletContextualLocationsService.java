package com.android.systemui.wallet.controller;

import android.content.Intent;
import android.os.IBinder;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.LifecycleService;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WalletContextualLocationsService extends LifecycleService {
    public final WalletContextualLocationsService$binder$1 binder;
    public final WalletContextualSuggestionsController controller;
    public final FeatureFlags featureFlags;
    public final CoroutineScope scope;

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

    public WalletContextualLocationsService(WalletContextualSuggestionsController walletContextualSuggestionsController, FeatureFlags featureFlags) {
        this.controller = walletContextualSuggestionsController;
        this.featureFlags = featureFlags;
        this.scope = LifecycleOwnerKt.getLifecycleScope(this);
        this.binder = new WalletContextualLocationsService$binder$1(this);
    }

    public final void addWalletCardsUpdatedListenerInternal(IWalletCardsUpdatedListener iWalletCardsUpdatedListener) {
        FeatureFlags featureFlags = this.featureFlags;
        Flags flags = Flags.INSTANCE;
        featureFlags.getClass();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final IBinder onBind(Intent intent) {
        super.onBind(intent);
        BuildersKt.launch$default(this.scope, null, null, new WalletContextualLocationsService$onBind$1(this, null), 3);
        return this.binder;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
    }

    public final void onWalletContextualLocationsStateUpdatedInternal(List<String> list) {
        FeatureFlags featureFlags = this.featureFlags;
        Flags flags = Flags.INSTANCE;
        featureFlags.getClass();
    }

    public WalletContextualLocationsService(WalletContextualSuggestionsController walletContextualSuggestionsController, FeatureFlags featureFlags, CoroutineScope coroutineScope) {
        this(walletContextualSuggestionsController, featureFlags);
        this.scope = coroutineScope;
    }
}
