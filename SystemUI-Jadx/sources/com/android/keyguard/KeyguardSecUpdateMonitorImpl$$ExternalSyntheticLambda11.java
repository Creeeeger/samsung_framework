package com.android.keyguard;

import android.os.Message;
import com.android.systemui.settings.UserTrackerImpl;
import com.sec.ims.volte2.data.VolteConstants;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardSecUpdateMonitorImpl f$0;

    public /* synthetic */ KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11(KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardSecUpdateMonitorImpl;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Message message;
        SecFaceMsg secFaceMsg;
        switch (this.$r8$classId) {
            case 0:
                ((KeyguardUpdateMonitorCallback) obj).onLockDisabledChanged(this.f$0.mLockscreenDisabled);
                return;
            case 1:
                KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = this.f$0;
                SecFpMsg secFpMsg = (SecFpMsg) obj;
                keyguardSecUpdateMonitorImpl.mFpMessages.add(secFpMsg);
                Message obtainMessage = keyguardSecUpdateMonitorImpl.mHandler.obtainMessage(VolteConstants.ErrorCode.CALL_SWITCH_REJECTED, secFpMsg);
                obtainMessage.setAsynchronous(true);
                if (secFpMsg.type == 2 && (secFaceMsg = (SecFaceMsg) keyguardSecUpdateMonitorImpl.mFaceMessages.peek()) != null && secFaceMsg.type == 2) {
                    keyguardSecUpdateMonitorImpl.mHandler.removeMessages(VolteConstants.ErrorCode.CALL_HOLD_FAILED, secFaceMsg);
                    message = keyguardSecUpdateMonitorImpl.mHandler.obtainMessage(VolteConstants.ErrorCode.CALL_HOLD_FAILED, secFaceMsg);
                    message.setAsynchronous(true);
                } else {
                    message = null;
                }
                keyguardSecUpdateMonitorImpl.mHandler.sendMessageAtFrontOfQueue(obtainMessage);
                if (message != null) {
                    keyguardSecUpdateMonitorImpl.mHandler.sendMessageAtFrontOfQueue(message);
                    return;
                }
                return;
            case 2:
                KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl2 = this.f$0;
                SecFaceMsg secFaceMsg2 = (SecFaceMsg) obj;
                keyguardSecUpdateMonitorImpl2.mFaceMessages.add(secFaceMsg2);
                Message obtainMessage2 = keyguardSecUpdateMonitorImpl2.mHandler.obtainMessage(VolteConstants.ErrorCode.CALL_HOLD_FAILED, secFaceMsg2);
                obtainMessage2.setAsynchronous(true);
                keyguardSecUpdateMonitorImpl2.mHandler.sendMessageAtFrontOfQueue(obtainMessage2);
                return;
            case 3:
                ((KeyguardUpdateMonitorCallback) obj).onSimulationFailToUnlock(((UserTrackerImpl) this.f$0.mUserTracker).getUserId());
                return;
            case 4:
                ((KeyguardUpdateMonitorCallback) obj).onDreamingStateChanged(this.f$0.mIsDreaming);
                return;
            case 5:
                ((KeyguardUpdateMonitorCallback) obj).onKeyguardBouncerStateChanged(this.f$0.mPrimaryBouncerIsOrWillBeShowing);
                return;
            default:
                ((KeyguardUpdateMonitorCallback) obj).onKeyguardBouncerFullyShowingChanged(this.f$0.mPrimaryBouncerFullyShown);
                return;
        }
    }
}
