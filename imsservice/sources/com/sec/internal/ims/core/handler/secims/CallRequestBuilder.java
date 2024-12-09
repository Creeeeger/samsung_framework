package com.sec.internal.ims.core.handler.secims;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.ims.Dialog;
import com.sec.internal.constants.ims.SipReason;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.AdditionalContents;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ComposerData;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ExtraHeader;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReqMsg;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestAcceptCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestAcceptTransferCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestCancelTransferCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestClearAllCallInternal;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestEmergencyLocationPublish;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestEnableQuantumSecurityService;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestEndCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestEndCall_.EndReason;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestHandleCmcCsfb;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestHandleDtmf;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestHoldCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestHoldVideo;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestMakeCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestMakeConfCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestModifyCallType;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestModifyVideoQuality;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestProgressIncomingCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestPublishDialog;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestPullingCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestRejectModifyCallType;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestReplyModifyCallType;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestResumeCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestResumeVideo;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendCmcInfo;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendDtmfEvent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendInfo;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendNegotiatedLocalSdp;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendText;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendVcsInfo;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSetQuantumSecurityInfo;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSetVideoCrtAudio;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestStartCamera;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestStartCmcRecord;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestStartLocalRingBackTone;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestStartRecord;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestStartVideoEarlymedia;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestStopCamera;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestStopLocalRingBackTone;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestStopRecord;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestTransferCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateAudioInterface;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCmcExtCallCount;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateConfCall;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CallRequestBuilder {
    private static final String LOG_TAG = "CallRequestBuilder";

    static StackRequest makeUpdateAudioInterface(int i, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(str);
        RequestUpdateAudioInterface.startRequestUpdateAudioInterface(flatBufferBuilder);
        RequestUpdateAudioInterface.addMode(flatBufferBuilder, createString);
        RequestUpdateAudioInterface.addHandle(flatBufferBuilder, i);
        int endRequestUpdateAudioInterface = RequestUpdateAudioInterface.endRequestUpdateAudioInterface(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 225);
        Request.addReqType(flatBufferBuilder, (byte) 70);
        Request.addReq(flatBufferBuilder, endRequestUpdateAudioInterface);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeStartLocalRingBackTone(int i, int i2, int i3, int i4) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestStartLocalRingBackTone.startRequestStartLocalRingBackTone(flatBufferBuilder);
        RequestStartLocalRingBackTone.addStreamType(flatBufferBuilder, i2);
        RequestStartLocalRingBackTone.addHandle(flatBufferBuilder, i);
        RequestStartLocalRingBackTone.addVolume(flatBufferBuilder, i3);
        RequestStartLocalRingBackTone.addToneType(flatBufferBuilder, i4);
        int endRequestStartLocalRingBackTone = RequestStartLocalRingBackTone.endRequestStartLocalRingBackTone(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 231);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_start_local_ring_back_tone);
        Request.addReq(flatBufferBuilder, endRequestStartLocalRingBackTone);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeStopLocalRingBackTone(int i) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestStopLocalRingBackTone.startRequestStopLocalRingBackTone(flatBufferBuilder);
        RequestStopLocalRingBackTone.addHandle(flatBufferBuilder, i);
        int endRequestStopLocalRingBackTone = RequestStopLocalRingBackTone.endRequestStopLocalRingBackTone(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 232);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_stop_local_ring_back_tone);
        Request.addReq(flatBufferBuilder, endRequestStopLocalRingBackTone);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSetVideoCrtAudio(int i, int i2, boolean z) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestSetVideoCrtAudio.startRequestSetVideoCrtAudio(flatBufferBuilder);
        RequestSetVideoCrtAudio.addHandle(flatBufferBuilder, i);
        RequestSetVideoCrtAudio.addSession(flatBufferBuilder, i2);
        RequestSetVideoCrtAudio.addOn(flatBufferBuilder, z);
        int endRequestSetVideoCrtAudio = RequestSetVideoCrtAudio.endRequestSetVideoCrtAudio(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 245);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_set_video_crt_audio);
        Request.addReq(flatBufferBuilder, endRequestSetVideoCrtAudio);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSendDtmfEvent(int i, int i2, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        RequestSendDtmfEvent.startRequestSendDtmfEvent(flatBufferBuilder);
        RequestSendDtmfEvent.addHandle(flatBufferBuilder, i);
        RequestSendDtmfEvent.addSession(flatBufferBuilder, i2);
        if (createString != -1) {
            RequestSendDtmfEvent.addDtmfEvent(flatBufferBuilder, createString);
        }
        int endRequestSendDtmfEvent = RequestSendDtmfEvent.endRequestSendDtmfEvent(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 246);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_send_dtmf_event);
        Request.addReq(flatBufferBuilder, endRequestSendDtmfEvent);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeStartRecord(int i, int i2, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        RequestStartRecord.startRequestStartRecord(flatBufferBuilder);
        RequestStartRecord.addHandle(flatBufferBuilder, i);
        RequestStartRecord.addSession(flatBufferBuilder, i2);
        RequestStartRecord.addFilepath(flatBufferBuilder, createString);
        int endRequestStartRecord = RequestStartRecord.endRequestStartRecord(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 239);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_start_record);
        Request.addReq(flatBufferBuilder, endRequestStartRecord);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeStopRecord(int i, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestStopRecord.startRequestStopRecord(flatBufferBuilder);
        RequestStopRecord.addHandle(flatBufferBuilder, i);
        RequestStopRecord.addSession(flatBufferBuilder, i2);
        int endRequestStopRecord = RequestStopRecord.endRequestStopRecord(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 240);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_stop_record);
        Request.addReq(flatBufferBuilder, endRequestStopRecord);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeClearAllCallInternal(int i) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestClearAllCallInternal.startRequestClearAllCallInternal(flatBufferBuilder);
        RequestClearAllCallInternal.addCmcType(flatBufferBuilder, i);
        int endRequestClearAllCallInternal = RequestClearAllCallInternal.endRequestClearAllCallInternal(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 241);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_clear_all_call_internal);
        Request.addReq(flatBufferBuilder, endRequestClearAllCallInternal);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeStartCmcRecord(int i, int i2, int i3, int i4, long j, int i5, String str, int i6, int i7, int i8, int i9, int i10, long j2, String str2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        int createString2 = TextUtils.isEmpty(str2) ? -1 : flatBufferBuilder.createString(str2);
        RequestStartCmcRecord.startRequestStartCmcRecord(flatBufferBuilder);
        RequestStartCmcRecord.addHandle(flatBufferBuilder, i);
        RequestStartCmcRecord.addSession(flatBufferBuilder, i2);
        RequestStartCmcRecord.addAudioSource(flatBufferBuilder, i3);
        RequestStartCmcRecord.addOutputFormat(flatBufferBuilder, i4);
        RequestStartCmcRecord.addMaxFileSize(flatBufferBuilder, j);
        RequestStartCmcRecord.addMaxDuration(flatBufferBuilder, i5);
        RequestStartCmcRecord.addOutputPath(flatBufferBuilder, createString);
        RequestStartCmcRecord.addAudioEncodingBr(flatBufferBuilder, i6);
        RequestStartCmcRecord.addAudioChannels(flatBufferBuilder, i7);
        RequestStartCmcRecord.addAudioSamplingRate(flatBufferBuilder, i8);
        RequestStartCmcRecord.addAudioEncoder(flatBufferBuilder, i9);
        RequestStartCmcRecord.addDurationInterval(flatBufferBuilder, i10);
        RequestStartCmcRecord.addFileSizeInterval(flatBufferBuilder, j2);
        RequestStartCmcRecord.addAuthor(flatBufferBuilder, createString2);
        int endRequestStartCmcRecord = RequestStartCmcRecord.endRequestStartCmcRecord(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 242);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_start_cmc_record);
        Request.addReq(flatBufferBuilder, endRequestStartCmcRecord);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int prepareComposerData(Bundle bundle, FlatBufferBuilder flatBufferBuilder) {
        int createString;
        if (bundle == null || bundle.isEmpty()) {
            return -1;
        }
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        for (String str : bundle.keySet()) {
            if (!str.equals("importance")) {
                String string = bundle.getString(str);
                if (!TextUtils.isEmpty(string)) {
                    createString = flatBufferBuilder.createString(string);
                    switch (str) {
                        case "subject":
                            i2 = createString;
                            break;
                        case "latitude":
                            i3 = createString;
                            break;
                        case "radius":
                            i5 = createString;
                            break;
                        case "image":
                            i = createString;
                            break;
                        case "longitude":
                            i4 = createString;
                            break;
                    }
                }
            }
        }
        ComposerData.startComposerData(flatBufferBuilder);
        if (i != -1) {
            ComposerData.addImage(flatBufferBuilder, i);
        }
        if (i2 != -1) {
            ComposerData.addSubject(flatBufferBuilder, i2);
        }
        if (i3 != -1) {
            ComposerData.addLatitude(flatBufferBuilder, i3);
        }
        if (i4 != -1) {
            ComposerData.addLongitude(flatBufferBuilder, i4);
        }
        if (i5 != -1) {
            ComposerData.addRadius(flatBufferBuilder, i5);
        }
        if (bundle.containsKey("importance")) {
            ComposerData.addImportance(flatBufferBuilder, bundle.getBoolean("importance"));
        }
        return ComposerData.endComposerData(flatBufferBuilder);
    }

    static StackRequest makeMakeCall(int i, String str, String str2, int i2, String str3, String str4, String str5, int i3, AdditionalContents additionalContents, String str6, String str7, HashMap<String, String> hashMap, String str8, boolean z, List<String> list, int i4, Bundle bundle, String str9, int i5, String str10) {
        Bundle bundle2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = str2 != null ? flatBufferBuilder.createString(str2) : -1;
        int createString2 = str != null ? flatBufferBuilder.createString(str) : -1;
        if (additionalContents != null) {
            int createString3 = additionalContents.mimeType() != null ? flatBufferBuilder.createString(additionalContents.mimeType()) : -1;
            int createString4 = additionalContents.contents() != null ? flatBufferBuilder.createString(additionalContents.contents()) : -1;
            AdditionalContents.startAdditionalContents(flatBufferBuilder);
            if (createString3 != -1) {
                AdditionalContents.addMimeType(flatBufferBuilder, createString3);
            }
            if (createString4 != -1) {
                AdditionalContents.addContents(flatBufferBuilder, createString4);
            }
            i6 = AdditionalContents.endAdditionalContents(flatBufferBuilder);
            bundle2 = bundle;
        } else {
            bundle2 = bundle;
            i6 = -1;
        }
        int prepareComposerData = prepareComposerData(bundle2, flatBufferBuilder);
        if (hashMap != null) {
            i7 = prepareComposerData;
            Log.i(LOG_TAG, "additional header present");
            List<Integer> translateExtraHeader = StackRequestBuilderUtil.translateExtraHeader(flatBufferBuilder, hashMap);
            int[] iArr = new int[translateExtraHeader.size()];
            Iterator<Integer> it = translateExtraHeader.iterator();
            int i15 = 0;
            while (it.hasNext()) {
                iArr[i15] = it.next().intValue();
                i15++;
            }
            i8 = ExtraHeader.createPairVector(flatBufferBuilder, iArr);
        } else {
            i7 = prepareComposerData;
            i8 = -1;
        }
        if (hashMap != null) {
            ExtraHeader.startExtraHeader(flatBufferBuilder);
            ExtraHeader.addPair(flatBufferBuilder, i8);
            i9 = ExtraHeader.endExtraHeader(flatBufferBuilder);
        } else {
            i9 = -1;
        }
        int createEcscfListVector = str5 != null ? RequestMakeCall.createEcscfListVector(flatBufferBuilder, new int[]{flatBufferBuilder.createString(str5)}) : -1;
        int createString5 = str6 != null ? flatBufferBuilder.createString(str6) : -1;
        if (str3 == null || str3.length() <= 0) {
            i10 = -1;
        } else if ("<PhotoRing>".equals(str3)) {
            Log.i(LOG_TAG, "PhotoRing is set");
            i10 = flatBufferBuilder.createString(str3);
        } else {
            i10 = flatBufferBuilder.createString(str3);
        }
        int createString6 = (str8 == null || str8.length() <= 0) ? -1 : flatBufferBuilder.createString(str8);
        int createString7 = (str4 == null || str4.length() <= 0) ? -1 : flatBufferBuilder.createString(str4);
        int createString8 = (str7 == null || str7.length() <= 0) ? -1 : flatBufferBuilder.createString(str7);
        if (list == null || list.size() <= 0) {
            i11 = createString7;
            i12 = createString8;
            i13 = i9;
            i14 = -1;
        } else {
            int size = list.size();
            int[] iArr2 = new int[size];
            i13 = i9;
            String str11 = LOG_TAG;
            i12 = createString8;
            StringBuilder sb = new StringBuilder();
            i11 = createString7;
            sb.append("p2p.size():");
            sb.append(list.size());
            Log.i(str11, sb.toString());
            for (int i16 = 0; i16 < size; i16++) {
                iArr2[i16] = flatBufferBuilder.createString(list.get(i16));
            }
            i14 = RequestMakeCall.createP2pListVector(flatBufferBuilder, iArr2);
        }
        int createString9 = (str9 == null || str9.length() <= 0) ? -1 : flatBufferBuilder.createString(str9);
        int createString10 = (str10 == null || str10.length() <= 0) ? -1 : flatBufferBuilder.createString(str10);
        RequestMakeCall.startRequestMakeCall(flatBufferBuilder);
        RequestMakeCall.addHandle(flatBufferBuilder, i);
        if (createString2 != -1) {
            RequestMakeCall.addPeeruri(flatBufferBuilder, createString2);
        }
        RequestMakeCall.addCallType(flatBufferBuilder, i2);
        RequestMakeCall.addMode(flatBufferBuilder, 1);
        RequestMakeCall.addCodec(flatBufferBuilder, 1);
        RequestMakeCall.addDirection(flatBufferBuilder, 0);
        RequestMakeCall.addIsLteEpsOnlyAttached(flatBufferBuilder, z);
        if (createString != -1) {
            RequestMakeCall.addOrigUri(flatBufferBuilder, createString);
        }
        if (i6 != -1) {
            RequestMakeCall.addAdditionalContents(flatBufferBuilder, i6);
        }
        if (createEcscfListVector != -1) {
            RequestMakeCall.addEcscfList(flatBufferBuilder, createEcscfListVector);
        }
        RequestMakeCall.addEcscfPort(flatBufferBuilder, i3);
        if (createString5 != -1) {
            RequestMakeCall.addCli(flatBufferBuilder, createString5);
        }
        if (i10 != -1) {
            RequestMakeCall.addDispName(flatBufferBuilder, i10);
        }
        if (createString6 != -1) {
            RequestMakeCall.addAlertInfo(flatBufferBuilder, createString6);
        }
        RequestMakeCall.addCmcBoundSessionId(flatBufferBuilder, i4);
        if (i14 != -1) {
            RequestMakeCall.addP2pList(flatBufferBuilder, i14);
        }
        int i17 = i11;
        if (i17 != -1) {
            RequestMakeCall.addDialedNumber(flatBufferBuilder, i17);
        }
        int i18 = i12;
        if (i18 != -1) {
            RequestMakeCall.addPEmergencyInfo(flatBufferBuilder, i18);
        }
        int i19 = i13;
        if (i19 != -1) {
            RequestMakeCall.addAdditionalSipHeaders(flatBufferBuilder, i19);
        }
        int i20 = i7;
        if (i20 != -1) {
            RequestMakeCall.addComposerData(flatBufferBuilder, i20);
        }
        if (createString9 != -1) {
            RequestMakeCall.addReplaceCallId(flatBufferBuilder, createString9);
        }
        RequestMakeCall.addCmcEdCallSlot(flatBufferBuilder, i5);
        if (createString10 != -1) {
            RequestMakeCall.addIdcExtra(flatBufferBuilder, createString10);
        }
        int endRequestMakeCall = RequestMakeCall.endRequestMakeCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 201);
        Request.addReqType(flatBufferBuilder, (byte) 13);
        Request.addReq(flatBufferBuilder, endRequestMakeCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeEndCall(int i, int i2, SipReason sipReason) {
        int i3;
        int i4;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        if (sipReason != null) {
            int createString = flatBufferBuilder.createString(sipReason.getProtocol());
            int createString2 = sipReason.getText() != null ? flatBufferBuilder.createString(sipReason.getText()) : -1;
            if (sipReason.getExtensions() != null) {
                List asList = Arrays.asList(sipReason.getExtensions());
                i4 = EndReason.createExtensionVector(flatBufferBuilder, StackRequestBuilderUtil.getStringOffsetArray(flatBufferBuilder, asList, asList.size()));
            } else {
                i4 = -1;
            }
            EndReason.startEndReason(flatBufferBuilder);
            EndReason.addIsLocalRelease(flatBufferBuilder, sipReason.isLocalRelease());
            EndReason.addProtocol(flatBufferBuilder, createString);
            EndReason.addCause(flatBufferBuilder, sipReason.getCause());
            if (createString2 != -1) {
                EndReason.addText(flatBufferBuilder, createString2);
            }
            if (i4 != -1) {
                EndReason.addExtension(flatBufferBuilder, i4);
            }
            i3 = EndReason.endEndReason(flatBufferBuilder);
        } else {
            i3 = -1;
        }
        RequestEndCall.startRequestEndCall(flatBufferBuilder);
        RequestEndCall.addSession(flatBufferBuilder, i2);
        if (i3 != -1) {
            RequestEndCall.addEndReason(flatBufferBuilder, i3);
        }
        int endRequestEndCall = RequestEndCall.endRequestEndCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 202);
        Request.addReqType(flatBufferBuilder, (byte) 14);
        Request.addReq(flatBufferBuilder, endRequestEndCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeAnswerCall(int i, int i2, int i3, String str, String str2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        int createString2 = !TextUtils.isEmpty(str2) ? flatBufferBuilder.createString(str2) : -1;
        RequestAcceptCall.startRequestAcceptCall(flatBufferBuilder);
        RequestAcceptCall.addSession(flatBufferBuilder, i2);
        RequestAcceptCall.addCallType(flatBufferBuilder, i3);
        if (createString != -1) {
            RequestAcceptCall.addCmcCallTime(flatBufferBuilder, createString);
        }
        if (createString2 != -1) {
            RequestAcceptCall.addIdcExtra(flatBufferBuilder, createString2);
        }
        int endRequestAcceptCall = RequestAcceptCall.endRequestAcceptCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 205);
        Request.addReqType(flatBufferBuilder, (byte) 16);
        Request.addReq(flatBufferBuilder, endRequestAcceptCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeHoldCall(int i, int i2) {
        Log.i(LOG_TAG, "holdCall: handle " + i + " sessionId " + i2);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestHoldCall.startRequestHoldCall(flatBufferBuilder);
        RequestHoldCall.addHandle(flatBufferBuilder, (long) i);
        RequestHoldCall.addSession(flatBufferBuilder, (long) i2);
        int endRequestHoldCall = RequestHoldCall.endRequestHoldCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 203);
        Request.addReqType(flatBufferBuilder, (byte) 17);
        Request.addReq(flatBufferBuilder, endRequestHoldCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeResumeCall(int i, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestResumeCall.startRequestResumeCall(flatBufferBuilder);
        RequestHoldCall.addHandle(flatBufferBuilder, i);
        RequestHoldCall.addSession(flatBufferBuilder, i2);
        int endRequestResumeCall = RequestResumeCall.endRequestResumeCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 204);
        Request.addReqType(flatBufferBuilder, (byte) 18);
        Request.addReq(flatBufferBuilder, endRequestResumeCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeHoldVideo(int i, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestHoldVideo.startRequestHoldVideo(flatBufferBuilder);
        RequestHoldVideo.addHandle(flatBufferBuilder, i);
        RequestHoldVideo.addSession(flatBufferBuilder, i2);
        int endRequestHoldVideo = RequestHoldVideo.endRequestHoldVideo(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 219);
        Request.addReqType(flatBufferBuilder, (byte) 25);
        Request.addReq(flatBufferBuilder, endRequestHoldVideo);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeResumeVideo(int i, int i2) {
        Log.i(LOG_TAG, "resumeVideo: handle " + i + " sessionId " + i2);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestResumeVideo.startRequestResumeVideo(flatBufferBuilder);
        RequestResumeVideo.addHandle(flatBufferBuilder, (long) i);
        RequestResumeVideo.addSession(flatBufferBuilder, (long) i2);
        int endRequestResumeVideo = RequestResumeVideo.endRequestResumeVideo(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 220);
        Request.addReqType(flatBufferBuilder, (byte) 26);
        Request.addReq(flatBufferBuilder, endRequestResumeVideo);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeStartCamera(int i, int i2, int i3) {
        Log.i(LOG_TAG, "startCamera: handle " + i + ", sessionId: " + i2 + ", cameraId: " + i3);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestStartCamera.startRequestStartCamera(flatBufferBuilder);
        RequestStartCamera.addHandle(flatBufferBuilder, (long) i);
        RequestStartCamera.addSession(flatBufferBuilder, (long) i2);
        RequestStartCamera.addCamera(flatBufferBuilder, (long) i3);
        int endRequestStartCamera = RequestStartCamera.endRequestStartCamera(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 223);
        Request.addReqType(flatBufferBuilder, (byte) 66);
        Request.addReq(flatBufferBuilder, endRequestStartCamera);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeStopCamera(int i) {
        Log.i(LOG_TAG, "stopCamera: handle " + i);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestStopCamera.startRequestStopCamera(flatBufferBuilder);
        RequestStopCamera.addHandle(flatBufferBuilder, (long) i);
        int endRequestStopCamera = RequestStopCamera.endRequestStopCamera(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 226);
        Request.addReqType(flatBufferBuilder, (byte) 67);
        Request.addReq(flatBufferBuilder, endRequestStopCamera);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeMergeCall(int i, int i2, int i3, String str, int i4, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, HashMap<String, String> hashMap) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = str != null ? flatBufferBuilder.createString(str) : -1;
        int createString2 = str2 != null ? flatBufferBuilder.createString(str2) : -1;
        int createString3 = str3 != null ? flatBufferBuilder.createString(str3) : -1;
        int createString4 = str4 != null ? flatBufferBuilder.createString(str4) : -1;
        int createString5 = str5 != null ? flatBufferBuilder.createString(str5) : -1;
        int createString6 = str6 != null ? flatBufferBuilder.createString(str6) : -1;
        int createString7 = str7 != null ? flatBufferBuilder.createString(str7) : -1;
        if (str8 != null) {
            i7 = flatBufferBuilder.createString(str8);
            i5 = i2;
            i6 = i3;
        } else {
            i5 = i2;
            i6 = i3;
            i7 = -1;
        }
        int createSessionIdVector = RequestMakeConfCall.createSessionIdVector(flatBufferBuilder, new int[]{i6, i5});
        if (hashMap != null) {
            List<Integer> translateExtraHeader = StackRequestBuilderUtil.translateExtraHeader(flatBufferBuilder, hashMap);
            int[] iArr = new int[translateExtraHeader.size()];
            Iterator<Integer> it = translateExtraHeader.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                iArr[i10] = it.next().intValue();
                i10++;
            }
            i8 = ExtraHeader.createPairVector(flatBufferBuilder, iArr);
        } else {
            i8 = -1;
        }
        if (hashMap != null) {
            ExtraHeader.startExtraHeader(flatBufferBuilder);
            ExtraHeader.addPair(flatBufferBuilder, i8);
            i9 = ExtraHeader.endExtraHeader(flatBufferBuilder);
        } else {
            i9 = -1;
        }
        RequestMakeConfCall.startRequestMakeConfCall(flatBufferBuilder);
        if (i9 != -1) {
            RequestMakeConfCall.addExtraHeaders(flatBufferBuilder, i9);
        }
        if (i7 != -1) {
            RequestMakeConfCall.addUseAnonymousUpdate(flatBufferBuilder, i7);
        }
        if (createString7 != -1) {
            RequestMakeConfCall.addReferuriAsserted(flatBufferBuilder, createString7);
        }
        if (createString5 != -1) {
            RequestMakeConfCall.addReferuriType(flatBufferBuilder, createString5);
        }
        if (createString6 != -1) {
            RequestMakeConfCall.addRemoveReferuriType(flatBufferBuilder, createString6);
        }
        if (createString4 != -1) {
            RequestMakeConfCall.addOrigUri(flatBufferBuilder, createString4);
        }
        RequestMakeConfCall.addSessionId(flatBufferBuilder, createSessionIdVector);
        if (createString3 != -1) {
            RequestMakeConfCall.addDialogType(flatBufferBuilder, createString3);
        }
        if (createString2 != -1) {
            RequestMakeConfCall.addEventSubscribe(flatBufferBuilder, createString2);
        }
        RequestMakeConfCall.addConfType(flatBufferBuilder, 0);
        RequestMakeConfCall.addCallType(flatBufferBuilder, i4);
        RequestMakeConfCall.addSupportPrematureEnd(flatBufferBuilder, z);
        if (createString != -1) {
            RequestMakeConfCall.addConfuri(flatBufferBuilder, createString);
        }
        RequestMakeConfCall.addHandle(flatBufferBuilder, i);
        int endRequestMakeConfCall = RequestMakeConfCall.endRequestMakeConfCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 209);
        Request.addReqType(flatBufferBuilder, (byte) 30);
        Request.addReq(flatBufferBuilder, endRequestMakeConfCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeConference(int i, String str, int i2, String str2, String str3, String[] strArr, String str4, String str5, String str6, String str7, String str8, boolean z) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = str != null ? flatBufferBuilder.createString(str) : -1;
        int createString2 = str2 != null ? flatBufferBuilder.createString(str2) : -1;
        int createString3 = str3 != null ? flatBufferBuilder.createString(str3) : -1;
        int createString4 = str4 != null ? flatBufferBuilder.createString(str4) : -1;
        int createString5 = str5 != null ? flatBufferBuilder.createString(str5) : -1;
        int createString6 = str6 != null ? flatBufferBuilder.createString(str6) : -1;
        int createString7 = str7 != null ? flatBufferBuilder.createString(str7) : -1;
        int createString8 = str8 != null ? flatBufferBuilder.createString(str8) : -1;
        int length = strArr.length;
        int[] iArr = new int[length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = flatBufferBuilder.createString(strArr[i3]);
        }
        int createParticipantsVector = RequestMakeConfCall.createParticipantsVector(flatBufferBuilder, iArr);
        RequestMakeConfCall.startRequestMakeConfCall(flatBufferBuilder);
        if (createString8 != -1) {
            RequestMakeConfCall.addUseAnonymousUpdate(flatBufferBuilder, createString8);
        }
        if (createString7 != -1) {
            RequestMakeConfCall.addReferuriAsserted(flatBufferBuilder, createString7);
        }
        if (createString5 != -1) {
            RequestMakeConfCall.addReferuriType(flatBufferBuilder, createString5);
        }
        if (createString6 != -1) {
            RequestMakeConfCall.addRemoveReferuriType(flatBufferBuilder, createString6);
        }
        if (createString4 != -1) {
            RequestMakeConfCall.addOrigUri(flatBufferBuilder, createString4);
        }
        RequestMakeConfCall.addParticipants(flatBufferBuilder, createParticipantsVector);
        if (createString3 != -1) {
            RequestMakeConfCall.addDialogType(flatBufferBuilder, createString3);
        }
        if (createString2 != -1) {
            RequestMakeConfCall.addEventSubscribe(flatBufferBuilder, createString2);
        }
        RequestMakeConfCall.addConfType(flatBufferBuilder, 1);
        RequestMakeConfCall.addCallType(flatBufferBuilder, i2);
        RequestMakeConfCall.addSupportPrematureEnd(flatBufferBuilder, z);
        if (createString != -1) {
            RequestMakeConfCall.addConfuri(flatBufferBuilder, createString);
        }
        RequestMakeConfCall.addHandle(flatBufferBuilder, i);
        int endRequestMakeConfCall = RequestMakeConfCall.endRequestMakeConfCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 209);
        Request.addReqType(flatBufferBuilder, (byte) 30);
        Request.addReq(flatBufferBuilder, endRequestMakeConfCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeExtendToConfCall(int i, String str, int i2, String str2, String str3, String[] strArr, int i3, String str4, String str5, String str6, String str7, String str8, boolean z) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = str != null ? flatBufferBuilder.createString(str) : -1;
        int createString2 = str2 != null ? flatBufferBuilder.createString(str2) : -1;
        int createString3 = str3 != null ? flatBufferBuilder.createString(str3) : -1;
        int createString4 = str4 != null ? flatBufferBuilder.createString(str4) : -1;
        int createString5 = str5 != null ? flatBufferBuilder.createString(str5) : -1;
        int createString6 = str6 != null ? flatBufferBuilder.createString(str6) : -1;
        int createString7 = str7 != null ? flatBufferBuilder.createString(str7) : -1;
        int createString8 = str8 != null ? flatBufferBuilder.createString(str8) : -1;
        int length = strArr.length;
        int[] iArr = new int[length];
        for (int i4 = 0; i4 < length; i4++) {
            iArr[i4] = flatBufferBuilder.createString(strArr[i4]);
        }
        int createParticipantsVector = RequestMakeConfCall.createParticipantsVector(flatBufferBuilder, iArr);
        int createSessionIdVector = RequestMakeConfCall.createSessionIdVector(flatBufferBuilder, new int[]{i3});
        RequestMakeConfCall.startRequestMakeConfCall(flatBufferBuilder);
        if (createString8 != -1) {
            RequestMakeConfCall.addUseAnonymousUpdate(flatBufferBuilder, createString8);
        }
        if (createString7 != -1) {
            RequestMakeConfCall.addReferuriAsserted(flatBufferBuilder, createString7);
        }
        if (createString5 != -1) {
            RequestMakeConfCall.addReferuriType(flatBufferBuilder, createString5);
        }
        if (createString6 != -1) {
            RequestMakeConfCall.addRemoveReferuriType(flatBufferBuilder, createString6);
        }
        if (createString4 != -1) {
            RequestMakeConfCall.addOrigUri(flatBufferBuilder, createString4);
        }
        RequestMakeConfCall.addParticipants(flatBufferBuilder, createParticipantsVector);
        RequestMakeConfCall.addSessionId(flatBufferBuilder, createSessionIdVector);
        if (createString3 != -1) {
            RequestMakeConfCall.addDialogType(flatBufferBuilder, createString3);
        }
        if (createString2 != -1) {
            RequestMakeConfCall.addEventSubscribe(flatBufferBuilder, createString2);
        }
        RequestMakeConfCall.addConfType(flatBufferBuilder, 1);
        RequestMakeConfCall.addCallType(flatBufferBuilder, i2);
        RequestMakeConfCall.addSupportPrematureEnd(flatBufferBuilder, z);
        if (createString != -1) {
            RequestMakeConfCall.addConfuri(flatBufferBuilder, createString);
        }
        RequestMakeConfCall.addHandle(flatBufferBuilder, i);
        int endRequestMakeConfCall = RequestMakeConfCall.endRequestMakeConfCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 222);
        Request.addReqType(flatBufferBuilder, (byte) 30);
        Request.addReq(flatBufferBuilder, endRequestMakeConfCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeUpdateConfCall(int i, int i2, int i3, int i4, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(str);
        RequestUpdateConfCall.startRequestUpdateConfCall(flatBufferBuilder);
        RequestUpdateConfCall.addSession(flatBufferBuilder, i2);
        RequestUpdateConfCall.addCmd(flatBufferBuilder, i3);
        RequestUpdateConfCall.addParticipantId(flatBufferBuilder, i4);
        RequestUpdateConfCall.addParticipant(flatBufferBuilder, createString);
        int endRequestUpdateConfCall = RequestUpdateConfCall.endRequestUpdateConfCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 215);
        Request.addReqType(flatBufferBuilder, (byte) 31);
        Request.addReq(flatBufferBuilder, endRequestUpdateConfCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeTransferCall(int i, int i2, String str, int i3) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(str);
        RequestTransferCall.startRequestTransferCall(flatBufferBuilder);
        RequestTransferCall.addHandle(flatBufferBuilder, i);
        RequestTransferCall.addSession(flatBufferBuilder, i2);
        RequestTransferCall.addTargetUri(flatBufferBuilder, createString);
        if (i3 > 0) {
            RequestTransferCall.addReplacingSession(flatBufferBuilder, i3);
        }
        int endRequestTransferCall = RequestTransferCall.endRequestTransferCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 212);
        Request.addReqType(flatBufferBuilder, (byte) 19);
        Request.addReq(flatBufferBuilder, endRequestTransferCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeCancelTransferCall(int i, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestCancelTransferCall.startRequestCancelTransferCall(flatBufferBuilder);
        RequestCancelTransferCall.addHandle(flatBufferBuilder, i);
        RequestCancelTransferCall.addSession(flatBufferBuilder, i2);
        int endRequestCancelTransferCall = RequestCancelTransferCall.endRequestCancelTransferCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 227);
        Request.addReqType(flatBufferBuilder, (byte) 29);
        Request.addReq(flatBufferBuilder, endRequestCancelTransferCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makePullingCall(int i, String str, String str2, String str3, Dialog dialog, List<String> list) {
        int i2;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = str != null ? flatBufferBuilder.createString(str) : -1;
        int createString2 = str2 != null ? flatBufferBuilder.createString(str2) : -1;
        int createString3 = str3 != null ? flatBufferBuilder.createString(str3) : -1;
        int createString4 = dialog.getMdmnExtNumber() != null ? flatBufferBuilder.createString(dialog.getMdmnExtNumber()) : -1;
        int createString5 = dialog.getSipCallId() != null ? flatBufferBuilder.createString(dialog.getSipCallId()) : -1;
        int createString6 = dialog.getSipRemoteTag() != null ? flatBufferBuilder.createString(dialog.getSipRemoteTag()) : -1;
        int createString7 = dialog.getSipLocalTag() != null ? flatBufferBuilder.createString(dialog.getSipLocalTag()) : -1;
        if (list == null || list.size() <= 0) {
            i2 = -1;
        } else {
            int size = list.size();
            int[] iArr = new int[size];
            Log.i(LOG_TAG, "p2p.size():" + list.size());
            for (int i3 = 0; i3 < size; i3++) {
                iArr[i3] = flatBufferBuilder.createString(list.get(i3));
            }
            i2 = RequestPullingCall.createP2pListVector(flatBufferBuilder, iArr);
        }
        RequestPullingCall.startRequestPullingCall(flatBufferBuilder);
        if (createString4 != -1) {
            RequestPullingCall.addMdmnExtNumber(flatBufferBuilder, createString4);
        }
        RequestPullingCall.addVideoDirection(flatBufferBuilder, dialog.getVideoDirection());
        RequestPullingCall.addAudioDirection(flatBufferBuilder, dialog.getAudioDirection());
        RequestPullingCall.addCodec(flatBufferBuilder, 1);
        RequestPullingCall.addCallType(flatBufferBuilder, dialog.getCallType());
        if (createString6 != -1) {
            RequestPullingCall.addRemoteTag(flatBufferBuilder, createString6);
        }
        if (createString7 != -1) {
            RequestPullingCall.addLocalTag(flatBufferBuilder, createString7);
        }
        if (createString5 != -1) {
            RequestPullingCall.addCallId(flatBufferBuilder, createString5);
        }
        if (createString3 != -1) {
            RequestPullingCall.addOrigUri(flatBufferBuilder, createString3);
        }
        if (createString2 != -1) {
            RequestPullingCall.addTargetUri(flatBufferBuilder, createString2);
        }
        if (createString != -1) {
            RequestPullingCall.addPullingUri(flatBufferBuilder, createString);
        }
        if (i2 != -1) {
            RequestPullingCall.addP2pList(flatBufferBuilder, i2);
        }
        RequestPullingCall.addCmcEdCallSlot(flatBufferBuilder, dialog.getCallSlot());
        RequestPullingCall.addHandle(flatBufferBuilder, i);
        RequestPullingCall.addIsVideoPortZero(flatBufferBuilder, dialog.isVideoPortZero());
        int endRequestPullingCall = RequestPullingCall.endRequestPullingCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 224);
        Request.addReqType(flatBufferBuilder, (byte) 28);
        Request.addReq(flatBufferBuilder, endRequestPullingCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makePublishDialog(int i, String str, String str2, String str3, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = str2 != null ? flatBufferBuilder.createString(str2) : -1;
        int createString2 = str != null ? flatBufferBuilder.createString(str) : -1;
        int createString3 = str3 != null ? flatBufferBuilder.createString(str3) : -1;
        RequestPublishDialog.startRequestPublishDialog(flatBufferBuilder);
        RequestPublishDialog.addHandle(flatBufferBuilder, i);
        if (createString != -1) {
            RequestPublishDialog.addDispName(flatBufferBuilder, createString);
        }
        if (createString2 != -1) {
            RequestPublishDialog.addOrigUri(flatBufferBuilder, createString2);
        }
        if (createString3 != -1) {
            RequestPublishDialog.addXmlBody(flatBufferBuilder, createString3);
        }
        RequestPublishDialog.addExpireTime(flatBufferBuilder, i2);
        int endRequestPublishDialog = RequestPublishDialog.endRequestPublishDialog(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 228);
        Request.addReqType(flatBufferBuilder, (byte) 32);
        Request.addReq(flatBufferBuilder, endRequestPublishDialog);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeAcceptCallTransfer(int i, int i2, boolean z, int i3, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        RequestAcceptTransferCall.startRequestAcceptTransferCall(flatBufferBuilder);
        RequestAcceptTransferCall.addSession(flatBufferBuilder, i2);
        RequestAcceptTransferCall.addHandle(flatBufferBuilder, i);
        RequestAcceptTransferCall.addAccept(flatBufferBuilder, z);
        if (i3 > 0) {
            if (createString != -1) {
                RequestAcceptTransferCall.addReasonPhrase(flatBufferBuilder, createString);
            }
            RequestAcceptTransferCall.addStatusCode(flatBufferBuilder, i3);
        }
        int endRequestAcceptTransferCall = RequestAcceptTransferCall.endRequestAcceptTransferCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 213);
        Request.addReqType(flatBufferBuilder, (byte) 20);
        Request.addReq(flatBufferBuilder, endRequestAcceptTransferCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeHandleDtmf(int i, int i2, int i3, int i4, int i5) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestHandleDtmf.startRequestHandleDtmf(flatBufferBuilder);
        RequestHandleDtmf.addHandle(flatBufferBuilder, i);
        RequestHandleDtmf.addSession(flatBufferBuilder, i2);
        RequestHandleDtmf.addCode(flatBufferBuilder, i3);
        RequestHandleDtmf.addMode(flatBufferBuilder, i4);
        RequestHandleDtmf.addOperation(flatBufferBuilder, i5);
        int endRequestHandleDtmf = RequestHandleDtmf.endRequestHandleDtmf(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 207);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_handle_dtmf);
        Request.addReq(flatBufferBuilder, endRequestHandleDtmf);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSendText(int i, int i2, String str, int i3) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(str);
        RequestSendText.startRequestSendText(flatBufferBuilder);
        RequestSendText.addHandle(flatBufferBuilder, i);
        RequestSendText.addSession(flatBufferBuilder, i2);
        RequestSendText.addText(flatBufferBuilder, createString);
        RequestSendText.addLen(flatBufferBuilder, i3);
        int endRequestSendText = RequestSendText.endRequestSendText(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 234);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_send_text);
        Request.addReq(flatBufferBuilder, endRequestSendText);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeModifyCallType(int i, int i2, int i3) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestModifyCallType.startRequestModifyCallType(flatBufferBuilder);
        RequestModifyCallType.addSession(flatBufferBuilder, i);
        RequestModifyCallType.addOldType(flatBufferBuilder, i2);
        RequestModifyCallType.addNewType(flatBufferBuilder, i3);
        int endRequestModifyCallType = RequestModifyCallType.endRequestModifyCallType(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 216);
        Request.addReqType(flatBufferBuilder, (byte) 22);
        Request.addReq(flatBufferBuilder, endRequestModifyCallType);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeModifyVideoQuality(int i, int i2, int i3) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestModifyVideoQuality.startRequestModifyVideoQuality(flatBufferBuilder);
        RequestModifyVideoQuality.addSession(flatBufferBuilder, i);
        RequestModifyVideoQuality.addOldQual(flatBufferBuilder, i2);
        RequestModifyVideoQuality.addNewQual(flatBufferBuilder, i3);
        int endRequestModifyVideoQuality = RequestModifyVideoQuality.endRequestModifyVideoQuality(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 233);
        Request.addReqType(flatBufferBuilder, (byte) 37);
        Request.addReq(flatBufferBuilder, endRequestModifyVideoQuality);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeReplyModifyCallType(int i, int i2, int i3, int i4, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = str != null ? flatBufferBuilder.createString(str) : -1;
        RequestReplyModifyCallType.startRequestReplyModifyCallType(flatBufferBuilder);
        RequestReplyModifyCallType.addSession(flatBufferBuilder, i);
        RequestReplyModifyCallType.addReqType(flatBufferBuilder, i2);
        RequestReplyModifyCallType.addCurType(flatBufferBuilder, i3);
        RequestReplyModifyCallType.addRepType(flatBufferBuilder, i4);
        if (createString != -1) {
            RequestReplyModifyCallType.addCmcCallTime(flatBufferBuilder, createString);
        }
        int endRequestReplyModifyCallType = RequestReplyModifyCallType.endRequestReplyModifyCallType(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 217);
        Request.addReqType(flatBufferBuilder, (byte) 23);
        Request.addReq(flatBufferBuilder, endRequestReplyModifyCallType);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeRejectModifyCallType(int i, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestRejectModifyCallType.startRequestRejectModifyCallType(flatBufferBuilder);
        RequestRejectModifyCallType.addSession(flatBufferBuilder, i);
        RequestRejectModifyCallType.addReason(flatBufferBuilder, i2);
        int endRequestRejectModifyCallType = RequestRejectModifyCallType.endRequestRejectModifyCallType(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 221);
        Request.addReqType(flatBufferBuilder, (byte) 27);
        Request.addReq(flatBufferBuilder, endRequestRejectModifyCallType);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeUpdateCall(int i, int i2, int i3, int i4, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        RequestUpdateCall.startRequestUpdateCall(flatBufferBuilder);
        if (createString != -1) {
            RequestUpdateCall.addReasonText(flatBufferBuilder, createString);
        }
        RequestUpdateCall.addCause(flatBufferBuilder, i4);
        RequestUpdateCall.addCodecType(flatBufferBuilder, i3);
        RequestUpdateCall.addAction(flatBufferBuilder, i2);
        RequestUpdateCall.addSession(flatBufferBuilder, i);
        int endRequestUpdateCall = RequestUpdateCall.endRequestUpdateCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 206);
        Request.addReqType(flatBufferBuilder, (byte) 15);
        Request.addReq(flatBufferBuilder, endRequestUpdateCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSendInfo(int i, int i2, int i3, int i4, AdditionalContents additionalContents) {
        int i5;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        if (additionalContents != null) {
            int createString = additionalContents.mimeType() != null ? flatBufferBuilder.createString(additionalContents.mimeType()) : -1;
            int createString2 = additionalContents.contents() != null ? flatBufferBuilder.createString(additionalContents.contents()) : -1;
            AdditionalContents.startAdditionalContents(flatBufferBuilder);
            if (createString != -1) {
                AdditionalContents.addMimeType(flatBufferBuilder, createString);
            }
            if (createString2 != -1) {
                AdditionalContents.addContents(flatBufferBuilder, createString2);
            }
            i5 = AdditionalContents.endAdditionalContents(flatBufferBuilder);
        } else {
            i5 = -1;
        }
        RequestSendInfo.startRequestSendInfo(flatBufferBuilder);
        if (i5 != -1) {
            RequestSendInfo.addAdditionalContents(flatBufferBuilder, i5);
        }
        RequestSendInfo.addUssdType(flatBufferBuilder, i4);
        RequestSendInfo.addCallType(flatBufferBuilder, i3);
        RequestSendInfo.addSession(flatBufferBuilder, i2);
        RequestSendInfo.addHandle(flatBufferBuilder, i);
        int endRequestSendInfo = RequestSendInfo.endRequestSendInfo(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 229);
        Request.addReqType(flatBufferBuilder, (byte) 71);
        Request.addReq(flatBufferBuilder, endRequestSendInfo);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSendCmcInfo(int i, int i2, AdditionalContents additionalContents) {
        int i3;
        Log.i(LOG_TAG, "makeSendCmcInfo");
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        if (additionalContents != null) {
            int createString = additionalContents.mimeType() != null ? flatBufferBuilder.createString(additionalContents.mimeType()) : -1;
            int createString2 = additionalContents.contents() != null ? flatBufferBuilder.createString(additionalContents.contents()) : -1;
            AdditionalContents.startAdditionalContents(flatBufferBuilder);
            if (createString != -1) {
                AdditionalContents.addMimeType(flatBufferBuilder, createString);
            }
            if (createString2 != -1) {
                AdditionalContents.addContents(flatBufferBuilder, createString2);
            }
            i3 = AdditionalContents.endAdditionalContents(flatBufferBuilder);
        } else {
            i3 = -1;
        }
        RequestSendCmcInfo.startRequestSendCmcInfo(flatBufferBuilder);
        if (i3 != -1) {
            RequestSendCmcInfo.addAdditionalContents(flatBufferBuilder, i3);
        }
        RequestSendCmcInfo.addSession(flatBufferBuilder, i2);
        RequestSendCmcInfo.addHandle(flatBufferBuilder, i);
        int endRequestSendCmcInfo = RequestSendCmcInfo.endRequestSendCmcInfo(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 243);
        Request.addReqType(flatBufferBuilder, (byte) 72);
        Request.addReq(flatBufferBuilder, endRequestSendCmcInfo);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSendVcsInfo(int i, int i2, AdditionalContents additionalContents) {
        int i3;
        Log.i(LOG_TAG, "makeSendVcsInfo");
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        if (additionalContents != null) {
            int createString = additionalContents.mimeType() != null ? flatBufferBuilder.createString(additionalContents.mimeType()) : -1;
            int createString2 = additionalContents.contents() != null ? flatBufferBuilder.createString(additionalContents.contents()) : -1;
            AdditionalContents.startAdditionalContents(flatBufferBuilder);
            if (createString != -1) {
                AdditionalContents.addMimeType(flatBufferBuilder, createString);
            }
            if (createString2 != -1) {
                AdditionalContents.addContents(flatBufferBuilder, createString2);
            }
            i3 = AdditionalContents.endAdditionalContents(flatBufferBuilder);
        } else {
            i3 = -1;
        }
        RequestSendVcsInfo.startRequestSendVcsInfo(flatBufferBuilder);
        if (i3 != -1) {
            RequestSendVcsInfo.addAdditionalContents(flatBufferBuilder, i3);
        }
        RequestSendVcsInfo.addSession(flatBufferBuilder, i2);
        RequestSendVcsInfo.addHandle(flatBufferBuilder, i);
        int endRequestSendVcsInfo = RequestSendVcsInfo.endRequestSendVcsInfo(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 250);
        Request.addReqType(flatBufferBuilder, (byte) 73);
        Request.addReq(flatBufferBuilder, endRequestSendVcsInfo);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeUpdateCmcExtCallCount(int i, int i2) {
        Log.d(LOG_TAG, "makeUpdateCmcExtCallCount");
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestUpdateCmcExtCallCount.startRequestUpdateCmcExtCallCount(flatBufferBuilder);
        RequestUpdateCmcExtCallCount.addPhoneId(flatBufferBuilder, i);
        RequestUpdateCmcExtCallCount.addCallCount(flatBufferBuilder, i2);
        int endRequestUpdateCmcExtCallCount = RequestUpdateCmcExtCallCount.endRequestUpdateCmcExtCallCount(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 244);
        Request.addReqType(flatBufferBuilder, (byte) 76);
        Request.addReq(flatBufferBuilder, endRequestUpdateCmcExtCallCount);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeStartVideoEarlyMedia(int i, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestStartVideoEarlymedia.startRequestStartVideoEarlymedia(flatBufferBuilder);
        RequestStartVideoEarlymedia.addSession(flatBufferBuilder, i2);
        RequestStartVideoEarlymedia.addHandle(flatBufferBuilder, i);
        int endRequestStartVideoEarlymedia = RequestStartVideoEarlymedia.endRequestStartVideoEarlymedia(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 235);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_start_video_earlymedia);
        Request.addReq(flatBufferBuilder, endRequestStartVideoEarlymedia);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeEnableQuantumSecurityService(int i, boolean z) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestEnableQuantumSecurityService.startRequestEnableQuantumSecurityService(flatBufferBuilder);
        RequestEnableQuantumSecurityService.addSession(flatBufferBuilder, i);
        RequestEnableQuantumSecurityService.addEnable(flatBufferBuilder, z);
        int endRequestEnableQuantumSecurityService = RequestEnableQuantumSecurityService.endRequestEnableQuantumSecurityService(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 248);
        Request.addReqType(flatBufferBuilder, (byte) 75);
        Request.addReq(flatBufferBuilder, endRequestEnableQuantumSecurityService);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSetQuantumSecurityInfo(int i, int i2, int i3, String str, String str2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        int createString2 = !TextUtils.isEmpty(str2) ? flatBufferBuilder.createString(str2) : -1;
        RequestSetQuantumSecurityInfo.startRequestSetQuantumSecurityInfo(flatBufferBuilder);
        RequestSetQuantumSecurityInfo.addSession(flatBufferBuilder, i);
        RequestSetQuantumSecurityInfo.addCallDirection(flatBufferBuilder, i2);
        RequestSetQuantumSecurityInfo.addCryptoMode(flatBufferBuilder, i3);
        if (createString != -1) {
            RequestSetQuantumSecurityInfo.addQtSessionId(flatBufferBuilder, createString);
        }
        if (createString2 != -1) {
            RequestSetQuantumSecurityInfo.addSessionKey(flatBufferBuilder, createString2);
        }
        int endRequestSetQuantumSecurityInfo = RequestSetQuantumSecurityInfo.endRequestSetQuantumSecurityInfo(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 247);
        Request.addReqType(flatBufferBuilder, (byte) 74);
        Request.addReq(flatBufferBuilder, endRequestSetQuantumSecurityInfo);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeHandleCmcCsfb(int i, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestHandleCmcCsfb.startRequestHandleCmcCsfb(flatBufferBuilder);
        RequestHandleCmcCsfb.addSession(flatBufferBuilder, i2);
        RequestHandleCmcCsfb.addHandle(flatBufferBuilder, i);
        int endRequestHandleCmcCsfb = RequestHandleCmcCsfb.endRequestHandleCmcCsfb(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 238);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_handle_cmc_csfb);
        Request.addReq(flatBufferBuilder, endRequestHandleCmcCsfb);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeProgressIncomingCall(int i, int i2, boolean z, HashMap<String, String> hashMap, String str) {
        int i3;
        int i4;
        int i5 = 0;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        if (hashMap != null) {
            List<Integer> translateExtraHeader = StackRequestBuilderUtil.translateExtraHeader(flatBufferBuilder, hashMap);
            int[] iArr = new int[translateExtraHeader.size()];
            Iterator<Integer> it = translateExtraHeader.iterator();
            while (it.hasNext()) {
                iArr[i5] = it.next().intValue();
                i5++;
            }
            Log.i(LOG_TAG, "Adding extra headers " + translateExtraHeader.size());
            i3 = ExtraHeader.createPairVector(flatBufferBuilder, iArr);
        } else {
            i3 = -1;
        }
        if (hashMap != null) {
            ExtraHeader.startExtraHeader(flatBufferBuilder);
            ExtraHeader.addPair(flatBufferBuilder, i3);
            i4 = ExtraHeader.endExtraHeader(flatBufferBuilder);
        } else {
            i4 = -1;
        }
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        RequestProgressIncomingCall.startRequestProgressIncomingCall(flatBufferBuilder);
        RequestProgressIncomingCall.addSession(flatBufferBuilder, i2);
        RequestProgressIncomingCall.addBlocked(flatBufferBuilder, z);
        if (i4 != -1) {
            RequestProgressIncomingCall.addExtraHeader(flatBufferBuilder, i4);
        }
        if (createString != -1) {
            RequestProgressIncomingCall.addIdcExtra(flatBufferBuilder, createString);
        }
        int endRequestProgressIncomingCall = RequestProgressIncomingCall.endRequestProgressIncomingCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 218);
        Request.addReqType(flatBufferBuilder, (byte) 24);
        Request.addReq(flatBufferBuilder, endRequestProgressIncomingCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSendEmergencyLocationPublish(int i) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestEmergencyLocationPublish.startRequestEmergencyLocationPublish(flatBufferBuilder);
        RequestEmergencyLocationPublish.addSession(flatBufferBuilder, i);
        int endRequestEmergencyLocationPublish = RequestEmergencyLocationPublish.endRequestEmergencyLocationPublish(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 252);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_emergency_location_publish);
        Request.addReq(flatBufferBuilder, endRequestEmergencyLocationPublish);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeReplyWithIdc(int i, int i2, int i3, int i4, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        RequestReplyModifyCallType.startRequestReplyModifyCallType(flatBufferBuilder);
        RequestReplyModifyCallType.addSession(flatBufferBuilder, i);
        RequestReplyModifyCallType.addReqType(flatBufferBuilder, i2);
        RequestReplyModifyCallType.addCurType(flatBufferBuilder, i3);
        RequestReplyModifyCallType.addRepType(flatBufferBuilder, i4);
        if (createString != -1) {
            RequestReplyModifyCallType.addIdcExtra(flatBufferBuilder, createString);
        }
        int endRequestReplyModifyCallType = RequestReplyModifyCallType.endRequestReplyModifyCallType(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 217);
        Request.addReqType(flatBufferBuilder, (byte) 23);
        Request.addReq(flatBufferBuilder, endRequestReplyModifyCallType);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeUpdateWithIdc(int i, int i2, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        RequestUpdateCall.startRequestUpdateCall(flatBufferBuilder);
        if (createString != -1) {
            RequestUpdateCall.addIdcExtra(flatBufferBuilder, createString);
        }
        RequestUpdateCall.addAction(flatBufferBuilder, i2);
        RequestUpdateCall.addSession(flatBufferBuilder, i);
        int endRequestUpdateCall = RequestUpdateCall.endRequestUpdateCall(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 206);
        Request.addReqType(flatBufferBuilder, (byte) 15);
        Request.addReq(flatBufferBuilder, endRequestUpdateCall);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSendNegotiatedLocalSdp(int i, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        RequestSendNegotiatedLocalSdp.startRequestSendNegotiatedLocalSdp(flatBufferBuilder);
        RequestSendNegotiatedLocalSdp.addSession(flatBufferBuilder, i);
        if (createString != -1) {
            RequestSendNegotiatedLocalSdp.addSdp(flatBufferBuilder, createString);
        }
        int endRequestSendNegotiatedLocalSdp = RequestSendNegotiatedLocalSdp.endRequestSendNegotiatedLocalSdp(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_SEND_NEGOTIATED_LOCAL_SDP);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_send_negotiated_local_sdp);
        Request.addReq(flatBufferBuilder, endRequestSendNegotiatedLocalSdp);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }
}
