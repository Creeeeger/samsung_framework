package com.android.systemui.statusbar.notification.collection.listbuilder.pluggable;

import android.os.Trace;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder$$ExternalSyntheticLambda0;
import com.android.systemui.util.Assert;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class Pluggable {
    public PluggableListener mListener;
    public final String mName;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface PluggableListener {
    }

    public Pluggable(String str) {
        this.mName = str;
    }

    public final void invalidateList(String str) {
        if (this.mListener != null) {
            if (Trace.isEnabled()) {
                Trace.traceBegin(4096L, "Pluggable<" + this.mName + ">.invalidateList");
            }
            ShadeListBuilder$$ExternalSyntheticLambda0 shadeListBuilder$$ExternalSyntheticLambda0 = (ShadeListBuilder$$ExternalSyntheticLambda0) this.mListener;
            int i = shadeListBuilder$$ExternalSyntheticLambda0.$r8$classId;
            ShadeListBuilder shadeListBuilder = shadeListBuilder$$ExternalSyntheticLambda0.f$0;
            switch (i) {
                case 1:
                    shadeListBuilder.getClass();
                    Assert.isMainThread();
                    shadeListBuilder.mLogger.logPluggableInvalidated("NotifSection", (NotifSectioner) this, shadeListBuilder.mPipelineState.mState, str);
                    shadeListBuilder.rebuildListIfBefore(7);
                    break;
                case 2:
                    shadeListBuilder.getClass();
                    Assert.isMainThread();
                    shadeListBuilder.mLogger.logPluggableInvalidated("NotifComparator", (NotifComparator) this, shadeListBuilder.mPipelineState.mState, str);
                    shadeListBuilder.rebuildListIfBefore(7);
                    break;
                case 3:
                    shadeListBuilder.getClass();
                    Assert.isMainThread();
                    shadeListBuilder.mLogger.logPluggableInvalidated("ReorderingNowAllowed", (NotifStabilityManager) this, shadeListBuilder.mPipelineState.mState, str);
                    shadeListBuilder.rebuildListIfBefore(4);
                    break;
                case 4:
                    shadeListBuilder.getClass();
                    Assert.isMainThread();
                    shadeListBuilder.mLogger.logPluggableInvalidated("Finalize NotifFilter", (NotifFilter) this, shadeListBuilder.mPipelineState.mState, str);
                    shadeListBuilder.rebuildListIfBefore(8);
                    break;
                case 5:
                    shadeListBuilder.getClass();
                    Assert.isMainThread();
                    shadeListBuilder.mLogger.logPluggableInvalidated("Pre-render Invalidator", (Invalidator) this, shadeListBuilder.mPipelineState.mState, str);
                    shadeListBuilder.rebuildListIfBefore(9);
                    break;
                case 6:
                    shadeListBuilder.getClass();
                    Assert.isMainThread();
                    shadeListBuilder.mLogger.logPluggableInvalidated("NotifPromoter", (NotifPromoter) this, shadeListBuilder.mPipelineState.mState, str);
                    shadeListBuilder.rebuildListIfBefore(5);
                    break;
                default:
                    shadeListBuilder.getClass();
                    Assert.isMainThread();
                    shadeListBuilder.mLogger.logPluggableInvalidated("Pre-group NotifFilter", (NotifFilter) this, shadeListBuilder.mPipelineState.mState, str);
                    shadeListBuilder.rebuildListIfBefore(3);
                    break;
            }
            Trace.endSection();
        }
    }

    public void onCleanup() {
    }
}
