package com.android.systemui.volume.reducer;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelReducerBase;
import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import com.samsung.systemui.splugins.volume.VolumeState;
import com.samsung.systemui.splugins.volume.VolumeStreamState;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumePanelReducer implements VolumePanelReducerBase {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.volume.reducer.VolumePanelReducer$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType;

        static {
            int[] iArr = new int[VolumePanelAction.ActionType.values().length];
            $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType = iArr;
            try {
                iArr[VolumePanelAction.ActionType.ACTION_INIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_IDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_PANEL_SHOW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_ANIMATION_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_TIME_OUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SCREEN_OFF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SWIPE_COLLAPSED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_TOUCH_OUTSIDE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_DISMISS_REQUESTED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_MIRROR_LINK_ON.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_NONE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_STATE_CHANGED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_ANIMATION_FINISHED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SWIPE_PANEL.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_EXPAND_BUTTON_CLICKED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_START_SLIDER_TRACKING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_STOP_SLIDER_TRACKING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_UPDATE_PROGRESS_BAR.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_VOLUME_ICON_CLICKED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_CHECK_IF_NEED_TO_SET_PROGRESS.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_TOUCH_PANEL.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_ALL_SOUND_OFF_CHANGED.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_USER_SWITCHED.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SETUP_WIZARD_COMPLETE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_ACCESSIBILITY_MODE_CHANGED.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SEND_ACCESSIBILITY_EVENT.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_PLAY_SOUND_ON.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_CONFIGURATION_CHANGED.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_COVER_STATE_CHAGNED.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SMART_VIEW_SEEKBAR_TOUCHED.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SHOW_VOLUME_LIMITER_DIALOG.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_VOLUME_LIMITER_DIALOG_VOLUME_DOWN.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_DISMISS_VOLUME_LIMITER_DIALOG.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_DISMISS_VOLUME_PANEL.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_DISMISS_SUB_DISPLAY_VOLUME_PANEL.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SHOW_VOLUME_SAFETY_WARNING_DIALOG.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_DISMISS_VOLUME_SAFETY_WARNING_DIALOG.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_OPEN_THEME_CHANGED.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SETTINGS_BUTTON_CLICKED.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SEEKBAR_START_PROGRESS.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SEEKBAR_TOUCH_DOWN.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SEEKBAR_TOUCH_UP.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_STATUS_MESSAGE_CLICKED.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_STATUS_LE_BROADCASTING_MESSAGE_CLICKED.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_FOLDER_STATE_CHANGED.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_ARROW_RIGHT_CLICKED.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_ARROW_LEFT_CLICKED.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_CAPTION_COMPONENT_CHANGED.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_CAPTION_CHANGED.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_VOLUME_ICON_ANIMATION_FINISHED.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_DUAL_PLAY_MODE_CHANGED.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_SHOW_VOLUME_CSD_100_WARNING_DIALOG.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_DISMISS_VOLUME_CSD_100_WARNING_DIALOG.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_KEY_EVENT.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_VOLUME_CSD_100_WARNING_DIALOG_TIMEOUT.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType[VolumePanelAction.ActionType.ACTION_HEADSET_CONNECTION.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
        }
    }

    public static List<VolumePanelRow> applyActiveState(List<VolumePanelRow> list, int i) {
        return (List) list.stream().map(new VolumePanelReducer$$ExternalSyntheticLambda3(i, 4)).collect(Collectors.toList());
    }

    public static List<VolumePanelRow> applyImportance(List<VolumePanelRow> list, final List<Integer> list2, final List<Integer> list3, final boolean z) {
        return (List) list.stream().map(new Function() { // from class: com.android.systemui.volume.reducer.VolumePanelReducer$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                boolean z2;
                List list4 = list2;
                List list5 = list3;
                boolean z3 = z;
                VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                boolean anyMatch = list4.stream().anyMatch(new VolumePanelReducer$$ExternalSyntheticLambda13(volumePanelRow, 1));
                boolean anyMatch2 = list5.stream().anyMatch(new VolumePanelReducer$$ExternalSyntheticLambda13(volumePanelRow, 2));
                VolumePanelRow.Builder streamType = new VolumePanelRow.Builder(volumePanelRow).setStreamType(volumePanelRow.getStreamType());
                if (volumePanelRow.getStreamType() != 10) {
                    if (!volumePanelRow.isImportant() && !anyMatch) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    z3 = z2 & (!anyMatch2);
                }
                return streamType.isImportant(z3).isDynamic(volumePanelRow.isDynamic()).build();
            }
        }).collect(Collectors.toList());
    }

    public static List applyRowOrder(List list) {
        return (List) list.stream().sorted(new VolumePanelReducer$$ExternalSyntheticLambda16()).collect(Collectors.toList());
    }

    public static int calcTimeOut(VolumePanelState volumePanelState, int i, int i2) {
        int i3 = 3000;
        if (BasicRune.VOLUME_SUB_DISPLAY_VOLUME_DIALOG && volumePanelState.isFolded()) {
            if (!BasicRune.VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG) {
                i3 = 1000;
            }
            return Math.max(i3, i);
        }
        if (volumePanelState.isShowingVolumeSafetyWarningDialog()) {
            return Math.max(5000, Math.max(i, i2));
        }
        if (volumePanelState.isExpanded()) {
            return Math.max(5000, i);
        }
        return Math.max(3000, i);
    }

    public static VolumePanelState checkIfNeedToSetProgress(final VolumePanelState volumePanelState, int i, int i2, final long j) {
        Optional findFirst = volumePanelState.getVolumeRowList().stream().filter(new VolumePanelReducer$$ExternalSyntheticLambda2(i, 1)).map(new VolumePanelReducer$$ExternalSyntheticLambda5(1)).findFirst();
        Boolean bool = Boolean.FALSE;
        if (((Boolean) findFirst.orElse(bool)).booleanValue()) {
            return new VolumePanelState.Builder(volumePanelState).setStateType(VolumePanelState.StateType.STATE_NO_DISPATCH).build();
        }
        if (((Boolean) volumePanelState.getVolumeRowList().stream().filter(new VolumePanelReducer$$ExternalSyntheticLambda2(i, 3)).map(new Function() { // from class: com.android.systemui.volume.reducer.VolumePanelReducer$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                boolean z;
                if (j - ((VolumePanelRow) obj).getUserAttemptTime() < 1000) {
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        }).findFirst().orElse(bool)).booleanValue()) {
            return new VolumePanelState.Builder(volumePanelState).setStateType(VolumePanelState.StateType.STATE_UPDATE_PROGRESS_BAR_LATER).stream(i).build();
        }
        final int ringerModeInternal = volumePanelState.getRingerModeInternal();
        if (((Boolean) ((List) volumePanelState.getVolumeRowList().stream().map(new Function() { // from class: com.android.systemui.volume.reducer.VolumePanelReducer$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                int i3;
                int i4 = ringerModeInternal;
                VolumePanelState volumePanelState2 = volumePanelState;
                VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                VolumePanelRow.Builder builder = new VolumePanelRow.Builder(volumePanelRow);
                boolean isRemoteMic = volumePanelState2.isRemoteMic();
                if (volumePanelRow.isMuted() || (volumePanelRow.getStreamType() == 2 && (VolumePanelValues.isVibrate(i4) || VolumePanelValues.isSilent(i4)))) {
                    i3 = 0;
                } else if (volumePanelRow.getStreamType() == 6 && !isRemoteMic) {
                    i3 = volumePanelRow.getLevel() + 1;
                } else {
                    i3 = volumePanelRow.getLevel();
                }
                return builder.realLevel(i3).build();
            }
        }).collect(Collectors.toList())).stream().filter(new VolumePanelReducer$$ExternalSyntheticLambda2(i, 0)).map(new VolumePanelReducer$$ExternalSyntheticLambda3(i2, 0)).findFirst().orElse(bool)).booleanValue()) {
            return new VolumePanelState.Builder(volumePanelState).setStateType(VolumePanelState.StateType.STATE_NO_DISPATCH).build();
        }
        return new VolumePanelState.Builder(volumePanelState).setStateType(VolumePanelState.StateType.STATE_UPDATE_PROGRESS_BAR).stream(i).build();
    }

    public static boolean checkZenMuted(VolumeStreamState volumeStreamState, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10 = true;
        if (volumeStreamState.getStreamType() == 3) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (!z5) {
            if (volumeStreamState.getStreamType() == 21) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (!z6) {
                if (volumeStreamState.getStreamType() == 11) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (!z7) {
                    if (volumeStreamState.getStreamType() == 22) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    if (!z8) {
                        if (z4) {
                            if (volumeStreamState.getStreamType() == 5) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            if (z9) {
                                return z3;
                            }
                        }
                        if (volumeStreamState.getStreamType() != 1) {
                            z10 = false;
                        }
                        if (!z10) {
                            return false;
                        }
                        return z2;
                    }
                    return z;
                }
                return z;
            }
            return z;
        }
        return z;
    }

    public static int determineEarProtectLevel(VolumeStreamState volumeStreamState, VolumePanelAction volumePanelAction, VolumePanelState volumePanelState) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean isSafeMediaDeviceOn = volumePanelAction.isSafeMediaDeviceOn();
        boolean isSafeMediaPinDeviceOn = volumePanelAction.isSafeMediaPinDeviceOn();
        boolean isMultiSoundBt = volumePanelAction.isMultiSoundBt();
        boolean z4 = true;
        if (volumeStreamState.getStreamType() == 3) {
            z = true;
        } else {
            z = false;
        }
        if (!z || !isSafeMediaDeviceOn) {
            if (volumeStreamState.getStreamType() == 22) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2 || (!isMultiSoundBt ? !isSafeMediaDeviceOn : !isSafeMediaPinDeviceOn)) {
                if (volumeStreamState.getStreamType() == 21) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (!z3 || !isSafeMediaPinDeviceOn) {
                    if (volumeStreamState.getStreamType() != 23) {
                        z4 = false;
                    }
                    if (!z4) {
                        return -1;
                    }
                }
            }
        }
        return volumePanelState.getEarProtectLevel();
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e5, code lost:
    
        if (r0 != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00eb, code lost:
    
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00e7, code lost:
    
        if (r13 == 2) goto L90;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0117 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:91:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean determineEnabled(com.samsung.systemui.splugins.volume.VolumeStreamState r11, com.samsung.systemui.splugins.volume.VolumePanelAction r12, com.samsung.systemui.splugins.volume.VolumePanelState r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.reducer.VolumePanelReducer.determineEnabled(com.samsung.systemui.splugins.volume.VolumeStreamState, com.samsung.systemui.splugins.volume.VolumePanelAction, com.samsung.systemui.splugins.volume.VolumePanelState, boolean):boolean");
    }

    public static boolean determineIconClickable(int i, boolean z) {
        if (i == 6 && z) {
            return true;
        }
        if (i != 0 && i != 6) {
            return true;
        }
        return false;
    }

    public static boolean determineIconEnabled(int i, boolean z) {
        if ((i == 2 && z) || i == 20) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x00f0, code lost:
    
        if (r8.isRemoteMic() == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00f6, code lost:
    
        if (r7.getLevel() != 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00fc, code lost:
    
        if (r7.isMuted() != false) goto L94;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int determineIconState(com.samsung.systemui.splugins.volume.VolumeStreamState r7, com.samsung.systemui.splugins.volume.VolumeState r8) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.reducer.VolumePanelReducer.determineIconState(com.samsung.systemui.splugins.volume.VolumeStreamState, com.samsung.systemui.splugins.volume.VolumeState):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0060 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int determineRealVolumeLevel(com.samsung.systemui.splugins.volume.VolumeStreamState r5, com.samsung.systemui.splugins.volume.VolumePanelAction r6, boolean r7) {
        /*
            com.samsung.systemui.splugins.volume.VolumeState r0 = r6.getVolumeState()
            int r1 = r5.getStreamType()
            r2 = 3
            r3 = 0
            r4 = 1
            if (r1 != r2) goto Lf
            r1 = r4
            goto L10
        Lf:
            r1 = r3
        L10:
            if (r1 != 0) goto L22
            int r1 = r5.getStreamType()
            r2 = 21
            if (r1 != r2) goto L1c
            r1 = r4
            goto L1d
        L1c:
            r1 = r3
        L1d:
            if (r1 == 0) goto L20
            goto L22
        L20:
            r1 = r3
            goto L23
        L22:
            r1 = r4
        L23:
            boolean r6 = r6.isZenNone()
            if (r1 == 0) goto L2f
            if (r6 != 0) goto L2d
            if (r7 == 0) goto L2f
        L2d:
            r6 = r4
            goto L30
        L2f:
            r6 = r3
        L30:
            int r7 = r5.getStreamType()
            r1 = 2
            if (r7 != r1) goto L39
            r7 = r4
            goto L3a
        L39:
            r7 = r3
        L3a:
            if (r7 == 0) goto L49
            int r7 = r0.getRingerModeInternal()
            if (r7 != r1) goto L44
            r7 = r4
            goto L45
        L44:
            r7 = r3
        L45:
            if (r7 == 0) goto L49
            r7 = r4
            goto L4a
        L49:
            r7 = r3
        L4a:
            r7 = r7 ^ r4
            if (r7 == 0) goto L53
            boolean r7 = r5.isMuted()
            if (r7 != 0) goto L73
        L53:
            if (r6 == 0) goto L56
            goto L73
        L56:
            int r6 = r5.getStreamType()
            r7 = 6
            if (r6 != r7) goto L5e
            r3 = r4
        L5e:
            if (r3 == 0) goto L6f
            if (r0 == 0) goto L6f
            boolean r6 = r0.isRemoteMic()
            if (r6 != 0) goto L6f
            int r5 = r5.getLevel()
            int r3 = r5 + 1
            goto L73
        L6f:
            int r3 = r5.getLevel()
        L73:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.reducer.VolumePanelReducer.determineRealVolumeLevel(com.samsung.systemui.splugins.volume.VolumeStreamState, com.samsung.systemui.splugins.volume.VolumePanelAction, boolean):int");
    }

    public static String determineRemoteLabel(VolumePanelRow volumePanelRow, VolumeStreamState volumeStreamState, VolumePanelAction volumePanelAction) {
        VolumeState volumeState = volumePanelAction.getVolumeState();
        if (volumeState == null) {
            return "";
        }
        String activeBtDeviceName = volumePanelAction.getActiveBtDeviceName();
        if (volumeStreamState.getStreamType() == 3) {
            if (!volumeStreamState.isRoutedToBt()) {
                return "";
            }
            if (volumeState.isDualAudio()) {
                return volumeStreamState.getDualBtDeviceName();
            }
            return activeBtDeviceName;
        }
        if (volumeStreamState.getStreamType() == 6 && volumeState.isRemoteMic()) {
            return activeBtDeviceName;
        }
        if (volumeStreamState.isDynamic()) {
            return volumeStreamState.getRemoteLabel();
        }
        return volumePanelRow.getRemoteLabel();
    }

    public static int determineRowPriority(VolumePanelRow volumePanelRow, int i, boolean z, boolean z2) {
        int originalPriority = volumePanelRow.getOriginalPriority();
        if (i == 22) {
            if (z2) {
                i = 21;
            } else {
                i = 3;
            }
        }
        if (i == 23) {
            i = 3;
        }
        if (volumePanelRow.getStreamType() == i) {
            return 0;
        }
        if ((volumePanelRow.isVisible() && !z) || ((z && volumePanelRow.getPriority() == 1) || (volumePanelRow.getStreamType() == 23 && i == 3))) {
            return 1;
        }
        return originalPriority;
    }

    public static boolean determineVisibility(VolumePanelRow volumePanelRow, int i, boolean z, boolean z2, boolean z3) {
        boolean z4;
        int i2;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean isImportant = volumePanelRow.isImportant();
        if (i == volumePanelRow.getStreamType()) {
            z4 = true;
        } else {
            z4 = false;
        }
        int i3 = 3;
        if (i == 23) {
            if (volumePanelRow.getStreamType() == 3) {
                z4 = true;
            } else if (volumePanelRow.getStreamType() == 23) {
                z4 = false;
            }
        }
        if (z3) {
            i2 = 21;
        } else {
            i2 = 3;
        }
        if (i != i2 && i != 22) {
            z5 = false;
        } else {
            z5 = true;
        }
        int streamType = volumePanelRow.getStreamType();
        if (z3) {
            i3 = 21;
        }
        if (streamType != i3 && volumePanelRow.getStreamType() != 22) {
            z6 = false;
        } else {
            z6 = true;
        }
        if (!z && z2 && z5 && z6 && isImportant) {
            z7 = true;
        } else {
            z7 = false;
        }
        if ((z && (isImportant || volumePanelRow.isActiveShow())) || z4 || z7) {
            return true;
        }
        return false;
    }

    public static String getAppDevicePairName(String str, String str2) {
        if (!str.isEmpty() && !str2.isEmpty()) {
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, ") (", str2);
        }
        return "";
    }

    public static int getImpliedLevel(int i, int i2, int i3) {
        if (i != 3 && i != 21 && i != 22) {
            if (i == 20) {
                return i3;
            }
            int i4 = i2 * 100;
            if (i3 == 0) {
                return 0;
            }
            if (i3 != i4) {
                return ((int) ((i3 / i4) * (i2 - 1))) + 1;
            }
            return i2;
        }
        return (i3 / 10) * 10;
    }

    public static List getVolumePanelRows(final VolumePanelState volumePanelState, VolumePanelAction volumePanelAction, boolean z, final boolean z2) {
        List list = (List) applyImportance(volumePanelState.getVolumeRowList(), volumePanelAction.getImportantStreamList(), volumePanelAction.getUnImportantStreamList(), z).stream().map(new Function() { // from class: com.android.systemui.volume.reducer.VolumePanelReducer$$ExternalSyntheticLambda9
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                VolumePanelState volumePanelState2 = VolumePanelState.this;
                VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                return new VolumePanelRow.Builder(volumePanelRow).isVisible(VolumePanelReducer.determineVisibility(volumePanelRow, volumePanelState2.getActiveStream(), z2, volumePanelState2.isDualAudio(), volumePanelState2.isMultiSoundBt())).build();
            }
        }).collect(Collectors.toList());
        final int activeStream = volumePanelState.getActiveStream();
        final boolean isMultiSoundBt = volumePanelState.isMultiSoundBt();
        return (List) list.stream().map(new Function() { // from class: com.android.systemui.volume.reducer.VolumePanelReducer$$ExternalSyntheticLambda15
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                return new VolumePanelRow.Builder(volumePanelRow).priority(VolumePanelReducer.determineRowPriority(volumePanelRow, activeStream, z2, isMultiSoundBt)).build();
            }
        }).collect(Collectors.toList());
    }

    public static boolean isDisabledWarningDialog(int i, boolean z) {
        if (z && i != 16 && i != 15 && i != 17 && i != 8) {
            return true;
        }
        return false;
    }

    public static boolean isStreamSilent(int i, VolumeStreamState volumeStreamState, VolumeState volumeState) {
        boolean z;
        boolean z2;
        if (volumeStreamState.getStreamType() == i) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (volumeState.getRingerModeInternal() == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public static boolean isStreamVibrate(int i, VolumeStreamState volumeStreamState, VolumeState volumeState) {
        boolean z;
        boolean z2;
        if (volumeStreamState.getStreamType() == i) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        if (volumeState.getRingerModeInternal() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            return false;
        }
        return true;
    }

    public static List prepareVolumePanelRow(boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VolumePanelRow.Builder().setStreamType(0).isImportant(false).originalPriority(arrayList.size() + 2).build());
        arrayList.add(new VolumePanelRow.Builder().setStreamType(6).isImportant(false).originalPriority(arrayList.size() + 2).build());
        arrayList.add(new VolumePanelRow.Builder().setStreamType(10).isImportant(false).originalPriority(arrayList.size() + 2).build());
        arrayList.add(new VolumePanelRow.Builder().setStreamType(3).isImportant(true).originalPriority(arrayList.size() + 2).build());
        arrayList.add(new VolumePanelRow.Builder().setStreamType(22).isImportant(false).originalPriority(arrayList.size() + 2).build());
        arrayList.add(new VolumePanelRow.Builder().setStreamType(20).isImportant(false).originalPriority(arrayList.size() + 2).build());
        arrayList.add(new VolumePanelRow.Builder().setStreamType(21).isImportant(false).originalPriority(arrayList.size() + 2).build());
        arrayList.add(new VolumePanelRow.Builder().setStreamType(23).isImportant(false).originalPriority(arrayList.size() + 2).build());
        if (z) {
            arrayList.add(new VolumePanelRow.Builder().setStreamType(2).isImportant(true).originalPriority(arrayList.size() + 2).build());
        }
        arrayList.add(new VolumePanelRow.Builder().setStreamType(11).isImportant(false).originalPriority(arrayList.size() + 2).build());
        arrayList.add(new VolumePanelRow.Builder().setStreamType(5).isImportant(true).originalPriority(arrayList.size() + 2).build());
        arrayList.add(new VolumePanelRow.Builder().setStreamType(1).isImportant(true).originalPriority(arrayList.size() + 2).build());
        arrayList.add(new VolumePanelRow.Builder().setStreamType(4).isImportant(false).originalPriority(arrayList.size() + 2).build());
        return arrayList;
    }

    public static List<VolumePanelRow> resetActiveState(List<VolumePanelRow> list) {
        return (List) list.stream().map(new VolumePanelReducer$$ExternalSyntheticLambda5(0)).collect(Collectors.toList());
    }

    public static boolean shouldSetStreamVolume(int i, int i2, VolumePanelState volumePanelState) {
        return ((Boolean) volumePanelState.getVolumeRowList().stream().filter(new VolumePanelReducer$$ExternalSyntheticLambda2(i, 2)).map(new VolumePanelReducer$$ExternalSyntheticLambda3(i2, 1)).findFirst().orElse(Boolean.FALSE)).booleanValue();
    }

    public static List<VolumePanelRow> updateAccessibilityRowPriority(List<VolumePanelRow> list) {
        int intValue;
        List applyRowOrder = applyRowOrder(list);
        List list2 = (List) applyRowOrder.stream().filter(new VolumePanelReducer$$ExternalSyntheticLambda6(1)).map(new VolumePanelReducer$$ExternalSyntheticLambda5(2)).collect(Collectors.toList());
        if (list2.size() >= 5) {
            intValue = ((Integer) list2.get(4)).intValue();
        } else {
            intValue = ((Integer) list2.get(list2.size() - 1)).intValue() + 1;
        }
        return (List) applyRowOrder.stream().map(new VolumePanelReducer$$ExternalSyntheticLambda3(intValue, 2)).collect(Collectors.toList());
    }

    public static int updateAudibleLevel(VolumePanelRow volumePanelRow, VolumeStreamState volumeStreamState) {
        int level = volumeStreamState.getLevel();
        int audibleLevel = volumePanelRow.getAudibleLevel();
        if (level <= 0) {
            if (audibleLevel > 0) {
                return audibleLevel;
            }
            return 1;
        }
        return level;
    }

    public static List<VolumePanelRow> updateVolumeStates(List<VolumePanelRow> list, final VolumePanelAction volumePanelAction, final VolumePanelState volumePanelState, final int i) {
        final VolumeState volumeState = volumePanelAction.getVolumeState();
        if (volumeState == null) {
            return list;
        }
        final List<VolumeStreamState> streamStates = volumeState.getStreamStates();
        return (List) list.stream().map(new Function() { // from class: com.android.systemui.volume.reducer.VolumePanelReducer$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List list2 = streamStates;
                VolumePanelAction volumePanelAction2 = volumePanelAction;
                VolumePanelState volumePanelState2 = volumePanelState;
                int i2 = i;
                VolumeState volumeState2 = volumeState;
                VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                VolumeStreamState volumeStreamState = (VolumeStreamState) list2.stream().filter(new VolumePanelReducer$$ExternalSyntheticLambda13(volumePanelRow, 3)).findFirst().orElse(null);
                if (volumeStreamState != null) {
                    VolumePanelRow.Builder isSliderEnabled = new VolumePanelRow.Builder(volumePanelRow).nameRes(volumeStreamState.getNameRes()).level(volumeStreamState.getLevel()).remoteLabel(VolumePanelReducer.determineRemoteLabel(volumePanelRow, volumeStreamState, volumePanelAction2)).isRoutedToBluetooth(volumeStreamState.isRoutedToBt()).isMuted(volumeStreamState.isMuted()).realLevel(VolumePanelReducer.determineRealVolumeLevel(volumeStreamState, volumePanelAction2, volumePanelState2.isAllSoundOff())).isSliderEnabled(VolumePanelReducer.determineEnabled(volumeStreamState, volumePanelAction2, volumePanelState2, volumePanelAction2.isZenPriorityOnly()));
                    int streamType = volumeStreamState.getStreamType();
                    int min = volumeStreamState.getMin();
                    VolumeState volumeState3 = volumePanelAction2.getVolumeState();
                    if (volumeState3 != null && streamType == 6 && !volumeState3.isRemoteMic()) {
                        min = 1;
                    }
                    VolumePanelRow.Builder levelMin = isSliderEnabled.levelMin(min);
                    int streamType2 = volumeStreamState.getStreamType();
                    int integerValue = volumeStreamState.getIntegerValue(VolumeStreamState.IntegerStateKey.MAX);
                    VolumeState volumeState4 = volumePanelAction2.getVolumeState();
                    if (volumeState4 != null && streamType2 == 6 && !volumeState4.isRemoteMic()) {
                        integerValue++;
                    }
                    VolumePanelRow.Builder isIconEnabled = levelMin.levelMax(integerValue).isVisible(VolumePanelReducer.determineVisibility(volumePanelRow, i2, volumePanelState2.isExpanded(), volumeState2.isDualAudio(), volumePanelAction2.isMultiSoundBt())).iconType(VolumePanelReducer.determineIconState(volumeStreamState, volumeState2)).audibleLevel(VolumePanelReducer.updateAudibleLevel(volumePanelRow, volumeStreamState)).earProtectionLevel(VolumePanelReducer.determineEarProtectLevel(volumeStreamState, volumePanelAction2, volumePanelState2)).priority(VolumePanelReducer.determineRowPriority(volumePanelRow, i2, volumePanelState2.isExpanded(), volumePanelAction2.isMultiSoundBt())).isIconClickable(VolumePanelReducer.determineIconClickable(volumeStreamState.getStreamType(), volumeState2.isRemoteMic())).isIconEnabled(VolumePanelReducer.determineIconEnabled(volumeStreamState.getStreamType(), volumePanelState2.isAllSoundOff()));
                    String smartViewDeviceName = volumePanelAction2.getSmartViewDeviceName();
                    if (volumePanelRow.getStreamType() != 20) {
                        smartViewDeviceName = "";
                    }
                    return isIconEnabled.smartViewLabel(smartViewDeviceName).dualBtDeviceAddress(volumeStreamState.getDualBtDeviceAddress()).dualBtDeviceName(volumeStreamState.getDualBtDeviceName()).build();
                }
                return volumePanelRow;
            }
        }).collect(Collectors.toList());
    }

    public int getLastAudibleLevelOrMinLevel(VolumePanelState volumePanelState, VolumePanelRow volumePanelRow) {
        int streamType = volumePanelRow.getStreamType();
        int level = volumePanelRow.getLevel();
        int levelMin = volumePanelRow.getLevelMin();
        int audibleLevel = volumePanelRow.getAudibleLevel();
        if (!volumePanelState.isVoiceCapable() ? streamType == 5 : streamType == 2) {
            if (!volumePanelState.isAllSoundOff()) {
                if (volumePanelState.getRingerModeInternal() == 2) {
                    if (!volumePanelState.isHasVibrator()) {
                        if (level != 0) {
                            return 0;
                        }
                    } else {
                        return level;
                    }
                } else if (level != 0) {
                    return level;
                }
            } else {
                return level;
            }
        } else if (streamType != 20) {
            if (level != levelMin) {
                return levelMin;
            }
        } else {
            return level;
        }
        return audibleLevel;
    }

    public List<VolumePanelRow> mergeRemoteStream(List<VolumePanelRow> list, List<VolumeStreamState> list2) {
        List list3 = (List) list.stream().filter(new VolumePanelReducer$$ExternalSyntheticLambda8(list2, 0)).collect(Collectors.toList());
        List list4 = (List) list2.stream().filter(new VolumePanelReducer$$ExternalSyntheticLambda8(list3, 1)).collect(Collectors.toList());
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list3);
        arrayList.addAll((Collection) list4.stream().map(new VolumePanelReducer$$ExternalSyntheticLambda3(((Integer) list.stream().filter(new VolumePanelReducer$$ExternalSyntheticLambda6(2)).map(new VolumePanelReducer$$ExternalSyntheticLambda5(3)).findFirst().orElse(7)).intValue(), 3)).collect(Collectors.toList()));
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:187:0x066e, code lost:
    
        if (com.samsung.systemui.splugins.volume.VolumePanelValues.isSilent(r1) != false) goto L142;
     */
    /* JADX WARN: Removed duplicated region for block: B:241:0x08d7  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x08e8  */
    @Override // com.samsung.systemui.splugins.volume.VolumePanelReducerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.samsung.systemui.splugins.volume.VolumePanelState reduce(com.samsung.systemui.splugins.volume.VolumePanelAction r18, final com.samsung.systemui.splugins.volume.VolumePanelState r19) {
        /*
            Method dump skipped, instructions count: 3042
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.reducer.VolumePanelReducer.reduce(com.samsung.systemui.splugins.volume.VolumePanelAction, com.samsung.systemui.splugins.volume.VolumePanelState):com.samsung.systemui.splugins.volume.VolumePanelState");
    }
}
