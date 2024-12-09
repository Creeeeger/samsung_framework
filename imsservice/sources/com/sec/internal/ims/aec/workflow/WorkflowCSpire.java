package com.sec.internal.ims.aec.workflow;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.sec.internal.ims.aec.util.URLExtractor;

/* loaded from: classes.dex */
public class WorkflowCSpire extends WorkflowTS43 {
    WorkflowCSpire(Context context, Looper looper, Handler handler, String str) {
        super(context, looper, handler, str);
    }

    @Override // com.sec.internal.ims.aec.workflow.WorkflowTS43, com.sec.internal.ims.aec.workflow.WorkflowImpl
    protected void requestEntitlement(int i) {
        String url = URLExtractor.getUrl(this.mContext, this.mPhoneId, this.mAECJar.getEntitlementDomain(), this.mAECJar.getEntitlementPort(), this.mAECJar.getEntitlementPath(), this.mAECJar.getDomainFromImpi());
        if (i >= 0 && !TextUtils.isEmpty(url) && !this.mAECJar.getAppId().isEmpty()) {
            this.mPowerCtrl.lock(90000L);
            if (TextUtils.isEmpty(this.mHttpJar.getHttpUrl())) {
                this.mHttpJar.setUserAgent(this.mAECJar.getEntitlementVersion());
                this.mHttpJar.setHostName(URLExtractor.getHostName(url));
                this.mHttpJar.setHttpUrl(url);
            }
            doWorkflow();
            this.mPowerCtrl.release();
            return;
        }
        sendMessage(obtainMessage(1002, this.mPhoneId, this.mAECJar.getHttpResponse()));
    }
}
