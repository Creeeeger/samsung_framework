package com.android.systemui.wallpaper.accessory;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SmartCardController$getMainHandler$1 extends Handler {
    public final /* synthetic */ SmartCardController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SmartCardController$getMainHandler$1(SmartCardController smartCardController, Looper looper) {
        super(looper);
        this.this$0 = smartCardController;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what == 20230526) {
            SmartCardController smartCardController = this.this$0;
            boolean booleanValue = ((Boolean) message.obj).booleanValue();
            int i = SmartCardController.$r8$clinit;
            smartCardController.updateState(booleanValue);
        }
    }
}
