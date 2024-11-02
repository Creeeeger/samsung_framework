package com.android.systemui.shade;

import android.os.Handler;
import android.util.Log;
import com.android.systemui.statusbar.StatusBarState;
import java.text.DecimalFormat;
import java.util.function.Consumer;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecPanelExpansionStateModel {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Handler handler;
    public final Consumer notifyPanelState;
    public boolean panelExpanded;
    public float panelFirstDepthFraction;
    public int panelOpenState;
    public int panelPrvOpenState;
    public float panelSecondDepthFraction;
    public boolean wasUnlockedWhilePanelOpening;
    public int statusBarState = 1;
    public boolean isLcdOn = true;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public SecPanelExpansionStateModel(Consumer<Integer> consumer, Handler handler) {
        this.notifyPanelState = consumer;
        this.handler = handler;
    }

    public final void setLcdOn(boolean z) {
        if (this.isLcdOn != z) {
            this.isLcdOn = z;
            boolean z2 = true;
            if (this.statusBarState == 1 || this.panelOpenState != 2) {
                z2 = false;
            }
            if (!z && !z2) {
                updatePanelOpenState();
            }
        }
    }

    public final void setStatusBarState(int i) {
        boolean z;
        int i2 = this.statusBarState;
        if (i2 != i) {
            this.statusBarState = i;
            if (i == 0 && this.panelOpenState != 0) {
                z = true;
            } else {
                z = false;
            }
            setWasUnlockedWhilePanelOpening(z);
            if (i2 == 1 && i == 0) {
                if (this.panelFirstDepthFraction >= 1.0f) {
                    Log.d("SecPanelExpansionStateModel", " @ POST updatePanelOpenState(KEYGUARD > SHADE) " + this);
                    this.handler.post(new Runnable() { // from class: com.android.systemui.shade.SecPanelExpansionStateModel$statusBarState$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            Log.d("SecPanelExpansionStateModel", " @ RUN updatePanelOpenState(KEYGUARD > SHADE) " + SecPanelExpansionStateModel.this);
                            SecPanelExpansionStateModel secPanelExpansionStateModel = SecPanelExpansionStateModel.this;
                            int i3 = SecPanelExpansionStateModel.$r8$clinit;
                            secPanelExpansionStateModel.updatePanelOpenState();
                        }
                    });
                    return;
                }
                return;
            }
            updatePanelOpenState();
        }
    }

    public final void setWasUnlockedWhilePanelOpening(boolean z) {
        if (this.wasUnlockedWhilePanelOpening != z) {
            this.wasUnlockedWhilePanelOpening = z;
            Log.d("SecPanelExpansionStateModel", "wasUnlockedWhilePanelOpening:" + z + " " + this);
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        int i = this.panelOpenState;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    str = "NOT INITIALIZED";
                } else {
                    str = "STATE_OPEN";
                }
            } else {
                str = "STATE_ANIMATING";
            }
        } else {
            str = "STATE_CLOSED";
        }
        sb.append("<" + str + ">");
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        sb.append(" 1stFrc:" + decimalFormat.format(Float.valueOf(this.panelFirstDepthFraction)));
        sb.append(" 2ndFrc:" + decimalFormat.format(Float.valueOf(this.panelSecondDepthFraction)));
        sb.append(" panelExpanded:" + this.panelExpanded);
        sb.append(" lcdOn:" + this.isLcdOn);
        sb.append(" Bar:" + StatusBarState.toString(this.statusBarState));
        sb.append(" wasUnlockedWhilePanelOpening:" + this.wasUnlockedWhilePanelOpening);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        if (r8.panelSecondDepthFraction <= 0.0f) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0061, code lost:
    
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x003e, code lost:
    
        if (r8.panelSecondDepthFraction > 0.0f) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0059, code lost:
    
        if (r7 < 1.0f) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x005d, code lost:
    
        if (r8.panelExpanded == false) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updatePanelOpenState() {
        /*
            r8 = this;
            boolean r0 = r8.isLcdOn
            r1 = 1
            r2 = 2
            r3 = 0
            if (r0 != 0) goto L9
            goto L63
        L9:
            int r0 = r8.statusBarState
            r4 = 1065353216(0x3f800000, float:1.0)
            r5 = 0
            if (r0 == 0) goto L41
            if (r0 == r1) goto L22
            if (r0 == r2) goto L15
            goto L63
        L15:
            float r0 = r8.panelFirstDepthFraction
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 >= 0) goto L5f
            float r0 = r8.panelSecondDepthFraction
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 > 0) goto L5f
            goto L61
        L22:
            float r0 = r8.panelFirstDepthFraction
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 < 0) goto L2f
            float r6 = r8.panelSecondDepthFraction
            int r6 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
            if (r6 > 0) goto L2f
            goto L63
        L2f:
            if (r0 < 0) goto L38
            float r6 = r8.panelSecondDepthFraction
            int r4 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r4 < 0) goto L38
            goto L5f
        L38:
            if (r0 < 0) goto L63
            float r0 = r8.panelSecondDepthFraction
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 <= 0) goto L63
            goto L61
        L41:
            float r0 = r8.panelFirstDepthFraction
            int r6 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r6 < 0) goto L63
            float r7 = r8.panelSecondDepthFraction
            int r5 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r5 >= 0) goto L4e
            goto L63
        L4e:
            if (r6 > 0) goto L53
            if (r5 > 0) goto L53
            goto L63
        L53:
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 >= 0) goto L5b
            int r0 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r0 < 0) goto L61
        L5b:
            boolean r0 = r8.panelExpanded
            if (r0 == 0) goto L61
        L5f:
            r0 = r2
            goto L64
        L61:
            r0 = r1
            goto L64
        L63:
            r0 = r3
        L64:
            int r4 = r8.panelOpenState
            if (r4 == r0) goto La6
            r8.setWasUnlockedWhilePanelOpening(r3)
            if (r0 == 0) goto L7a
            if (r0 == r1) goto L77
            if (r0 == r2) goto L74
            java.lang.String r1 = "NOT INITIALIZED"
            goto L7c
        L74:
            java.lang.String r1 = "STATE_OPEN"
            goto L7c
        L77:
            java.lang.String r1 = "STATE_ANIMATING"
            goto L7c
        L7a:
            java.lang.String r1 = "STATE_CLOSED"
        L7c:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "!!! NOTIFY !!! PanelOpenState is changed to <"
            r2.<init>(r3)
            r2.append(r1)
            java.lang.String r1 = "> from "
            r2.append(r1)
            r2.append(r8)
            java.lang.String r1 = r2.toString()
            java.lang.String r2 = "SecPanelExpansionStateModel"
            android.util.Log.d(r2, r1)
            int r1 = r8.panelOpenState
            r8.panelPrvOpenState = r1
            r8.panelOpenState = r0
            java.util.function.Consumer r8 = r8.notifyPanelState
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r8.accept(r0)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shade.SecPanelExpansionStateModel.updatePanelOpenState():void");
    }
}
