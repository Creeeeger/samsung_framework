package com.android.systemui.statusbar.notification;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter;
import com.android.systemui.util.SystemUIAnalytics;
import kotlin.jvm.internal.Intrinsics;
import notification.src.com.android.systemui.PromptCallback;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenDeviceModelB5$mSrResponseCallback$1 implements PromptCallback {
    public final /* synthetic */ SubscreenDeviceModelB5 this$0;

    public SubscreenDeviceModelB5$mSrResponseCallback$1(SubscreenDeviceModelB5 subscreenDeviceModelB5) {
        this.this$0 = subscreenDeviceModelB5;
    }

    public final void onComplete(StringBuilder sb) {
        String str;
        SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter;
        SubscreenNotificationInfo subscreenNotificationInfo;
        Log.d("S.S.N.", "SrPromptProcessor onComplete()");
        SubscreenDeviceModelB5 subscreenDeviceModelB5 = this.this$0;
        String notificationKey = subscreenDeviceModelB5.mSrPromptProcessor.getNotificationKey();
        SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder = subscreenDeviceModelB5.detailViewHolder;
        if (itemViewHolder != null && (subscreenNotificationInfo = itemViewHolder.mInfo) != null) {
            str = subscreenNotificationInfo.mKey;
        } else {
            str = null;
        }
        if (!Intrinsics.areEqual(notificationKey, str)) {
            Log.d("S.S.N.", "SrPromptProcessor onComplete() - detail notification key does not match");
            return;
        }
        boolean z = true;
        subscreenDeviceModelB5.enableSmartReplyTriggerBtn("", true);
        if (subscreenDeviceModelB5.smartReplyStatus != 2) {
            Log.d("S.S.N.", "SrPromptProcessor onComplete() : SmartReplayStatus is not valid");
            TextView textView = subscreenDeviceModelB5.smartReplyErrorMessageView;
            if (textView != null) {
                textView.setVisibility(8);
            }
        }
        subscreenDeviceModelB5.smartReplyStatus = 0;
        SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelB5.mSubRoomNotification;
        if (subscreenSubRoomNotification == null || (subscreenNotificationDetailAdapter = subscreenSubRoomNotification.mNotificationDetailAdapter) == null || !subscreenNotificationDetailAdapter.mIsShownReplyButtonWindow) {
            z = false;
        }
        if (z) {
            Log.d("S.S.N.", "SrPromptProcessor onComplete() - isShownReplyButtonWindow");
            subscreenDeviceModelB5.setSmartReplyResultValue(0, sb, null);
        } else {
            subscreenDeviceModelB5.showSmartReplyResultComplete(sb);
        }
    }

    public final void onFailure(String str) {
        boolean z;
        LinearLayout linearLayout;
        SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter;
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("SrPromptProcessor onFailure() : ", str, "S.S.N.");
        SubscreenDeviceModelB5 subscreenDeviceModelB5 = this.this$0;
        boolean z2 = false;
        if (subscreenDeviceModelB5.smartReplyStatus != 2) {
            Log.d("S.S.N.", "SrPromptProcessor onFailure() : SmartReplayStatus is not valid");
            subscreenDeviceModelB5.smartReplyStatus = 0;
            subscreenDeviceModelB5.resetProgressScaleAnimation();
            LinearLayout linearLayout2 = subscreenDeviceModelB5.progressLayout;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            LottieAnimationView lottieAnimationView = subscreenDeviceModelB5.progressingVi;
            if (lottieAnimationView != null) {
                lottieAnimationView.cancelAnimation();
            }
            subscreenDeviceModelB5.isPossibleAiReply = false;
            subscreenDeviceModelB5.mPromptSB.setLength(0);
            return;
        }
        subscreenDeviceModelB5.smartReplyStatus = 0;
        SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelB5.mSubRoomNotification;
        if (subscreenSubRoomNotification != null && (subscreenNotificationDetailAdapter = subscreenSubRoomNotification.mNotificationDetailAdapter) != null && subscreenNotificationDetailAdapter.mIsShownReplyButtonWindow) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Log.d("S.S.N.", "SrPromptProcessor onFailure() - isShownReplyButtonWindow");
            subscreenDeviceModelB5.setSmartReplyResultValue(1, null, str);
            return;
        }
        SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder = subscreenDeviceModelB5.detailViewHolder;
        if (itemViewHolder != null && (linearLayout = itemViewHolder.mSmartReplyLayout) != null && linearLayout.getVisibility() == 0) {
            z2 = true;
        }
        if (z2) {
            Log.d("S.S.N.", "SrPromptProcessor onFailure() - it's previous fail message");
        } else {
            subscreenDeviceModelB5.showSmartReplyResultFailure(str);
            SystemUIAnalytics.sendEventLog("QPN102", "QPNE0216");
        }
    }
}
