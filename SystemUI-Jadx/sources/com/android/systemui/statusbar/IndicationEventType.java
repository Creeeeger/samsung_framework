package com.android.systemui.statusbar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public enum IndicationEventType {
    EMPTY_LOW(1),
    /* JADX INFO: Fake field, exist only in values array */
    LEGACY_DEFAULT(20),
    BATTERY_RESTING(20),
    /* JADX INFO: Fake field, exist only in values array */
    RESTING(25),
    UNLOCK_GUIDE(25),
    OWNER_INFO(30),
    TRUST_AGENT_HELP(35),
    BATTERY(40),
    EMPTY_HIGH(45),
    LEGACY_TRANSIENT(0),
    /* JADX INFO: Fake field, exist only in values array */
    NOTI_GUIDE(50),
    BIOMETRICS_HELP(60),
    BIOMETRICS_STOP(60),
    TRUST_AGENT_ERROR(70),
    BIOMETRICS_COOLDOWN(85),
    PPP_COOLDOWN(90);

    private int mPriority;

    IndicationEventType(int i) {
        this.mPriority = i;
    }

    public final int getPriority() {
        return this.mPriority;
    }
}
