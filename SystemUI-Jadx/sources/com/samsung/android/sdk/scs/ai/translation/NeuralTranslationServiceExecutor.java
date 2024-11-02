package com.samsung.android.sdk.scs.ai.translation;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.samsung.android.sdk.scs.base.connection.ServiceExecutor;
import com.samsung.android.sdk.scs.base.utils.Log;
import com.samsung.android.sivs.ai.sdkcommon.translation.INeuralTranslationService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
class NeuralTranslationServiceExecutor extends ServiceExecutor {
    public final AnonymousClass1 deathRecipient;
    public INeuralTranslationService translationService;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.samsung.android.sdk.scs.ai.translation.NeuralTranslationServiceExecutor$1] */
    public NeuralTranslationServiceExecutor(Context context) {
        super(context, 1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingDeque());
        this.deathRecipient = new IBinder.DeathRecipient() { // from class: com.samsung.android.sdk.scs.ai.translation.NeuralTranslationServiceExecutor.1
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                Log.d("ScsApi@TranslationServiceExecutor", "binderDied deathRecipient callback");
                NeuralTranslationServiceExecutor.this.translationService.asBinder().unlinkToDeath(NeuralTranslationServiceExecutor.this.deathRecipient, 0);
            }
        };
        context.getApplicationContext();
    }

    @Override // com.samsung.android.sdk.scs.base.connection.ServiceExecutor
    public final Intent getServiceIntent() {
        Intent intent = new Intent("intellivoiceservice.intent.action.BIND_TRANSLATION");
        intent.setPackage("com.samsung.android.intellivoiceservice");
        return intent;
    }

    @Override // com.samsung.android.sdk.scs.base.connection.InternalServiceConnectionListener
    public final void onConnected(ComponentName componentName, IBinder iBinder) {
        INeuralTranslationService proxy;
        int i = INeuralTranslationService.Stub.$r8$clinit;
        if (iBinder == null) {
            proxy = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.sivs.ai.sdkcommon.translation.INeuralTranslationService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof INeuralTranslationService)) {
                proxy = (INeuralTranslationService) queryLocalInterface;
            } else {
                proxy = new INeuralTranslationService.Stub.Proxy(iBinder);
            }
        }
        this.translationService = proxy;
        try {
            proxy.asBinder().linkToDeath(this.deathRecipient, 0);
        } catch (RemoteException e) {
            Log.e("ScsApi@TranslationServiceExecutor", "RemoteException");
            e.printStackTrace();
        }
    }

    @Override // com.samsung.android.sdk.scs.base.connection.InternalServiceConnectionListener
    public final void onDisconnected(ComponentName componentName) {
        Log.d("ScsApi@TranslationServiceExecutor", "onServiceDisconnected " + componentName);
        this.translationService = null;
    }
}
