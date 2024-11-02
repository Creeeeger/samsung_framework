package com.samsung.android.sdk.scs.ai.language;

import android.content.Context;
import com.samsung.android.sdk.scs.ai.language.service.AuthHeader;
import com.samsung.android.sdk.scs.ai.language.service.SmartReplyRunnable2;
import com.samsung.android.sdk.scs.ai.language.service.SmartReplyServiceExecutor;
import com.samsung.android.sdk.scs.base.tasks.TaskCompletionSource;
import com.samsung.android.sdk.scs.base.tasks.TaskImpl;
import com.samsung.android.sdk.scs.base.tasks.TaskStreamingCompletionSource;
import com.samsung.android.sdk.scs.base.utils.Log;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SmartReplyer {
    public final SmartReplyServiceExecutor mServiceExecutor;

    public SmartReplyer(Context context) {
        Log.d("SmartReplyer", "SmartReplyer");
        this.mServiceExecutor = new SmartReplyServiceExecutor(context);
    }

    public final TaskImpl smartReply(AppInfo appInfo, String str, Map map) {
        TaskCompletionSource taskCompletionSource;
        if (appInfo.enableStreaming) {
            taskCompletionSource = new TaskStreamingCompletionSource();
        } else {
            taskCompletionSource = new TaskCompletionSource();
        }
        SmartReplyServiceExecutor smartReplyServiceExecutor = this.mServiceExecutor;
        SmartReplyRunnable2 smartReplyRunnable2 = new SmartReplyRunnable2(smartReplyServiceExecutor, taskCompletionSource);
        Log.i("SmartReplyer", "created: " + smartReplyRunnable2.hashCode());
        AuthHeader authHeader = new AuthHeader(appInfo);
        Context context = smartReplyRunnable2.mServiceExecutor.context;
        HashMap hashMap = new HashMap();
        AppInfo appInfo2 = authHeader.appInfo;
        if (appInfo2 != null) {
            hashMap.put("api-key", appInfo2.apiKey);
            hashMap.put("package-signing-key", appInfo2.signingKey);
            hashMap.put("ssp-app-id", appInfo2.appId);
            hashMap.put("ssp-access-token", appInfo2.accessToken);
            hashMap.put("ssp-user-id", appInfo2.userId);
            hashMap.put("ssp-server-url", appInfo2.serverUrl);
            hashMap.put("request-type", appInfo2.requestType.name());
            hashMap.put("streaming-mode", Boolean.toString(appInfo2.enableStreaming));
        }
        hashMap.put("package-name", context.getPackageName());
        Log.i("AuthHeader", "SCS SDK VERSION: 3.1.24");
        smartReplyRunnable2.authHeader = hashMap;
        smartReplyRunnable2.inputText = str;
        ((HashMap) smartReplyRunnable2.extraPrompt).putAll(map);
        smartReplyServiceExecutor.execute(smartReplyRunnable2);
        Log.i("SmartReplyer", "executed: " + smartReplyRunnable2.hashCode());
        return smartReplyRunnable2.mSource.task;
    }
}
