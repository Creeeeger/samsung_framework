package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.os.RemoteException;
import android.util.Log;
import com.gsma.services.rcs.RcsService;
import com.gsma.services.rcs.sharing.video.IVideoPlayer;
import com.gsma.services.rcs.sharing.video.IVideoSharing;
import com.gsma.services.rcs.sharing.video.VideoCodec;
import com.gsma.services.rcs.sharing.video.VideoDescriptor;
import com.gsma.services.rcs.sharing.video.VideoSharing;
import com.sec.internal.ims.servicemodules.csh.VideoShare;
import com.sec.internal.ims.servicemodules.csh.event.CshInfo;
import com.sec.internal.interfaces.ims.servicemodules.csh.IVideoShareModule;

/* loaded from: classes.dex */
public class VideoSharingImpl extends IVideoSharing.Stub {
    public CshInfo cshInfo;
    private IVideoPlayer player;
    private VideoShare vshSession;
    private final String LOG_TAG = getClass().getName();
    private VideoDescriptor descriptor = null;
    private int orientation = 0;
    private long durationTime = 0;
    private int reasonCode = 0;

    public long getTimeStamp() throws RemoteException {
        return 0L;
    }

    public VideoSharingImpl(VideoShare videoShare, IVideoPlayer iVideoPlayer) {
        this.cshInfo = null;
        this.player = null;
        this.vshSession = videoShare;
        this.cshInfo = videoShare.getContent();
        this.player = iVideoPlayer;
    }

    public String getSharingId() throws ServerApiException {
        return String.valueOf(this.cshInfo.shareId);
    }

    public String getRemoteContact() throws ServerApiException {
        return this.cshInfo.shareContactUri.toString();
    }

    public VideoSharing.State getState() throws ServerApiException {
        VideoSharing.State state = VideoSharing.State.INVITED;
        CshInfo cshInfo = this.cshInfo;
        switch (cshInfo.shareState) {
            case 1:
                return VideoSharing.State.INITIATING;
            case 2:
            case 10:
            case 11:
            case 17:
            case 18:
                return cshInfo.shareDirection == 0 ? VideoSharing.State.ACCEPTING : state;
            case 3:
                VideoSharing.State state2 = VideoSharing.State.STARTED;
                Log.d(this.LOG_TAG, "getstate satrted = " + state2);
                return state2;
            case 4:
            case 13:
            case 14:
            case 15:
            case 16:
                return VideoSharing.State.REJECTED;
            case 5:
            case 6:
            case 7:
            case 9:
            case 12:
                return VideoSharing.State.ABORTED;
            case 8:
            default:
                return state;
        }
    }

    public RcsService.Direction getDirection() throws ServerApiException {
        RcsService.Direction direction = RcsService.Direction.IRRELEVANT;
        if (this.cshInfo.shareDirection == 0) {
            return RcsService.Direction.INCOMING;
        }
        return RcsService.Direction.OUTGOING;
    }

    public String getVideoEncoding() throws RemoteException {
        IVideoPlayer iVideoPlayer = this.player;
        VideoCodec codec = iVideoPlayer != null ? iVideoPlayer.getCodec() : null;
        if (codec != null) {
            return codec.getEncoding();
        }
        return null;
    }

    public void acceptInvitation(IVideoPlayer iVideoPlayer) throws RemoteException {
        Log.i(this.LOG_TAG, "Accept session invitation");
        this.player = iVideoPlayer;
        try {
            this.vshSession.acceptIncomingSession(Integer.valueOf(iVideoPlayer.getLocalRtpPort()).intValue());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void rejectInvitation() throws ServerApiException {
        Log.i(this.LOG_TAG, "Reject session invitation");
        this.vshSession.cancelByUserSession();
        long j = this.cshInfo.shareId;
        if (0 != j) {
            VideoSharingServiceImpl.removeVideoSharingSession(String.valueOf(j));
        }
    }

    public void abortSharing() throws ServerApiException {
        Log.i(this.LOG_TAG, "Cancel session");
        this.vshSession.cancelByUserSession();
        long j = this.cshInfo.shareId;
        if (0 != j) {
            VideoSharingServiceImpl.removeVideoSharingSession(String.valueOf(j));
        }
    }

    public VideoDescriptor getVideoDescriptor() throws ServerApiException {
        return this.descriptor;
    }

    public void setOrientation(int i) throws RemoteException {
        IVideoShareModule module = VideoSharingServiceImpl.getModule();
        Log.d(this.LOG_TAG, "receive side || setVshPhoneOrientation vshModule = " + module + "; orientation = " + i);
        if (module != null) {
            this.orientation = i;
            module.changeSurfaceOrientation(this.cshInfo.shareId, i);
        }
    }

    public int getOrientation() {
        return this.orientation;
    }

    public long getDuration() throws RemoteException {
        return this.durationTime;
    }

    public VideoSharing.ReasonCode getReasonCode() throws RemoteException {
        return VideoSharing.ReasonCode.valueOf(this.reasonCode);
    }
}
