package com.android.keyguard;

import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.systemui.common.buffer.RingBuffer;
import com.samsung.android.knox.restriction.PhoneRestrictionPolicy;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardActiveUnlockModel extends KeyguardListenModel {
    public static final List TABLE_HEADERS;
    public final Lazy asStringList$delegate;
    public boolean authInterruptActive;
    public boolean awakeKeyguard;
    public boolean fpLockedOut;
    public boolean listening;
    public boolean primaryAuthRequired;
    public boolean switchingUser;
    public long timeMillis;
    public boolean triggerActiveUnlockForAssistant;
    public boolean userCanDismissLockScreen;
    public int userId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Buffer {
        public final RingBuffer buffer = new RingBuffer(20, new Function0() { // from class: com.android.keyguard.KeyguardActiveUnlockModel$Buffer$buffer$1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return new KeyguardActiveUnlockModel(0L, 0, false, false, false, false, false, false, false, false, 1023, null);
            }
        });
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        TABLE_HEADERS = CollectionsKt__CollectionsKt.listOf(PhoneRestrictionPolicy.TIMESTAMP, "time_millis", "userId", "listening", "awakeKeyguard", "authInterruptActive", "fpLockedOut", "primaryAuthRequired", "switchingUser", "triggerActiveUnlockForAssistant", "userCanDismissLockScreen");
    }

    public KeyguardActiveUnlockModel() {
        this(0L, 0, false, false, false, false, false, false, false, false, 1023, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyguardActiveUnlockModel)) {
            return false;
        }
        KeyguardActiveUnlockModel keyguardActiveUnlockModel = (KeyguardActiveUnlockModel) obj;
        if (this.timeMillis == keyguardActiveUnlockModel.timeMillis && this.userId == keyguardActiveUnlockModel.userId && this.listening == keyguardActiveUnlockModel.listening && this.awakeKeyguard == keyguardActiveUnlockModel.awakeKeyguard && this.authInterruptActive == keyguardActiveUnlockModel.authInterruptActive && this.fpLockedOut == keyguardActiveUnlockModel.fpLockedOut && this.primaryAuthRequired == keyguardActiveUnlockModel.primaryAuthRequired && this.switchingUser == keyguardActiveUnlockModel.switchingUser && this.triggerActiveUnlockForAssistant == keyguardActiveUnlockModel.triggerActiveUnlockForAssistant && this.userCanDismissLockScreen == keyguardActiveUnlockModel.userCanDismissLockScreen) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.userId, Long.hashCode(this.timeMillis) * 31, 31);
        boolean z = this.listening;
        int i = 1;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = (m + i2) * 31;
        boolean z2 = this.awakeKeyguard;
        int i4 = z2;
        if (z2 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        boolean z3 = this.authInterruptActive;
        int i6 = z3;
        if (z3 != 0) {
            i6 = 1;
        }
        int i7 = (i5 + i6) * 31;
        boolean z4 = this.fpLockedOut;
        int i8 = z4;
        if (z4 != 0) {
            i8 = 1;
        }
        int i9 = (i7 + i8) * 31;
        boolean z5 = this.primaryAuthRequired;
        int i10 = z5;
        if (z5 != 0) {
            i10 = 1;
        }
        int i11 = (i9 + i10) * 31;
        boolean z6 = this.switchingUser;
        int i12 = z6;
        if (z6 != 0) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        boolean z7 = this.triggerActiveUnlockForAssistant;
        int i14 = z7;
        if (z7 != 0) {
            i14 = 1;
        }
        int i15 = (i13 + i14) * 31;
        boolean z8 = this.userCanDismissLockScreen;
        if (!z8) {
            i = z8 ? 1 : 0;
        }
        return i15 + i;
    }

    public final String toString() {
        return "KeyguardActiveUnlockModel(timeMillis=" + this.timeMillis + ", userId=" + this.userId + ", listening=" + this.listening + ", awakeKeyguard=" + this.awakeKeyguard + ", authInterruptActive=" + this.authInterruptActive + ", fpLockedOut=" + this.fpLockedOut + ", primaryAuthRequired=" + this.primaryAuthRequired + ", switchingUser=" + this.switchingUser + ", triggerActiveUnlockForAssistant=" + this.triggerActiveUnlockForAssistant + ", userCanDismissLockScreen=" + this.userCanDismissLockScreen + ")";
    }

    public /* synthetic */ KeyguardActiveUnlockModel(long j, int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? false : z4, (i2 & 64) != 0 ? false : z5, (i2 & 128) != 0 ? false : z6, (i2 & 256) != 0 ? false : z7, (i2 & 512) == 0 ? z8 : false);
    }

    public KeyguardActiveUnlockModel(long j, int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        super(null);
        this.timeMillis = j;
        this.userId = i;
        this.listening = z;
        this.awakeKeyguard = z2;
        this.authInterruptActive = z3;
        this.fpLockedOut = z4;
        this.primaryAuthRequired = z5;
        this.switchingUser = z6;
        this.triggerActiveUnlockForAssistant = z7;
        this.userCanDismissLockScreen = z8;
        this.asStringList$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.keyguard.KeyguardActiveUnlockModel$asStringList$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CollectionsKt__CollectionsKt.listOf(KeyguardListenModelKt.DATE_FORMAT.format(Long.valueOf(KeyguardActiveUnlockModel.this.timeMillis)), String.valueOf(KeyguardActiveUnlockModel.this.timeMillis), String.valueOf(KeyguardActiveUnlockModel.this.userId), String.valueOf(KeyguardActiveUnlockModel.this.listening), String.valueOf(KeyguardActiveUnlockModel.this.awakeKeyguard), String.valueOf(KeyguardActiveUnlockModel.this.authInterruptActive), String.valueOf(KeyguardActiveUnlockModel.this.fpLockedOut), String.valueOf(KeyguardActiveUnlockModel.this.primaryAuthRequired), String.valueOf(KeyguardActiveUnlockModel.this.switchingUser), String.valueOf(KeyguardActiveUnlockModel.this.triggerActiveUnlockForAssistant), String.valueOf(KeyguardActiveUnlockModel.this.userCanDismissLockScreen));
            }
        });
    }
}
