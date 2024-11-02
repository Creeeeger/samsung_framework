package com.android.wm.shell.pip;

import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.wm.shell.pip.phone.PipController$$ExternalSyntheticLambda7;
import com.samsung.android.knox.ex.peripheral.PeripheralBarcodeConstants;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipTransitionState {
    public boolean mInSwipePipToHomeTransition;
    public final List mOnPipTransitionStateChangedListeners = new ArrayList();
    public int mState = 0;
    public long mTaskAppearedTime;

    public static String transitStateToString(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                return Integer.toString(i);
                            }
                            return "EXITING_PIP";
                        }
                        return "ENTERED_PIP";
                    }
                    return "ENTERING_PIP";
                }
                return "ENTRY_SCHEDULED";
            }
            return "TASK_APPEARED";
        }
        return PeripheralBarcodeConstants.Symbology.UNDEFINED;
    }

    public final boolean isInPip() {
        int i = this.mState;
        if (i >= 1 && i != 5) {
            return true;
        }
        return false;
    }

    public final void setTransitionState(int i) {
        int i2;
        long j;
        boolean z;
        if (this.mState != i) {
            int i3 = 0;
            while (true) {
                ArrayList arrayList = (ArrayList) this.mOnPipTransitionStateChangedListeners;
                i2 = 5;
                boolean z2 = true;
                if (i3 >= arrayList.size()) {
                    break;
                }
                PipController$$ExternalSyntheticLambda7 pipController$$ExternalSyntheticLambda7 = (PipController$$ExternalSyntheticLambda7) arrayList.get(i3);
                int i4 = this.mState;
                Consumer consumer = pipController$$ExternalSyntheticLambda7.f$0.mOnIsInPipStateChangedListener;
                if (consumer != null) {
                    if (i4 >= 1 && i4 != 5) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (i < 1 || i == 5) {
                        z2 = false;
                    }
                    if (z2 != z) {
                        consumer.accept(Boolean.valueOf(z2));
                    }
                }
                i3++;
            }
            if (CoreRune.MW_PIP_SHELL_TRANSITION) {
                if (i == 1) {
                    j = System.currentTimeMillis();
                } else {
                    j = 0;
                }
                this.mTaskAppearedTime = j;
            }
            StringBuilder sb = new StringBuilder("[PipTransitionState] setState: ");
            sb.append(transitStateToString(this.mState));
            sb.append(" -> ");
            sb.append(transitStateToString(i));
            sb.append(", Callers=");
            if (!CoreRune.SAFE_DEBUG) {
                i2 = 1;
            }
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(i2, sb, "PipTaskOrganizer");
            this.mState = i;
        }
    }

    public final String toString() {
        String str;
        Object[] objArr = new Object[2];
        int i = this.mState;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i == 5) {
                                str = "exiting-pip";
                            } else {
                                throw new IllegalStateException("Unknown state: " + this.mState);
                            }
                        } else {
                            str = "entered-pip";
                        }
                    } else {
                        str = "entering-pip";
                    }
                } else {
                    str = "entry-scheduled";
                }
            } else {
                str = "task-appeared";
            }
        } else {
            str = "undefined";
        }
        objArr[0] = str;
        objArr[1] = Boolean.valueOf(this.mInSwipePipToHomeTransition);
        return String.format("PipTransitionState(mState=%s, mInSwipePipToHomeTransition=%b)", objArr);
    }
}
