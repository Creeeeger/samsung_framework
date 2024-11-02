package com.android.systemui.wallet.controller;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.service.quickaccesswallet.GetWalletCardsRequest;
import android.service.quickaccesswallet.QuickAccessWalletClient;
import android.util.Log;
import com.android.systemui.R;
import com.android.systemui.util.settings.SecureSettings;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import com.android.systemui.wallet.controller.QuickAccessWalletController;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QuickAccessWalletController {
    public static final long RECREATION_TIME_WINDOW = TimeUnit.MINUTES.toMillis(10);
    public final Executor mBgExecutor;
    public final SystemClock mClock;
    public final Context mContext;
    public AnonymousClass1 mDefaultPaymentAppObserver;
    public final Executor mExecutor;
    public long mQawClientCreatedTimeMillis;
    public QuickAccessWalletClient mQuickAccessWalletClient;
    public final SecureSettings mSecureSettings;
    public AnonymousClass2 mWalletPreferenceObserver;
    public int mWalletPreferenceChangeEvents = 0;
    public int mDefaultPaymentAppChangeEvents = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.wallet.controller.QuickAccessWalletController$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends ContentObserver {
        public final /* synthetic */ QuickAccessWalletClient.OnWalletCardsRetrievedCallback val$cardsRetriever;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Handler handler, QuickAccessWalletClient.OnWalletCardsRetrievedCallback onWalletCardsRetrievedCallback) {
            super(handler);
            this.val$cardsRetriever = onWalletCardsRetrievedCallback;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            Executor executor = QuickAccessWalletController.this.mExecutor;
            final QuickAccessWalletClient.OnWalletCardsRetrievedCallback onWalletCardsRetrievedCallback = this.val$cardsRetriever;
            executor.execute(new Runnable() { // from class: com.android.systemui.wallet.controller.QuickAccessWalletController$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    QuickAccessWalletController.AnonymousClass1 anonymousClass1 = QuickAccessWalletController.AnonymousClass1.this;
                    QuickAccessWalletClient.OnWalletCardsRetrievedCallback onWalletCardsRetrievedCallback2 = onWalletCardsRetrievedCallback;
                    QuickAccessWalletController.this.reCreateWalletClient();
                    QuickAccessWalletController.this.updateWalletPreference();
                    QuickAccessWalletController.this.queryWalletCards(onWalletCardsRetrievedCallback2);
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.wallet.controller.QuickAccessWalletController$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends ContentObserver {
        public AnonymousClass2(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            QuickAccessWalletController.this.mExecutor.execute(new Runnable() { // from class: com.android.systemui.wallet.controller.QuickAccessWalletController$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    QuickAccessWalletController.this.updateWalletPreference();
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum WalletChangeEvent {
        DEFAULT_PAYMENT_APP_CHANGE,
        WALLET_PREFERENCE_CHANGE
    }

    public QuickAccessWalletController(Context context, Executor executor, Executor executor2, SecureSettings secureSettings, QuickAccessWalletClient quickAccessWalletClient, SystemClock systemClock) {
        this.mContext = context;
        this.mExecutor = executor;
        this.mBgExecutor = executor2;
        this.mSecureSettings = secureSettings;
        this.mQuickAccessWalletClient = quickAccessWalletClient;
        this.mClock = systemClock;
        ((SystemClockImpl) systemClock).getClass();
        this.mQawClientCreatedTimeMillis = android.os.SystemClock.elapsedRealtime();
    }

    public final void queryWalletCards(QuickAccessWalletClient.OnWalletCardsRetrievedCallback onWalletCardsRetrievedCallback) {
        ((SystemClockImpl) this.mClock).getClass();
        if (android.os.SystemClock.elapsedRealtime() - this.mQawClientCreatedTimeMillis > RECREATION_TIME_WINDOW) {
            Log.i("QAWController", "Re-creating the QAW client to avoid stale.");
            reCreateWalletClient();
        }
        if (!this.mQuickAccessWalletClient.isWalletFeatureAvailable()) {
            Log.d("QAWController", "QuickAccessWallet feature is not available.");
            return;
        }
        Context context = this.mContext;
        this.mQuickAccessWalletClient.getWalletCards(this.mBgExecutor, new GetWalletCardsRequest(context.getResources().getDimensionPixelSize(R.dimen.wallet_tile_card_view_width), context.getResources().getDimensionPixelSize(R.dimen.wallet_tile_card_view_height), context.getResources().getDimensionPixelSize(R.dimen.wallet_icon_size), 1), onWalletCardsRetrievedCallback);
    }

    public final void reCreateWalletClient() {
        this.mQuickAccessWalletClient = QuickAccessWalletClient.create(this.mContext, this.mBgExecutor);
        ((SystemClockImpl) this.mClock).getClass();
        this.mQawClientCreatedTimeMillis = android.os.SystemClock.elapsedRealtime();
    }

    public final void setupWalletChangeObservers(QuickAccessWalletClient.OnWalletCardsRetrievedCallback onWalletCardsRetrievedCallback, WalletChangeEvent... walletChangeEventArr) {
        for (WalletChangeEvent walletChangeEvent : walletChangeEventArr) {
            WalletChangeEvent walletChangeEvent2 = WalletChangeEvent.WALLET_PREFERENCE_CHANGE;
            SecureSettings secureSettings = this.mSecureSettings;
            if (walletChangeEvent == walletChangeEvent2) {
                if (this.mWalletPreferenceObserver == null) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(null);
                    this.mWalletPreferenceObserver = anonymousClass2;
                    secureSettings.registerContentObserverForUser("lockscreen_show_wallet", false, (ContentObserver) anonymousClass2, -1);
                }
                this.mWalletPreferenceChangeEvents++;
            } else if (walletChangeEvent == WalletChangeEvent.DEFAULT_PAYMENT_APP_CHANGE) {
                if (this.mDefaultPaymentAppObserver == null) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, onWalletCardsRetrievedCallback);
                    this.mDefaultPaymentAppObserver = anonymousClass1;
                    secureSettings.registerContentObserverForUser("nfc_payment_default_component", false, (ContentObserver) anonymousClass1, -1);
                }
                this.mDefaultPaymentAppChangeEvents++;
            }
        }
    }

    public final void unregisterWalletChangeObservers(WalletChangeEvent... walletChangeEventArr) {
        AnonymousClass1 anonymousClass1;
        AnonymousClass2 anonymousClass2;
        for (WalletChangeEvent walletChangeEvent : walletChangeEventArr) {
            WalletChangeEvent walletChangeEvent2 = WalletChangeEvent.WALLET_PREFERENCE_CHANGE;
            SecureSettings secureSettings = this.mSecureSettings;
            if (walletChangeEvent == walletChangeEvent2 && (anonymousClass2 = this.mWalletPreferenceObserver) != null) {
                int i = this.mWalletPreferenceChangeEvents - 1;
                this.mWalletPreferenceChangeEvents = i;
                if (i == 0) {
                    secureSettings.unregisterContentObserver(anonymousClass2);
                }
            } else if (walletChangeEvent == WalletChangeEvent.DEFAULT_PAYMENT_APP_CHANGE && (anonymousClass1 = this.mDefaultPaymentAppObserver) != null) {
                int i2 = this.mDefaultPaymentAppChangeEvents - 1;
                this.mDefaultPaymentAppChangeEvents = i2;
                if (i2 == 0) {
                    secureSettings.unregisterContentObserver(anonymousClass1);
                }
            }
        }
    }

    public final void updateWalletPreference() {
        if (this.mQuickAccessWalletClient.isWalletServiceAvailable() && this.mQuickAccessWalletClient.isWalletFeatureAvailable()) {
            this.mQuickAccessWalletClient.isWalletFeatureAvailableWhenDeviceLocked();
        }
    }
}
