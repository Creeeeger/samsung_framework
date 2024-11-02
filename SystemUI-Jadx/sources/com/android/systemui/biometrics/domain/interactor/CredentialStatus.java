package com.android.systemui.biometrics.domain.interactor;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface CredentialStatus {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Fail extends CredentialStatus {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Error implements Fail {
            public final String error;
            public final Integer remainingAttempts;
            public final String urgentMessage;

            public Error() {
                this(null, null, null, 7, null);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Error)) {
                    return false;
                }
                Error error = (Error) obj;
                if (Intrinsics.areEqual(this.error, error.error) && Intrinsics.areEqual(this.remainingAttempts, error.remainingAttempts) && Intrinsics.areEqual(this.urgentMessage, error.urgentMessage)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                int hashCode;
                int hashCode2;
                int i = 0;
                String str = this.error;
                if (str == null) {
                    hashCode = 0;
                } else {
                    hashCode = str.hashCode();
                }
                int i2 = hashCode * 31;
                Integer num = this.remainingAttempts;
                if (num == null) {
                    hashCode2 = 0;
                } else {
                    hashCode2 = num.hashCode();
                }
                int i3 = (i2 + hashCode2) * 31;
                String str2 = this.urgentMessage;
                if (str2 != null) {
                    i = str2.hashCode();
                }
                return i3 + i;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("Error(error=");
                sb.append(this.error);
                sb.append(", remainingAttempts=");
                sb.append(this.remainingAttempts);
                sb.append(", urgentMessage=");
                return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, this.urgentMessage, ")");
            }

            public Error(String str, Integer num, String str2) {
                this.error = str;
                this.remainingAttempts = num;
                this.urgentMessage = str2;
            }

            public /* synthetic */ Error(String str, Integer num, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : str2);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Throttled implements Fail {
            public final String error;

            public Throttled(String str) {
                this.error = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Throttled)) {
                    return false;
                }
                if (Intrinsics.areEqual(this.error, ((Throttled) obj).error)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return this.error.hashCode();
            }

            public final String toString() {
                return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("Throttled(error="), this.error, ")");
            }
        }
    }
}
