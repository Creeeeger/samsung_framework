package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.os.RemoteException;
import com.gsma.services.rcs.contact.ContactId;
import com.gsma.services.rcs.sharing.image.IImageSharing;
import com.gsma.services.rcs.sharing.image.ImageSharing;
import com.sec.internal.ims.servicemodules.csh.ImageShare;
import com.sec.internal.ims.servicemodules.csh.event.CshInfo;
import com.sec.internal.ims.util.PhoneUtils;

/* loaded from: classes.dex */
public class ImageSharingImpl extends IImageSharing.Stub {
    CshInfo cshInfo;
    ImageShare ishSession;

    public long getTimeStamp() throws RemoteException {
        return 0L;
    }

    public ImageSharingImpl(ImageShare imageShare) {
        this.cshInfo = null;
        this.ishSession = imageShare;
        this.cshInfo = imageShare.getContent();
    }

    public ImageSharing.ReasonCode getReasonCode() {
        for (ImageSharing.ReasonCode reasonCode : ImageSharing.ReasonCode.values()) {
            if (reasonCode.toString().equals(String.valueOf(this.cshInfo.reasonCode))) {
                return reasonCode;
            }
        }
        return ImageSharing.ReasonCode.UNSPECIFIED;
    }

    public String getSharingId() {
        return String.valueOf(this.cshInfo.shareId);
    }

    public ContactId getRemoteContact() {
        return new ContactId(PhoneUtils.extractNumberFromUri(this.cshInfo.shareContactUri.toString()));
    }

    public String getFile() throws RemoteException {
        return "file://" + this.cshInfo.dataPath;
    }

    public String getFileName() {
        String str = this.cshInfo.dataPath;
        return str.substring(str.lastIndexOf(47) + 1);
    }

    public long getFileSize() {
        return this.cshInfo.dataSize;
    }

    public String getFileType() {
        return this.cshInfo.mimeType;
    }

    public ImageSharing.State getState() {
        ImageSharing.State state = ImageSharing.State.INITIATING;
        CshInfo cshInfo = this.cshInfo;
        switch (cshInfo.shareState) {
            case 1:
                return state;
            case 2:
            case 18:
                int i = cshInfo.shareDirection;
                if (i == 0) {
                    return ImageSharing.State.RINGING;
                }
                return 1 == i ? ImageSharing.State.INVITED : state;
            case 3:
            case 11:
                return ImageSharing.State.STARTED;
            case 4:
            case 13:
                return ImageSharing.State.TRANSFERRED;
            case 5:
            case 7:
            case 12:
                return ImageSharing.State.FAILED;
            case 6:
                return ImageSharing.State.ABORTED;
            case 8:
            case 10:
            case 14:
            case 15:
            case 16:
            case 17:
            default:
                return ImageSharing.State.INVITED;
            case 9:
                return ImageSharing.State.REJECTED;
        }
    }

    public int getDirection() {
        return this.cshInfo.shareDirection;
    }

    public void acceptInvitation() {
        ImageShare imageShare = this.ishSession;
        if (imageShare != null) {
            imageShare.acceptIncomingSession();
        }
    }

    public void rejectInvitation() {
        ImageShare imageShare = this.ishSession;
        if (imageShare != null) {
            imageShare.cancelByLocalSession();
        }
    }

    public void abortSharing() {
        ImageShare imageShare = this.ishSession;
        if (imageShare != null) {
            imageShare.cancelByLocalSession();
        }
    }
}
