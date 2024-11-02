package com.android.systemui.biometrics.ui.viewmodel;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface PromptMessage {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class DefaultImpls {
        public static String getMessage(PromptMessage promptMessage) {
            if (promptMessage instanceof Error) {
                return ((Error) promptMessage).errorMessage;
            }
            if (promptMessage instanceof Help) {
                return ((Help) promptMessage).helpMessage;
            }
            return "";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Empty implements PromptMessage {
        public static final Empty INSTANCE = new Empty();

        private Empty() {
        }

        @Override // com.android.systemui.biometrics.ui.viewmodel.PromptMessage
        public final String getMessage() {
            return DefaultImpls.getMessage(this);
        }

        @Override // com.android.systemui.biometrics.ui.viewmodel.PromptMessage
        public final boolean isErrorOrHelp() {
            if (!(this instanceof Error) && !(this instanceof Help)) {
                return false;
            }
            return true;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Error implements PromptMessage {
        public final String errorMessage;

        public Error(String str) {
            this.errorMessage = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Error) && Intrinsics.areEqual(this.errorMessage, ((Error) obj).errorMessage)) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.biometrics.ui.viewmodel.PromptMessage
        public final String getMessage() {
            return DefaultImpls.getMessage(this);
        }

        public final int hashCode() {
            return this.errorMessage.hashCode();
        }

        @Override // com.android.systemui.biometrics.ui.viewmodel.PromptMessage
        public final boolean isErrorOrHelp() {
            return true;
        }

        public final String toString() {
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("Error(errorMessage="), this.errorMessage, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Help implements PromptMessage {
        public final String helpMessage;

        public Help(String str) {
            this.helpMessage = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Help) && Intrinsics.areEqual(this.helpMessage, ((Help) obj).helpMessage)) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.biometrics.ui.viewmodel.PromptMessage
        public final String getMessage() {
            return DefaultImpls.getMessage(this);
        }

        public final int hashCode() {
            return this.helpMessage.hashCode();
        }

        @Override // com.android.systemui.biometrics.ui.viewmodel.PromptMessage
        public final boolean isErrorOrHelp() {
            boolean z = this instanceof Error;
            return true;
        }

        public final String toString() {
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("Help(helpMessage="), this.helpMessage, ")");
        }
    }

    String getMessage();

    boolean isErrorOrHelp();
}
