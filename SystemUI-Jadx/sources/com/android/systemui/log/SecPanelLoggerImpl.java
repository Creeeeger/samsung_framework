package com.android.systemui.log;

import android.os.Debug;
import android.util.Log;
import android.view.MotionEvent;
import com.android.systemui.BootAnimationFinishedCache;
import com.android.systemui.BootAnimationFinishedCacheImpl;
import com.android.systemui.shade.SecPanelExpansionStateNotifier;
import com.android.systemui.statusbar.StatusBarState;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecPanelLoggerImpl implements SecPanelLogger {
    public static final boolean DEBUG_MODE;
    public String previousPanelStateInfoText;
    public final SysuiStatusBarStateController sysuiStatusBarStateController;
    public final SecPanelLogWriter writer;

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
        DEBUG_MODE = true;
    }

    public SecPanelLoggerImpl(SecPanelLogWriter secPanelLogWriter, SysuiStatusBarStateController sysuiStatusBarStateController, BootAnimationFinishedCache bootAnimationFinishedCache, final SecPanelExpansionStateNotifier secPanelExpansionStateNotifier) {
        this.writer = secPanelLogWriter;
        this.sysuiStatusBarStateController = sysuiStatusBarStateController;
        ((BootAnimationFinishedCacheImpl) bootAnimationFinishedCache).addListener(new BootAnimationFinishedCache.BootAnimationFinishedListener() { // from class: com.android.systemui.log.SecPanelLoggerImpl.1
            @Override // com.android.systemui.BootAnimationFinishedCache.BootAnimationFinishedListener
            public final void onBootAnimationFinished() {
                final SecPanelLoggerImpl secPanelLoggerImpl = this;
                SecPanelExpansionStateNotifier.this.registerTicket(new SecPanelExpansionStateNotifier.SecPanelExpansionStateTicket() { // from class: com.android.systemui.log.SecPanelLoggerImpl$1$onBootAnimationFinished$1
                    @Override // com.android.systemui.shade.SecPanelExpansionStateNotifier.SecPanelExpansionStateTicket
                    public final String getName() {
                        return "SecPanelLogger";
                    }

                    @Override // com.android.systemui.shade.SecPanelExpansionStateNotifier.SecPanelExpansionStateTicket
                    public final void onSecPanelExpansionStateChanged(int i, boolean z) {
                        String str;
                        StringBuilder sb = new StringBuilder("SecPanelExpansionStateNotifier (");
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
                        sb.append(str);
                        sb.append(") justBeginToOpen:");
                        sb.append(z);
                        SecPanelLoggerImpl.this.writer.logPanel("PANEL_STATE_INFO", sb.toString());
                    }
                });
            }
        });
        this.previousPanelStateInfoText = "";
    }

    public final void addCoverPanelStateLog(String str) {
        if (DEBUG_MODE) {
            Log.d("[SecPanelLogger] SUB_QUICK_PANEL", str);
        }
        this.writer.logPanel("SUB_QUICK_PANEL", str);
    }

    public final void addNpvcInterceptTouchLog(MotionEvent motionEvent, String str, boolean z) {
        addPanelLog(motionEvent, "[NPVC]|[InterceptTouch]", new StringBuilder(str), z);
    }

    public final void addNpvcOnTouchLog(MotionEvent motionEvent, String str, boolean z) {
        addPanelLog(motionEvent, "[NPVC]|[onTouch]", new StringBuilder(str), z);
    }

    public final void addPanelLog(MotionEvent motionEvent, String str, StringBuilder sb, boolean z) {
        if (motionEvent.getAction() == 2) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(" | ");
        sb2.append(MotionEvent.actionToString(motionEvent.getAction()));
        sb2.append(" | return:");
        sb2.append(z);
        appendStatusBarState(sb2, " | ");
        sb2.append(" | ");
        sb2.append((CharSequence) sb);
        String sb3 = sb2.toString();
        if (DEBUG_MODE) {
            Log.d("SecPanelLogger", sb3);
        }
        this.writer.logPanel("TOUCH", sb3);
    }

    public final void addPanelStateInfoLog(StringBuilder sb, boolean z) {
        if (DEBUG_MODE || z) {
            Log.d("SecPanelLogger", sb.toString());
        }
        if (!Intrinsics.areEqual(this.previousPanelStateInfoText, sb.toString())) {
            this.previousPanelStateInfoText = sb.toString();
            sb.append("\n");
            sb.append(Debug.getCallers(10, " - "));
        }
        this.writer.logPanel("PANEL_STATE_INFO", sb.toString());
    }

    public final void appendStatusBarState(StringBuilder sb, String str) {
        sb.append(str);
        sb.append("StatusBarState: ");
        sb.append(StatusBarState.toString(((StatusBarStateControllerImpl) this.sysuiStatusBarStateController).mState));
    }
}
