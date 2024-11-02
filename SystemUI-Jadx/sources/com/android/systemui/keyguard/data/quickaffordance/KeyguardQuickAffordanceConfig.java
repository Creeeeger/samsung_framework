package com.android.systemui.keyguard.data.quickaffordance;

import android.app.AlertDialog;
import android.content.Intent;
import com.android.systemui.animation.Expandable;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.keyguard.shared.quickaffordance.ActivationState;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface KeyguardQuickAffordanceConfig {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class LockScreenState {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Hidden extends LockScreenState {
            public static final Hidden INSTANCE = new Hidden();

            private Hidden() {
                super(null);
            }
        }

        private LockScreenState() {
        }

        public /* synthetic */ LockScreenState(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Visible extends LockScreenState {
            public final ActivationState activationState;
            public final Icon icon;

            public /* synthetic */ Visible(Icon icon, ActivationState activationState, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(icon, (i & 2) != 0 ? ActivationState.NotSupported.INSTANCE : activationState);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Visible)) {
                    return false;
                }
                Visible visible = (Visible) obj;
                if (Intrinsics.areEqual(this.icon, visible.icon) && Intrinsics.areEqual(this.activationState, visible.activationState)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return this.activationState.hashCode() + (this.icon.hashCode() * 31);
            }

            public final String toString() {
                return "Visible(icon=" + this.icon + ", activationState=" + this.activationState + ")";
            }

            public Visible(Icon icon, ActivationState activationState) {
                super(null);
                this.icon = icon;
                this.activationState = activationState;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class OnTriggeredResult {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Handled extends OnTriggeredResult {
            public static final Handled INSTANCE = new Handled();

            private Handled() {
                super(null);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class ShowDialog extends OnTriggeredResult {
            public final AlertDialog dialog;
            public final Expandable expandable;

            public ShowDialog(AlertDialog alertDialog, Expandable expandable) {
                super(null);
                this.dialog = alertDialog;
                this.expandable = expandable;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof ShowDialog)) {
                    return false;
                }
                ShowDialog showDialog = (ShowDialog) obj;
                if (Intrinsics.areEqual(this.dialog, showDialog.dialog) && Intrinsics.areEqual(this.expandable, showDialog.expandable)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                int hashCode;
                int hashCode2 = this.dialog.hashCode() * 31;
                Expandable expandable = this.expandable;
                if (expandable == null) {
                    hashCode = 0;
                } else {
                    hashCode = expandable.hashCode();
                }
                return hashCode2 + hashCode;
            }

            public final String toString() {
                return "ShowDialog(dialog=" + this.dialog + ", expandable=" + this.expandable + ")";
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class StartActivity extends OnTriggeredResult {
            public final boolean canShowWhileLocked;
            public final Intent intent;

            public StartActivity(Intent intent, boolean z) {
                super(null);
                this.intent = intent;
                this.canShowWhileLocked = z;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof StartActivity)) {
                    return false;
                }
                StartActivity startActivity = (StartActivity) obj;
                if (Intrinsics.areEqual(this.intent, startActivity.intent) && this.canShowWhileLocked == startActivity.canShowWhileLocked) {
                    return true;
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final int hashCode() {
                int hashCode = this.intent.hashCode() * 31;
                boolean z = this.canShowWhileLocked;
                int i = z;
                if (z != 0) {
                    i = 1;
                }
                return hashCode + i;
            }

            public final String toString() {
                return "StartActivity(intent=" + this.intent + ", canShowWhileLocked=" + this.canShowWhileLocked + ")";
            }
        }

        private OnTriggeredResult() {
        }

        public /* synthetic */ OnTriggeredResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class PickerScreenState {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Default extends PickerScreenState {
            public final Intent configureIntent;

            public Default() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof Default) && Intrinsics.areEqual(this.configureIntent, ((Default) obj).configureIntent)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                Intent intent = this.configureIntent;
                if (intent == null) {
                    return 0;
                }
                return intent.hashCode();
            }

            public final String toString() {
                return "Default(configureIntent=" + this.configureIntent + ")";
            }

            public /* synthetic */ Default(Intent intent, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : intent);
            }

            public Default(Intent intent) {
                super(null);
                this.configureIntent = intent;
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Disabled extends PickerScreenState {
            public final Intent actionIntent;
            public final String actionText;
            public final String explanation;

            public /* synthetic */ Disabled(String str, String str2, Intent intent, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : intent);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Disabled)) {
                    return false;
                }
                Disabled disabled = (Disabled) obj;
                if (Intrinsics.areEqual(this.explanation, disabled.explanation) && Intrinsics.areEqual(this.actionText, disabled.actionText) && Intrinsics.areEqual(this.actionIntent, disabled.actionIntent)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                int hashCode;
                int hashCode2 = this.explanation.hashCode() * 31;
                int i = 0;
                String str = this.actionText;
                if (str == null) {
                    hashCode = 0;
                } else {
                    hashCode = str.hashCode();
                }
                int i2 = (hashCode2 + hashCode) * 31;
                Intent intent = this.actionIntent;
                if (intent != null) {
                    i = intent.hashCode();
                }
                return i2 + i;
            }

            public final String toString() {
                return "Disabled(explanation=" + this.explanation + ", actionText=" + this.actionText + ", actionIntent=" + this.actionIntent + ")";
            }

            public Disabled(String str, String str2, Intent intent) {
                super(null);
                this.explanation = str;
                this.actionText = str2;
                this.actionIntent = intent;
                int length = str.length();
                boolean z = true;
                if (length > 0) {
                    if (!(str2 == null || str2.length() == 0) || intent != null) {
                        if ((str2 == null || str2.length() == 0) || intent == null) {
                            z = false;
                        }
                    }
                    if (!z) {
                        throw new IllegalStateException("actionText and actionIntent must either both be null/empty or both be\nnon-null and non-empty!".toString());
                    }
                    return;
                }
                throw new IllegalStateException("Explanation must not be empty!".toString());
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class UnavailableOnDevice extends PickerScreenState {
            public static final UnavailableOnDevice INSTANCE = new UnavailableOnDevice();

            private UnavailableOnDevice() {
                super(null);
            }
        }

        private PickerScreenState() {
        }

        public /* synthetic */ PickerScreenState(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    String getKey();

    Flow getLockScreenState();

    int getPickerIconResourceId();

    Object getPickerScreenState(Continuation continuation);

    OnTriggeredResult onTriggered(Expandable expandable);

    String pickerName();
}
