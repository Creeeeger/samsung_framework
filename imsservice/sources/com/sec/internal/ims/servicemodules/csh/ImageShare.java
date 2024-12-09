package com.sec.internal.ims.servicemodules.csh;

import android.os.Message;
import android.util.Log;
import com.gsma.services.rcs.sharing.image.ImageSharing;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.AtomicGenerator;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.ims.servicemodules.csh.event.CshCancelSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.CshErrorReason;
import com.sec.internal.ims.servicemodules.csh.event.CshInfo;
import com.sec.internal.ims.servicemodules.csh.event.CshRejectSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.CshSessionResult;
import com.sec.internal.ims.servicemodules.csh.event.IContentShare;
import com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback;
import com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface;
import com.sec.internal.ims.servicemodules.csh.event.IshAcceptSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.IshFile;
import com.sec.internal.ims.servicemodules.csh.event.IshStartSessionParams;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class ImageShare extends StateMachine implements IContentShare {
    private static final String CONTENT_TYPE = "placeholder";
    private static final int EVENT_ACCEPT_INCOMING_SESSION = 5;
    private static final int EVENT_ACCEPT_SESSION_DONE = 6;
    private static final int EVENT_CANCEL_BY_LOCAL_SESSION = 7;
    private static final int EVENT_INCOMING_SESSION_DONE = 4;
    private static final int EVENT_INCOMING_SESSION_PRE_REJECT = 3;
    private static final int EVENT_SESSION_ESTABLISHED = 8;
    private static final int EVENT_SESSION_FAILED = 9;
    private static final int EVENT_START_OUTGOING_SESSION = 1;
    private static final int EVENT_START_SESSION_DONE = 2;
    private static final int EVENT_TRANSFER_COMPLETED = 10;
    protected static final String LOG_TAG = "ImageShare";
    protected final CshInfo mContent;
    private State mDefaultState;
    private State mFailedState;
    private State mFinishedState;
    private IIshServiceInterface mImsService;
    private State mInProgressState;
    private State mIncomingPendingState;
    private State mInitialState;
    private final ImageShareModule mIshModule;
    private State mOutgoingPendingState;
    private State mPreRejectedState;
    protected int mSessionId;
    private State mTransferCompleteState;

    public ImageShare(IIshServiceInterface iIshServiceInterface, ImageShareModule imageShareModule, CshInfo cshInfo) {
        super("Ish Session " + cshInfo.dataPath, imageShareModule);
        this.mDefaultState = new DefaultState();
        this.mInitialState = new InitialState();
        this.mOutgoingPendingState = new OutgoingPendingState();
        this.mIncomingPendingState = new IncomingPendingState();
        this.mInProgressState = new InProgressState();
        this.mTransferCompleteState = new TransferCompleteState();
        this.mFinishedState = new FinishedState();
        this.mPreRejectedState = new PreRejectedState();
        this.mFailedState = new FailedState();
        this.mIshModule = imageShareModule;
        cshInfo.shareId = AtomicGenerator.generateUniqueLong();
        this.mContent = cshInfo;
        this.mImsService = iIshServiceInterface;
        init();
    }

    @Override // com.sec.internal.ims.servicemodules.csh.event.IContentShare
    public int getSessionId() {
        return this.mSessionId;
    }

    public void setSessionId(int i) {
        this.mSessionId = i;
    }

    @Override // com.sec.internal.ims.servicemodules.csh.event.IContentShare
    public CshInfo getContent() {
        return this.mContent;
    }

    public long getFileSize() {
        return this.mContent.dataSize;
    }

    public void startQutgoingSession() {
        sendMessage(obtainMessage(1, 0));
    }

    public void incomingSessionDone() {
        sendMessage(obtainMessage(4, 0));
    }

    public void sessioinEstablished() {
        sendMessage(obtainMessage(8, 0));
    }

    public void sessionFailed() {
        sendMessage(obtainMessage(9, 0));
    }

    public void transferCompleted() {
        sendMessage(obtainMessage(10, 0));
    }

    public void acceptIncomingSession() {
        sendMessage(obtainMessage(5, 0));
    }

    public void cancelByLocalSession() {
        sendMessage(obtainMessage(7, 0));
    }

    public void incomingSessionPreReject() {
        sendMessage(obtainMessage(3, 0));
    }

    private void init() {
        addState(this.mDefaultState);
        addState(this.mInitialState, this.mDefaultState);
        addState(this.mOutgoingPendingState, this.mDefaultState);
        addState(this.mIncomingPendingState, this.mDefaultState);
        addState(this.mInProgressState, this.mDefaultState);
        addState(this.mTransferCompleteState, this.mDefaultState);
        addState(this.mFinishedState, this.mDefaultState);
        addState(this.mPreRejectedState, this.mDefaultState);
        addState(this.mFailedState, this.mDefaultState);
        setInitialState(this.mInitialState);
        start();
    }

    private static class DefaultState extends State {
        private DefaultState() {
        }
    }

    private class InitialState extends State {
        private InitialState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ImageShare.this.mContent.shareState = 1;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            String str = ImageShare.LOG_TAG;
            Log.i(str, "InitialState Event: " + message.what);
            int i = message.what;
            if (i != 1) {
                if (i == 2) {
                    CshSessionResult cshSessionResult = (CshSessionResult) ((AsyncResult) message.obj).result;
                    ImageShare imageShare = ImageShare.this;
                    int i2 = cshSessionResult.mSessionNumber;
                    imageShare.mSessionId = i2;
                    if (i2 < 0 || cshSessionResult.mReason != CshErrorReason.SUCCESS) {
                        imageShare.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.FAILED_INITIATION.toString()).intValue();
                        ImageShare imageShare2 = ImageShare.this;
                        imageShare2.transitionTo(imageShare2.mFailedState);
                        return true;
                    }
                    imageShare.transitionTo(imageShare.mOutgoingPendingState);
                    return true;
                }
                if (i == 3) {
                    ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_LOW_SPACE.toString()).intValue();
                    ImageShare imageShare3 = ImageShare.this;
                    imageShare3.transitionTo(imageShare3.mPreRejectedState);
                    return true;
                }
                if (i != 4) {
                    return false;
                }
                ImageShareModule imageShareModule = ImageShare.this.mIshModule;
                CshInfo cshInfo = ImageShare.this.mContent;
                imageShareModule.notityIncommingSession(cshInfo.shareId, cshInfo.shareContactUri, cshInfo.dataPath, cshInfo.dataSize);
                ImageShare imageShare4 = ImageShare.this;
                imageShare4.transitionTo(imageShare4.mIncomingPendingState);
                return true;
            }
            try {
                File file = new File(ImageShare.this.mContent.dataPath);
                long length = file.length();
                if (!file.isFile() || length == 0) {
                    Log.w(str, "filePath must point to a valid file! or fileSize never be to the 0!");
                    throw new IOException();
                }
                ImageShare imageShare5 = ImageShare.this;
                imageShare5.mContent.dataSize = length;
                long maxSize = imageShare5.mIshModule.getMaxSize();
                if (maxSize != 0 && length >= maxSize) {
                    Log.w(str, "File size(" + length + ") is larger than Max size(" + maxSize + ")");
                    ImageShareModule imageShareModule2 = ImageShare.this.mIshModule;
                    CshInfo cshInfo2 = ImageShare.this.mContent;
                    imageShareModule2.notifyLimitExceeded(cshInfo2.shareId, cshInfo2.shareContactUri);
                    ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_MAX_SIZE.toString()).intValue();
                    ImageShare imageShare6 = ImageShare.this;
                    imageShare6.transitionTo(imageShare6.mFailedState);
                    return true;
                }
                Message obtainMessage = ImageShare.this.obtainMessage(2);
                String imsUri = ImageShare.this.mContent.shareContactUri.toString();
                CshInfo cshInfo3 = ImageShare.this.mContent;
                ImageShare.this.mImsService.startIshSession(new IshStartSessionParams(imsUri, new IshFile(cshInfo3.dataPath, cshInfo3.dataSize, ImageShare.CONTENT_TYPE), obtainMessage));
                return true;
            } catch (IOException unused) {
                ImageShare.this.mIshModule.notifyInvalidDataPath(ImageShare.this.mContent.dataPath);
                ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.FAILED_INITIATION.toString()).intValue();
                ImageShare imageShare7 = ImageShare.this;
                imageShare7.transitionTo(imageShare7.mFailedState);
                return true;
            }
        }
    }

    private class OutgoingPendingState extends State {
        private OutgoingPendingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ImageShare imageShare = ImageShare.this;
            imageShare.mContent.shareState = 2;
            imageShare.mIshModule.putSession(ImageShare.this);
            ImageShare.this.mIshModule.notifyContentChange(ImageShare.this);
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            Log.i(ImageShare.LOG_TAG, "OutgoingPendingState Event: " + message.what);
            int i = message.what;
            if (i == 7) {
                ImageShare.this.mImsService.cancelIshSession(new CshCancelSessionParams(ImageShare.this.mSessionId, new ICshSuccessCallback() { // from class: com.sec.internal.ims.servicemodules.csh.ImageShare.OutgoingPendingState.1
                    @Override // com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback
                    public void onSuccess() {
                        Log.d(ImageShare.LOG_TAG, "cancelIshSession success");
                        ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_BY_USER.toString()).intValue();
                        ImageShare.this.sessionFailed();
                    }

                    @Override // com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback
                    public void onFailure() {
                        Log.d(ImageShare.LOG_TAG, "cancelIshSession Failure");
                        ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_BY_USER.toString()).intValue();
                        ImageShare.this.sessionFailed();
                    }
                }));
            } else if (i == 8) {
                ImageShare imageShare = ImageShare.this;
                imageShare.transitionTo(imageShare.mInProgressState);
            } else {
                if (i != 9) {
                    return false;
                }
                ImageShare imageShare2 = ImageShare.this;
                imageShare2.transitionTo(imageShare2.mFailedState);
            }
            return true;
        }
    }

    private class IncomingPendingState extends State {
        boolean acceptByUser;

        private IncomingPendingState() {
            this.acceptByUser = false;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ImageShare imageShare = ImageShare.this;
            imageShare.mContent.shareState = 2;
            imageShare.mIshModule.putSession(ImageShare.this);
            ImageShare.this.mIshModule.notifyContentChange(ImageShare.this);
            this.acceptByUser = false;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            String str = ImageShare.LOG_TAG;
            Log.i(str, "IncomingPendingState Event: " + message.what);
            switch (message.what) {
                case 5:
                    long maxSize = ImageShare.this.mIshModule.getMaxSize();
                    if (maxSize == 0 || ImageShare.this.mContent.dataSize < maxSize) {
                        Message obtainMessage = ImageShare.this.obtainMessage(6);
                        ImageShare imageShare = ImageShare.this;
                        ImageShare.this.mImsService.acceptIshSession(new IshAcceptSessionParams(imageShare.mSessionId, imageShare.mContent.dataPath, obtainMessage));
                        this.acceptByUser = true;
                        break;
                    } else {
                        Log.w(str, "File size(" + ImageShare.this.mContent.dataSize + ") is larger than Max size(" + maxSize + ")");
                        ImageShareModule imageShareModule = ImageShare.this.mIshModule;
                        CshInfo cshInfo = ImageShare.this.mContent;
                        imageShareModule.notifyLimitExceeded(cshInfo.shareId, cshInfo.shareContactUri);
                        ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_MAX_SIZE.toString()).intValue();
                        ImageShare imageShare2 = ImageShare.this;
                        imageShare2.transitionTo(imageShare2.mFailedState);
                        break;
                    }
                    break;
                case 6:
                    CshSessionResult cshSessionResult = (CshSessionResult) ((AsyncResult) message.obj).result;
                    if (cshSessionResult.mSessionNumber < 0 || cshSessionResult.mReason != CshErrorReason.SUCCESS) {
                        ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.FAILED_SHARING.toString()).intValue();
                        ImageShare imageShare3 = ImageShare.this;
                        imageShare3.transitionTo(imageShare3.mFailedState);
                        break;
                    } else {
                        ImageShare imageShare4 = ImageShare.this;
                        imageShare4.transitionTo(imageShare4.mInProgressState);
                        break;
                    }
                    break;
                case 7:
                    if (!this.acceptByUser) {
                        ImageShare.this.doRejectIncomingSession();
                        ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_BY_USER.toString()).intValue();
                        ImageShare imageShare5 = ImageShare.this;
                        imageShare5.transitionTo(imageShare5.mFailedState);
                        break;
                    } else {
                        ImageShare.this.mImsService.stopIshSession(new CshCancelSessionParams(ImageShare.this.mSessionId, new ICshSuccessCallback() { // from class: com.sec.internal.ims.servicemodules.csh.ImageShare.IncomingPendingState.1
                            @Override // com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback
                            public void onSuccess() {
                                Log.d(ImageShare.LOG_TAG, "stopIshSession success");
                                ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_BY_USER.toString()).intValue();
                                ImageShare.this.sessionFailed();
                            }

                            @Override // com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback
                            public void onFailure() {
                                Log.d(ImageShare.LOG_TAG, "stopIshSession Failure");
                                ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_BY_USER.toString()).intValue();
                                ImageShare.this.sessionFailed();
                            }
                        }));
                        break;
                    }
                case 8:
                    ImageShare imageShare6 = ImageShare.this;
                    imageShare6.transitionTo(imageShare6.mInProgressState);
                    break;
                case 9:
                    ImageShare imageShare7 = ImageShare.this;
                    imageShare7.transitionTo(imageShare7.mFailedState);
                    break;
            }
            return true;
        }
    }

    private class InProgressState extends State {
        private InProgressState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ImageShare imageShare = ImageShare.this;
            imageShare.mContent.shareState = 3;
            imageShare.mIshModule.notifyContentChange(ImageShare.this);
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            Log.i(ImageShare.LOG_TAG, "InProgressState Event: " + message.what);
            int i = message.what;
            if (i == 7) {
                ImageShare.this.mImsService.stopIshSession(new CshCancelSessionParams(ImageShare.this.mSessionId, new ICshSuccessCallback() { // from class: com.sec.internal.ims.servicemodules.csh.ImageShare.InProgressState.1
                    @Override // com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback
                    public void onSuccess() {
                        Log.d(ImageShare.LOG_TAG, "stopIshSession success");
                        ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_BY_USER.toString()).intValue();
                        ImageShare.this.sessionFailed();
                    }

                    @Override // com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback
                    public void onFailure() {
                        Log.d(ImageShare.LOG_TAG, "stopIshSession Failure");
                        ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_BY_USER.toString()).intValue();
                        ImageShare.this.mIshModule.ishCancelFailed(ImageShare.this.mSessionId);
                    }
                }));
            } else if (i == 9) {
                ImageShare imageShare = ImageShare.this;
                imageShare.transitionTo(imageShare.mFailedState);
            } else {
                if (i != 10) {
                    return false;
                }
                ImageShare imageShare2 = ImageShare.this;
                imageShare2.transitionTo(imageShare2.mTransferCompleteState);
            }
            return true;
        }
    }

    private class TransferCompleteState extends State {
        private TransferCompleteState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ImageShare imageShare = ImageShare.this;
            imageShare.mContent.shareState = 13;
            imageShare.mIshModule.notifyContentChange(ImageShare.this);
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            Log.i(ImageShare.LOG_TAG, "TransferCompleteState Event: " + message.what);
            if (message.what != 7) {
                return false;
            }
            ImageShare imageShare = ImageShare.this;
            imageShare.transitionTo(imageShare.mFinishedState);
            return true;
        }
    }

    private class FinishedState extends State {
        private FinishedState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ImageShare imageShare = ImageShare.this;
            imageShare.mContent.shareState = 13;
            imageShare.mIshModule.notifyContentChange(ImageShare.this);
            ImageShare.this.mIshModule.deleteSession(ImageShare.this.mSessionId);
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            return false;
        }
    }

    private class PreRejectedState extends State {
        private PreRejectedState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ImageShare.this.mIshModule.cancelShare(ImageShare.this.mContent.shareId);
            ImageShare.this.mContent.shareState = 6;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            Log.i(ImageShare.LOG_TAG, "PreRejectedState Event: " + message.what);
            if (message.what != 7) {
                return false;
            }
            ImageShare.this.doRejectIncomingSession();
            ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_BY_USER.toString()).intValue();
            ImageShare imageShare = ImageShare.this;
            imageShare.transitionTo(imageShare.mFailedState);
            return true;
        }
    }

    private class FailedState extends State {
        private FailedState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ImageShare imageShare = ImageShare.this;
            imageShare.mContent.shareState = 12;
            imageShare.mIshModule.notifyContentChange(ImageShare.this);
            ImageShare.this.mIshModule.deleteSession(ImageShare.this.mSessionId);
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doRejectIncomingSession() {
        this.mImsService.rejectIshSession(new CshRejectSessionParams(this.mSessionId, new ICshSuccessCallback() { // from class: com.sec.internal.ims.servicemodules.csh.ImageShare.1
            @Override // com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback
            public void onSuccess() {
            }

            @Override // com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback
            public void onFailure() {
                Log.d(ImageShare.LOG_TAG, "ICshSuccessCallback::onFailure Enter");
                ImageShare.this.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.REJECTED_BY_USER.toString()).intValue();
                ImageShare.this.sessionFailed();
            }
        }));
    }
}
