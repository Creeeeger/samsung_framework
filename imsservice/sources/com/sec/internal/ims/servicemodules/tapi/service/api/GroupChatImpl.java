package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.location.Location;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.gsma.services.rcs.Geoloc;
import com.gsma.services.rcs.chat.GroupChat;
import com.gsma.services.rcs.chat.IChatMessage;
import com.gsma.services.rcs.chat.IGroupChat;
import com.gsma.services.rcs.contact.ContactId;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImCache;
import com.sec.internal.ims.servicemodules.im.ImMessage;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class GroupChatImpl extends IGroupChat.Stub {
    private static final String LOG_TAG = GroupChatImpl.class.getSimpleName();
    private IImModule mImModule;
    private ImSession mSession;
    private boolean mSessionLeaved = false;
    private GroupChat.State mGroupChatState = GroupChat.State.STARTED;
    private GroupChat.ReasonCode mReasonCode = GroupChat.ReasonCode.UNSPECIFIED;

    public long getTimestamp() {
        return 0L;
    }

    public void openChat() throws RemoteException {
    }

    public GroupChatImpl(ImSession imSession) {
        this.mSession = null;
        this.mImModule = null;
        this.mSession = imSession;
        this.mImModule = ImsRegistry.getServiceModuleManager().getImModule();
    }

    public GroupChatImpl(String str) {
        this.mSession = null;
        this.mImModule = null;
        this.mSession = ImCache.getInstance().getImSession(str);
        this.mImModule = ImsRegistry.getServiceModuleManager().getImModule();
    }

    /* renamed from: com.sec.internal.ims.servicemodules.tapi.service.api.GroupChatImpl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status;

        static {
            int[] iArr = new int[ImParticipant.Status.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status = iArr;
            try {
                iArr[ImParticipant.Status.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.INVITED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.ACCEPTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.DECLINED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.GONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.TIMEOUT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.TO_INVITE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public GroupChat.ParticipantStatus convertStatus(ImParticipant.Status status) {
        GroupChat.ParticipantStatus participantStatus = GroupChat.ParticipantStatus.DISCONNECTED;
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[status.ordinal()]) {
            case 1:
                return GroupChat.ParticipantStatus.CONNECTED;
            case 2:
                return GroupChat.ParticipantStatus.INVITED;
            case 3:
            case 4:
                return GroupChat.ParticipantStatus.CONNECTED;
            case 5:
                return GroupChat.ParticipantStatus.DECLINED;
            case 6:
                return GroupChat.ParticipantStatus.DEPARTED;
            case 7:
                return GroupChat.ParticipantStatus.TIMEOUT;
            case 8:
                return GroupChat.ParticipantStatus.INVITING;
            default:
                return GroupChat.ParticipantStatus.DISCONNECTED;
        }
    }

    public String getChatId() {
        return this.mSession.getChatId();
    }

    public String getSubject() {
        return this.mSession.getSubject();
    }

    public Map getParticipants() {
        HashMap hashMap = new HashMap();
        for (ImParticipant imParticipant : this.mSession.getParticipants()) {
            hashMap.put(imParticipant.getUri().toString(), Integer.valueOf(convertStatus(imParticipant.getStatus()).ordinal()));
        }
        return hashMap;
    }

    public int getDirection() {
        return this.mSession.getDirection().getId();
    }

    public GroupChat.State getState() {
        return this.mGroupChatState;
    }

    public GroupChat.ReasonCode getReasonCode() {
        return this.mReasonCode;
    }

    public boolean canSendMessage() throws RemoteException {
        return !this.mSessionLeaved;
    }

    public IChatMessage sendMessage(String str) {
        Log.d(LOG_TAG, "start : sendMessage()");
        try {
            ImMessage imMessage = this.mImModule.sendMessage(this.mSession.getChatId(), str, EnumSet.of(NotificationStatus.DELIVERED, NotificationStatus.DISPLAYED), MIMEContentType.PLAIN_TEXT, System.currentTimeMillis() + "", -1, false, false, false, null, false, null, null, null, null).get();
            if (imMessage == null) {
                return null;
            }
            return new ChatMessageImpl(String.valueOf(imMessage.getId()));
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public IChatMessage sendGeoloc(Geoloc geoloc) throws RemoteException {
        Location location = new Location("gps");
        location.setLatitude(geoloc.getLatitude());
        location.setLongitude(geoloc.getLongitude());
        location.setAccuracy(geoloc.getAccuracy());
        try {
            Future<ImMessage> shareLocationInChat = ImsRegistry.getServiceModuleManager().getGlsModule().shareLocationInChat(this.mSession.getChatId(), EnumSet.of(NotificationStatus.DELIVERED, NotificationStatus.DISPLAYED), location, geoloc.getLabel(), null, null, null, true, null);
            ImMessage imMessage = shareLocationInChat != null ? shareLocationInChat.get() : null;
            if (imMessage == null) {
                throw new ServerApiException("Can not get imMessage with messageId ");
            }
            return new ChatMessageImpl(String.valueOf(imMessage.getId()));
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void sendIsComposingEvent(boolean z) {
        Log.d(LOG_TAG, "start : sendIsComposingEvent()");
        this.mSession.sendComposing(z, 1);
    }

    public boolean canAddParticipants() throws RemoteException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Capabilities ownCapabilities = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule().getOwnCapabilities();
            boolean z = false;
            if (ownCapabilities == null) {
                return false;
            }
            if (!this.mSessionLeaved) {
                if (ownCapabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT)) {
                    z = true;
                }
            }
            return z;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean canAddListParticipants(List<ContactId> list) throws RemoteException {
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        if (this.mSessionLeaved) {
            return false;
        }
        ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
        Iterator<ContactId> it = list.iterator();
        while (it.hasNext()) {
            Capabilities capabilities = capabilityDiscoveryModule.getCapabilities(it.next().toString(), Capabilities.FEATURE_SF_GROUP_CHAT, activeDataPhoneId);
            if (capabilities == null || !capabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT)) {
                return false;
            }
        }
        return true;
    }

    public void addParticipants(List<ContactId> list) {
        Log.d(LOG_TAG, "start : addParticipants()");
        ArrayList arrayList = new ArrayList();
        for (ContactId contactId : list) {
            if (contactId != null) {
                arrayList.add(ImsUri.parse("tel:" + contactId.toString()));
            }
        }
        this.mImModule.addParticipants(this.mSession.getChatId(), arrayList);
    }

    public int getMaxParticipants() {
        return this.mSession.getMaxParticipantsCount();
    }

    public void leave() throws RemoteException {
        Log.d(LOG_TAG, "start : leave()");
        this.mImModule.closeChat(this.mSession.getChatId());
        this.mSessionLeaved = true;
    }

    public boolean isAllowedToLeave() throws RemoteException {
        return !this.mSessionLeaved;
    }

    public String getRemoteContact() throws RemoteException {
        for (ImParticipant imParticipant : this.mSession.getParticipants()) {
            if (imParticipant.getType() == ImParticipant.Type.CHAIRMAN) {
                return imParticipant.getUri().toString();
            }
        }
        return null;
    }

    public void setComposingStatus(boolean z) throws RemoteException {
        Log.d(LOG_TAG, "start : setComposingStatus() ongoing=" + z);
        ImSession imSession = this.mSession;
        if (imSession != null) {
            imSession.sendComposing(z, 3);
        }
    }
}
