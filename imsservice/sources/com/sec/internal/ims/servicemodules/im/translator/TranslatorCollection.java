package com.sec.internal.ims.servicemodules.im.translator;

import android.util.Log;
import com.sec.internal.constants.ims.servicemodules.im.ImConferenceParticipantInfo;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;

/* loaded from: classes.dex */
public class TranslatorCollection {
    private static final String LOG_TAG = "TranslatorCollection";

    private TranslatorCollection() {
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.translator.TranslatorCollection$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConferenceParticipantInfo$ImConferenceParticipantStatus;

        static {
            int[] iArr = new int[ImConferenceParticipantInfo.ImConferenceParticipantStatus.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConferenceParticipantInfo$ImConferenceParticipantStatus = iArr;
            try {
                iArr[ImConferenceParticipantInfo.ImConferenceParticipantStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConferenceParticipantInfo$ImConferenceParticipantStatus[ImConferenceParticipantInfo.ImConferenceParticipantStatus.DISCONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConferenceParticipantInfo$ImConferenceParticipantStatus[ImConferenceParticipantInfo.ImConferenceParticipantStatus.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static ImParticipant.Status translateEngineParticipantInfo(ImConferenceParticipantInfo imConferenceParticipantInfo, ImParticipant imParticipant) {
        ImConferenceParticipantInfo.ImConferenceParticipantStatus imConferenceParticipantStatus;
        if (imConferenceParticipantInfo != null && (imConferenceParticipantStatus = imConferenceParticipantInfo.mParticipantStatus) != null) {
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConferenceParticipantInfo$ImConferenceParticipantStatus[imConferenceParticipantStatus.ordinal()];
            if (i == 1) {
                return ImParticipant.Status.ACCEPTED;
            }
            if (i == 2) {
                ImConferenceParticipantInfo.ImConferenceDisconnectionReason imConferenceDisconnectionReason = imConferenceParticipantInfo.mDisconnectionReason;
                if (imConferenceDisconnectionReason == ImConferenceParticipantInfo.ImConferenceDisconnectionReason.DEPARTED || imConferenceParticipantInfo.mUserElemState == ImConferenceParticipantInfo.ImConferenceUserElemState.DELETED) {
                    return ImParticipant.Status.DECLINED;
                }
                if (imConferenceDisconnectionReason == ImConferenceParticipantInfo.ImConferenceDisconnectionReason.FAILED) {
                    if (imConferenceParticipantInfo.mDisconnectionCause == ImError.REMOTE_PARTY_DECLINED) {
                        return ImParticipant.Status.DECLINED;
                    }
                    return ImParticipant.Status.FAILED;
                }
                if (imConferenceDisconnectionReason == ImConferenceParticipantInfo.ImConferenceDisconnectionReason.BOOTED) {
                    return ImParticipant.Status.GONE;
                }
                return ImParticipant.Status.FAILED;
            }
            if (i == 3) {
                return (imParticipant == null || imParticipant.getStatus() != ImParticipant.Status.ACCEPTED) ? ImParticipant.Status.TO_INVITE : ImParticipant.Status.PENDING;
            }
            Log.i(LOG_TAG, "No translation for the following Engine's participant Status: " + imConferenceParticipantInfo.mParticipantStatus);
        }
        return null;
    }
}
