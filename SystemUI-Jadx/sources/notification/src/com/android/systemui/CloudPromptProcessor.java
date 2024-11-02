package notification.src.com.android.systemui;

import android.content.Context;
import android.util.Log;
import com.android.systemui.R;
import com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$mSrResponseCallback$1;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.samsung.android.sdk.scs.ai.language.AppInfo;
import com.samsung.android.sdk.scs.ai.language.ErrorClassifier$ErrorCode;
import com.samsung.android.sdk.scs.ai.language.ResultErrorException;
import com.samsung.android.sdk.scs.ai.language.SmartReplyer;
import com.samsung.android.sdk.scs.base.tasks.OnCompleteListener;
import com.samsung.android.sdk.scs.base.tasks.Task;
import java.util.HashMap;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CloudPromptProcessor implements BasePromptProcessor {
    public final String apkSigningKey;
    public final AppInfo appInfo;
    public final Context context;
    public String notificationKey;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Output {

        @SerializedName("response")
        private final List<String> response;

        public Output(List<String> list) {
            this.response = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Output) && Intrinsics.areEqual(this.response, ((Output) obj).response)) {
                return true;
            }
            return false;
        }

        public final List getResponse() {
            return this.response;
        }

        public final int hashCode() {
            List<String> list = this.response;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        public final String toString() {
            return "Output(response=" + this.response + ")";
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:1|(2:2|3)|(9:9|10|11|12|(2:15|13)|16|17|18|19)|25|10|11|12|(1:13)|16|17|18|19) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005b, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
    
        com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0.m("Exception getLongHash: ", r7, "CloudPromptProcessor");
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b A[Catch: Exception -> 0x005b, LOOP:0: B:13:0x0048->B:15:0x004b, LOOP_END, TryCatch #1 {Exception -> 0x005b, blocks: (B:12:0x0039, B:15:0x004b, B:17:0x0052), top: B:11:0x0039 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public CloudPromptProcessor(android.content.Context r7) {
        /*
            r6 = this;
            java.lang.String r0 = "CloudPromptProcessor"
            r6.<init>()
            r6.context = r7
            r1 = 0
            r2 = 0
            android.content.pm.PackageManager r3 = r7.getPackageManager()     // Catch: java.lang.Exception -> L30
            java.lang.String r7 = r7.getPackageName()     // Catch: java.lang.Exception -> L30
            r4 = 134217728(0x8000000, float:3.85186E-34)
            android.content.pm.PackageInfo r7 = r3.getPackageInfo(r7, r4)     // Catch: java.lang.Exception -> L30
            android.content.pm.SigningInfo r7 = r7.signingInfo     // Catch: java.lang.Exception -> L30
            if (r7 == 0) goto L36
            android.content.pm.Signature[] r7 = r7.getApkContentsSigners()     // Catch: java.lang.Exception -> L30
            if (r7 == 0) goto L36
            int r3 = r7.length     // Catch: java.lang.Exception -> L30
            if (r3 <= 0) goto L36
            r7 = r7[r2]     // Catch: java.lang.Exception -> L30
            char[] r7 = r7.toChars()     // Catch: java.lang.Exception -> L30
            java.lang.String r3 = new java.lang.String     // Catch: java.lang.Exception -> L30
            r3.<init>(r7)     // Catch: java.lang.Exception -> L30
            goto L37
        L30:
            r7 = move-exception
            java.lang.String r3 = "getApkSigningKey: "
            com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0.m(r3, r7, r0)
        L36:
            r3 = r1
        L37:
            r6.apkSigningKey = r3
            java.lang.String r7 = "SHA-256"
            java.security.MessageDigest r7 = java.security.MessageDigest.getInstance(r7)     // Catch: java.lang.Exception -> L5b
            java.lang.String r3 = "74NEkgeVa8SprJ7p"
            java.nio.charset.Charset r4 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L5b
            byte[] r3 = r3.getBytes(r4)     // Catch: java.lang.Exception -> L5b
            r4 = r2
        L48:
            r5 = 7
            if (r4 >= r5) goto L52
            byte[] r3 = r7.digest(r3)     // Catch: java.lang.Exception -> L5b
            int r4 = r4 + 1
            goto L48
        L52:
            java.util.HexFormat r7 = java.util.HexFormat.of()     // Catch: java.lang.Exception -> L5b
            java.lang.String r1 = r7.formatHex(r3)     // Catch: java.lang.Exception -> L5b
            goto L61
        L5b:
            r7 = move-exception
            java.lang.String r3 = "Exception getLongHash: "
            com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0.m(r3, r7, r0)
        L61:
            com.samsung.android.sdk.scs.ai.language.AppInfo$Builder r7 = new com.samsung.android.sdk.scs.ai.language.AppInfo$Builder
            r7.<init>()
            com.samsung.android.sdk.scs.ai.language.AppInfo$RequestType r0 = com.samsung.android.sdk.scs.ai.language.AppInfo.RequestType.CLOUD
            r7.requestType = r0
            r7.enableStreaming = r2
            r7.apiKey = r1
            java.lang.String r0 = r6.apkSigningKey
            r7.signingKey = r0
            com.samsung.android.sdk.scs.ai.language.AppInfo r0 = new com.samsung.android.sdk.scs.ai.language.AppInfo
            r0.<init>(r7, r2)
            r6.appInfo = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: notification.src.com.android.systemui.CloudPromptProcessor.<init>(android.content.Context):void");
    }

    public static final String access$getErrorMessage(CloudPromptProcessor cloudPromptProcessor, int i) {
        Context context = cloudPromptProcessor.context;
        if (i != 1) {
            if (i != 2) {
                return context.getString(R.string.subscreen_notification_smart_reply_server_error);
            }
            return context.getString(R.string.subscreen_notification_smart_reply_filter);
        }
        return context.getString(R.string.subscreen_notification_smart_reply_no_network);
    }

    public static final List access$parseOutput(CloudPromptProcessor cloudPromptProcessor, String str) {
        Object failure;
        List response;
        List distinct;
        cloudPromptProcessor.getClass();
        try {
            int i = Result.$r8$clinit;
            failure = (Output) new Gson().fromJson(Output.class, str);
        } catch (Throwable th) {
            int i2 = Result.$r8$clinit;
            failure = new Result.Failure(th);
        }
        if (failure instanceof Result.Failure) {
            failure = null;
        }
        Output output = (Output) failure;
        if (output == null || (response = output.getResponse()) == null || (distinct = CollectionsKt___CollectionsKt.distinct(response)) == null) {
            return EmptyList.INSTANCE;
        }
        return distinct;
    }

    @Override // notification.src.com.android.systemui.BasePromptProcessor
    public final String getNotificationKey() {
        return this.notificationKey;
    }

    @Override // notification.src.com.android.systemui.BasePromptProcessor
    public final void setNotificationKey(String str) {
        this.notificationKey = str;
    }

    @Override // notification.src.com.android.systemui.BasePromptProcessor
    public final void textPrompting(String str, String str2, final SubscreenDeviceModelB5$mSrResponseCallback$1 subscreenDeviceModelB5$mSrResponseCallback$1) {
        HashMap hashMap = new HashMap();
        hashMap.put("feature_type", "systemui_notification");
        new SmartReplyer(this.context).smartReply(this.appInfo, str, hashMap).addOnCompleteListener(new OnCompleteListener() { // from class: notification.src.com.android.systemui.CloudPromptProcessor$textPrompting$1
            @Override // com.samsung.android.sdk.scs.base.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                String access$getErrorMessage;
                String str3;
                com.samsung.android.sdk.scs.ai.language.Result result;
                boolean isSuccessful = task.isSuccessful();
                PromptCallback promptCallback = subscreenDeviceModelB5$mSrResponseCallback$1;
                CloudPromptProcessor cloudPromptProcessor = CloudPromptProcessor.this;
                if (isSuccessful) {
                    Log.d("CloudPromptProcessor", "SCS success: " + task.getResult());
                    try {
                        List list = (List) task.getResult();
                        Unit unit = null;
                        int i = 0;
                        if (list != null && (result = (com.samsung.android.sdk.scs.ai.language.Result) list.get(0)) != null) {
                            str3 = result.content;
                        } else {
                            str3 = null;
                        }
                        if (str3 != null) {
                            List access$parseOutput = CloudPromptProcessor.access$parseOutput(cloudPromptProcessor, str3);
                            StringBuilder sb = new StringBuilder("");
                            for (Object obj : access$parseOutput) {
                                int i2 = i + 1;
                                if (i >= 0) {
                                    sb.append((String) obj);
                                    if (i != access$parseOutput.size() - 1) {
                                        sb.append("\n");
                                    }
                                    i = i2;
                                } else {
                                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                                    throw null;
                                }
                            }
                            Log.d("CloudPromptProcessor", "SCS result: " + ((Object) sb));
                            ((SubscreenDeviceModelB5$mSrResponseCallback$1) promptCallback).onComplete(sb);
                            unit = Unit.INSTANCE;
                        }
                        if (unit == null) {
                            Log.e("CloudPromptProcessor", "SCS content is null");
                            ((SubscreenDeviceModelB5$mSrResponseCallback$1) promptCallback).onFailure(CloudPromptProcessor.access$getErrorMessage(cloudPromptProcessor, 3));
                            return;
                        }
                        return;
                    } catch (Exception e) {
                        Log.e("CloudPromptProcessor", e.toString());
                        ((SubscreenDeviceModelB5$mSrResponseCallback$1) promptCallback).onFailure(CloudPromptProcessor.access$getErrorMessage(cloudPromptProcessor, 3));
                        return;
                    }
                }
                Log.e("CloudPromptProcessor", "SCS failed: " + task.getException());
                String access$getErrorMessage2 = CloudPromptProcessor.access$getErrorMessage(cloudPromptProcessor, 3);
                Exception exception = task.getException();
                if (exception != null && (exception instanceof ResultErrorException)) {
                    ResultErrorException resultErrorException = (ResultErrorException) exception;
                    if (resultErrorException.getErrorCodeClassified() == ErrorClassifier$ErrorCode.DEVICE_NETORK_ERROR) {
                        access$getErrorMessage = CloudPromptProcessor.access$getErrorMessage(cloudPromptProcessor, 1);
                    } else if (resultErrorException.getErrorCodeClassified() == ErrorClassifier$ErrorCode.SAFETY_FILTER_ERROR) {
                        access$getErrorMessage = CloudPromptProcessor.access$getErrorMessage(cloudPromptProcessor, 2);
                    }
                    access$getErrorMessage2 = access$getErrorMessage;
                }
                ((SubscreenDeviceModelB5$mSrResponseCallback$1) promptCallback).onFailure(access$getErrorMessage2);
            }
        });
    }
}
