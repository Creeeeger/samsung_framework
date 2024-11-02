package notification.src.com.android.systemui;

import android.content.Context;
import android.util.Log;
import com.android.systemui.statusbar.notification.SubscreenDeviceModelB5$mSrResponseCallback$1;
import com.samsung.android.sdk.scs.ai.language.AppInfo;
import com.samsung.android.sdk.scs.ai.language.Result;
import com.samsung.android.sdk.scs.ai.language.SmartReplyer;
import com.samsung.android.sdk.scs.base.tasks.OnCompleteListener;
import com.samsung.android.sdk.scs.base.tasks.Task;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SrPromptProcessor implements BasePromptProcessor {
    public final String API_KEY = "74NEkgeVa8SprJ7p";
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

    static {
        new Companion(null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|2|3|(9:9|10|11|12|(2:15|13)|16|17|18|19)|25|10|11|12|(1:13)|16|17|18|19) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005f, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0060, code lost:
    
        androidx.picker.adapter.AbsAdapter$1$$ExternalSyntheticOutline0.m("Exception getLongHash: ", r7, "SrPromptProcessor");
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f A[Catch: Exception -> 0x005f, LOOP:0: B:13:0x004c->B:15:0x004f, LOOP_END, TryCatch #0 {Exception -> 0x005f, blocks: (B:12:0x003d, B:15:0x004f, B:17:0x0056), top: B:11:0x003d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SrPromptProcessor(android.content.Context r7) {
        /*
            r6 = this;
            java.lang.String r0 = "SrPromptProcessor"
            r6.<init>()
            r6.context = r7
            java.lang.String r1 = "74NEkgeVa8SprJ7p"
            r6.API_KEY = r1
            r1 = 0
            r2 = 0
            android.content.pm.PackageManager r3 = r7.getPackageManager()     // Catch: java.lang.Exception -> L34
            java.lang.String r7 = r7.getPackageName()     // Catch: java.lang.Exception -> L34
            r4 = 134217728(0x8000000, float:3.85186E-34)
            android.content.pm.PackageInfo r7 = r3.getPackageInfo(r7, r4)     // Catch: java.lang.Exception -> L34
            android.content.pm.SigningInfo r7 = r7.signingInfo     // Catch: java.lang.Exception -> L34
            if (r7 == 0) goto L3a
            android.content.pm.Signature[] r7 = r7.getApkContentsSigners()     // Catch: java.lang.Exception -> L34
            if (r7 == 0) goto L3a
            int r3 = r7.length     // Catch: java.lang.Exception -> L34
            if (r3 <= 0) goto L3a
            r7 = r7[r1]     // Catch: java.lang.Exception -> L34
            char[] r7 = r7.toChars()     // Catch: java.lang.Exception -> L34
            java.lang.String r3 = new java.lang.String     // Catch: java.lang.Exception -> L34
            r3.<init>(r7)     // Catch: java.lang.Exception -> L34
            goto L3b
        L34:
            r7 = move-exception
            java.lang.String r3 = "getApkSigningKey: "
            androidx.picker.adapter.AbsAdapter$1$$ExternalSyntheticOutline0.m(r3, r7, r0)
        L3a:
            r3 = r2
        L3b:
            r6.apkSigningKey = r3
            java.lang.String r7 = "SHA-256"
            java.security.MessageDigest r7 = java.security.MessageDigest.getInstance(r7)     // Catch: java.lang.Exception -> L5f
            java.lang.String r3 = r6.API_KEY     // Catch: java.lang.Exception -> L5f
            java.nio.charset.Charset r4 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L5f
            byte[] r3 = r3.getBytes(r4)     // Catch: java.lang.Exception -> L5f
            r4 = r1
        L4c:
            r5 = 7
            if (r4 >= r5) goto L56
            byte[] r3 = r7.digest(r3)     // Catch: java.lang.Exception -> L5f
            int r4 = r4 + 1
            goto L4c
        L56:
            java.util.HexFormat r7 = java.util.HexFormat.of()     // Catch: java.lang.Exception -> L5f
            java.lang.String r2 = r7.formatHex(r3)     // Catch: java.lang.Exception -> L5f
            goto L65
        L5f:
            r7 = move-exception
            java.lang.String r3 = "Exception getLongHash: "
            androidx.picker.adapter.AbsAdapter$1$$ExternalSyntheticOutline0.m(r3, r7, r0)
        L65:
            com.samsung.android.sdk.scs.ai.language.AppInfo$Builder r7 = new com.samsung.android.sdk.scs.ai.language.AppInfo$Builder
            r7.<init>()
            com.samsung.android.sdk.scs.ai.language.AppInfo$RequestType r0 = com.samsung.android.sdk.scs.ai.language.AppInfo.RequestType.ONDEVICE
            r7.requestType = r0
            r7.apiKey = r2
            java.lang.String r0 = r6.apkSigningKey
            r7.signingKey = r0
            com.samsung.android.sdk.scs.ai.language.AppInfo r0 = new com.samsung.android.sdk.scs.ai.language.AppInfo
            r0.<init>(r7, r1)
            r6.appInfo = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: notification.src.com.android.systemui.SrPromptProcessor.<init>(android.content.Context):void");
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
        Log.d("SrPromptProcessor", "textPrompting");
        SmartReplyer smartReplyer = new SmartReplyer(this.context);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("target_language", str2);
        smartReplyer.smartReply(this.appInfo, str, linkedHashMap).addOnCompleteListener(new OnCompleteListener() { // from class: notification.src.com.android.systemui.SrPromptProcessor$textPrompting$1
            @Override // com.samsung.android.sdk.scs.base.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                Result result;
                Log.d("SrPromptProcessor", "smartReply onComplete isSuccessful : " + task.isSuccessful());
                boolean isSuccessful = task.isSuccessful();
                String str3 = null;
                PromptCallback promptCallback = PromptCallback.this;
                if (isSuccessful) {
                    Log.d("SrPromptProcessor", " result");
                    List list = (List) task.getResult();
                    if (list != null && (result = (Result) list.get(0)) != null) {
                        str3 = result.content;
                    }
                    ((SubscreenDeviceModelB5$mSrResponseCallback$1) promptCallback).onComplete(new StringBuilder(str3));
                    return;
                }
                Log.d("SrPromptProcessor", " error : " + task.getException());
                Exception exception = task.getException();
                if (exception != null) {
                    str3 = exception.getMessage();
                }
                ((SubscreenDeviceModelB5$mSrResponseCallback$1) promptCallback).onFailure(str3);
            }
        });
    }
}
