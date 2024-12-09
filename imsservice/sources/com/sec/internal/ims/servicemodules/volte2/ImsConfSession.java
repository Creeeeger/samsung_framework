package com.sec.internal.ims.servicemodules.volte2;

import android.content.ContentValues;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.IImsCallSessionEventListener;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.CallStateEvent;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.Debug;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.ims.servicemodules.volte2.data.ConfCallSetupData;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ImsConfSession extends ImsCallSession {
    private String LOG_TAG;
    private final List<String> mGroupInvitingParticipants;
    private final SparseArray<String> mGroupParticipants;
    private final List<ImsCallSession> mInvitingParticipants;
    private boolean mIsExtendToConference;
    private final SparseIntArray mParticipantStatus;
    private final SparseArray<ImsCallSession> mParticipants;
    private int mPendingAddParticipantId;

    public enum ConfUpdateCmd {
        UNKNOWN,
        ADD_PARTICIPANT,
        REMOVE_PARTICIPANT;

        @Override // java.lang.Enum
        public String toString() {
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$volte2$ImsConfSession$ConfUpdateCmd[ordinal()];
            return i != 1 ? i != 2 ? "[Unknown]" : "[REMOVE_PARTICIPANT]" : "[ADD_PARTICIPANT]";
        }
    }

    public class ConfCallStateMachine extends CallStateMachine {
        public static final int ON_CONFERENCE_CALL_TIMEOUT = 104;
        static final int ON_PARTICIPANT_ADDED = 101;
        static final int ON_PARTICIPANT_REMOVED = 102;
        static final int ON_PARTICIPANT_UPDATED = 103;
        private int mConfErrorCode;
        private ConfUpdateCmd mConfUpdateCmd;
        private int mPrevActiveSession;
        private boolean mSentConfData;
        final ConfCallStateMachine mThisConfSm;

        private boolean isErrorCodeToResumeSession(int i) {
            return i == 486 || i == 487 || i == 480 || i == 403 || i == 503 || i == 400 || i == 606;
        }

        private String participantStatus(int i) {
            switch (i) {
                case 1:
                    return "INVITING";
                case 2:
                    return "ACTIVE";
                case 3:
                    return "REMOVING";
                case 4:
                    return "NON_ACTIVE";
                case 5:
                    return "ALERTING";
                case 6:
                    return "ON-HOLD";
                default:
                    return "UNKNOWN";
            }
        }

        ConfCallStateMachine(Context context, ImsCallSession imsCallSession, ImsRegistration imsRegistration, IVolteServiceModuleInternal iVolteServiceModuleInternal, Mno mno, IVolteServiceInterface iVolteServiceInterface, RemoteCallbackList<IImsCallSessionEventListener> remoteCallbackList, IRegistrationManager iRegistrationManager, IImsMediaController iImsMediaController, Looper looper) {
            super(context, imsCallSession, imsRegistration, iVolteServiceModuleInternal, mno, iVolteServiceInterface, remoteCallbackList, iRegistrationManager, iImsMediaController, "ConfCallStateMachine", looper);
            this.mPrevActiveSession = -1;
            this.mConfUpdateCmd = ConfUpdateCmd.UNKNOWN;
            this.mConfErrorCode = -1;
            this.mSentConfData = false;
            this.mThisConfSm = this;
            this.mReadyToCall = new ReadyToCall(this);
            this.mOutgoingCall = new OutgoingCall(this);
            this.mAlertingCall = new AlertingCall(this);
            this.mInCall = new InCall(this);
            this.mHeldCall = new HeldCall(this);
            this.mHoldingCall = new HoldingCall(this);
            this.mResumingCall = new ResumingCall(this);
            this.mEndingCall = new EndingCall(this);
        }

        class ReadyToCall extends ImsReadyToCall {
            ReadyToCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsReadyToCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[ReadyToCall] processMessage " + message.what);
                int i = message.what;
                if (i != 11) {
                    if (i == 72) {
                        merge(message.arg1, message.arg2);
                    } else {
                        return super.processMessage(message);
                    }
                } else if (ImsConfSession.this.mCallProfile.getConferenceType() == 2) {
                    Log.i(this.LOG_TAG, "bindToNetwork for Group call");
                    this.mMediaController.bindToNetwork(this.mRegistration.getNetwork());
                    ImsConfSession.this.mIsExtendToConference = true;
                    if (ImsConfSession.this.mCallProfile.getDialingNumber() == null) {
                        ImsConfSession imsConfSession = ImsConfSession.this;
                        imsConfSession.mCallProfile.setDialingNumber(imsConfSession.getConferenceUri(this.mRegistration.getImsProfile()));
                    }
                    conference((List) message.obj);
                } else {
                    return super.processMessage(message);
                }
                return true;
            }

            private void conference(List<String> list) {
                ConfCallStateMachine confCallStateMachine = ConfCallStateMachine.this;
                confCallStateMachine.callType = ImsConfSession.this.mCallProfile.getCallType();
                if (list.size() > 0) {
                    ImsProfile imsProfile = this.mRegistration.getImsProfile();
                    ConfCallSetupData confCallSetupData = new ConfCallSetupData(ImsConfSession.this.getConferenceUri(imsProfile), list, ConfCallStateMachine.this.callType);
                    confCallSetupData.enableSubscription(ImsConfSession.this.getConfSubscribeEnabled(imsProfile));
                    confCallSetupData.setSubscribeDialogType(ImsConfSession.this.getConfSubscribeDialogType(imsProfile));
                    confCallSetupData.setReferUriType(ImsConfSession.this.getConfReferUriType(imsProfile));
                    confCallSetupData.setRemoveReferUriType(ImsConfSession.this.getConfRemoveReferUriType(imsProfile));
                    confCallSetupData.setReferUriAsserted(ImsConfSession.this.getConfReferUriAsserted(imsProfile));
                    confCallSetupData.setOriginatingUri(ImsConfSession.this.getOriginatingUri());
                    confCallSetupData.setUseAnonymousUpdate(ImsConfSession.this.getConfUseAnonymousUpdate(imsProfile));
                    confCallSetupData.setSupportPrematureEnd(ImsConfSession.this.getConfSupportPrematureEnd(imsProfile));
                    int startNWayConferenceCall = this.mVolteSvcIntf.startNWayConferenceCall(this.mRegistration.getHandle(), confCallSetupData);
                    if (startNWayConferenceCall < 0) {
                        ConfCallStateMachine.this.mThisSm.sendMessage(4, 0, -1, new SipError(1005, "Not enough participant."));
                        return;
                    }
                    ImsConfSession.this.mGroupInvitingParticipants.addAll(list);
                    Log.i(this.LOG_TAG, "[ReadyToCall] startNWayConferenceCall() returned session id " + startNWayConferenceCall);
                    ImsConfSession.this.setSessionId(startNWayConferenceCall);
                    ImsConfSession.this.mCallProfile.setDirection(0);
                    ConfCallStateMachine confCallStateMachine2 = ConfCallStateMachine.this;
                    int determineCamera = confCallStateMachine2.determineCamera(confCallStateMachine2.callType, false);
                    if (determineCamera >= 0) {
                        ImsConfSession.this.startCamera(determineCamera);
                    }
                    ConfCallStateMachine confCallStateMachine3 = ConfCallStateMachine.this;
                    confCallStateMachine3.transitionTo(confCallStateMachine3.mOutgoingCall);
                    return;
                }
                ConfCallStateMachine.this.mThisSm.sendMessage(4, 0, -1, new SipError(1005, "Not enough participant."));
            }

            private void merge(int i, int i2) {
                int i3;
                int i4;
                Log.i(this.LOG_TAG, "HeldCallId : " + i + " AcitveCallId : " + i2);
                ArrayList arrayList = new ArrayList();
                ImsCallSession sessionByCallId = this.mModule.getSessionByCallId(i);
                if (sessionByCallId != null) {
                    Log.i(this.LOG_TAG, "Held Session Id : " + sessionByCallId.getSessionId());
                    arrayList.add(sessionByCallId);
                    i3 = sessionByCallId.getSessionId();
                } else {
                    i3 = -1;
                }
                ImsCallSession sessionByCallId2 = this.mModule.getSessionByCallId(i2);
                if (sessionByCallId2 == null || sessionByCallId2.getCallState() == CallConstants.STATE.ResumingCall || sessionByCallId2.getCallState() == CallConstants.STATE.ResumingVideo) {
                    i4 = -1;
                } else {
                    Log.i(this.LOG_TAG, "Active Session Id : " + sessionByCallId2.getSessionId());
                    arrayList.add(sessionByCallId2);
                    i4 = sessionByCallId2.getSessionId();
                }
                IMSLog.c(LogClass.VOLTE_MERGE, "Merge," + ImsConfSession.this.mPhoneId + "," + i3 + "," + i4);
                if (i4 < 0 || i3 < 0) {
                    ConfCallStateMachine.this.mThisSm.sendMessage(4, 0, -1, new SipError(1005, "Not enough participant."));
                    return;
                }
                if (ImsConfSession.this.mCallProfile.getForegroundSessionId() < 0 || ImsConfSession.this.mCallProfile.getForegroundSessionId() == i4) {
                    int i5 = i4;
                    i4 = i3;
                    i3 = i5;
                }
                if (sessionByCallId2 != null) {
                    ImsConfSession.this.mCallProfile.setOriginatingUri(sessionByCallId2.getOriginatingUri());
                }
                ConfCallStateMachine confCallStateMachine = ConfCallStateMachine.this;
                confCallStateMachine.callType = ImsConfSession.this.mCallProfile.getCallType();
                ImsConfSession.this.mInvitingParticipants.addAll(arrayList);
                ImsRegistration imsRegistration = this.mRegistration;
                if (imsRegistration == null || imsRegistration.getImsProfile() == null) {
                    ConfCallStateMachine.this.mThisSm.sendMessage(4, 0, -1, new SipError(1005, "Not Registration."));
                    return;
                }
                ConfCallStateMachine confCallStateMachine2 = ConfCallStateMachine.this;
                int i6 = confCallStateMachine2.callType;
                int mergeCallType = this.mModule.getMergeCallType(ImsConfSession.this.mPhoneId, i6 == 5 || i6 == 6);
                ImsProfile imsProfile = this.mRegistration.getImsProfile();
                String conferenceUri = ImsConfSession.this.getConferenceUri(imsProfile);
                if (this.mMno == Mno.KDDI) {
                    Log.i(this.LOG_TAG, "[KDDI]Change ConfUri for Threeway merge call.");
                    conferenceUri = "sip:mmtel@3pty-factory.ims.mnc051.mcc440.3gppnetwork.org";
                }
                ConfCallSetupData confCallSetupData = new ConfCallSetupData(conferenceUri, i3, i4, mergeCallType);
                confCallSetupData.enableSubscription(ImsConfSession.this.getConfSubscribeEnabled(imsProfile));
                confCallSetupData.setSubscribeDialogType(ImsConfSession.this.getConfSubscribeDialogType(imsProfile));
                confCallSetupData.setReferUriType(ImsConfSession.this.getConfReferUriType(imsProfile));
                confCallSetupData.setRemoveReferUriType(ImsConfSession.this.getConfRemoveReferUriType(imsProfile));
                confCallSetupData.setReferUriAsserted(ImsConfSession.this.getConfReferUriAsserted(imsProfile));
                confCallSetupData.setUseAnonymousUpdate(ImsConfSession.this.getConfUseAnonymousUpdate(imsProfile));
                confCallSetupData.setOriginatingUri(ImsConfSession.this.getOriginatingUri());
                confCallSetupData.setSupportPrematureEnd(ImsConfSession.this.getConfSupportPrematureEnd(imsProfile));
                if (ImsConfSession.this.mCallProfile.getAdditionalSipHeaders() != null) {
                    confCallSetupData.setExtraSipHeaders(ImsConfSession.this.mCallProfile.getAdditionalSipHeaders());
                }
                int startNWayConferenceCall = this.mVolteSvcIntf.startNWayConferenceCall(this.mRegistration.getHandle(), confCallSetupData);
                if (startNWayConferenceCall < 0) {
                    ConfCallStateMachine.this.mThisSm.sendMessage(4, 0, -1, new SipError(1005, "remote exception."));
                    return;
                }
                ImsConfSession.this.setSessionId(startNWayConferenceCall);
                if (ConfCallStateMachine.this.determineCamera(mergeCallType, false) >= 0) {
                    ImsConfSession.this.startCamera(-1);
                }
                ConfCallStateMachine.this.mPrevActiveSession = i3;
                ImsConfSession.this.mCallProfile.setDirection(0);
                ConfCallStateMachine.this.mThisConfSm.sendMessageDelayed(104, 45000L);
                ConfCallStateMachine confCallStateMachine3 = ConfCallStateMachine.this;
                confCallStateMachine3.transitionTo(confCallStateMachine3.mOutgoingCall);
            }
        }

        class OutgoingCall extends ImsOutgoingCall {
            OutgoingCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsOutgoingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                ConfCallStateMachine confCallStateMachine = ConfCallStateMachine.this;
                confCallStateMachine.callType = 0;
                confCallStateMachine.errorCode = -1;
                confCallStateMachine.errorMessage = "";
                Log.i(this.LOG_TAG, "Enter [OutgoingCall]");
                ConfCallStateMachine confCallStateMachine2 = ConfCallStateMachine.this;
                CallProfile callProfile = ImsConfSession.this.mCallProfile;
                if (callProfile != null) {
                    confCallStateMachine2.callType = callProfile.getCallType();
                }
                ConfCallStateMachine confCallStateMachine3 = ConfCallStateMachine.this;
                int determineCamera = confCallStateMachine3.determineCamera(confCallStateMachine3.callType, false);
                if (determineCamera >= 0) {
                    ImsConfSession.this.startCamera(determineCamera);
                }
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsOutgoingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[OutgoingCall] processMessage " + message.what);
                int i = message.what;
                if (i != 4) {
                    if (i != 41) {
                        if (i == 104) {
                            ConfCallStateMachine.this.notifyOnError(1104, "Conf call setup timeout");
                            return false;
                        }
                        return super.processMessage(message);
                    }
                    if (ImsConfSession.this.mCallProfile.isConferenceCall()) {
                        ConfCallStateMachine.this.onConferenceEstablished();
                        return true;
                    }
                    return super.processMessage(message);
                }
                int i2 = message.arg1;
                if (ImsConfSession.this.mCallProfile.isConferenceCall()) {
                    SipError sipError = (SipError) message.obj;
                    Log.e(this.LOG_TAG, "[OutgoingCall] conference error code: " + sipError.getCode() + ": errorMessage " + sipError.getReason() + ": Retry After " + i2);
                    ConfCallStateMachine confCallStateMachine = ConfCallStateMachine.this;
                    confCallStateMachine.notifyOnError(1104, confCallStateMachine.errorMessage, Math.max(i2, 0));
                    ConfCallStateMachine.this.onConferenceFailError();
                    return true;
                }
                return super.processMessage(message);
            }
        }

        class AlertingCall extends ImsAlertingCall {
            AlertingCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsAlertingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                ConfCallStateMachine confCallStateMachine = ConfCallStateMachine.this;
                confCallStateMachine.callType = 0;
                confCallStateMachine.errorCode = -1;
                confCallStateMachine.errorMessage = "";
                Log.i(this.LOG_TAG, "Enter [AlertingCall]");
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsAlertingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[AlertingCall] processMessage " + message.what);
                int i = message.what;
                if (i != 4) {
                    if (i != 41) {
                        if (i == 104) {
                            ConfCallStateMachine.this.notifyOnError(1104, "Conf call setup timeout");
                            return false;
                        }
                        return super.processMessage(message);
                    }
                    if (ImsConfSession.this.mCallProfile.isConferenceCall()) {
                        ConfCallStateMachine.this.onConferenceEstablished();
                        return true;
                    }
                    return super.processMessage(message);
                }
                if (ImsConfSession.this.mCallProfile.isConferenceCall()) {
                    SipError sipError = (SipError) message.obj;
                    Log.e(this.LOG_TAG, "[AlertingCall] conference error code: " + sipError.getCode() + ": errorMessage " + sipError.getReason());
                    ConfCallStateMachine confCallStateMachine = ConfCallStateMachine.this;
                    confCallStateMachine.notifyOnError(1104, confCallStateMachine.errorMessage);
                    ConfCallStateMachine.this.onConferenceFailError();
                    return true;
                }
                return super.processMessage(message);
            }
        }

        class InCall extends ImsInCall {
            InCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsInCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[InCall] processMessage " + message.what);
                int i = message.what;
                if (i != 1 && i != 3) {
                    if (i == 73) {
                        ImsConfSession.this.mIsExtendToConference = true;
                        return super.processMessage(message);
                    }
                    if (i == 75) {
                        onReferStatus(message);
                        return true;
                    }
                    if (i == 91) {
                        ConfCallStateMachine.this.notifyOnModified(message.arg1);
                        if (ImsConfSession.this.mPendingAddParticipantId != 0) {
                            ImsConfSession imsConfSession = ImsConfSession.this;
                            imsConfSession.smCallStateMachine.sendMessage(53, imsConfSession.mPendingAddParticipantId, 0, null);
                            ImsConfSession.this.mPendingAddParticipantId = 0;
                        }
                        return true;
                    }
                    if (i != 53 && i != 54) {
                        switch (i) {
                            case 101:
                            case 102:
                            case 103:
                                break;
                            case 104:
                                ConfCallStateMachine.this.notifyOnError(1104, "Conf call setup timeout");
                                return false;
                            default:
                                return super.processMessage(message);
                        }
                    }
                }
                return false;
            }

            void onReferStatus(Message message) {
                if (this.mMno == Mno.LGU && message.arg1 > 200 && !ImsConfSession.this.mCallProfile.isConferenceCall()) {
                    Log.e(this.LOG_TAG, "[InCall] On_Refer_Status conference setup fail error=" + message.arg1);
                    ConfCallStateMachine.this.notifyOnError(1105, "Add user to session failure");
                    return;
                }
                int i = message.arg1;
                if ((i == 400 || i == 403 || i == 404 || i == 488 || i == 405) && this.mMno != Mno.KDDI) {
                    Log.e(this.LOG_TAG, "[InCall] On_Refer_Status Fail Error");
                    ConfCallStateMachine.this.onReferStatusFailError();
                } else if (i == 487 && ConfCallStateMachine.this.mConfUpdateCmd == ConfUpdateCmd.ADD_PARTICIPANT) {
                    Log.i(this.LOG_TAG, "[InCall] On_Refer_Status ADD USER FAILED : notify error 487");
                    ImsConfSession.this.mInvitingParticipants.clear();
                }
            }
        }

        class HoldingCall extends ImsHoldingCall {
            HoldingCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsHoldingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[HoldingCall] processMessage " + message.what);
                int i = message.what;
                if (i == 1 || i == 53 || i == 54) {
                    return false;
                }
                switch (i) {
                    case 101:
                    case 102:
                    case 103:
                    case 104:
                        return false;
                    default:
                        return super.processMessage(message);
                }
            }
        }

        class HeldCall extends ImsHeldCall {
            HeldCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsHeldCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                ConfCallStateMachine confCallStateMachine = ConfCallStateMachine.this;
                confCallStateMachine.callType = 0;
                confCallStateMachine.errorCode = -1;
                confCallStateMachine.errorMessage = "";
                confCallStateMachine.notifyOnHeld(true);
                Log.i(this.LOG_TAG, "Enter [HeldCall]");
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsHeldCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[HeldCall] processMessage " + message.what);
                int i = message.what;
                if (i == 1) {
                    return false;
                }
                if (i == 75) {
                    onReferStatus(message);
                    return true;
                }
                if (i == 53 || i == 54) {
                    return false;
                }
                switch (i) {
                    case 101:
                    case 102:
                    case 103:
                    case 104:
                        return false;
                    default:
                        return super.processMessage(message);
                }
            }

            void onReferStatus(Message message) {
                int i = message.arg1;
                if ((i == 403 || i == 404 || i == 488 || i == 405) && this.mMno != Mno.KDDI) {
                    Log.e(this.LOG_TAG, "[HeldCall] On_Refer_Status Fail Error");
                    ConfCallStateMachine.this.onReferStatusFailError();
                } else if (i == 487 && ConfCallStateMachine.this.mConfUpdateCmd == ConfUpdateCmd.ADD_PARTICIPANT) {
                    Log.i(this.LOG_TAG, "[HeldCall] On_Refer_Status ADD USER FAILED : notify error 487");
                    ImsConfSession.this.mInvitingParticipants.clear();
                }
            }
        }

        class ResumingCall extends ImsResumingCall {
            ResumingCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsResumingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[ResumingCall] processMessage " + message.what);
                int i = message.what;
                if (i != 1 && i != 3) {
                    if (i == 4) {
                        SipError sipError = (SipError) message.obj;
                        int code = sipError.getCode();
                        if (ImsConfSession.this.mCallProfile.isConferenceCall() && code == 800) {
                            Log.e(this.LOG_TAG, "[ResumingCall] conference error code: " + code + ": errorMessage " + sipError.getReason() + "handle as NOT_HANDLED");
                            return false;
                        }
                    } else if (i != 53 && i != 54) {
                        switch (i) {
                        }
                    }
                    return super.processMessage(message);
                }
                return false;
            }
        }

        class EndingCall extends ImsEndingCall {
            EndingCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsEndingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[EndingCall] processMessage " + message.what);
                if (message.what == 3) {
                    CallConstants.STATE state = CallConstants.STATE.Idle;
                    ImsCallSession session = this.mModule.getSession(ConfCallStateMachine.this.mPrevActiveSession);
                    if (session != null) {
                        state = session.getCallState();
                    }
                    if (ImsConfSession.this.mCallProfile.isConferenceCall() && this.mMno.isChn() && (state == CallConstants.STATE.OutGoingCall || state == CallConstants.STATE.AlertingCall)) {
                        Log.e(this.LOG_TAG, "[EndingCall] conference ENDED");
                        ConfCallStateMachine.this.onConferenceFailError();
                    }
                    return super.processMessage(message);
                }
                return super.processMessage(message);
            }
        }

        @Override // com.sec.internal.ims.servicemodules.volte2.CallStateMachine, com.sec.internal.helper.StateMachine
        protected void unhandledMessage(Message message) {
            Log.i(ImsConfSession.this.LOG_TAG, "[ANY_STATE] unhandledMessage " + message.what);
            int i = message.what;
            if (i == 1) {
                onConferenceEnded();
                super.unhandledMessage(message);
                return;
            }
            if (i == 3) {
                if (ImsConfSession.this.mCallProfile.isConferenceCall() && ImsConfSession.this.mInvitingParticipants.size() > 0) {
                    Log.e(ImsConfSession.this.LOG_TAG, "[ANY_STATE] Conference call ended before merge request is not completed");
                    Iterator it = ImsConfSession.this.mInvitingParticipants.iterator();
                    while (it.hasNext()) {
                        try {
                            ((ImsCallSession) it.next()).terminate(7);
                        } catch (RemoteException unused) {
                        }
                    }
                    this.mVolteSvcIntf.endCall(ImsConfSession.this.getSessionId(), ImsConfSession.this.mCallProfile.getCallType(), getSipReasonFromUserReason(7));
                    onConferenceEnded();
                    transitionTo(this.mEndingCall);
                    super.unhandledMessage(message);
                    return;
                }
                super.unhandledMessage(message);
                return;
            }
            if (i != 4) {
                if (i == 53) {
                    addConferenceParticipant(message);
                    return;
                }
                if (i == 54) {
                    removeConferenceParticipant(message);
                    return;
                }
                switch (i) {
                    case 101:
                        onConferenceParticipantAdded(message);
                        break;
                    case 102:
                        onConferenceParticipantRemoved(message);
                        break;
                    case 103:
                        onConferenceParticipantUpdated(message);
                        break;
                    case 104:
                        onConferenceCallTimeout();
                        break;
                    default:
                        super.unhandledMessage(message);
                        break;
                }
                return;
            }
            if (ImsConfSession.this.mCallProfile.isConferenceCall()) {
                SipError sipError = (SipError) message.obj;
                int code = sipError.getCode();
                String reason = sipError.getReason();
                Log.e(ImsConfSession.this.LOG_TAG, "[ANY_STATE] conference error code: " + code + ": errorMessage " + reason + " ConfUpdateCmd: " + this.mConfUpdateCmd.toString());
                ConfUpdateCmd confUpdateCmd = this.mConfUpdateCmd;
                if (confUpdateCmd == ConfUpdateCmd.ADD_PARTICIPANT) {
                    if (ImsConfSession.this.mCallProfile.getConferenceType() == 1) {
                        Log.e(ImsConfSession.this.LOG_TAG, "Participant add fail, clear list");
                        ImsConfSession.this.mInvitingParticipants.clear();
                    }
                    notifyOnError(1105, reason, 0);
                } else if (confUpdateCmd == ConfUpdateCmd.REMOVE_PARTICIPANT) {
                    notifyOnError(1106, reason, 0);
                }
                this.mConfErrorCode = code;
                onConferenceFailError(message, this.mConfUpdateCmd);
                return;
            }
            super.unhandledMessage(message);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onConferenceFailError() {
            this.mConfUpdateCmd = ConfUpdateCmd.UNKNOWN;
            if (ImsConfSession.this.mParticipants.size() <= 0) {
                onConferenceEnded();
                if (ImsConfSession.this.getCallState() != CallConstants.STATE.EndingCall) {
                    transitionTo(this.mEndingCall);
                    sendMessage(3);
                }
            }
            if (ImsConfSession.this.mCallProfile.getCallType() == 5 || ImsConfSession.this.mCallProfile.getCallType() == 6) {
                return;
            }
            try {
                ImsCallSession session = this.mModule.getSession(this.mPrevActiveSession);
                if (session != null) {
                    Log.e(ImsConfSession.this.LOG_TAG, "conf fail; resume session:: " + this.mPrevActiveSession);
                    session.resume();
                }
                this.mPrevActiveSession = -1;
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        private void addConferenceParticipant(Message message) {
            String[] split;
            this.mConfUpdateCmd = ConfUpdateCmd.ADD_PARTICIPANT;
            if (ImsConfSession.this.mCallProfile.getConferenceType() == 2) {
                if (ImsConfSession.this.mIsExtendToConference) {
                    split = (String[]) message.obj;
                } else {
                    split = ((String) message.obj).split("\\$");
                }
                for (String str : split) {
                    ImsConfSession imsConfSession = ImsConfSession.this;
                    ImsUri buildUri = imsConfSession.buildUri(str, null, imsConfSession.mCallProfile.getCallType());
                    Log.i(ImsConfSession.this.LOG_TAG, "addConferenceParticipant " + IMSLog.checker(buildUri.toString()));
                    ImsConfSession.this.mGroupInvitingParticipants.add(buildUri.toString());
                    if (this.mVolteSvcIntf.addParticipantToNWayConferenceCall(ImsConfSession.this.getSessionId(), buildUri.toString()) < 0) {
                        Log.e(ImsConfSession.this.LOG_TAG, "addConferenceParticipant failed.");
                        return;
                    }
                }
                return;
            }
            int i = message.arg1;
            ImsCallSession sessionByCallId = this.mModule.getSessionByCallId(i);
            if (sessionByCallId == null) {
                Log.e(ImsConfSession.this.LOG_TAG, "[ANY_STATE] ADD_PARTICIPANT: session not exist with callId=" + i);
                return;
            }
            if (sessionByCallId.getCallState() != CallConstants.STATE.InCall && sessionByCallId.getCallState() != CallConstants.STATE.HeldCall) {
                Log.e(ImsConfSession.this.LOG_TAG, "[ANY_STATE] call to be added is neither InCall nor HeldCall.");
                return;
            }
            ImsConfSession.this.mInvitingParticipants.add(sessionByCallId);
            if (ImsConfSession.this.getCallState() == CallConstants.STATE.HeldCall) {
                this.mPrevActiveSession = sessionByCallId.getSessionId();
            }
            if (this.mVolteSvcIntf.addParticipantToNWayConferenceCall(ImsConfSession.this.getSessionId(), sessionByCallId.getSessionId()) < 0) {
                Log.e(ImsConfSession.this.LOG_TAG, "addConferenceParticipant: fail.");
            }
        }

        private void removeConferenceParticipant(Message message) {
            this.mConfUpdateCmd = ConfUpdateCmd.REMOVE_PARTICIPANT;
            if (this.mMno.isKor()) {
                Log.i(ImsConfSession.this.LOG_TAG, "KOR operator do not support remove participant");
                return;
            }
            if (ImsConfSession.this.mCallProfile.getConferenceType() == 2) {
                String str = (String) message.obj;
                ImsConfSession imsConfSession = ImsConfSession.this;
                ImsUri buildUri = imsConfSession.buildUri(str, null, imsConfSession.mCallProfile.getCallType());
                Log.i(ImsConfSession.this.LOG_TAG, "removeConferenceParticipant " + IMSLog.checker(buildUri.toString()));
                if (this.mVolteSvcIntf.removeParticipantFromNWayConferenceCall(ImsConfSession.this.getSessionId(), buildUri.toString()) < 0) {
                    Log.e(ImsConfSession.this.LOG_TAG, "removeConferenceParticipant failed.");
                    return;
                }
                return;
            }
            int i = message.arg1;
            int participantId = ImsConfSession.this.getParticipantId(i);
            if (participantId == -1) {
                Log.e(ImsConfSession.this.LOG_TAG, "[ANY_STATE] REMOVE_PARTICIPANT: session not exist with callId=" + i);
                return;
            }
            if (this.mVolteSvcIntf.removeParticipantFromNWayConferenceCall(ImsConfSession.this.getSessionId(), participantId) < 0) {
                Log.e(ImsConfSession.this.LOG_TAG, "removeConferenceParticipant: fail.");
            }
        }

        private void onConferenceParticipantAdded(Message message) {
            for (CallStateEvent.ParticipantUser participantUser : (List) message.obj) {
                ImsCallSession sessionFromInvitingParticipants = ImsConfSession.this.getSessionFromInvitingParticipants(participantUser.getSessionId());
                if (ImsConfSession.this.mParticipants.get(participantUser.getParticipantId()) != null) {
                    Log.d(ImsConfSession.this.LOG_TAG, "[ANY_STATE] already added participantId=" + participantUser.getParticipantId());
                } else if (sessionFromInvitingParticipants == null) {
                    Log.d(ImsConfSession.this.LOG_TAG, "[ANY_STATE] ON_PARTICIPANT_ADDED: session not exist with sessionId=" + participantUser.getSessionId());
                } else {
                    int i = sessionFromInvitingParticipants.isRemoteHeld() ? 6 : 2;
                    Log.i(ImsConfSession.this.LOG_TAG, "[ANY_STATE] participant status=" + i);
                    notifyParticipantAdded(sessionFromInvitingParticipants.getCallId());
                    this.mModule.onConferenceParticipantAdded(ImsConfSession.this.getSessionId(), participantUser.getUri());
                    ImsConfSession.this.mInvitingParticipants.remove(sessionFromInvitingParticipants);
                    ImsConfSession.this.mParticipants.put(participantUser.getParticipantId(), sessionFromInvitingParticipants);
                    ImsConfSession.this.mParticipantStatus.put(participantUser.getParticipantId(), i);
                    Log.i(ImsConfSession.this.LOG_TAG, "[ANY_STATE] participant added - sessionId=" + participantUser.getSessionId() + " participantId=" + participantUser.getParticipantId());
                    if (ImsConfSession.this.mInvitingParticipants.size() == 0) {
                        Log.i(ImsConfSession.this.LOG_TAG, "[ANY_STATE] all participant add success!");
                        this.mThisConfSm.removeMessages(104);
                    }
                }
            }
            this.mConfUpdateCmd = ConfUpdateCmd.UNKNOWN;
        }

        private void onConferenceParticipantRemoved(Message message) {
            for (CallStateEvent.ParticipantUser participantUser : (List) message.obj) {
                ImsCallSession imsCallSession = (ImsCallSession) ImsConfSession.this.mParticipants.get(participantUser.getParticipantId());
                if (imsCallSession == null) {
                    Log.d(ImsConfSession.this.LOG_TAG, "[ANY_STATE] ON_PARTICIPANT_REMOVED: participant not exist. participantId=" + participantUser.getParticipantId());
                } else {
                    notifyParticipantRemoved(imsCallSession.getCallId());
                    this.mModule.onConferenceParticipantRemoved(ImsConfSession.this.getSessionId(), participantUser.getUri());
                    ImsConfSession.this.mParticipants.remove(participantUser.getParticipantId());
                    ImsConfSession.this.mParticipantStatus.delete(participantUser.getParticipantId());
                    Log.i(ImsConfSession.this.LOG_TAG, "[ANY_STATE] partcitipant removed - sessionId=" + participantUser.getSessionId() + " participantId=" + participantUser.getParticipantId());
                }
            }
            this.mConfUpdateCmd = ConfUpdateCmd.UNKNOWN;
            checkParticipantCount();
        }

        private void onConferenceParticipantUpdated(Message message) {
            updateConferenceParticipants((List) message.obj);
            checkParticipantCount();
            Log.i(ImsConfSession.this.LOG_TAG, "[ANY_STATE] participant list updated ");
        }

        private void handleConferenceFailResumeError(Message message) {
            try {
                ImsCallSession session = this.mModule.getSession(this.mPrevActiveSession);
                int code = ((SipError) message.obj).getCode();
                if (session != null) {
                    Log.e(ImsConfSession.this.LOG_TAG, "conf fail; resume session:: " + this.mPrevActiveSession);
                    session.resume();
                }
                if (((code == 487 || code == 606) && this.mMno.isChn()) || ((code == 403 || code == 480) && this.mMno == Mno.IDEA_INDIA)) {
                    this.mVolteSvcIntf.endCall(ImsConfSession.this.getSessionId(), ImsConfSession.this.mCallProfile.getCallType(), getSipReasonFromUserReason(7));
                    onConferenceEnded();
                    transitionTo(this.mEndingCall);
                    super.unhandledMessage(message);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        private void handleConferenceFailError(Message message, ConfUpdateCmd confUpdateCmd) {
            try {
                Log.i(ImsConfSession.this.LOG_TAG, "confUpdateCmd : " + confUpdateCmd);
                int code = ((SipError) message.obj).getCode();
                if (confUpdateCmd == ConfUpdateCmd.ADD_PARTICIPANT) {
                    if (code >= 5000) {
                        onConferenceEnded();
                        transitionTo(this.mEndingCall);
                        sendMessage(3);
                        return;
                    }
                    return;
                }
                if (code == 800 && this.mMno == Mno.KDDI) {
                    return;
                }
                if ((code == 500 && (this.mMno.isChn() || this.mMno == Mno.DLOG)) || (code == 5000 && this.mMno == Mno.TELIA_FINLAND)) {
                    ImsCallSession session = this.mModule.getSession(this.mPrevActiveSession);
                    if (session != null) {
                        Log.i(ImsConfSession.this.LOG_TAG, "conf fail; resume session:: " + this.mPrevActiveSession + ", errorCode: " + code);
                        session.resume();
                    }
                } else {
                    List<ImsCallSession> sessionByState = this.mModule.getSessionByState(ImsConfSession.this.mPhoneId, CallConstants.STATE.HeldCall);
                    Log.i(ImsConfSession.this.LOG_TAG, "conf fail; terminate callsession; session::");
                    for (int i = 0; i < sessionByState.size(); i++) {
                        sessionByState.get(i).terminate(7);
                    }
                }
                this.mVolteSvcIntf.endCall(ImsConfSession.this.getSessionId(), ImsConfSession.this.mCallProfile.getCallType(), getSipReasonFromUserReason(7));
                onConferenceEnded();
                transitionTo(this.mEndingCall);
                super.unhandledMessage(message);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        private void onConferenceFailError(Message message, ConfUpdateCmd confUpdateCmd) {
            this.mConfUpdateCmd = ConfUpdateCmd.UNKNOWN;
            int code = ((SipError) message.obj).getCode();
            Log.e(ImsConfSession.this.LOG_TAG, "[ANY_STATE] onConferenceFailError : " + code);
            if (ImsConfSession.this.mCallProfile.getCallType() == 5 || ImsConfSession.this.mCallProfile.getCallType() == 6) {
                return;
            }
            if (isErrorCodeToResumeSession(code)) {
                handleConferenceFailResumeError(message);
            } else {
                handleConferenceFailError(message, confUpdateCmd);
            }
            this.mPrevActiveSession = -1;
        }

        private void onConferenceEnded() {
            if (!this.mSentConfData) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(DiagnosisConstants.PSCI_KEY_PARTICIPANT_NUMBER, Integer.valueOf(ImsConfSession.this.mParticipants.size()));
                ImsLogAgentUtil.storeLogToAgent(ImsConfSession.this.mPhoneId, this.mContext, DiagnosisConstants.FEATURE_PSCI, contentValues);
                this.mSentConfData = true;
            }
            ImsConfSession.this.mParticipantStatus.clear();
            ImsConfSession.this.mParticipants.clear();
            this.mThisConfSm.removeMessages(104);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onConferenceEstablished() {
            ImsConfSession.this.notifyOnConferenceEstablished();
            transitionTo(this.mInCall);
        }

        void notifyParticipantAdded(int i) {
            int beginBroadcast = this.mListeners.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.mListeners.getBroadcastItem(i2).onParticipantAdded(i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mListeners.finishBroadcast();
        }

        void notifyParticipantRemoved(int i) {
            int beginBroadcast = this.mListeners.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.mListeners.getBroadcastItem(i2).onParticipantRemoved(i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mListeners.finishBroadcast();
        }

        void notifyParticipantsUpdated(String[] strArr, int[] iArr, int[] iArr2) {
            int beginBroadcast = this.mListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mListeners.getBroadcastItem(i).onParticipantUpdated(ImsConfSession.this.getSessionId(), strArr, iArr, iArr2);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mListeners.finishBroadcast();
        }

        void updateConferenceParticipants(List<CallStateEvent.ParticipantUser> list) {
            if (ImsConfSession.this.mCallProfile.getConferenceType() == 1) {
                updateNwayConferenceParticipants(list);
            } else if (ImsConfSession.this.mCallProfile.getConferenceType() == 2) {
                updateGroupConferenceParticipants(list);
            }
        }

        private void updateNwayConferenceParticipants(List<CallStateEvent.ParticipantUser> list) {
            for (CallStateEvent.ParticipantUser participantUser : list) {
                ImsUri parse = ImsUri.parse(participantUser.getUri());
                String msisdn = parse != null ? parse.getMsisdn() : participantUser.getUri();
                int participantId = participantUser.getParticipantId();
                int participantStatus = participantUser.getParticipantStatus();
                ImsCallSession imsCallSession = (ImsCallSession) ImsConfSession.this.mParticipants.get(participantId);
                Log.i(ImsConfSession.this.LOG_TAG, "updateConferenceParticipants: " + participantId + " status " + participantStatus(participantStatus));
                if (imsCallSession != null) {
                    if (participantStatus == 4) {
                        Log.i(ImsConfSession.this.LOG_TAG, "old participant in non-active state. remove it." + IMSLog.checker(msisdn));
                        notifyParticipantRemoved(imsCallSession.getCallId());
                        this.mModule.onConferenceParticipantRemoved(ImsConfSession.this.getSessionId(), participantUser.getUri());
                        ImsConfSession.this.mParticipants.remove(participantId);
                        ImsConfSession.this.mParticipantStatus.delete(participantId);
                    } else {
                        int i = ImsConfSession.this.mParticipantStatus.get(participantId);
                        ImsConfSession.this.mParticipantStatus.put(participantUser.getParticipantId(), participantStatus);
                        if (participantStatus == 6 && i != 6 && Mno.RJIL != this.mMno) {
                            notifyConfParticipantOnHeld(imsCallSession.getCallId(), false);
                        } else if (participantStatus == 2 && i != 2 && Mno.RJIL != this.mMno) {
                            notifyConfParticipanOnResumed(imsCallSession.getCallId(), false);
                        }
                    }
                }
                Log.i(ImsConfSession.this.LOG_TAG, "updateConferenceParticipants: new participant.");
            }
        }

        private void updateGroupConferenceParticipants(List<CallStateEvent.ParticipantUser> list) {
            int size = list.size();
            Log.i(ImsConfSession.this.LOG_TAG, "updateGroupConferenceParticipants participantSize=" + size);
            String[] strArr = new String[size];
            int[] iArr = new int[size];
            int[] iArr2 = new int[size];
            int[] iArr3 = new int[size];
            for (int i = 0; i < size; i++) {
                CallStateEvent.ParticipantUser participantUser = list.get(i);
                ImsUri parse = ImsUri.parse(participantUser.getUri());
                strArr[i] = parse != null ? parse.getMsisdn() : participantUser.getUri();
                iArr[i] = participantUser.getParticipantStatus();
                iArr3[i] = participantUser.getParticipantId();
                ImsConfSession.this.mParticipantStatus.put(iArr3[i], iArr[i]);
                Log.i(ImsConfSession.this.LOG_TAG, "participant=" + IMSLog.checker(strArr[i]) + ", participantId=" + iArr3[i] + ", status=" + participantStatus(iArr[i]));
                if (iArr[i] == 4) {
                    ImsConfSession.this.mGroupParticipants.remove(iArr3[i]);
                    iArr2[i] = this.mConfErrorCode;
                } else {
                    ImsConfSession.this.mGroupParticipants.put(iArr3[i], strArr[i]);
                    iArr2[i] = 0;
                }
            }
            this.mConfErrorCode = -1;
            notifyParticipantsUpdated(strArr, iArr, iArr2);
        }

        private void checkParticipantCount() {
            Log.i(ImsConfSession.this.LOG_TAG, "checkParticipantCount mParticipants=" + ImsConfSession.this.mParticipants.size() + ", mGroupParticipants=" + ImsConfSession.this.mGroupParticipants.size());
            if (ImsConfSession.this.mCallProfile.getConferenceType() == 1) {
                if (ImsConfSession.this.mParticipants.size() == 0 && ImsConfSession.this.mInvitingParticipants.size() == 0) {
                    this.mThisSm.sendMessage(1, 5);
                    return;
                }
                return;
            }
            if (ImsConfSession.this.mCallProfile.getConferenceType() == 2 && this.mMno == Mno.KDDI && ImsConfSession.this.mGroupParticipants.size() == 0) {
                this.mThisSm.sendMessage(1, 5);
            }
        }

        private void onConferenceCallTimeout() {
            Log.i(ImsConfSession.this.LOG_TAG, "onConferenceCallTimeout");
            try {
                Iterator it = ImsConfSession.this.mInvitingParticipants.iterator();
                while (it.hasNext()) {
                    ((ImsCallSession) it.next()).terminate(7);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            this.mThisSm.sendMessage(1, 5);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onReferStatusFailError() {
            ConfUpdateCmd confUpdateCmd = this.mConfUpdateCmd;
            if (confUpdateCmd == ConfUpdateCmd.ADD_PARTICIPANT) {
                Log.e(ImsConfSession.this.LOG_TAG, "On_Refer_Status ADD USER FAILED");
                notifyOnError(1105, this.errorMessage, 0);
                ImsConfSession.this.mInvitingParticipants.clear();
                return;
            }
            if (confUpdateCmd == ConfUpdateCmd.REMOVE_PARTICIPANT) {
                Log.e(ImsConfSession.this.LOG_TAG, "On_Refer_Status REMOVE USER FAILED");
                notifyOnError(1106, this.errorMessage, 0);
                return;
            }
            if (ImsConfSession.this.mIsExtendToConference) {
                Log.e(ImsConfSession.this.LOG_TAG, "On_Refer_Status extendToConference failed.");
                ImsConfSession.this.mIsExtendToConference = false;
                notifyOnError(1105, "Add user to session failure");
                return;
            }
            Log.i(ImsConfSession.this.LOG_TAG, "On_Refer_Status TerminateConference");
            this.mThisSm.sendMessage(1, 5);
            try {
                ImsCallSession session = this.mModule.getSession(this.mPrevActiveSession);
                if (session != null) {
                    Log.e(ImsConfSession.this.LOG_TAG, "Conf Fail; Resume Session:: " + this.mPrevActiveSession);
                    session.resume();
                }
                this.mPrevActiveSession = -1;
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public ImsConfSession(Context context, CallProfile callProfile, ImsRegistration imsRegistration, Looper looper, IVolteServiceModuleInternal iVolteServiceModuleInternal) {
        super(context, callProfile, imsRegistration, looper, iVolteServiceModuleInternal);
        this.LOG_TAG = "ImsConfSession";
        this.mInvitingParticipants = new ArrayList();
        this.mParticipants = new SparseArray<>();
        this.mGroupInvitingParticipants = new ArrayList();
        this.mGroupParticipants = new SparseArray<>();
        this.mParticipantStatus = new SparseIntArray();
        this.mPendingAddParticipantId = 0;
        this.mIsExtendToConference = false;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void init(IVolteServiceInterface iVolteServiceInterface, IRegistrationManager iRegistrationManager) {
        this.mVolteSvcIntf = iVolteServiceInterface;
        this.mRegistrationManager = iRegistrationManager;
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration == null) {
            this.mMno = SimUtil.getSimMno(this.mPhoneId);
        } else {
            this.mMno = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        }
        ConfCallStateMachine confCallStateMachine = new ConfCallStateMachine(this.mContext, this, this.mRegistration, this.mModule, this.mMno, this.mVolteSvcIntf, this.mListeners, this.mRegistrationManager, this.mMediaController, this.mLooper);
        this.smCallStateMachine = confCallStateMachine;
        confCallStateMachine.init();
        this.mImsCallDedicatedBearer = new ImsCallDedicatedBearer(this, this.mModule, this.mRegistration, this.mRegistrationManager, this.mMno, this.mAm, this.smCallStateMachine);
        this.mDiagnosisController = new DiagnosisController(this.smCallStateMachine);
        this.mImsCallSessionEventHandler = new ImsCallSessionEventHandler(this, this.mModule, this.mRegistration, this.mRegistrationManager, this.mMno, this.mAm, this.smCallStateMachine, this.mCallProfile, this.mVolteSvcIntf, this.mMediaController);
        this.mVolteSvcIntf.registerForCallStateEvent(this.mVolteStackEventHandler, 1, null);
        this.mVolteSvcIntf.registerForReferStatus(this.mVolteStackEventHandler, 5, this);
        this.mMediaController.registerForMediaEvent(this);
        Log.i(this.LOG_TAG, "start ConfCallStateMachine state");
        this.smCallStateMachine.start();
        setIsNrSaMode();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public int start(String str, CallProfile callProfile) throws RemoteException {
        if (callProfile == null) {
            callProfile = this.mCallProfile;
        }
        if (callProfile.getConferenceType() == 2) {
            startConference(str.split("\\$"), callProfile);
            return 0;
        }
        super.start(str, callProfile);
        return 0;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void startIncoming() {
        super.startIncoming();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void merge(int i, int i2) {
        this.smCallStateMachine.sendMessage(72, i, i2, null);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void startConference(String[] strArr, CallProfile callProfile) throws RemoteException {
        if (callProfile == null) {
            Log.e(this.LOG_TAG, "startConference(): profile is NULL");
            throw new RemoteException("Cannot make conference call: profile is null");
        }
        if (strArr == null) {
            Log.e(this.LOG_TAG, "start(): there is no participants");
            throw new RemoteException("Cannot conference : participants is null");
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(buildUri(str, null, callProfile.getCallType()).toString());
        }
        this.smCallStateMachine.sendMessage(11, arrayList);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void inviteParticipants(int i) {
        ImsCallSession sessionByCallId = this.mModule.getSessionByCallId(i);
        ImsProfile imsProfile = this.mRegistration.getImsProfile();
        if (imsProfile != null && imsProfile.getSupportUpgradeVideoConference() && this.mCallProfile != null && sessionByCallId != null && sessionByCallId.getCallProfile() != null && !ImsCallUtil.isVideoCall(this.mCallProfile.getCallType()) && ImsCallUtil.isVideoCall(sessionByCallId.getCallProfile().getCallType())) {
            Log.i(this.LOG_TAG, "Need to Upgrade to Conference Call for add Video Participants");
            startCamera(-1);
            CallProfile callProfile = new CallProfile();
            callProfile.setCallType(2);
            if (this.smCallStateMachine.modifyCallType(callProfile, true)) {
                Log.i(this.LOG_TAG, "Modify Request success pending add Participant");
                this.mPendingAddParticipantId = i;
                return;
            }
        }
        this.smCallStateMachine.sendMessage(53, i, 0, null);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void removeParticipants(int i) {
        this.smCallStateMachine.sendMessage(54, i, 0, null);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void inviteGroupParticipant(String str) {
        this.smCallStateMachine.sendMessage(53, str);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void removeGroupParticipant(String str) {
        this.smCallStateMachine.sendMessage(54, str);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void extendToConference(String[] strArr) throws RemoteException {
        if (this.mIsExtendToConference) {
            this.smCallStateMachine.sendMessage(53, strArr);
        } else {
            super.extendToConference(strArr);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void holdVideo() {
        Log.i(this.LOG_TAG, "Unsupported API - holdVideo()");
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void resumeVideo() {
        Log.i(this.LOG_TAG, "Unsupported API - resumeVideo()");
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void setTtyMode(int i) {
        Log.e(this.LOG_TAG, "Not supported operation");
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public boolean isQuantumEncryptionServiceAvailable() {
        Log.i(this.LOG_TAG, "isQuantumEncryptionServiceAvailable: not support for conf call");
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    protected void onImsCallEvent(CallStateEvent callStateEvent) {
        Log.i(this.LOG_TAG, "mCallProfile.isConferenceCall() " + this.mCallProfile.isConferenceCall());
        if (!this.mCallProfile.isConferenceCall()) {
            Mno mno = this.mMno;
            if (mno == Mno.SKT || mno == Mno.LGU) {
                if (!callStateEvent.isConference()) {
                    super.onImsCallEvent(callStateEvent);
                    return;
                } else {
                    Log.i(this.LOG_TAG, "Change to callprofile type");
                    this.mCallProfile.setConferenceCall(2);
                }
            } else {
                super.onImsCallEvent(callStateEvent);
                return;
            }
        }
        if (callStateEvent.getSessionID() != getSessionId()) {
            Log.i(this.LOG_TAG, "not interest other sessionId " + callStateEvent.getSessionID());
            return;
        }
        Log.i(this.LOG_TAG, "event state : " + callStateEvent.getState());
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[callStateEvent.getState().ordinal()];
        if (i == 1) {
            updateCallProfile(callStateEvent.getParams());
            this.mCallProfile.setCallType(callStateEvent.getCallType());
            this.mCallProfile.setDialingNumber(ImsCallUtil.getRemoteCallerId(callStateEvent.getPeerAddr(), this.mMno, Debug.isProductShip()));
            this.mCallProfile.setRemoteVideoCapa(callStateEvent.getRemoteVideoCapa());
            this.smCallStateMachine.sendMessage(41);
            if (this.mMno == Mno.SKT) {
                Log.i(this.LOG_TAG, "event callType : " + callStateEvent.getCallType());
                this.smCallStateMachine.sendMessage(91, callStateEvent.getCallType());
                Log.i(this.LOG_TAG, "setDisplaySurface for video conference call (" + getSessionId() + "): " + getDisplaySurface());
                this.mMediaController.setDisplaySurface(getSessionId(), getDisplaySurface());
                return;
            }
            return;
        }
        if (i == 2) {
            SipError errorCode = callStateEvent.getErrorCode();
            Log.e(this.LOG_TAG, "sendMessage CallStateMachine.ON_ENDED");
            if (errorCode == null) {
                this.smCallStateMachine.sendMessage(3);
                return;
            } else {
                this.smCallStateMachine.sendMessage(3, errorCode.getCode(), -1, errorCode.getReason());
                return;
            }
        }
        if (i == 3) {
            this.mCallProfile.setCallType(callStateEvent.getCallType());
            this.smCallStateMachine.sendMessage(101, callStateEvent.getUpdatedParticipantsList());
            return;
        }
        if (i == 4) {
            this.mCallProfile.setCallType(callStateEvent.getCallType());
            this.smCallStateMachine.sendMessage(102, callStateEvent.getUpdatedParticipantsList());
        } else {
            if (i == 5) {
                this.mCallProfile.setCallType(callStateEvent.getCallType());
                Mno mno2 = this.mMno;
                if (mno2 == Mno.SKT || mno2 == Mno.LGU) {
                    this.smCallStateMachine.sendMessageDelayed(103, callStateEvent.getUpdatedParticipantsList(), 100L);
                    return;
                } else {
                    this.smCallStateMachine.sendMessage(103, callStateEvent.getUpdatedParticipantsList());
                    return;
                }
            }
            super.onImsCallEvent(callStateEvent);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.volte2.ImsConfSession$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$volte2$ImsConfSession$ConfUpdateCmd;

        static {
            int[] iArr = new int[CallStateEvent.CALL_STATE.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE = iArr;
            try {
                iArr[CallStateEvent.CALL_STATE.ESTABLISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.ENDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.CONFERENCE_ADDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.CONFERENCE_REMOVED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.CONFERENCE_PARTICIPANTS_UPDATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[ConfUpdateCmd.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$volte2$ImsConfSession$ConfUpdateCmd = iArr2;
            try {
                iArr2[ConfUpdateCmd.ADD_PARTICIPANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$volte2$ImsConfSession$ConfUpdateCmd[ConfUpdateCmd.REMOVE_PARTICIPANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void handleRegistrationDone(ImsRegistration imsRegistration) {
        Log.i(this.LOG_TAG, "handleRegistrationDone");
        this.mRegistration = imsRegistration;
        this.smCallStateMachine.onRegistrationDone(imsRegistration);
        this.smCallStateMachine.sendMessage(11);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void handleRegistrationFailed() {
        Log.i(this.LOG_TAG, "handleRegistrationFailed");
        this.mRegistration = null;
        this.smCallStateMachine.sendMessage(211);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void setSessionId(int i) {
        this.LOG_TAG = IMSLog.appendSessionIdToLogTag(this.LOG_TAG, i);
        super.setSessionId(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOnConferenceEstablished() {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mListeners.getBroadcastItem(i).onConferenceEstablished();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyOnErrorBeforeEndParticipant() {
        if (this.mInvitingParticipants.size() != 0) {
            this.smCallStateMachine.notifyOnError(1104, "Conf call setup fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getParticipantId(int i) {
        for (int i2 = 0; i2 < this.mParticipants.size(); i2++) {
            if (this.mParticipants.valueAt(i2).getCallId() == i) {
                return this.mParticipants.keyAt(i2);
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImsCallSession getSessionFromInvitingParticipants(int i) {
        for (ImsCallSession imsCallSession : this.mInvitingParticipants) {
            if (imsCallSession.getSessionId() == i) {
                return imsCallSession;
            }
        }
        return null;
    }
}
