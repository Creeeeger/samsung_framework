package com.android.systemui.bixby2.interactor;

import android.content.Context;
import android.media.session.MediaSessionManager;
import android.util.Log;
import com.android.systemui.bixby2.CommandActionResponse;
import com.android.systemui.bixby2.controller.mediacontrol.MediaCommandType;
import com.android.systemui.bixby2.controller.volume.VolumeType;
import com.android.systemui.bixby2.util.AudioManagerWrapper;
import com.android.systemui.bixby2.util.MediaParamsParser;
import com.samsung.android.sdk.command.Command;
import com.samsung.android.sdk.command.action.BooleanAction;
import com.samsung.android.sdk.command.action.CommandAction;
import com.samsung.android.sdk.command.action.ModeAction;
import com.samsung.android.sdk.command.provider.CommandProvider;
import com.samsung.android.sdk.command.provider.ICommandActionCallback;
import com.samsung.android.sdk.command.template.MediaControlTemplate;
import com.samsung.android.sdk.command.template.SliderTemplate;
import com.samsung.android.sdk.command.template.ToggleTemplate;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MusicControlActionInteractor implements ActionInteractor {
    public static final Companion Companion = new Companion(null);
    private static final String KEY_NEW_VALUE = "key_new_value";
    private static final String MUTE_ACTION_PREFIX = "mute";
    public static final int STREAM_ALL = 31;
    public static final int STREAM_BLUETOOTH = 30;
    private static final int SUPPORTED_FLAG = 1023;
    private static final String TAG = "MusicControlActionInteractor";
    private AudioManagerWrapper audioManagerWrapper;
    private Context context;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum Action {
        volume_control,
        volume_control_ringtone,
        volume_control_media,
        volume_control_noti,
        volume_control_system,
        volume_control_bixby,
        volume_control_bluetooth,
        mute_volume,
        mute_all_volume,
        mute_ringtones_volume,
        mute_media_volume,
        mute_noti_volume,
        mute_system_volume,
        mute_bixby_volume,
        mute_bluetooth_volume,
        control_music
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public MusicControlActionInteractor(Context context) {
        this.context = context;
        this.audioManagerWrapper = new AudioManagerWrapper(context);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0099 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0077 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b4 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x00a6 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0083 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int getStreamTypeFromString(android.content.Context r2, java.lang.String r3) {
        /*
            r1 = this;
            int r0 = r3.hashCode()
            switch(r0) {
                case -1961507235: goto La8;
                case -1853328508: goto L9c;
                case -1719581065: goto L8f;
                case -1477758307: goto L85;
                case -711551941: goto L79;
                case -682366098: goto L6d;
                case -610069815: goto L63;
                case -84029337: goto L56;
                case 437139768: goto L44;
                case 988376414: goto L35;
                case 1232193329: goto L2a;
                case 1422875489: goto L1f;
                case 1432896029: goto L14;
                case 1660806934: goto L9;
                default: goto L7;
            }
        L7:
            goto Lb4
        L9:
            java.lang.String r1 = "volume_control_system"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto La6
            goto Lb4
        L14:
            java.lang.String r1 = "volume_control_media"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L83
            goto Lb4
        L1f:
            java.lang.String r1 = "volume_control_bixby"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L99
            goto Lb4
        L2a:
            java.lang.String r1 = "mute_bluetooth_volume"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L60
            goto Lb4
        L35:
            java.lang.String r1 = "mute_all_volume"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L40
            goto Lb4
        L40:
            r1 = 31
            goto Lb5
        L44:
            java.lang.String r0 = "volume_control"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L4f
            goto Lb4
        L4f:
            com.android.systemui.bixby2.util.AudioManagerWrapper r1 = r1.audioManagerWrapper
            int r1 = r1.getAdjustedStreamType(r2)
            goto Lb5
        L56:
            java.lang.String r1 = "volume_control_bluetooth"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L60
            goto Lb4
        L60:
            r1 = 30
            goto Lb5
        L63:
            java.lang.String r1 = "volume_control_ringtone"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L77
            goto Lb4
        L6d:
            java.lang.String r1 = "mute_ringtones_volume"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L77
            goto Lb4
        L77:
            r1 = 2
            goto Lb5
        L79:
            java.lang.String r1 = "mute_media_volume"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L83
            goto Lb4
        L83:
            r1 = 3
            goto Lb5
        L85:
            java.lang.String r1 = "volume_control_noti"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto Lb2
            goto Lb4
        L8f:
            java.lang.String r1 = "mute_bixby_volume"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L99
            goto Lb4
        L99:
            r1 = 11
            goto Lb5
        L9c:
            java.lang.String r1 = "mute_system_volume"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto La6
            goto Lb4
        La6:
            r1 = 1
            goto Lb5
        La8:
            java.lang.String r1 = "mute_noti_volume"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto Lb2
            goto Lb4
        Lb2:
            r1 = 5
            goto Lb5
        Lb4:
            r1 = -1
        Lb5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.bixby2.interactor.MusicControlActionInteractor.getStreamTypeFromString(android.content.Context, java.lang.String):int");
    }

    private final boolean matchAction(String str) {
        for (Action action : Action.values()) {
            if (Intrinsics.areEqual(action.name(), str)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.bixby2.interactor.ActionInteractor
    public List<String> getSupportingActions() {
        Action[] values = Action.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (Action action : values) {
            arrayList.add(action.name());
        }
        return arrayList;
    }

    @Override // com.android.systemui.bixby2.interactor.ActionInteractor
    public Command loadStatefulCommandInteractor(String str, Command command) {
        if (!matchAction(str)) {
            return null;
        }
        boolean contains = StringsKt__StringsKt.contains(str, "volume_control", false);
        String str2 = command.mCommandId;
        if (contains) {
            VolumeType.Companion companion = VolumeType.Companion;
            Context context = this.context;
            VolumeType create = companion.create(context, getStreamTypeFromString(context, str));
            Command.StatefulBuilder statefulBuilder = new Command.StatefulBuilder(str2);
            statefulBuilder.mStatus = create.getStatus();
            statefulBuilder.mStatusCode = create.getStatusCode();
            statefulBuilder.mTemplate = new SliderTemplate(create.getMinVolume(), create.getMaxVolume(), create.getVolume(), 1.0f, null);
            return statefulBuilder.build();
        }
        if (StringsKt__StringsKt.contains(str, MUTE_ACTION_PREFIX, false)) {
            VolumeType.Companion companion2 = VolumeType.Companion;
            Context context2 = this.context;
            VolumeType create2 = companion2.create(context2, getStreamTypeFromString(context2, str));
            Command.StatefulBuilder statefulBuilder2 = new Command.StatefulBuilder(str2);
            statefulBuilder2.mStatus = 1;
            statefulBuilder2.mTemplate = new ToggleTemplate(create2.isStreamMute());
            return statefulBuilder2.build();
        }
        if (!Intrinsics.areEqual(str, "control_music")) {
            return null;
        }
        Command.StatefulBuilder statefulBuilder3 = new Command.StatefulBuilder(str2);
        statefulBuilder3.mStatus = 1;
        statefulBuilder3.mTemplate = new MediaControlTemplate(1, 1023, "");
        return statefulBuilder3.build();
    }

    @Override // com.android.systemui.bixby2.interactor.ActionInteractor
    public void performCommandActionInteractor(String str, CommandAction commandAction, ICommandActionCallback iCommandActionCallback) {
        CommandActionResponse mute;
        if (!matchAction(str)) {
            return;
        }
        Log.d(TAG, "performCommandActionInteractor ".concat(str));
        int actionType = commandAction.getActionType();
        if (actionType != 1) {
            if (actionType != 2) {
                if (actionType != 6) {
                    mute = new CommandActionResponse(2, "invalid_action");
                } else {
                    ModeAction modeAction = (ModeAction) commandAction;
                    mute = MediaCommandType.Companion.create(this.context, modeAction.mNewMode, MediaParamsParser.getMediaInfoFromJson(modeAction.mExtraValue), new AudioManagerWrapper(this.context), (MediaSessionManager) this.context.getSystemService("media_session")).action();
                }
            } else {
                VolumeType.Companion companion = VolumeType.Companion;
                Context context = this.context;
                mute = companion.create(context, getStreamTypeFromString(context, str)).setVolume((int) commandAction.getDataBundle().getFloat(KEY_NEW_VALUE), 5, false);
            }
        } else {
            VolumeType.Companion companion2 = VolumeType.Companion;
            Context context2 = this.context;
            mute = companion2.create(context2, getStreamTypeFromString(context2, str)).setMute(((BooleanAction) commandAction).mNewState);
        }
        ((CommandProvider.AnonymousClass1) iCommandActionCallback).onActionFinished(mute.responseCode, mute.responseMessage);
    }

    @Override // com.android.systemui.bixby2.interactor.ActionInteractor
    public Command loadStatefulCommandInteractor(String str, Command command, CommandAction commandAction) {
        if (!matchAction(str)) {
            return null;
        }
        Log.d(TAG, "loadStateful in MusicActionInteractor(with CommandAction) action=" + str + ", cmdAction = " + commandAction);
        boolean contains = StringsKt__StringsKt.contains(str, "volume_control", false);
        String str2 = command.mCommandId;
        if (contains) {
            VolumeType.Companion companion = VolumeType.Companion;
            Context context = this.context;
            VolumeType create = companion.create(context, getStreamTypeFromString(context, str));
            Command.StatefulBuilder statefulBuilder = new Command.StatefulBuilder(str2);
            statefulBuilder.mStatus = create.getStatus();
            statefulBuilder.mStatusCode = create.getStatusCode();
            statefulBuilder.mTemplate = new SliderTemplate(create.getMinVolume(), create.getMaxVolume(), create.getVolume(), 1.0f, null);
            return statefulBuilder.build();
        }
        if (StringsKt__StringsKt.contains(str, MUTE_ACTION_PREFIX, false)) {
            VolumeType.Companion companion2 = VolumeType.Companion;
            Context context2 = this.context;
            VolumeType create2 = companion2.create(context2, getStreamTypeFromString(context2, str));
            Command.StatefulBuilder statefulBuilder2 = new Command.StatefulBuilder(str2);
            statefulBuilder2.mStatus = 1;
            statefulBuilder2.mTemplate = new ToggleTemplate(create2.isStreamMute());
            return statefulBuilder2.build();
        }
        if (!Intrinsics.areEqual(str, "control_music")) {
            return null;
        }
        Command.StatefulBuilder statefulBuilder3 = new Command.StatefulBuilder(str2);
        statefulBuilder3.mStatus = 1;
        statefulBuilder3.mTemplate = new MediaControlTemplate(1, 1023, "");
        return statefulBuilder3.build();
    }
}
