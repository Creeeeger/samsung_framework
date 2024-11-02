package com.samsung.android.sdk.scs.ai.translation;

import android.os.RemoteException;
import com.samsung.android.sdk.scs.base.tasks.TaskCompletionSource;
import com.samsung.android.sdk.scs.base.tasks.TaskRunnable;
import com.samsung.android.sdk.scs.base.utils.Log;
import com.samsung.android.sivs.ai.sdkcommon.translation.INeuralTranslationService;
import com.samsung.android.sivs.ai.sdkcommon.translation.LanguageDirection;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class RefreshNeuralTranslatorRunnable extends TaskRunnable {
    public final NeuralTranslationServiceExecutor neuralTranslationServiceExecutor;

    public RefreshNeuralTranslatorRunnable(NeuralTranslationServiceExecutor neuralTranslationServiceExecutor) {
        this.neuralTranslationServiceExecutor = neuralTranslationServiceExecutor;
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.TaskRunnable
    public final void execute() {
        try {
            INeuralTranslationService.Stub.Proxy proxy = (INeuralTranslationService.Stub.Proxy) this.neuralTranslationServiceExecutor.translationService;
            proxy.refresh();
            Map languageDirectionStateMap = proxy.getLanguageDirectionStateMap();
            TaskCompletionSource taskCompletionSource = this.mSource;
            final HashMap hashMap = new HashMap();
            languageDirectionStateMap.entrySet().forEach(new Consumer() { // from class: com.samsung.android.sdk.scs.ai.translation.LanguageDirectionStateMapper$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Map.Entry entry = (Map.Entry) obj;
                    hashMap.put((LanguageDirection) entry.getKey(), LanguageDirectionState.from(((Integer) entry.getValue()).intValue()));
                }
            });
            taskCompletionSource.task.setResult(hashMap);
        } catch (RemoteException e) {
            Log.e("ScsApi@NeuralTranslator", "RefreshNeuralTranslatorRunnable -- Exception: " + e);
            e.printStackTrace();
            this.mSource.setException(e);
        }
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.TaskRunnable
    public final String getFeatureName() {
        return "FEATURE_NEURAL_TRANSLATION";
    }
}
