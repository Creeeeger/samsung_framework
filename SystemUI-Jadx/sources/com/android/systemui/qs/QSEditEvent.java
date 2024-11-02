package com.android.systemui.qs;

import com.android.internal.logging.UiEventLogger;
import com.samsung.android.knox.custom.IKnoxCustomManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public enum QSEditEvent implements UiEventLogger.UiEventEnum {
    QS_EDIT_REMOVE(210),
    QS_EDIT_ADD(IKnoxCustomManager.Stub.TRANSACTION_getWifiHotspotEnabledState),
    QS_EDIT_MOVE(IKnoxCustomManager.Stub.TRANSACTION_getWifiState),
    /* JADX INFO: Fake field, exist only in values array */
    QS_EDIT_OPEN(IKnoxCustomManager.Stub.TRANSACTION_addAutoCallNumber),
    QS_EDIT_CLOSED(IKnoxCustomManager.Stub.TRANSACTION_removeAutoCallNumber),
    QS_EDIT_RESET(IKnoxCustomManager.Stub.TRANSACTION_getAutoCallNumberDelay);

    private final int _id;

    QSEditEvent(int i) {
        this._id = i;
    }

    public final int getId() {
        return this._id;
    }
}
