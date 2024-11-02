package com.samsung.android.sdk.scs.ai.language.service;

import android.os.RemoteException;
import com.samsung.android.sdk.scs.base.tasks.TaskCompletionSource;
import com.samsung.android.sdk.scs.base.tasks.TaskRunnable;
import com.samsung.android.sivs.ai.sdkcommon.language.ISmartReplyService;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SmartReplyRunnable2 extends TaskRunnable {
    public Map authHeader;
    public final Map extraPrompt;
    public String inputText;
    public final SmartReplyServiceExecutor mServiceExecutor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.samsung.android.sdk.scs.ai.language.service.SmartReplyRunnable2$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public final class AnonymousClass1 extends LlmServiceObserver2 {
        public AnonymousClass1() {
        }
    }

    public SmartReplyRunnable2(SmartReplyServiceExecutor smartReplyServiceExecutor, TaskCompletionSource taskCompletionSource) {
        super(taskCompletionSource);
        this.extraPrompt = new HashMap();
        this.mServiceExecutor = smartReplyServiceExecutor;
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.TaskRunnable
    public final void execute() {
        try {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1();
            ((ISmartReplyService.Stub.Proxy) this.mServiceExecutor.service).replyWithHeader3(this.authHeader, this.inputText, anonymousClass1, this.extraPrompt);
        } catch (RemoteException e) {
            e.printStackTrace();
            this.mSource.setException(e);
        }
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.TaskRunnable
    public final String getFeatureName() {
        return "FEATURE_AI_GEN_SMART_REPLY";
    }
}
