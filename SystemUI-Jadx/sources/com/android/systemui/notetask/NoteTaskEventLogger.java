package com.android.systemui.notetask;

import com.android.internal.logging.UiEventLogger;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoteTaskEventLogger {
    public final UiEventLogger uiEventLogger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum NoteTaskUiEvent implements UiEventLogger.UiEventEnum {
        NOTE_OPENED_VIA_KEYGUARD_QUICK_AFFORDANCE(1294),
        NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON(1295),
        NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON_LOCKED(1296),
        NOTE_OPENED_VIA_SHORTCUT(1297),
        NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON(1311),
        NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON_LOCKED(1312);

        private final int _id;

        NoteTaskUiEvent(int i) {
            this._id = i;
        }

        public final int getId() {
            return this._id;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NoteTaskEntryPoint.values().length];
            try {
                iArr[NoteTaskEntryPoint.TAIL_BUTTON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NoteTaskEntryPoint.WIDGET_PICKER_SHORTCUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NoteTaskEntryPoint.WIDGET_PICKER_SHORTCUT_IN_MULTI_WINDOW_MODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NoteTaskEntryPoint.QUICK_AFFORDANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[NoteTaskEntryPoint.APP_CLIPS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[NoteTaskEntryPoint.KEYBOARD_SHORTCUT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public NoteTaskEventLogger(UiEventLogger uiEventLogger) {
        this.uiEventLogger = uiEventLogger;
    }

    public final void logNoteTaskClosed(NoteTaskInfo noteTaskInfo) {
        int i;
        NoteTaskUiEvent noteTaskUiEvent;
        NoteTaskEntryPoint noteTaskEntryPoint = noteTaskInfo.entryPoint;
        if (noteTaskEntryPoint == null) {
            i = -1;
        } else {
            i = WhenMappings.$EnumSwitchMapping$0[noteTaskEntryPoint.ordinal()];
        }
        switch (i) {
            case -1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return;
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
                if (noteTaskInfo.isKeyguardLocked) {
                    noteTaskUiEvent = NoteTaskUiEvent.NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON_LOCKED;
                } else {
                    noteTaskUiEvent = NoteTaskUiEvent.NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON;
                }
                this.uiEventLogger.log(noteTaskUiEvent, noteTaskInfo.uid, noteTaskInfo.packageName);
                return;
        }
    }

    public final void logNoteTaskOpened(NoteTaskInfo noteTaskInfo) {
        int i;
        NoteTaskUiEvent noteTaskUiEvent;
        NoteTaskEntryPoint noteTaskEntryPoint = noteTaskInfo.entryPoint;
        if (noteTaskEntryPoint == null) {
            i = -1;
        } else {
            i = WhenMappings.$EnumSwitchMapping$0[noteTaskEntryPoint.ordinal()];
        }
        switch (i) {
            case -1:
            case 5:
            case 6:
                return;
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
                if (noteTaskInfo.isKeyguardLocked) {
                    noteTaskUiEvent = NoteTaskUiEvent.NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON_LOCKED;
                    break;
                } else {
                    noteTaskUiEvent = NoteTaskUiEvent.NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON;
                    break;
                }
            case 2:
            case 3:
                noteTaskUiEvent = NoteTaskUiEvent.NOTE_OPENED_VIA_SHORTCUT;
                break;
            case 4:
                noteTaskUiEvent = NoteTaskUiEvent.NOTE_OPENED_VIA_KEYGUARD_QUICK_AFFORDANCE;
                break;
        }
        this.uiEventLogger.log(noteTaskUiEvent, noteTaskInfo.uid, noteTaskInfo.packageName);
    }
}
